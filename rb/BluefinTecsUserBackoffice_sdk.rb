# BluefinTecsUserBackoffice SDK

require_relative 'utility/struct/voxgig_struct'
require_relative 'core/utility_type'
require_relative 'core/spec'
require_relative 'core/helpers'

# Load utility registration
require_relative 'utility/register'

# Load config and features
require_relative 'config'
require_relative 'feature/base_feature'
require_relative 'features'

# Load typed models (Struct value objects).
require_relative 'BluefinTecsUserBackoffice_types'


class BluefinTecsUserBackofficeSDK
  attr_accessor :mode, :features, :options

  def initialize(options = {})
    @mode = "live"
    @features = []
    @options = nil

    utility = BluefinTecsUserBackofficeUtility.new
    @_utility = utility

    config = BluefinTecsUserBackofficeConfig.make_config

    @_rootctx = utility.make_context.call({
      "client" => self,
      "utility" => utility,
      "config" => config,
      "options" => options || {},
      "shared" => {},
    }, nil)

    @options = utility.make_options.call(@_rootctx)

    if VoxgigStruct.getpath(@options, "feature.test.active") == true
      @mode = "test"
    end

    @_rootctx.options = @options

    # Add features in the resolved order (make_options puts an explicit array
    # order first, else defaults to test-first). Ordering matters: the `test`
    # feature installs the base mock transport and the transport features
    # (retry/cache/netsim/proxy/ratelimit) wrap whatever is current, so `test`
    # must be added before them to sit at the base of the chain.
    feature_opts = BluefinTecsUserBackofficeHelpers.to_map(VoxgigStruct.getprop(@options, "feature"))
    if feature_opts
      featureorder = VoxgigStruct.getpath(@options, "__derived__.featureorder")
      if featureorder.is_a?(Array)
        featureorder.each do |fname|
          fopts = BluefinTecsUserBackofficeHelpers.to_map(feature_opts[fname])
          if fopts && fopts["active"] == true
            utility.feature_add.call(@_rootctx, BluefinTecsUserBackofficeFeatures.make_feature(fname))
          end
        end
      end
    end

    # Add extension features.
    extend_val = VoxgigStruct.getprop(@options, "extend")
    if extend_val.is_a?(Array)
      extend_val.each do |f|
        if f.respond_to?(:get_name)
          utility.feature_add.call(@_rootctx, f)
        end
      end
    end

    # Initialize features.
    @features.each do |f|
      utility.feature_init.call(@_rootctx, f)
    end

    utility.feature_hook.call(@_rootctx, "PostConstruct")
  end

  def options_map
    out = VoxgigStruct.clone(@options)
    out.is_a?(Hash) ? out : {}
  end

  def get_utility
    BluefinTecsUserBackofficeUtility.copy(@_utility)
  end

  def get_root_ctx
    @_rootctx
  end

  def prepare(fetchargs = {})
    utility = @_utility
    fetchargs ||= {}

    ctrl = BluefinTecsUserBackofficeHelpers.to_map(VoxgigStruct.getprop(fetchargs, "ctrl")) || {}

    ctx = utility.make_context.call({
      "opname" => "prepare",
      "ctrl" => ctrl,
    }, @_rootctx)

    opts = @options
    path = VoxgigStruct.getprop(fetchargs, "path") || ""
    path = "" unless path.is_a?(String)
    method_val = VoxgigStruct.getprop(fetchargs, "method") || "GET"
    method_val = "GET" unless method_val.is_a?(String)
    params = BluefinTecsUserBackofficeHelpers.to_map(VoxgigStruct.getprop(fetchargs, "params")) || {}
    query = BluefinTecsUserBackofficeHelpers.to_map(VoxgigStruct.getprop(fetchargs, "query")) || {}
    headers = utility.prepare_headers.call(ctx)

    base = VoxgigStruct.getprop(opts, "base") || ""
    base = "" unless base.is_a?(String)
    prefix = VoxgigStruct.getprop(opts, "prefix") || ""
    prefix = "" unless prefix.is_a?(String)
    suffix = VoxgigStruct.getprop(opts, "suffix") || ""
    suffix = "" unless suffix.is_a?(String)

    ctx.spec = BluefinTecsUserBackofficeSpec.new({
      "base" => base, "prefix" => prefix, "suffix" => suffix,
      "path" => path, "method" => method_val,
      "params" => params, "query" => query, "headers" => headers,
      "body" => VoxgigStruct.getprop(fetchargs, "body"),
      "step" => "start",
    })

    # Merge user-provided headers.
    uh = VoxgigStruct.getprop(fetchargs, "headers")
    if uh.is_a?(Hash)
      uh.each { |k, v| ctx.spec.headers[k] = v }
    end

    _, err = utility.prepare_auth.call(ctx)
    raise err if err

    # make_fetch_def returns a (fetchdef, err) tuple; destructure it and
    # return just the fetchdef Hash (raising on error) so callers — including
    # direct(), which indexes fetchdef["url"] — receive a Hash, mirroring the
    # ts/py prepare().
    fetchdef, fd_err = utility.make_fetch_def.call(ctx)
    raise fd_err if fd_err

    fetchdef
  end

  def direct(fetchargs = {})
    utility = @_utility

    # direct() is the raw-HTTP escape hatch: it always returns a result hash
    # ({ "ok" => ..., ... }) and never raises. prepare() raises on error, so
    # trap that and surface it in the hash.
    begin
      fetchdef = prepare(fetchargs)
    rescue BluefinTecsUserBackofficeError => err
      return { "ok" => false, "err" => err }
    end

    fetchargs ||= {}
    ctrl = BluefinTecsUserBackofficeHelpers.to_map(VoxgigStruct.getprop(fetchargs, "ctrl")) || {}

    ctx = utility.make_context.call({
      "opname" => "direct",
      "ctrl" => ctrl,
    }, @_rootctx)

    url = fetchdef["url"] || ""
    fetched, fetch_err = utility.fetcher.call(ctx, url, fetchdef)

    return { "ok" => false, "err" => fetch_err } if fetch_err

    if fetched.nil?
      return {
        "ok" => false,
        "err" => ctx.make_error("direct_no_response", "response: undefined"),
      }
    end

    if fetched.is_a?(Hash)
      status = BluefinTecsUserBackofficeHelpers.to_int(VoxgigStruct.getprop(fetched, "status"))
      headers = VoxgigStruct.getprop(fetched, "headers") || {}

      # No-body responses (204, 304) and explicit zero content-length must
      # skip JSON parsing — calling json() on an empty body errors.
      content_length = headers.is_a?(Hash) ? headers["content-length"] : nil
      no_body = status == 204 || status == 304 || content_length.to_s == "0"

      json_data = nil
      unless no_body
        jf = VoxgigStruct.getprop(fetched, "json")
        if jf.is_a?(Proc)
          begin
            json_data = jf.call
          rescue StandardError
            # Non-JSON body — leave data nil, keep status/headers.
            json_data = nil
          end
        end
      end

      return {
        "ok" => status >= 200 && status < 300,
        "status" => status,
        "headers" => headers,
        "data" => json_data,
      }
    end

    return {
      "ok" => false,
      "err" => ctx.make_error("direct_invalid", "invalid response type"),
    }
  end


  # Canonical facade: client.OutputActivateDigitalModule.list / client.OutputActivateDigitalModule.load({ "id" => ... })
  def OutputActivateDigitalModule(data = nil)
    require_relative 'entity/output_activate_digital_module_entity'
    OutputActivateDigitalModuleEntity.new(self, data)
  end


  # Canonical facade: client.OutputActivatePortalModule.list / client.OutputActivatePortalModule.load({ "id" => ... })
  def OutputActivatePortalModule(data = nil)
    require_relative 'entity/output_activate_portal_module_entity'
    OutputActivatePortalModuleEntity.new(self, data)
  end


  # Canonical facade: client.OutputActivateStoreModule.list / client.OutputActivateStoreModule.load({ "id" => ... })
  def OutputActivateStoreModule(data = nil)
    require_relative 'entity/output_activate_store_module_entity'
    OutputActivateStoreModuleEntity.new(self, data)
  end


  # Canonical facade: client.OutputActivateUser.list / client.OutputActivateUser.load({ "id" => ... })
  def OutputActivateUser(data = nil)
    require_relative 'entity/output_activate_user_entity'
    OutputActivateUserEntity.new(self, data)
  end


  # Canonical facade: client.OutputAssignRole.list / client.OutputAssignRole.load({ "id" => ... })
  def OutputAssignRole(data = nil)
    require_relative 'entity/output_assign_role_entity'
    OutputAssignRoleEntity.new(self, data)
  end


  # Canonical facade: client.OutputChangeLogo.list / client.OutputChangeLogo.load({ "id" => ... })
  def OutputChangeLogo(data = nil)
    require_relative 'entity/output_change_logo_entity'
    OutputChangeLogoEntity.new(self, data)
  end


  # Canonical facade: client.OutputCreateMandator.list / client.OutputCreateMandator.load({ "id" => ... })
  def OutputCreateMandator(data = nil)
    require_relative 'entity/output_create_mandator_entity'
    OutputCreateMandatorEntity.new(self, data)
  end


  # Canonical facade: client.OutputCreateServiceUser.list / client.OutputCreateServiceUser.load({ "id" => ... })
  def OutputCreateServiceUser(data = nil)
    require_relative 'entity/output_create_service_user_entity'
    OutputCreateServiceUserEntity.new(self, data)
  end


  # Canonical facade: client.OutputDeactivateUser.list / client.OutputDeactivateUser.load({ "id" => ... })
  def OutputDeactivateUser(data = nil)
    require_relative 'entity/output_deactivate_user_entity'
    OutputDeactivateUserEntity.new(self, data)
  end


  # Canonical facade: client.OutputGetKycDocument.list / client.OutputGetKycDocument.load({ "id" => ... })
  def OutputGetKycDocument(data = nil)
    require_relative 'entity/output_get_kyc_document_entity'
    OutputGetKycDocumentEntity.new(self, data)
  end


  # Canonical facade: client.OutputGetLogo.list / client.OutputGetLogo.load({ "id" => ... })
  def OutputGetLogo(data = nil)
    require_relative 'entity/output_get_logo_entity'
    OutputGetLogoEntity.new(self, data)
  end


  # Canonical facade: client.OutputListOfAvailableRole.list / client.OutputListOfAvailableRole.load({ "id" => ... })
  def OutputListOfAvailableRole(data = nil)
    require_relative 'entity/output_list_of_available_role_entity'
    OutputListOfAvailableRoleEntity.new(self, data)
  end


  # Canonical facade: client.OutputListOfMandator.list / client.OutputListOfMandator.load({ "id" => ... })
  def OutputListOfMandator(data = nil)
    require_relative 'entity/output_list_of_mandator_entity'
    OutputListOfMandatorEntity.new(self, data)
  end


  # Canonical facade: client.OutputListOfModule.list / client.OutputListOfModule.load({ "id" => ... })
  def OutputListOfModule(data = nil)
    require_relative 'entity/output_list_of_module_entity'
    OutputListOfModuleEntity.new(self, data)
  end


  # Canonical facade: client.OutputListOfRoleGroup.list / client.OutputListOfRoleGroup.load({ "id" => ... })
  def OutputListOfRoleGroup(data = nil)
    require_relative 'entity/output_list_of_role_group_entity'
    OutputListOfRoleGroupEntity.new(self, data)
  end


  # Canonical facade: client.OutputListOfTransactionsHistory.list / client.OutputListOfTransactionsHistory.load({ "id" => ... })
  def OutputListOfTransactionsHistory(data = nil)
    require_relative 'entity/output_list_of_transactions_history_entity'
    OutputListOfTransactionsHistoryEntity.new(self, data)
  end


  # Canonical facade: client.OutputListOfUser.list / client.OutputListOfUser.load({ "id" => ... })
  def OutputListOfUser(data = nil)
    require_relative 'entity/output_list_of_user_entity'
    OutputListOfUserEntity.new(self, data)
  end


  # Canonical facade: client.OutputProvideCredential.list / client.OutputProvideCredential.load({ "id" => ... })
  def OutputProvideCredential(data = nil)
    require_relative 'entity/output_provide_credential_entity'
    OutputProvideCredentialEntity.new(self, data)
  end


  # Canonical facade: client.OutputRegisterUser.list / client.OutputRegisterUser.load({ "id" => ... })
  def OutputRegisterUser(data = nil)
    require_relative 'entity/output_register_user_entity'
    OutputRegisterUserEntity.new(self, data)
  end


  # Canonical facade: client.OutputRemoveRole.list / client.OutputRemoveRole.load({ "id" => ... })
  def OutputRemoveRole(data = nil)
    require_relative 'entity/output_remove_role_entity'
    OutputRemoveRoleEntity.new(self, data)
  end


  # Canonical facade: client.OutputResendLink.list / client.OutputResendLink.load({ "id" => ... })
  def OutputResendLink(data = nil)
    require_relative 'entity/output_resend_link_entity'
    OutputResendLinkEntity.new(self, data)
  end


  # Canonical facade: client.OutputResetPassword.list / client.OutputResetPassword.load({ "id" => ... })
  def OutputResetPassword(data = nil)
    require_relative 'entity/output_reset_password_entity'
    OutputResetPasswordEntity.new(self, data)
  end


  # Canonical facade: client.OutputUpdateConsumer.list / client.OutputUpdateConsumer.load({ "id" => ... })
  def OutputUpdateConsumer(data = nil)
    require_relative 'entity/output_update_consumer_entity'
    OutputUpdateConsumerEntity.new(self, data)
  end


  # Canonical facade: client.OutputUpdateProfile.list / client.OutputUpdateProfile.load({ "id" => ... })
  def OutputUpdateProfile(data = nil)
    require_relative 'entity/output_update_profile_entity'
    OutputUpdateProfileEntity.new(self, data)
  end


  # Canonical facade: client.Version.list / client.Version.load({ "id" => ... })
  def Version(data = nil)
    require_relative 'entity/version_entity'
    VersionEntity.new(self, data)
  end



  def self.test(testopts = nil, sdkopts = nil)
    sdkopts = sdkopts || {}
    sdkopts = VoxgigStruct.clone(sdkopts)
    sdkopts = {} unless sdkopts.is_a?(Hash)

    testopts = testopts || {}
    testopts = VoxgigStruct.clone(testopts)
    testopts = {} unless testopts.is_a?(Hash)
    testopts["active"] = true

    VoxgigStruct.setpath(sdkopts, "feature.test", testopts)

    sdk = BluefinTecsUserBackofficeSDK.new(sdkopts)
    sdk.mode = "test"
    sdk
  end
end

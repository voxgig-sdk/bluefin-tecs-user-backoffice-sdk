-- BluefinTecsUserBackoffice SDK

local vs = require("utility.struct.struct")
local Utility = require("core.utility_type")
local Spec = require("core.spec")
local helpers = require("core.helpers")

-- Load utility registration (populates Utility._registrar)
require("utility.register")

-- Typed-model annotations (LuaLS ---@class); empty at runtime.
require("bluefin-tecs-user-backoffice_types")

-- Load features
local BaseFeature = require("feature.base_feature")
local features_factory = require("features")


local BluefinTecsUserBackofficeSDK = {}
BluefinTecsUserBackofficeSDK.__index = BluefinTecsUserBackofficeSDK


local function _make_feature(name)
  local factory = features_factory[name]
  if factory ~= nil then
    return factory()
  end
  return features_factory.base()
end

BluefinTecsUserBackofficeSDK._make_feature = _make_feature


function BluefinTecsUserBackofficeSDK.new(options)
  local self = setmetatable({}, BluefinTecsUserBackofficeSDK)
  self.mode = "live"
  self.features = {}
  self.options = nil

  local utility = Utility.new()
  self._utility = utility

  local config = require("config")()

  self._rootctx = utility.make_context({
    client = self,
    utility = utility,
    config = config,
    options = options or {},
    shared = {},
  }, nil)

  self.options = utility.make_options(self._rootctx)

  if vs.getpath(self.options, "feature.test.active") == true then
    self.mode = "test"
  end

  self._rootctx.options = self.options

  -- Add features in the resolved order (make_options puts an explicit list
  -- order first, else defaults to test-first). Ordering matters: the `test`
  -- feature installs the base mock transport and the transport features
  -- (retry/cache/netsim/proxy/ratelimit) wrap whatever is current, so `test`
  -- must be added before them to sit at the base of the chain.
  local feature_opts = helpers.to_map(vs.getprop(self.options, "feature"))
  if feature_opts ~= nil then
    local featureorder = vs.getpath(self.options, "__derived__.featureorder")
    if type(featureorder) == "table" then
      for _, fname in ipairs(featureorder) do
        local fopts = helpers.to_map(feature_opts[fname])
        if fopts ~= nil and fopts["active"] == true then
          utility.feature_add(self._rootctx, _make_feature(fname))
        end
      end
    end
  end

  -- Add extension features.
  local extend = vs.getprop(self.options, "extend")
  if type(extend) == "table" then
    for _, f in ipairs(extend) do
      if type(f) == "table" and type(f.get_name) == "function" then
        utility.feature_add(self._rootctx, f)
      end
    end
  end

  -- Initialize features.
  for _, f in ipairs(self.features) do
    utility.feature_init(self._rootctx, f)
  end

  utility.feature_hook(self._rootctx, "PostConstruct")

    -- feature: test


  return self
end


function BluefinTecsUserBackofficeSDK:options_map()
  local out = vs.clone(self.options)
  if type(out) == "table" then
    return out
  end
  return {}
end


function BluefinTecsUserBackofficeSDK:get_utility()
  return Utility.copy(self._utility)
end


function BluefinTecsUserBackofficeSDK:get_root_ctx()
  return self._rootctx
end


function BluefinTecsUserBackofficeSDK:prepare(fetchargs)
  local utility = self._utility

  fetchargs = fetchargs or {}

  local ctrl = helpers.to_map(vs.getprop(fetchargs, "ctrl")) or {}

  local ctx = utility.make_context({
    opname = "prepare",
    ctrl = ctrl,
  }, self._rootctx)

  local options = self.options

  local path = vs.getprop(fetchargs, "path") or ""
  if type(path) ~= "string" then path = "" end

  local method = vs.getprop(fetchargs, "method") or "GET"
  if type(method) ~= "string" then method = "GET" end

  local params = helpers.to_map(vs.getprop(fetchargs, "params")) or {}
  local query = helpers.to_map(vs.getprop(fetchargs, "query")) or {}

  local headers = utility.prepare_headers(ctx)

  local base = vs.getprop(options, "base") or ""
  if type(base) ~= "string" then base = "" end
  local prefix = vs.getprop(options, "prefix") or ""
  if type(prefix) ~= "string" then prefix = "" end
  local suffix = vs.getprop(options, "suffix") or ""
  if type(suffix) ~= "string" then suffix = "" end

  ctx.spec = Spec.new({
    base = base,
    prefix = prefix,
    suffix = suffix,
    path = path,
    method = method,
    params = params,
    query = query,
    headers = headers,
    body = vs.getprop(fetchargs, "body"),
    step = "start",
  })

  -- Merge user-provided headers.
  local uh = vs.getprop(fetchargs, "headers")
  if type(uh) == "table" then
    for k, v in pairs(uh) do
      ctx.spec.headers[k] = v
    end
  end

  local _, err = utility.prepare_auth(ctx)
  if err ~= nil then
    return nil, err
  end

  return utility.make_fetch_def(ctx)
end


function BluefinTecsUserBackofficeSDK:direct(fetchargs)
  local utility = self._utility

  local fetchdef, err = self:prepare(fetchargs)
  if err ~= nil then
    return { ok = false, err = err }, nil
  end

  fetchargs = fetchargs or {}
  local ctrl = helpers.to_map(vs.getprop(fetchargs, "ctrl")) or {}

  local ctx = utility.make_context({
    opname = "direct",
    ctrl = ctrl,
  }, self._rootctx)

  local url = fetchdef["url"] or ""
  local fetched, fetch_err = utility.fetcher(ctx, url, fetchdef)

  if fetch_err ~= nil then
    return { ok = false, err = fetch_err }, nil
  end

  if fetched == nil then
    return {
      ok = false,
      err = ctx:make_error("direct_no_response", "response: undefined"),
    }, nil
  end

  if type(fetched) == "table" then
    local status = helpers.to_int(vs.getprop(fetched, "status"))
    local headers = vs.getprop(fetched, "headers") or {}

    -- No-body responses (204, 304) and explicit zero content-length
    -- must skip JSON parsing — calling json() on an empty body errors.
    local content_length = nil
    if type(headers) == "table" then
      content_length = headers["content-length"]
    end
    local no_body = status == 204 or status == 304 or tostring(content_length) == "0"

    local json_data = nil
    if not no_body then
      local jf = vs.getprop(fetched, "json")
      if type(jf) == "function" then
        local ok, result = pcall(jf)
        if ok then
          json_data = result
        end
        -- Non-JSON body: json_data stays nil, status/headers preserved.
      end
    end

    return {
      ok = status >= 200 and status < 300,
      status = status,
      headers = headers,
      data = json_data,
    }, nil
  end

  return {
    ok = false,
    err = ctx:make_error("direct_invalid", "invalid response type"),
  }, nil
end



-- Idiomatic facade: client:OutputActivateDigitalModule():list() / client:OutputActivateDigitalModule():load({ id = ... })
-- Entity access is capitalised (PascalCase) for parity with the other SDKs.
function BluefinTecsUserBackofficeSDK:OutputActivateDigitalModule(data)
  local EntityMod = require("entity.output_activate_digital_module_entity")
  if data == nil then
    if self._output_activate_digital_module == nil then
      self._output_activate_digital_module = EntityMod.new(self, nil)
    end
    return self._output_activate_digital_module
  end
  return EntityMod.new(self, data)
end


-- Idiomatic facade: client:OutputActivatePortalModule():list() / client:OutputActivatePortalModule():load({ id = ... })
-- Entity access is capitalised (PascalCase) for parity with the other SDKs.
function BluefinTecsUserBackofficeSDK:OutputActivatePortalModule(data)
  local EntityMod = require("entity.output_activate_portal_module_entity")
  if data == nil then
    if self._output_activate_portal_module == nil then
      self._output_activate_portal_module = EntityMod.new(self, nil)
    end
    return self._output_activate_portal_module
  end
  return EntityMod.new(self, data)
end


-- Idiomatic facade: client:OutputActivateStoreModule():list() / client:OutputActivateStoreModule():load({ id = ... })
-- Entity access is capitalised (PascalCase) for parity with the other SDKs.
function BluefinTecsUserBackofficeSDK:OutputActivateStoreModule(data)
  local EntityMod = require("entity.output_activate_store_module_entity")
  if data == nil then
    if self._output_activate_store_module == nil then
      self._output_activate_store_module = EntityMod.new(self, nil)
    end
    return self._output_activate_store_module
  end
  return EntityMod.new(self, data)
end


-- Idiomatic facade: client:OutputActivateUser():list() / client:OutputActivateUser():load({ id = ... })
-- Entity access is capitalised (PascalCase) for parity with the other SDKs.
function BluefinTecsUserBackofficeSDK:OutputActivateUser(data)
  local EntityMod = require("entity.output_activate_user_entity")
  if data == nil then
    if self._output_activate_user == nil then
      self._output_activate_user = EntityMod.new(self, nil)
    end
    return self._output_activate_user
  end
  return EntityMod.new(self, data)
end


-- Idiomatic facade: client:OutputAssignRole():list() / client:OutputAssignRole():load({ id = ... })
-- Entity access is capitalised (PascalCase) for parity with the other SDKs.
function BluefinTecsUserBackofficeSDK:OutputAssignRole(data)
  local EntityMod = require("entity.output_assign_role_entity")
  if data == nil then
    if self._output_assign_role == nil then
      self._output_assign_role = EntityMod.new(self, nil)
    end
    return self._output_assign_role
  end
  return EntityMod.new(self, data)
end


-- Idiomatic facade: client:OutputChangeLogo():list() / client:OutputChangeLogo():load({ id = ... })
-- Entity access is capitalised (PascalCase) for parity with the other SDKs.
function BluefinTecsUserBackofficeSDK:OutputChangeLogo(data)
  local EntityMod = require("entity.output_change_logo_entity")
  if data == nil then
    if self._output_change_logo == nil then
      self._output_change_logo = EntityMod.new(self, nil)
    end
    return self._output_change_logo
  end
  return EntityMod.new(self, data)
end


-- Idiomatic facade: client:OutputCreateMandator():list() / client:OutputCreateMandator():load({ id = ... })
-- Entity access is capitalised (PascalCase) for parity with the other SDKs.
function BluefinTecsUserBackofficeSDK:OutputCreateMandator(data)
  local EntityMod = require("entity.output_create_mandator_entity")
  if data == nil then
    if self._output_create_mandator == nil then
      self._output_create_mandator = EntityMod.new(self, nil)
    end
    return self._output_create_mandator
  end
  return EntityMod.new(self, data)
end


-- Idiomatic facade: client:OutputCreateServiceUser():list() / client:OutputCreateServiceUser():load({ id = ... })
-- Entity access is capitalised (PascalCase) for parity with the other SDKs.
function BluefinTecsUserBackofficeSDK:OutputCreateServiceUser(data)
  local EntityMod = require("entity.output_create_service_user_entity")
  if data == nil then
    if self._output_create_service_user == nil then
      self._output_create_service_user = EntityMod.new(self, nil)
    end
    return self._output_create_service_user
  end
  return EntityMod.new(self, data)
end


-- Idiomatic facade: client:OutputDeactivateUser():list() / client:OutputDeactivateUser():load({ id = ... })
-- Entity access is capitalised (PascalCase) for parity with the other SDKs.
function BluefinTecsUserBackofficeSDK:OutputDeactivateUser(data)
  local EntityMod = require("entity.output_deactivate_user_entity")
  if data == nil then
    if self._output_deactivate_user == nil then
      self._output_deactivate_user = EntityMod.new(self, nil)
    end
    return self._output_deactivate_user
  end
  return EntityMod.new(self, data)
end


-- Idiomatic facade: client:OutputGetKycDocument():list() / client:OutputGetKycDocument():load({ id = ... })
-- Entity access is capitalised (PascalCase) for parity with the other SDKs.
function BluefinTecsUserBackofficeSDK:OutputGetKycDocument(data)
  local EntityMod = require("entity.output_get_kyc_document_entity")
  if data == nil then
    if self._output_get_kyc_document == nil then
      self._output_get_kyc_document = EntityMod.new(self, nil)
    end
    return self._output_get_kyc_document
  end
  return EntityMod.new(self, data)
end


-- Idiomatic facade: client:OutputGetLogo():list() / client:OutputGetLogo():load({ id = ... })
-- Entity access is capitalised (PascalCase) for parity with the other SDKs.
function BluefinTecsUserBackofficeSDK:OutputGetLogo(data)
  local EntityMod = require("entity.output_get_logo_entity")
  if data == nil then
    if self._output_get_logo == nil then
      self._output_get_logo = EntityMod.new(self, nil)
    end
    return self._output_get_logo
  end
  return EntityMod.new(self, data)
end


-- Idiomatic facade: client:OutputListOfAvailableRole():list() / client:OutputListOfAvailableRole():load({ id = ... })
-- Entity access is capitalised (PascalCase) for parity with the other SDKs.
function BluefinTecsUserBackofficeSDK:OutputListOfAvailableRole(data)
  local EntityMod = require("entity.output_list_of_available_role_entity")
  if data == nil then
    if self._output_list_of_available_role == nil then
      self._output_list_of_available_role = EntityMod.new(self, nil)
    end
    return self._output_list_of_available_role
  end
  return EntityMod.new(self, data)
end


-- Idiomatic facade: client:OutputListOfMandator():list() / client:OutputListOfMandator():load({ id = ... })
-- Entity access is capitalised (PascalCase) for parity with the other SDKs.
function BluefinTecsUserBackofficeSDK:OutputListOfMandator(data)
  local EntityMod = require("entity.output_list_of_mandator_entity")
  if data == nil then
    if self._output_list_of_mandator == nil then
      self._output_list_of_mandator = EntityMod.new(self, nil)
    end
    return self._output_list_of_mandator
  end
  return EntityMod.new(self, data)
end


-- Idiomatic facade: client:OutputListOfModule():list() / client:OutputListOfModule():load({ id = ... })
-- Entity access is capitalised (PascalCase) for parity with the other SDKs.
function BluefinTecsUserBackofficeSDK:OutputListOfModule(data)
  local EntityMod = require("entity.output_list_of_module_entity")
  if data == nil then
    if self._output_list_of_module == nil then
      self._output_list_of_module = EntityMod.new(self, nil)
    end
    return self._output_list_of_module
  end
  return EntityMod.new(self, data)
end


-- Idiomatic facade: client:OutputListOfRoleGroup():list() / client:OutputListOfRoleGroup():load({ id = ... })
-- Entity access is capitalised (PascalCase) for parity with the other SDKs.
function BluefinTecsUserBackofficeSDK:OutputListOfRoleGroup(data)
  local EntityMod = require("entity.output_list_of_role_group_entity")
  if data == nil then
    if self._output_list_of_role_group == nil then
      self._output_list_of_role_group = EntityMod.new(self, nil)
    end
    return self._output_list_of_role_group
  end
  return EntityMod.new(self, data)
end


-- Idiomatic facade: client:OutputListOfTransactionsHistory():list() / client:OutputListOfTransactionsHistory():load({ id = ... })
-- Entity access is capitalised (PascalCase) for parity with the other SDKs.
function BluefinTecsUserBackofficeSDK:OutputListOfTransactionsHistory(data)
  local EntityMod = require("entity.output_list_of_transactions_history_entity")
  if data == nil then
    if self._output_list_of_transactions_history == nil then
      self._output_list_of_transactions_history = EntityMod.new(self, nil)
    end
    return self._output_list_of_transactions_history
  end
  return EntityMod.new(self, data)
end


-- Idiomatic facade: client:OutputListOfUser():list() / client:OutputListOfUser():load({ id = ... })
-- Entity access is capitalised (PascalCase) for parity with the other SDKs.
function BluefinTecsUserBackofficeSDK:OutputListOfUser(data)
  local EntityMod = require("entity.output_list_of_user_entity")
  if data == nil then
    if self._output_list_of_user == nil then
      self._output_list_of_user = EntityMod.new(self, nil)
    end
    return self._output_list_of_user
  end
  return EntityMod.new(self, data)
end


-- Idiomatic facade: client:OutputProvideCredential():list() / client:OutputProvideCredential():load({ id = ... })
-- Entity access is capitalised (PascalCase) for parity with the other SDKs.
function BluefinTecsUserBackofficeSDK:OutputProvideCredential(data)
  local EntityMod = require("entity.output_provide_credential_entity")
  if data == nil then
    if self._output_provide_credential == nil then
      self._output_provide_credential = EntityMod.new(self, nil)
    end
    return self._output_provide_credential
  end
  return EntityMod.new(self, data)
end


-- Idiomatic facade: client:OutputRegisterUser():list() / client:OutputRegisterUser():load({ id = ... })
-- Entity access is capitalised (PascalCase) for parity with the other SDKs.
function BluefinTecsUserBackofficeSDK:OutputRegisterUser(data)
  local EntityMod = require("entity.output_register_user_entity")
  if data == nil then
    if self._output_register_user == nil then
      self._output_register_user = EntityMod.new(self, nil)
    end
    return self._output_register_user
  end
  return EntityMod.new(self, data)
end


-- Idiomatic facade: client:OutputRemoveRole():list() / client:OutputRemoveRole():load({ id = ... })
-- Entity access is capitalised (PascalCase) for parity with the other SDKs.
function BluefinTecsUserBackofficeSDK:OutputRemoveRole(data)
  local EntityMod = require("entity.output_remove_role_entity")
  if data == nil then
    if self._output_remove_role == nil then
      self._output_remove_role = EntityMod.new(self, nil)
    end
    return self._output_remove_role
  end
  return EntityMod.new(self, data)
end


-- Idiomatic facade: client:OutputResendLink():list() / client:OutputResendLink():load({ id = ... })
-- Entity access is capitalised (PascalCase) for parity with the other SDKs.
function BluefinTecsUserBackofficeSDK:OutputResendLink(data)
  local EntityMod = require("entity.output_resend_link_entity")
  if data == nil then
    if self._output_resend_link == nil then
      self._output_resend_link = EntityMod.new(self, nil)
    end
    return self._output_resend_link
  end
  return EntityMod.new(self, data)
end


-- Idiomatic facade: client:OutputResetPassword():list() / client:OutputResetPassword():load({ id = ... })
-- Entity access is capitalised (PascalCase) for parity with the other SDKs.
function BluefinTecsUserBackofficeSDK:OutputResetPassword(data)
  local EntityMod = require("entity.output_reset_password_entity")
  if data == nil then
    if self._output_reset_password == nil then
      self._output_reset_password = EntityMod.new(self, nil)
    end
    return self._output_reset_password
  end
  return EntityMod.new(self, data)
end


-- Idiomatic facade: client:OutputUpdateConsumer():list() / client:OutputUpdateConsumer():load({ id = ... })
-- Entity access is capitalised (PascalCase) for parity with the other SDKs.
function BluefinTecsUserBackofficeSDK:OutputUpdateConsumer(data)
  local EntityMod = require("entity.output_update_consumer_entity")
  if data == nil then
    if self._output_update_consumer == nil then
      self._output_update_consumer = EntityMod.new(self, nil)
    end
    return self._output_update_consumer
  end
  return EntityMod.new(self, data)
end


-- Idiomatic facade: client:OutputUpdateProfile():list() / client:OutputUpdateProfile():load({ id = ... })
-- Entity access is capitalised (PascalCase) for parity with the other SDKs.
function BluefinTecsUserBackofficeSDK:OutputUpdateProfile(data)
  local EntityMod = require("entity.output_update_profile_entity")
  if data == nil then
    if self._output_update_profile == nil then
      self._output_update_profile = EntityMod.new(self, nil)
    end
    return self._output_update_profile
  end
  return EntityMod.new(self, data)
end


-- Idiomatic facade: client:Version():list() / client:Version():load({ id = ... })
-- Entity access is capitalised (PascalCase) for parity with the other SDKs.
function BluefinTecsUserBackofficeSDK:Version(data)
  local EntityMod = require("entity.version_entity")
  if data == nil then
    if self._version == nil then
      self._version = EntityMod.new(self, nil)
    end
    return self._version
  end
  return EntityMod.new(self, data)
end




function BluefinTecsUserBackofficeSDK.test(testopts, sdkopts)
  sdkopts = sdkopts or {}
  sdkopts = vs.clone(sdkopts)
  if type(sdkopts) ~= "table" then
    sdkopts = {}
  end

  testopts = testopts or {}
  testopts = vs.clone(testopts)
  if type(testopts) ~= "table" then
    testopts = {}
  end
  testopts["active"] = true

  vs.setpath(sdkopts, "feature.test", testopts)

  local sdk = BluefinTecsUserBackofficeSDK.new(sdkopts)
  sdk.mode = "test"

  return sdk
end


return BluefinTecsUserBackofficeSDK

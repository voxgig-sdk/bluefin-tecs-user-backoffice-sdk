# BluefinTecsUserBackoffice SDK
#
# The client is a reference-stable struct map node (mode/features/options
# plus the root ctx and utility). Functional API: build one with new/1 or
# test/2, then call entity factories or direct/2.

defmodule BluefinTecsUserBackoffice do
  alias Voxgig.Struct, as: S
  alias BluefinTecsUserBackoffice.Helpers, as: H
  alias BluefinTecsUserBackoffice.{Utility, Context, Spec}

  def new(options \\ nil) do
    client = S.jm([])
    S.setprop(client, "mode", "live")
    S.setprop(client, "features", [])
    S.setprop(client, "options", nil)

    utility = Utility.new()
    S.setprop(client, "_utility", utility)

    config = BluefinTecsUserBackoffice.Config.make_config()

    rootctx =
      Context.new(
        S.jm([
          "client", client,
          "utility", utility,
          "config", config,
          "options", if(options != nil, do: options, else: S.jm([])),
          "shared", S.jm([])
        ]),
        nil
      )

    S.setprop(client, "_rootctx", rootctx)

    opts = Utility.make_options(rootctx)
    S.setprop(client, "options", opts)

    if S.getpath(opts, "feature.test.active") == true, do: S.setprop(client, "mode", "test")
    S.setprop(rootctx, "options", opts)

    # Add features in the resolved order (make_options records an explicit
    # array order, else defaults to test-first). Ordering matters: the `test`
    # feature installs the base mock transport and the transport features
    # (retry/cache/netsim/proxy/ratelimit) wrap whatever is current, so `test`
    # must be added before them to sit at the base of the wrapper chain.
    feature_opts = H.or_(H.to_map(S.getprop(opts, "feature")), S.jm([]))
    feature_order = S.getpath(opts, "__derived__.featureorder")

    if S.islist(feature_order) and S.size(feature_order) > 0 do
      Enum.each(0..(S.size(feature_order) - 1), fn i ->
        fname = S.getelem(feature_order, i)
        fom = H.to_map(S.getprop(feature_opts, fname))

        if fom != nil and S.getprop(fom, "active") == true do
          Utility.feature_add(rootctx, BluefinTecsUserBackoffice.Features.make_feature(fname))
        end
      end)
    end

    extend = S.getprop(opts, "extend")

    if S.islist(extend) and S.size(extend) > 0 do
      Enum.each(0..(S.size(extend) - 1), fn i ->
        fx = S.getelem(extend, i)
        if S.ismap(fx), do: Utility.feature_add(rootctx, fx)
      end)
    end

    Enum.each(S.getprop(client, "features"), fn fe -> Utility.feature_init(rootctx, fe) end)
    Utility.feature_hook(rootctx, "PostConstruct")

    client
  end

  def options_map(client) do
    out = S.clone(S.getprop(client, "options"))
    if S.ismap(out), do: out, else: S.jm([])
  end

  def get_utility(client), do: S.getprop(client, "_utility")
  def get_root_ctx(client), do: S.getprop(client, "_rootctx")
  def mode(client), do: S.getprop(client, "mode")

  def test(testopts \\ nil, sdkopts \\ nil) do
    sdkopts = S.clone(if(sdkopts != nil, do: sdkopts, else: S.jm([])))
    sdkopts = if S.ismap(sdkopts), do: sdkopts, else: S.jm([])

    testopts = S.clone(if(testopts != nil, do: testopts, else: S.jm([])))
    testopts = if S.ismap(testopts), do: testopts, else: S.jm([])
    S.setprop(testopts, "active", true)

    S.setpath(sdkopts, "feature.test", testopts)

    client = new(sdkopts)
    S.setprop(client, "mode", "test")
    client
  end

  def prepare(client, fetchargs \\ nil) do
    fetchargs = if S.ismap(fetchargs), do: fetchargs, else: S.jm([])
    ctrl = H.or_(H.to_map(S.getprop(fetchargs, "ctrl")), S.jm([]))

    ctx = Context.new(S.jm(["opname", "prepare", "ctrl", ctrl]), get_root_ctx(client))
    options = S.getprop(client, "options")

    path0 = H.or_(S.getprop(fetchargs, "path"), "")
    path = if is_binary(path0), do: path0, else: ""
    method0 = H.or_(S.getprop(fetchargs, "method"), "GET")
    method = if is_binary(method0), do: method0, else: "GET"
    params = H.or_(H.to_map(S.getprop(fetchargs, "params")), S.jm([]))
    query = H.or_(H.to_map(S.getprop(fetchargs, "query")), S.jm([]))

    headers = Utility.prepare_headers(ctx)

    base = strp(S.getprop(options, "base"))
    prefix = strp(S.getprop(options, "prefix"))
    suffix = strp(S.getprop(options, "suffix"))

    spec =
      Spec.new(
        S.jm([
          "base", base,
          "prefix", prefix,
          "suffix", suffix,
          "path", path,
          "method", method,
          "params", params,
          "query", query,
          "headers", headers,
          "body", S.getprop(fetchargs, "body"),
          "step", "start"
        ])
      )

    S.setprop(ctx, "spec", spec)

    uh = S.getprop(fetchargs, "headers")

    if S.ismap(uh) do
      Enum.each(H.entries(uh), fn {k, v} -> S.setprop(S.getprop(spec, "headers"), k, v) end)
    end

    {_spec, err} = Utility.prepare_auth(ctx)
    if err != nil, do: raise(err)

    {fetchdef, err2} = Utility.make_fetch_def(ctx)
    if err2 != nil, do: raise(err2)

    fetchdef
  end

  def direct(client, fetchargs \\ nil) do
    fetchdef =
      try do
        prepare(client, fetchargs)
      rescue
        err -> {:direct_err, err}
      end

    case fetchdef do
      {:direct_err, err} ->
        S.jm(["ok", false, "err", err])

      _ ->
        fetchargs = if S.ismap(fetchargs), do: fetchargs, else: S.jm([])
        ctrl = H.or_(H.to_map(S.getprop(fetchargs, "ctrl")), S.jm([]))
        ctx = Context.new(S.jm(["opname", "direct", "ctrl", ctrl]), get_root_ctx(client))

        url = H.or_(S.getprop(fetchdef, "url"), "")
        {fetched, fetch_err} = Utility.fetcher(ctx, url, fetchdef)

        cond do
          fetch_err != nil ->
            S.jm(["ok", false, "err", fetch_err])

          fetched == nil ->
            S.jm(["ok", false, "err", Context.make_error(ctx, "direct_no_response", "response: undefined")])

          S.ismap(fetched) ->
            status = H.to_int(S.getprop(fetched, "status"))
            headers = H.or_(S.getprop(fetched, "headers"), S.jm([]))

            content_length =
              if S.ismap(headers), do: BluefinTecsUserBackoffice.Feature.header_get(headers, "content-length"), else: nil

            no_body = status in [204, 304] or to_string(content_length) == "0"

            json_data =
              if no_body do
                nil
              else
                jf = S.getprop(fetched, "json")

                if S.isfunc(jf) do
                  try do
                    jf.()
                  rescue
                    _ -> nil
                  end
                else
                  nil
                end
              end

            S.jm(["ok", status >= 200 and status < 300, "status", status, "headers", headers, "data", json_data])

          true ->
            S.jm(["ok", false, "err", Context.make_error(ctx, "direct_invalid", "invalid response type")])
        end
    end
  end

  defp strp(v), do: if(is_binary(v), do: v, else: "")


  @doc "Entity factory for output_activate_digital_module."
  def output_activate_digital_module(client, entopts \\ nil) do
    BluefinTecsUserBackoffice.Entity.OutputActivateDigitalModule.new(client, entopts)
  end

  @doc "Entity factory for output_activate_portal_module."
  def output_activate_portal_module(client, entopts \\ nil) do
    BluefinTecsUserBackoffice.Entity.OutputActivatePortalModule.new(client, entopts)
  end

  @doc "Entity factory for output_activate_store_module."
  def output_activate_store_module(client, entopts \\ nil) do
    BluefinTecsUserBackoffice.Entity.OutputActivateStoreModule.new(client, entopts)
  end

  @doc "Entity factory for output_activate_user."
  def output_activate_user(client, entopts \\ nil) do
    BluefinTecsUserBackoffice.Entity.OutputActivateUser.new(client, entopts)
  end

  @doc "Entity factory for output_assign_role."
  def output_assign_role(client, entopts \\ nil) do
    BluefinTecsUserBackoffice.Entity.OutputAssignRole.new(client, entopts)
  end

  @doc "Entity factory for output_change_logo."
  def output_change_logo(client, entopts \\ nil) do
    BluefinTecsUserBackoffice.Entity.OutputChangeLogo.new(client, entopts)
  end

  @doc "Entity factory for output_create_mandator."
  def output_create_mandator(client, entopts \\ nil) do
    BluefinTecsUserBackoffice.Entity.OutputCreateMandator.new(client, entopts)
  end

  @doc "Entity factory for output_create_service_user."
  def output_create_service_user(client, entopts \\ nil) do
    BluefinTecsUserBackoffice.Entity.OutputCreateServiceUser.new(client, entopts)
  end

  @doc "Entity factory for output_deactivate_user."
  def output_deactivate_user(client, entopts \\ nil) do
    BluefinTecsUserBackoffice.Entity.OutputDeactivateUser.new(client, entopts)
  end

  @doc "Entity factory for output_get_kyc_document."
  def output_get_kyc_document(client, entopts \\ nil) do
    BluefinTecsUserBackoffice.Entity.OutputGetKycDocument.new(client, entopts)
  end

  @doc "Entity factory for output_get_logo."
  def output_get_logo(client, entopts \\ nil) do
    BluefinTecsUserBackoffice.Entity.OutputGetLogo.new(client, entopts)
  end

  @doc "Entity factory for output_list_of_available_role."
  def output_list_of_available_role(client, entopts \\ nil) do
    BluefinTecsUserBackoffice.Entity.OutputListOfAvailableRole.new(client, entopts)
  end

  @doc "Entity factory for output_list_of_mandator."
  def output_list_of_mandator(client, entopts \\ nil) do
    BluefinTecsUserBackoffice.Entity.OutputListOfMandator.new(client, entopts)
  end

  @doc "Entity factory for output_list_of_module."
  def output_list_of_module(client, entopts \\ nil) do
    BluefinTecsUserBackoffice.Entity.OutputListOfModule.new(client, entopts)
  end

  @doc "Entity factory for output_list_of_role_group."
  def output_list_of_role_group(client, entopts \\ nil) do
    BluefinTecsUserBackoffice.Entity.OutputListOfRoleGroup.new(client, entopts)
  end

  @doc "Entity factory for output_list_of_transactions_history."
  def output_list_of_transactions_history(client, entopts \\ nil) do
    BluefinTecsUserBackoffice.Entity.OutputListOfTransactionsHistory.new(client, entopts)
  end

  @doc "Entity factory for output_list_of_user."
  def output_list_of_user(client, entopts \\ nil) do
    BluefinTecsUserBackoffice.Entity.OutputListOfUser.new(client, entopts)
  end

  @doc "Entity factory for output_provide_credential."
  def output_provide_credential(client, entopts \\ nil) do
    BluefinTecsUserBackoffice.Entity.OutputProvideCredential.new(client, entopts)
  end

  @doc "Entity factory for output_register_user."
  def output_register_user(client, entopts \\ nil) do
    BluefinTecsUserBackoffice.Entity.OutputRegisterUser.new(client, entopts)
  end

  @doc "Entity factory for output_remove_role."
  def output_remove_role(client, entopts \\ nil) do
    BluefinTecsUserBackoffice.Entity.OutputRemoveRole.new(client, entopts)
  end

  @doc "Entity factory for output_resend_link."
  def output_resend_link(client, entopts \\ nil) do
    BluefinTecsUserBackoffice.Entity.OutputResendLink.new(client, entopts)
  end

  @doc "Entity factory for output_reset_password."
  def output_reset_password(client, entopts \\ nil) do
    BluefinTecsUserBackoffice.Entity.OutputResetPassword.new(client, entopts)
  end

  @doc "Entity factory for output_update_consumer."
  def output_update_consumer(client, entopts \\ nil) do
    BluefinTecsUserBackoffice.Entity.OutputUpdateConsumer.new(client, entopts)
  end

  @doc "Entity factory for output_update_profile."
  def output_update_profile(client, entopts \\ nil) do
    BluefinTecsUserBackoffice.Entity.OutputUpdateProfile.new(client, entopts)
  end

  @doc "Entity factory for version."
  def version(client, entopts \\ nil) do
    BluefinTecsUserBackoffice.Entity.Version.new(client, entopts)
  end

end

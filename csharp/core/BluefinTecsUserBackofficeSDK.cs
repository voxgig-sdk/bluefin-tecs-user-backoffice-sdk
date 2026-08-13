// BluefinTecsUserBackoffice SDK client.

using Voxgig.Struct;

using BluefinTecsUserBackofficeSdk.Feature;

namespace BluefinTecsUserBackofficeSdk;

public class BluefinTecsUserBackofficeSDK
{
    // NOTE: type references in EXPRESSION position are `global::`-qualified
    // throughout this class. Entity accessors are PascalCase methods declared
    // on it (see MainEntity_csharp), so an entity named `utility` declares
    // `Utility(...)` here and C# then resolves the simple name `Utility` in an
    // expression to the METHOD, not the type: "'X.Utility(...)' is a method,
    // which is not valid in the given context". Qualifying makes the class
    // immune to that whatever the API names its entities. Type POSITIONS
    // (field and return types) are unaffected and stay unqualified.

    public string Mode = "live";
    private Dictionary<string, object?> _options;
    private readonly Utility _utility;
    public List<BaseFeature> Features = new();
    private readonly Context _rootctx;

    public BluefinTecsUserBackofficeSDK(Dictionary<string, object?>? options = null)
    {
        _utility = new Utility();

        var config = global::BluefinTecsUserBackofficeSdk.SdkConfig.MakeConfig();

        _rootctx = _utility.MakeContext(new Dictionary<string, object?>
        {
            ["client"] = this,
            ["utility"] = _utility,
            ["config"] = config,
            ["options"] = options,
            ["shared"] = new Dictionary<string, object?>(),
        }, null);

        _options = _utility.MakeOptions(_rootctx);

        if (Equals(global::Voxgig.Struct.StructUtils.GetPath(_options,
            global::Voxgig.Struct.StructUtils.Jt("feature", "test", "active")), true))
        {
            Mode = "test";
        }

        _rootctx.Options = _options;

        // Add features in the resolved order (MakeOptions puts an explicit
        // list order first, else defaults to test-first). Ordering matters:
        // the `test` feature installs the base mock transport and the transport
        // features (retry/cache/netsim/proxy/ratelimit) wrap whatever is
        // current, so `test` must be added before them to sit at the base of
        // the chain.
        var featureOpts = global::BluefinTecsUserBackofficeSdk.Helpers.ToMapAny(global::Voxgig.Struct.StructUtils.GetProp(_options, "feature"))
            ?? new Dictionary<string, object?>();
        var featureOrder = global::Voxgig.Struct.StructUtils.GetPath(_options,
            global::Voxgig.Struct.StructUtils.Jt("__derived__", "featureorder")) as List<object?>
            ?? new List<object?>();
        foreach (var fnameObj in featureOrder)
        {
            var fname = fnameObj as string ?? "";
            var fopts = global::BluefinTecsUserBackofficeSdk.Helpers.ToMapAny(global::Voxgig.Struct.StructUtils.GetProp(featureOpts, fname));
            if (fopts != null &&
                fopts.TryGetValue("active", out var active) &&
                active is bool ab && ab)
            {
                _utility.FeatureAdd(_rootctx, global::BluefinTecsUserBackofficeSdk.SdkConfig.MakeFeature(fname));
            }
        }

        // Add extension features.
        if (global::Voxgig.Struct.StructUtils.GetProp(_options, "extend") is List<object?> extList)
        {
            foreach (var f in extList)
            {
                if (f is BaseFeature feat)
                {
                    _utility.FeatureAdd(_rootctx, feat);
                }
            }
        }

        // Initialize features.
        foreach (var f in Features.ToList())
        {
            _utility.FeatureInit(_rootctx, f);
        }

        _utility.FeatureHook(_rootctx, "PostConstruct");
    }

    public Dictionary<string, object?> OptionsMap()
    {
        return global::Voxgig.Struct.StructUtils.Clone(_options) as Dictionary<string, object?>
            ?? new Dictionary<string, object?>();
    }

    public Utility GetUtility()
    {
        return global::BluefinTecsUserBackofficeSdk.Utility.Copy(_utility);
    }

    public Context GetRootCtx()
    {
        return _rootctx;
    }

    public Dictionary<string, object?> Prepare(Dictionary<string, object?>? fetchargs)
    {
        var utility = _utility;

        fetchargs ??= new Dictionary<string, object?>();

        var ctrl = global::BluefinTecsUserBackofficeSdk.Helpers.ToMapAny(global::Voxgig.Struct.StructUtils.GetProp(fetchargs, "ctrl"))
            ?? new Dictionary<string, object?>();

        var ctx = utility.MakeContext(new Dictionary<string, object?>
        {
            ["opname"] = "prepare",
            ["ctrl"] = ctrl,
        }, _rootctx);

        var options = _options;

        var path = global::Voxgig.Struct.StructUtils.GetProp(fetchargs, "path") as string ?? "";
        var method = global::Voxgig.Struct.StructUtils.GetProp(fetchargs, "method") as string ?? "";
        if (method == "")
        {
            method = "GET";
        }

        var pathParams = global::BluefinTecsUserBackofficeSdk.Helpers.ToMapAny(global::Voxgig.Struct.StructUtils.GetProp(fetchargs, "params"))
            ?? new Dictionary<string, object?>();
        var query = global::BluefinTecsUserBackofficeSdk.Helpers.ToMapAny(global::Voxgig.Struct.StructUtils.GetProp(fetchargs, "query"))
            ?? new Dictionary<string, object?>();

        var headers = utility.PrepareHeaders(ctx);

        var basev = global::Voxgig.Struct.StructUtils.GetProp(options, "base") as string ?? "";
        var prefix = global::Voxgig.Struct.StructUtils.GetProp(options, "prefix") as string ?? "";
        var suffix = global::Voxgig.Struct.StructUtils.GetProp(options, "suffix") as string ?? "";

        ctx.Spec = new Spec(new Dictionary<string, object?>
        {
            ["base"] = basev,
            ["prefix"] = prefix,
            ["suffix"] = suffix,
            ["path"] = path,
            ["method"] = method,
            ["params"] = pathParams,
            ["query"] = query,
            ["headers"] = headers,
            ["body"] = global::Voxgig.Struct.StructUtils.GetProp(fetchargs, "body"),
            ["step"] = "start",
        });

        // Merge user-provided headers.
        if (global::Voxgig.Struct.StructUtils.GetProp(fetchargs, "headers") is Dictionary<string, object?> uhm)
        {
            foreach (var kv in uhm)
            {
                ctx.Spec.Headers[kv.Key] = kv.Value;
            }
        }

        utility.PrepareAuth(ctx);

        return utility.MakeFetchDef(ctx);
    }

    // Raw endpoint access is operator-controllable, like every entity op.
    // Blocking it means denying BOTH the 'direct' and 'graphql' tokens,
    // since either one reaches the same endpoint.
    public Dictionary<string, object?> Direct(Dictionary<string, object?>? fetchargs)
    {
        if (!OpAllowed("direct"))
        {
            return OpDenied("direct");
        }

        return RawRequest(fetchargs);
    }

    // Is this raw-access op permitted by the SDK's allow.op option?
    private bool OpAllowed(string op)
    {
        return global::Voxgig.Struct.StructUtils.GetPath(_options, global::Voxgig.Struct.StructUtils.Jt("allow", "op"))
            is string allow && allow.Contains(op);
    }

    private Dictionary<string, object?> OpDenied(string op)
    {
        var allow = global::Voxgig.Struct.StructUtils.GetPath(_options, global::Voxgig.Struct.StructUtils.Jt("allow", "op"))
            as string ?? "";
        return new Dictionary<string, object?>
        {
            ["ok"] = false,
            ["err"] = new Exception("BluefinTecsUserBackofficeSDK: " + op +
                ": operation not allowed by SDK option allow.op value: \"" +
                allow + "\""),
        };
    }

    // Ungated request path shared by Direct and Graphql, each of which
    // checks its own allow.op token first. Private, rather than a flag on
    // fetchargs: a caller-supplied marker would let anyone opt straight back
    // out of the gate by passing it.
    private Dictionary<string, object?> RawRequest(Dictionary<string, object?>? fetchargs)
    {
        var utility = _utility;

        Dictionary<string, object?> fetchdef;
        try
        {
            fetchdef = Prepare(fetchargs);
        }
        catch (Exception err)
        {
            return new Dictionary<string, object?>
            {
                ["ok"] = false,
                ["err"] = err,
            };
        }

        fetchargs ??= new Dictionary<string, object?>();

        var ctrl = global::BluefinTecsUserBackofficeSdk.Helpers.ToMapAny(global::Voxgig.Struct.StructUtils.GetProp(fetchargs, "ctrl"))
            ?? new Dictionary<string, object?>();

        var ctx = utility.MakeContext(new Dictionary<string, object?>
        {
            ["opname"] = "direct",
            ["ctrl"] = ctrl,
        }, _rootctx);

        var url = fetchdef.TryGetValue("url", out var u) ? u as string ?? "" : "";

        object? fetched;
        try
        {
            fetched = utility.Fetcher(ctx, url, fetchdef);
        }
        catch (Exception fetchErr)
        {
            return new Dictionary<string, object?>
            {
                ["ok"] = false,
                ["err"] = fetchErr,
            };
        }

        if (fetched == null)
        {
            return new Dictionary<string, object?>
            {
                ["ok"] = false,
                ["err"] = ctx.MakeError("direct_no_response", "response: undefined"),
            };
        }

        if (fetched is Dictionary<string, object?> fm)
        {
            var status = global::BluefinTecsUserBackofficeSdk.Helpers.ToInt(global::Voxgig.Struct.StructUtils.GetProp(fm, "status"));
            var headers = global::Voxgig.Struct.StructUtils.GetProp(fm, "headers");

            // No-body responses (204, 304) and explicit zero content-length
            // must skip JSON parsing - calling json() on an empty body errors.
            var contentLength = "";
            if (headers is Dictionary<string, object?> hm &&
                hm.TryGetValue("content-length", out var cl) && cl != null)
            {
                contentLength = global::Voxgig.Struct.StructUtils.Stringify(cl);
            }
            var noBody = status == 204 || status == 304 || contentLength == "0";

            object? jsonData = null;
            if (!noBody && global::Voxgig.Struct.StructUtils.GetProp(fm, "json") is Func<object?> jf)
            {
                // jf() returns null on parse error in our fetcher.
                jsonData = jf();
            }

            return new Dictionary<string, object?>
            {
                ["ok"] = status >= 200 && status < 300,
                ["status"] = status,
                ["headers"] = headers,
                ["data"] = jsonData,
            };
        }

        return new Dictionary<string, object?>
        {
            ["ok"] = false,
            ["err"] = ctx.MakeError("direct_invalid", "invalid response type"),
        };
    }

    // Raw GraphQL access: the pressure valve that makes the generated
    // surface's deliberate omissions (per-call selection sets, typed filter
    // builders, batching, subscriptions) livable — the whole schema stays
    // reachable.
    //
    // Thin wrapper over the same prepare/fetch path Direct uses, with the
    // one thing raw Direct cannot do for GraphQL: a GraphQL failure rides
    // HTTP 200 as a top-level `errors` array, so status alone would report a
    // failed query as ok.
    //
    // NOTE: like Direct, this bypasses the feature pipeline — no retry,
    // ratelimit or paging features apply.
    public Dictionary<string, object?> Graphql(string query,
        Dictionary<string, object?>? variables = null,
        Dictionary<string, object?>? ctrl = null)
    {
        if (!OpAllowed("graphql"))
        {
            return OpDenied("graphql");
        }

        var res = RawRequest(new Dictionary<string, object?>
        {
            ["method"] = "POST",
            ["headers"] = new Dictionary<string, object?>
            {
                ["content-type"] = "application/json",
            },
            ["body"] = new Dictionary<string, object?>
            {
                ["query"] = query,
                ["variables"] = variables ?? new Dictionary<string, object?>(),
            },
            ["ctrl"] = ctrl ?? new Dictionary<string, object?>(),
        });

        // Errors are read BEFORE any status check: a GraphQL parse or
        // validation failure comes back as HTTP 400 carrying the standard
        // { errors: [...] } body, and the raw path represents a non-2xx as
        // ok:false with no err — so returning early on status would discard
        // the server's own diagnostics, which are the only useful part of
        // that response.
        var errors = global::Voxgig.Struct.StructUtils.GetPath(res, global::Voxgig.Struct.StructUtils.Jt("data", "errors"))
            as List<object?>;

        if (null != errors && 0 < errors.Count)
        {
            var msg = global::Voxgig.Struct.StructUtils.GetProp(errors[0], "message") as string;
            if (string.IsNullOrEmpty(msg))
            {
                msg = "graphql error";
            }
            res["ok"] = false;
            res["err"] = new Exception("BluefinTecsUserBackofficeSDK: graphql: " + msg);
            res["graphql"] = errors;
        }

        return res;
    }


    // OutputActivateDigitalModule returns a OutputActivateDigitalModule entity bound to this client.
    // Idiomatic usage: client.OutputActivateDigitalModule().List(null) or
    // client.OutputActivateDigitalModule().Load(new() { ["id"] = ... }).
    public BluefinTecsUserBackofficeEntityBase OutputActivateDigitalModule(Dictionary<string, object?>? entopts = null)
    {
        return new global::BluefinTecsUserBackofficeSdk.Entity.OutputActivateDigitalModuleEntity(this, entopts);
    }

    // OutputActivatePortalModule returns a OutputActivatePortalModule entity bound to this client.
    // Idiomatic usage: client.OutputActivatePortalModule().List(null) or
    // client.OutputActivatePortalModule().Load(new() { ["id"] = ... }).
    public BluefinTecsUserBackofficeEntityBase OutputActivatePortalModule(Dictionary<string, object?>? entopts = null)
    {
        return new global::BluefinTecsUserBackofficeSdk.Entity.OutputActivatePortalModuleEntity(this, entopts);
    }

    // OutputActivateStoreModule returns a OutputActivateStoreModule entity bound to this client.
    // Idiomatic usage: client.OutputActivateStoreModule().List(null) or
    // client.OutputActivateStoreModule().Load(new() { ["id"] = ... }).
    public BluefinTecsUserBackofficeEntityBase OutputActivateStoreModule(Dictionary<string, object?>? entopts = null)
    {
        return new global::BluefinTecsUserBackofficeSdk.Entity.OutputActivateStoreModuleEntity(this, entopts);
    }

    // OutputActivateUser returns a OutputActivateUser entity bound to this client.
    // Idiomatic usage: client.OutputActivateUser().List(null) or
    // client.OutputActivateUser().Load(new() { ["id"] = ... }).
    public BluefinTecsUserBackofficeEntityBase OutputActivateUser(Dictionary<string, object?>? entopts = null)
    {
        return new global::BluefinTecsUserBackofficeSdk.Entity.OutputActivateUserEntity(this, entopts);
    }

    // OutputAssignRole returns a OutputAssignRole entity bound to this client.
    // Idiomatic usage: client.OutputAssignRole().List(null) or
    // client.OutputAssignRole().Load(new() { ["id"] = ... }).
    public BluefinTecsUserBackofficeEntityBase OutputAssignRole(Dictionary<string, object?>? entopts = null)
    {
        return new global::BluefinTecsUserBackofficeSdk.Entity.OutputAssignRoleEntity(this, entopts);
    }

    // OutputChangeLogo returns a OutputChangeLogo entity bound to this client.
    // Idiomatic usage: client.OutputChangeLogo().List(null) or
    // client.OutputChangeLogo().Load(new() { ["id"] = ... }).
    public BluefinTecsUserBackofficeEntityBase OutputChangeLogo(Dictionary<string, object?>? entopts = null)
    {
        return new global::BluefinTecsUserBackofficeSdk.Entity.OutputChangeLogoEntity(this, entopts);
    }

    // OutputCreateMandator returns a OutputCreateMandator entity bound to this client.
    // Idiomatic usage: client.OutputCreateMandator().List(null) or
    // client.OutputCreateMandator().Load(new() { ["id"] = ... }).
    public BluefinTecsUserBackofficeEntityBase OutputCreateMandator(Dictionary<string, object?>? entopts = null)
    {
        return new global::BluefinTecsUserBackofficeSdk.Entity.OutputCreateMandatorEntity(this, entopts);
    }

    // OutputCreateServiceUser returns a OutputCreateServiceUser entity bound to this client.
    // Idiomatic usage: client.OutputCreateServiceUser().List(null) or
    // client.OutputCreateServiceUser().Load(new() { ["id"] = ... }).
    public BluefinTecsUserBackofficeEntityBase OutputCreateServiceUser(Dictionary<string, object?>? entopts = null)
    {
        return new global::BluefinTecsUserBackofficeSdk.Entity.OutputCreateServiceUserEntity(this, entopts);
    }

    // OutputDeactivateUser returns a OutputDeactivateUser entity bound to this client.
    // Idiomatic usage: client.OutputDeactivateUser().List(null) or
    // client.OutputDeactivateUser().Load(new() { ["id"] = ... }).
    public BluefinTecsUserBackofficeEntityBase OutputDeactivateUser(Dictionary<string, object?>? entopts = null)
    {
        return new global::BluefinTecsUserBackofficeSdk.Entity.OutputDeactivateUserEntity(this, entopts);
    }

    // OutputGetKycDocument returns a OutputGetKycDocument entity bound to this client.
    // Idiomatic usage: client.OutputGetKycDocument().List(null) or
    // client.OutputGetKycDocument().Load(new() { ["id"] = ... }).
    public BluefinTecsUserBackofficeEntityBase OutputGetKycDocument(Dictionary<string, object?>? entopts = null)
    {
        return new global::BluefinTecsUserBackofficeSdk.Entity.OutputGetKycDocumentEntity(this, entopts);
    }

    // OutputGetLogo returns a OutputGetLogo entity bound to this client.
    // Idiomatic usage: client.OutputGetLogo().List(null) or
    // client.OutputGetLogo().Load(new() { ["id"] = ... }).
    public BluefinTecsUserBackofficeEntityBase OutputGetLogo(Dictionary<string, object?>? entopts = null)
    {
        return new global::BluefinTecsUserBackofficeSdk.Entity.OutputGetLogoEntity(this, entopts);
    }

    // OutputListOfAvailableRole returns a OutputListOfAvailableRole entity bound to this client.
    // Idiomatic usage: client.OutputListOfAvailableRole().List(null) or
    // client.OutputListOfAvailableRole().Load(new() { ["id"] = ... }).
    public BluefinTecsUserBackofficeEntityBase OutputListOfAvailableRole(Dictionary<string, object?>? entopts = null)
    {
        return new global::BluefinTecsUserBackofficeSdk.Entity.OutputListOfAvailableRoleEntity(this, entopts);
    }

    // OutputListOfMandator returns a OutputListOfMandator entity bound to this client.
    // Idiomatic usage: client.OutputListOfMandator().List(null) or
    // client.OutputListOfMandator().Load(new() { ["id"] = ... }).
    public BluefinTecsUserBackofficeEntityBase OutputListOfMandator(Dictionary<string, object?>? entopts = null)
    {
        return new global::BluefinTecsUserBackofficeSdk.Entity.OutputListOfMandatorEntity(this, entopts);
    }

    // OutputListOfModule returns a OutputListOfModule entity bound to this client.
    // Idiomatic usage: client.OutputListOfModule().List(null) or
    // client.OutputListOfModule().Load(new() { ["id"] = ... }).
    public BluefinTecsUserBackofficeEntityBase OutputListOfModule(Dictionary<string, object?>? entopts = null)
    {
        return new global::BluefinTecsUserBackofficeSdk.Entity.OutputListOfModuleEntity(this, entopts);
    }

    // OutputListOfRoleGroup returns a OutputListOfRoleGroup entity bound to this client.
    // Idiomatic usage: client.OutputListOfRoleGroup().List(null) or
    // client.OutputListOfRoleGroup().Load(new() { ["id"] = ... }).
    public BluefinTecsUserBackofficeEntityBase OutputListOfRoleGroup(Dictionary<string, object?>? entopts = null)
    {
        return new global::BluefinTecsUserBackofficeSdk.Entity.OutputListOfRoleGroupEntity(this, entopts);
    }

    // OutputListOfTransactionsHistory returns a OutputListOfTransactionsHistory entity bound to this client.
    // Idiomatic usage: client.OutputListOfTransactionsHistory().List(null) or
    // client.OutputListOfTransactionsHistory().Load(new() { ["id"] = ... }).
    public BluefinTecsUserBackofficeEntityBase OutputListOfTransactionsHistory(Dictionary<string, object?>? entopts = null)
    {
        return new global::BluefinTecsUserBackofficeSdk.Entity.OutputListOfTransactionsHistoryEntity(this, entopts);
    }

    // OutputListOfUser returns a OutputListOfUser entity bound to this client.
    // Idiomatic usage: client.OutputListOfUser().List(null) or
    // client.OutputListOfUser().Load(new() { ["id"] = ... }).
    public BluefinTecsUserBackofficeEntityBase OutputListOfUser(Dictionary<string, object?>? entopts = null)
    {
        return new global::BluefinTecsUserBackofficeSdk.Entity.OutputListOfUserEntity(this, entopts);
    }

    // OutputProvideCredential returns a OutputProvideCredential entity bound to this client.
    // Idiomatic usage: client.OutputProvideCredential().List(null) or
    // client.OutputProvideCredential().Load(new() { ["id"] = ... }).
    public BluefinTecsUserBackofficeEntityBase OutputProvideCredential(Dictionary<string, object?>? entopts = null)
    {
        return new global::BluefinTecsUserBackofficeSdk.Entity.OutputProvideCredentialEntity(this, entopts);
    }

    // OutputRegisterUser returns a OutputRegisterUser entity bound to this client.
    // Idiomatic usage: client.OutputRegisterUser().List(null) or
    // client.OutputRegisterUser().Load(new() { ["id"] = ... }).
    public BluefinTecsUserBackofficeEntityBase OutputRegisterUser(Dictionary<string, object?>? entopts = null)
    {
        return new global::BluefinTecsUserBackofficeSdk.Entity.OutputRegisterUserEntity(this, entopts);
    }

    // OutputRemoveRole returns a OutputRemoveRole entity bound to this client.
    // Idiomatic usage: client.OutputRemoveRole().List(null) or
    // client.OutputRemoveRole().Load(new() { ["id"] = ... }).
    public BluefinTecsUserBackofficeEntityBase OutputRemoveRole(Dictionary<string, object?>? entopts = null)
    {
        return new global::BluefinTecsUserBackofficeSdk.Entity.OutputRemoveRoleEntity(this, entopts);
    }

    // OutputResendLink returns a OutputResendLink entity bound to this client.
    // Idiomatic usage: client.OutputResendLink().List(null) or
    // client.OutputResendLink().Load(new() { ["id"] = ... }).
    public BluefinTecsUserBackofficeEntityBase OutputResendLink(Dictionary<string, object?>? entopts = null)
    {
        return new global::BluefinTecsUserBackofficeSdk.Entity.OutputResendLinkEntity(this, entopts);
    }

    // OutputResetPassword returns a OutputResetPassword entity bound to this client.
    // Idiomatic usage: client.OutputResetPassword().List(null) or
    // client.OutputResetPassword().Load(new() { ["id"] = ... }).
    public BluefinTecsUserBackofficeEntityBase OutputResetPassword(Dictionary<string, object?>? entopts = null)
    {
        return new global::BluefinTecsUserBackofficeSdk.Entity.OutputResetPasswordEntity(this, entopts);
    }

    // OutputUpdateConsumer returns a OutputUpdateConsumer entity bound to this client.
    // Idiomatic usage: client.OutputUpdateConsumer().List(null) or
    // client.OutputUpdateConsumer().Load(new() { ["id"] = ... }).
    public BluefinTecsUserBackofficeEntityBase OutputUpdateConsumer(Dictionary<string, object?>? entopts = null)
    {
        return new global::BluefinTecsUserBackofficeSdk.Entity.OutputUpdateConsumerEntity(this, entopts);
    }

    // OutputUpdateProfile returns a OutputUpdateProfile entity bound to this client.
    // Idiomatic usage: client.OutputUpdateProfile().List(null) or
    // client.OutputUpdateProfile().Load(new() { ["id"] = ... }).
    public BluefinTecsUserBackofficeEntityBase OutputUpdateProfile(Dictionary<string, object?>? entopts = null)
    {
        return new global::BluefinTecsUserBackofficeSdk.Entity.OutputUpdateProfileEntity(this, entopts);
    }

    // Version returns a Version entity bound to this client.
    // Idiomatic usage: client.Version().List(null) or
    // client.Version().Load(new() { ["id"] = ... }).
    public BluefinTecsUserBackofficeEntityBase Version(Dictionary<string, object?>? entopts = null)
    {
        return new global::BluefinTecsUserBackofficeSdk.Entity.VersionEntity(this, entopts);
    }


    public static BluefinTecsUserBackofficeSDK TestSDK(Dictionary<string, object?>? testopts,
        Dictionary<string, object?>? sdkopts)
    {
        sdkopts = global::Voxgig.Struct.StructUtils.Clone(sdkopts ?? new Dictionary<string, object?>())
            as Dictionary<string, object?> ?? new Dictionary<string, object?>();

        testopts = global::Voxgig.Struct.StructUtils.Clone(testopts ?? new Dictionary<string, object?>())
            as Dictionary<string, object?> ?? new Dictionary<string, object?>();
        testopts["active"] = true;

        global::Voxgig.Struct.StructUtils.SetPath(sdkopts, global::Voxgig.Struct.StructUtils.Jt("feature", "test"), testopts);

        var sdk = new BluefinTecsUserBackofficeSDK(sdkopts)
        {
            Mode = "test",
        };

        return sdk;
    }
}

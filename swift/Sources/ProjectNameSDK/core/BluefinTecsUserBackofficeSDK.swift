// BluefinTecsUserBackoffice SDK client.

import Foundation

public final class BluefinTecsUserBackofficeSDK {
  public var mode = "live"
  private var options: VMap = VMap()
  private let utility: Utility
  public var features: [BaseFeature] = []
  private var rootctx: Context!

  public init(_ optionsIn: VMap? = nil) {
    utility = Utility()

    let config = SdkConfig.makeConfig()

    var ctxmap: [String: Any?] = [
      "client": self,
      "utility": utility,
      "config": config,
      "shared": VMap(),
    ]
    if let o = optionsIn { ctxmap["options"] = o }

    rootctx = utility.makeContext(ctxmap, nil)

    options = utility.makeOptions(rootctx)

    if gpath(options, "feature", "test", "active") == .bool(true) {
      mode = "test"
    }

    rootctx.options = options

    // Add features in the resolved order (makeOptions puts an explicit list
    // order first, else defaults to test-first). Ordering matters: the `test`
    // feature installs the base mock transport and the transport features
    // (retry/cache/netsim/proxy/ratelimit) wrap whatever is current, so `test`
    // must be added before them to sit at the base of the chain.
    let featureOpts = gp(options, "feature").asMap ?? VMap()
    if let featureOrder = gpath(options, "__derived__", "featureorder").asList {
      for fnameVal in featureOrder.items {
        let fname = fnameVal.asString ?? ""
        if fname != "", let fopts = gp(featureOpts, fname).asMap,
          fopts.entries["active"]?.asBool == true {
          utility.featureAdd(rootctx, SdkConfig.makeFeature(fname))
        }
      }
    }

    // Add extension features.
    if let extList = gp(options, "extend").asList {
      for f in extList.items {
        if let feat = f.asNative as? BaseFeature {
          utility.featureAdd(rootctx, feat)
        }
      }
    }

    // Initialize features.
    for f in features {
      utility.featureInit(rootctx, f)
    }

    utility.featureHook(rootctx, "PostConstruct")
  }

  public func optionsMap() -> VMap {
    return clone(.map(options)).asMap ?? VMap()
  }

  public func getUtility() -> Utility {
    return Utility.copy(utility)
  }

  public func getRootCtx() -> Context {
    return rootctx
  }

  public func prepare(_ fetchargsIn: VMap?) throws -> VMap {
    let utility = self.utility

    let fetchargs = fetchargsIn ?? VMap()

    let ctrl = gp(fetchargs, "ctrl").asMap ?? VMap()

    let ctx = utility.makeContext(["opname": "prepare", "ctrl": ctrl], rootctx)

    let options = self.options

    let path = gp(fetchargs, "path").asString ?? ""
    var method = gp(fetchargs, "method").asString ?? ""
    if method == "" { method = "GET" }

    let pathParams = gp(fetchargs, "params").asMap ?? VMap()
    let query = gp(fetchargs, "query").asMap ?? VMap()

    let headers = utility.prepareHeaders(ctx)

    let basev = gp(options, "base").asString ?? ""
    let prefix = gp(options, "prefix").asString ?? ""
    let suffix = gp(options, "suffix").asString ?? ""

    let specmap = VMap()
    specmap.entries["base"] = .string(basev)
    specmap.entries["prefix"] = .string(prefix)
    specmap.entries["suffix"] = .string(suffix)
    specmap.entries["path"] = .string(path)
    specmap.entries["method"] = .string(method)
    specmap.entries["params"] = .map(pathParams)
    specmap.entries["query"] = .map(query)
    specmap.entries["headers"] = .map(headers)
    specmap.entries["body"] = gp(fetchargs, "body")
    specmap.entries["step"] = .string("start")
    ctx.spec = Spec(specmap)

    // Merge user-provided headers.
    if let uhm = gp(fetchargs, "headers").asMap {
      for (k, v) in uhm.entries {
        ctx.spec!.headers.entries[k] = v
      }
    }

    _ = try utility.prepareAuth(ctx)

    return try utility.makeFetchDef(ctx)
  }

  public func direct(_ fetchargsIn: VMap?) -> VMap {
    let utility = self.utility

    let fetchdef: VMap
    do {
      fetchdef = try prepare(fetchargsIn)
    } catch {
      let r = VMap()
      r.entries["ok"] = .bool(false)
      r.entries["err"] = .nat(error)
      return r
    }

    let fetchargs = fetchargsIn ?? VMap()
    let ctrl = gp(fetchargs, "ctrl").asMap ?? VMap()

    let ctx = utility.makeContext(["opname": "direct", "ctrl": ctrl], rootctx)

    let url = gp(fetchdef, "url").asString ?? ""

    let fetched: Value
    do {
      fetched = try utility.fetcher(ctx, url, fetchdef)
    } catch {
      let r = VMap()
      r.entries["ok"] = .bool(false)
      r.entries["err"] = .nat(error)
      return r
    }

    if isNil(fetched) {
      let r = VMap()
      r.entries["ok"] = .bool(false)
      r.entries["err"] = .nat(ctx.makeError("direct_no_response", "response: undefined"))
      return r
    }

    if let fm = fetched.asMap {
      let status = toInt(gp(fm, "status"))
      let headers = gp(fm, "headers")

      // No-body responses (204, 304) and explicit zero content-length must
      // skip JSON parsing.
      var contentLength = ""
      if let hm = headers.asMap, let cl = hm.entries["content-length"], !isNil(cl) {
        contentLength = stringify(cl)
      }
      let noBody = status == 204 || status == 304 || contentLength == "0"

      var jsonData: Value = .noval
      if !noBody, let jf = gp(fm, "json").asNative as? NativeCall0 {
        jsonData = jf()
      }

      let r = VMap()
      r.entries["ok"] = .bool(status >= 200 && status < 300)
      r.entries["status"] = .int(Int64(status))
      r.entries["headers"] = headers
      r.entries["data"] = jsonData
      return r
    }

    let r = VMap()
    r.entries["ok"] = .bool(false)
    r.entries["err"] = .nat(ctx.makeError("direct_invalid", "invalid response type"))
    return r
  }


  // OutputActivateDigitalModule returns a OutputActivateDigitalModule entity bound to this client.
  // Idiomatic usage: try client.OutputActivateDigitalModule().list(nil) or
  // try client.OutputActivateDigitalModule().load(vm(("id", .string("..."))), nil).
  public func OutputActivateDigitalModule(_ entopts: VMap? = nil) -> BluefinTecsUserBackofficeEntityBase {
    return OutputActivateDigitalModuleEntity(self, entopts)
  }

  // OutputActivatePortalModule returns a OutputActivatePortalModule entity bound to this client.
  // Idiomatic usage: try client.OutputActivatePortalModule().list(nil) or
  // try client.OutputActivatePortalModule().load(vm(("id", .string("..."))), nil).
  public func OutputActivatePortalModule(_ entopts: VMap? = nil) -> BluefinTecsUserBackofficeEntityBase {
    return OutputActivatePortalModuleEntity(self, entopts)
  }

  // OutputActivateStoreModule returns a OutputActivateStoreModule entity bound to this client.
  // Idiomatic usage: try client.OutputActivateStoreModule().list(nil) or
  // try client.OutputActivateStoreModule().load(vm(("id", .string("..."))), nil).
  public func OutputActivateStoreModule(_ entopts: VMap? = nil) -> BluefinTecsUserBackofficeEntityBase {
    return OutputActivateStoreModuleEntity(self, entopts)
  }

  // OutputActivateUser returns a OutputActivateUser entity bound to this client.
  // Idiomatic usage: try client.OutputActivateUser().list(nil) or
  // try client.OutputActivateUser().load(vm(("id", .string("..."))), nil).
  public func OutputActivateUser(_ entopts: VMap? = nil) -> BluefinTecsUserBackofficeEntityBase {
    return OutputActivateUserEntity(self, entopts)
  }

  // OutputAssignRole returns a OutputAssignRole entity bound to this client.
  // Idiomatic usage: try client.OutputAssignRole().list(nil) or
  // try client.OutputAssignRole().load(vm(("id", .string("..."))), nil).
  public func OutputAssignRole(_ entopts: VMap? = nil) -> BluefinTecsUserBackofficeEntityBase {
    return OutputAssignRoleEntity(self, entopts)
  }

  // OutputChangeLogo returns a OutputChangeLogo entity bound to this client.
  // Idiomatic usage: try client.OutputChangeLogo().list(nil) or
  // try client.OutputChangeLogo().load(vm(("id", .string("..."))), nil).
  public func OutputChangeLogo(_ entopts: VMap? = nil) -> BluefinTecsUserBackofficeEntityBase {
    return OutputChangeLogoEntity(self, entopts)
  }

  // OutputCreateMandator returns a OutputCreateMandator entity bound to this client.
  // Idiomatic usage: try client.OutputCreateMandator().list(nil) or
  // try client.OutputCreateMandator().load(vm(("id", .string("..."))), nil).
  public func OutputCreateMandator(_ entopts: VMap? = nil) -> BluefinTecsUserBackofficeEntityBase {
    return OutputCreateMandatorEntity(self, entopts)
  }

  // OutputCreateServiceUser returns a OutputCreateServiceUser entity bound to this client.
  // Idiomatic usage: try client.OutputCreateServiceUser().list(nil) or
  // try client.OutputCreateServiceUser().load(vm(("id", .string("..."))), nil).
  public func OutputCreateServiceUser(_ entopts: VMap? = nil) -> BluefinTecsUserBackofficeEntityBase {
    return OutputCreateServiceUserEntity(self, entopts)
  }

  // OutputDeactivateUser returns a OutputDeactivateUser entity bound to this client.
  // Idiomatic usage: try client.OutputDeactivateUser().list(nil) or
  // try client.OutputDeactivateUser().load(vm(("id", .string("..."))), nil).
  public func OutputDeactivateUser(_ entopts: VMap? = nil) -> BluefinTecsUserBackofficeEntityBase {
    return OutputDeactivateUserEntity(self, entopts)
  }

  // OutputGetKycDocument returns a OutputGetKycDocument entity bound to this client.
  // Idiomatic usage: try client.OutputGetKycDocument().list(nil) or
  // try client.OutputGetKycDocument().load(vm(("id", .string("..."))), nil).
  public func OutputGetKycDocument(_ entopts: VMap? = nil) -> BluefinTecsUserBackofficeEntityBase {
    return OutputGetKycDocumentEntity(self, entopts)
  }

  // OutputGetLogo returns a OutputGetLogo entity bound to this client.
  // Idiomatic usage: try client.OutputGetLogo().list(nil) or
  // try client.OutputGetLogo().load(vm(("id", .string("..."))), nil).
  public func OutputGetLogo(_ entopts: VMap? = nil) -> BluefinTecsUserBackofficeEntityBase {
    return OutputGetLogoEntity(self, entopts)
  }

  // OutputListOfAvailableRole returns a OutputListOfAvailableRole entity bound to this client.
  // Idiomatic usage: try client.OutputListOfAvailableRole().list(nil) or
  // try client.OutputListOfAvailableRole().load(vm(("id", .string("..."))), nil).
  public func OutputListOfAvailableRole(_ entopts: VMap? = nil) -> BluefinTecsUserBackofficeEntityBase {
    return OutputListOfAvailableRoleEntity(self, entopts)
  }

  // OutputListOfMandator returns a OutputListOfMandator entity bound to this client.
  // Idiomatic usage: try client.OutputListOfMandator().list(nil) or
  // try client.OutputListOfMandator().load(vm(("id", .string("..."))), nil).
  public func OutputListOfMandator(_ entopts: VMap? = nil) -> BluefinTecsUserBackofficeEntityBase {
    return OutputListOfMandatorEntity(self, entopts)
  }

  // OutputListOfModule returns a OutputListOfModule entity bound to this client.
  // Idiomatic usage: try client.OutputListOfModule().list(nil) or
  // try client.OutputListOfModule().load(vm(("id", .string("..."))), nil).
  public func OutputListOfModule(_ entopts: VMap? = nil) -> BluefinTecsUserBackofficeEntityBase {
    return OutputListOfModuleEntity(self, entopts)
  }

  // OutputListOfRoleGroup returns a OutputListOfRoleGroup entity bound to this client.
  // Idiomatic usage: try client.OutputListOfRoleGroup().list(nil) or
  // try client.OutputListOfRoleGroup().load(vm(("id", .string("..."))), nil).
  public func OutputListOfRoleGroup(_ entopts: VMap? = nil) -> BluefinTecsUserBackofficeEntityBase {
    return OutputListOfRoleGroupEntity(self, entopts)
  }

  // OutputListOfTransactionsHistory returns a OutputListOfTransactionsHistory entity bound to this client.
  // Idiomatic usage: try client.OutputListOfTransactionsHistory().list(nil) or
  // try client.OutputListOfTransactionsHistory().load(vm(("id", .string("..."))), nil).
  public func OutputListOfTransactionsHistory(_ entopts: VMap? = nil) -> BluefinTecsUserBackofficeEntityBase {
    return OutputListOfTransactionsHistoryEntity(self, entopts)
  }

  // OutputListOfUser returns a OutputListOfUser entity bound to this client.
  // Idiomatic usage: try client.OutputListOfUser().list(nil) or
  // try client.OutputListOfUser().load(vm(("id", .string("..."))), nil).
  public func OutputListOfUser(_ entopts: VMap? = nil) -> BluefinTecsUserBackofficeEntityBase {
    return OutputListOfUserEntity(self, entopts)
  }

  // OutputProvideCredential returns a OutputProvideCredential entity bound to this client.
  // Idiomatic usage: try client.OutputProvideCredential().list(nil) or
  // try client.OutputProvideCredential().load(vm(("id", .string("..."))), nil).
  public func OutputProvideCredential(_ entopts: VMap? = nil) -> BluefinTecsUserBackofficeEntityBase {
    return OutputProvideCredentialEntity(self, entopts)
  }

  // OutputRegisterUser returns a OutputRegisterUser entity bound to this client.
  // Idiomatic usage: try client.OutputRegisterUser().list(nil) or
  // try client.OutputRegisterUser().load(vm(("id", .string("..."))), nil).
  public func OutputRegisterUser(_ entopts: VMap? = nil) -> BluefinTecsUserBackofficeEntityBase {
    return OutputRegisterUserEntity(self, entopts)
  }

  // OutputRemoveRole returns a OutputRemoveRole entity bound to this client.
  // Idiomatic usage: try client.OutputRemoveRole().list(nil) or
  // try client.OutputRemoveRole().load(vm(("id", .string("..."))), nil).
  public func OutputRemoveRole(_ entopts: VMap? = nil) -> BluefinTecsUserBackofficeEntityBase {
    return OutputRemoveRoleEntity(self, entopts)
  }

  // OutputResendLink returns a OutputResendLink entity bound to this client.
  // Idiomatic usage: try client.OutputResendLink().list(nil) or
  // try client.OutputResendLink().load(vm(("id", .string("..."))), nil).
  public func OutputResendLink(_ entopts: VMap? = nil) -> BluefinTecsUserBackofficeEntityBase {
    return OutputResendLinkEntity(self, entopts)
  }

  // OutputResetPassword returns a OutputResetPassword entity bound to this client.
  // Idiomatic usage: try client.OutputResetPassword().list(nil) or
  // try client.OutputResetPassword().load(vm(("id", .string("..."))), nil).
  public func OutputResetPassword(_ entopts: VMap? = nil) -> BluefinTecsUserBackofficeEntityBase {
    return OutputResetPasswordEntity(self, entopts)
  }

  // OutputUpdateConsumer returns a OutputUpdateConsumer entity bound to this client.
  // Idiomatic usage: try client.OutputUpdateConsumer().list(nil) or
  // try client.OutputUpdateConsumer().load(vm(("id", .string("..."))), nil).
  public func OutputUpdateConsumer(_ entopts: VMap? = nil) -> BluefinTecsUserBackofficeEntityBase {
    return OutputUpdateConsumerEntity(self, entopts)
  }

  // OutputUpdateProfile returns a OutputUpdateProfile entity bound to this client.
  // Idiomatic usage: try client.OutputUpdateProfile().list(nil) or
  // try client.OutputUpdateProfile().load(vm(("id", .string("..."))), nil).
  public func OutputUpdateProfile(_ entopts: VMap? = nil) -> BluefinTecsUserBackofficeEntityBase {
    return OutputUpdateProfileEntity(self, entopts)
  }

  // Version returns a Version entity bound to this client.
  // Idiomatic usage: try client.Version().list(nil) or
  // try client.Version().load(vm(("id", .string("..."))), nil).
  public func Version(_ entopts: VMap? = nil) -> BluefinTecsUserBackofficeEntityBase {
    return VersionEntity(self, entopts)
  }


  public static func testSDK(_ testoptsIn: VMap?, _ sdkoptsIn: VMap?) -> BluefinTecsUserBackofficeSDK {
    let sdkopts = clone(.map(sdkoptsIn ?? VMap())).asMap ?? VMap()

    let testopts = clone(.map(testoptsIn ?? VMap())).asMap ?? VMap()
    testopts.entries["active"] = .bool(true)

    _ = setpath(.map(sdkopts), jtp("feature", "test"), .map(testopts))

    let sdk = BluefinTecsUserBackofficeSDK(sdkopts)
    sdk.mode = "test"
    return sdk
  }
}

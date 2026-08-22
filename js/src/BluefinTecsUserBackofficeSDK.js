// BluefinTecsUserBackoffice Js SDK

const { OutputActivateDigitalModuleEntity } = require('./entity/OutputActivateDigitalModuleEntity')
const { OutputActivatePortalModuleEntity } = require('./entity/OutputActivatePortalModuleEntity')
const { OutputActivateStoreModuleEntity } = require('./entity/OutputActivateStoreModuleEntity')
const { OutputActivateUserEntity } = require('./entity/OutputActivateUserEntity')
const { OutputAssignRoleEntity } = require('./entity/OutputAssignRoleEntity')
const { OutputChangeLogoEntity } = require('./entity/OutputChangeLogoEntity')
const { OutputCreateMandatorEntity } = require('./entity/OutputCreateMandatorEntity')
const { OutputCreateServiceUserEntity } = require('./entity/OutputCreateServiceUserEntity')
const { OutputDeactivateUserEntity } = require('./entity/OutputDeactivateUserEntity')
const { OutputGetKycDocumentEntity } = require('./entity/OutputGetKycDocumentEntity')
const { OutputGetLogoEntity } = require('./entity/OutputGetLogoEntity')
const { OutputListOfAvailableRoleEntity } = require('./entity/OutputListOfAvailableRoleEntity')
const { OutputListOfMandatorEntity } = require('./entity/OutputListOfMandatorEntity')
const { OutputListOfModuleEntity } = require('./entity/OutputListOfModuleEntity')
const { OutputListOfRoleGroupEntity } = require('./entity/OutputListOfRoleGroupEntity')
const { OutputListOfTransactionsHistoryEntity } = require('./entity/OutputListOfTransactionsHistoryEntity')
const { OutputListOfUserEntity } = require('./entity/OutputListOfUserEntity')
const { OutputProvideCredentialEntity } = require('./entity/OutputProvideCredentialEntity')
const { OutputRegisterUserEntity } = require('./entity/OutputRegisterUserEntity')
const { OutputRemoveRoleEntity } = require('./entity/OutputRemoveRoleEntity')
const { OutputResendLinkEntity } = require('./entity/OutputResendLinkEntity')
const { OutputResetPasswordEntity } = require('./entity/OutputResetPasswordEntity')
const { OutputUpdateConsumerEntity } = require('./entity/OutputUpdateConsumerEntity')
const { OutputUpdateProfileEntity } = require('./entity/OutputUpdateProfileEntity')
const { VersionEntity } = require('./entity/VersionEntity')


const { inspect } = require('node:util')

const { config } = require('./Config')
const { Utility } = require('./utility/Utility')
const { BluefinTecsUserBackofficeEntityBase } = require('./BluefinTecsUserBackofficeEntityBase')


const { BaseFeature } = require('./feature/base/BaseFeature')


const stdutil = new Utility()


class BluefinTecsUserBackofficeSDK {
  _mode = 'live'
  _options
  _utility = new Utility()
  _features
  _rootctx

  constructor(options) {

    this._rootctx = this._utility.makeContext({
      client: this,
      utility: this._utility,
      config,
      options,
      shared: new WeakMap()
    })

    this._options = this._utility.makeOptions(this._rootctx)

    const struct = this._utility.struct
    const getpath = struct.getpath

    if (true === getpath(this._options.feature, 'test.active')) {
      this._mode = 'test'
    }

    this._rootctx.options = this._options

    this._features = []

    const featureAdd = this._utility.featureAdd
    const featureInit = this._utility.featureInit

    // Add features in the resolved order (makeOptions puts an explicit
    // array order first, else defaults to test-first). Ordering matters:
    // the `test` feature installs the base mock transport and the transport
    // features (retry/cache/netsim/proxy/ratelimit) wrap whatever is current,
    // so `test` must be added before them to sit at the base of the chain.
    const extend = this._options.extend || []

    const featureorder = getpath(this._options, '__derived__.featureorder') || []
    for (const fname of featureorder) {
      const fopts = this._options.feature[fname] || {}
      if (fopts.active) {
        // An active name with no generated class is legal when an
        // extend-supplied instance carries that name (station's adopt
        // path): the instance is added below, positioned by its own
        // __after__ entry, so skip it here rather than fail construction.
        if (!this._rootctx.config.hasFeature(fname) &&
          extend.some((f) => fname === f.name)) {
          continue
        }
        featureAdd(this._rootctx, this._rootctx.config.makeFeature(fname))
      }
    }

    for (let f of extend) {
      featureAdd(this._rootctx, f)
    }

    for (let f of this._features) {
      featureInit(this._rootctx, f)
    }

    const featureHook = this._utility.featureHook
    featureHook(this._rootctx, 'PostConstruct')
  }


  options() {
    return this._utility.struct.clone(this._options)
  }


  utility() {
    return this._utility.struct.clone(this._utility)
  }


  async prepare(fetchargs) {
    const utility = this._utility
    const struct = utility.struct
    const clone = struct.clone

    const {
      makeContext,
      makeFetchDef,
      prepareHeaders,
      prepareAuth,
    } = utility

    fetchargs = fetchargs || {}

    let ctx = makeContext({
      opname: 'prepare',
      ctrl: fetchargs.ctrl || {},
    }, this._rootctx)

    const options = this._options

    // Build spec directly from SDK options + user-provided fetch args.
    const spec = {
      base: options.base,
      prefix: options.prefix,
      suffix: options.suffix,
      path: fetchargs.path || '',
      method: fetchargs.method || 'GET',
      params: fetchargs.params || {},
      query: fetchargs.query || {},
      headers: prepareHeaders(ctx),
      body: fetchargs.body,
      step: 'start',
    }

    ctx.spec = spec

    // Merge user-provided headers over SDK defaults.
    if (fetchargs.headers) {
      const uheaders = fetchargs.headers
      for (let key in uheaders) {
        spec.headers[key] = uheaders[key]
      }
    }

    // Apply SDK auth (apikey, auth prefix, etc.)
    const authResult = prepareAuth(ctx)
    if (authResult instanceof Error) {
      return authResult
    }

    return makeFetchDef(ctx)
  }


  // Raw endpoint access is operator-controllable, like every entity op.
  // Blocking it means denying BOTH the 'direct' and 'graphql' tokens, since
  // either one reaches the same endpoint.
  async direct(fetchargs) {
    if (!this._options.allow.op.includes('direct')) {
      return {
        ok: false,
        err: new Error('BluefinTecsUserBackofficeSDK: direct: operation not allowed by' +
          ' SDK option allow.op value: "' + this._options.allow.op + '"'),
      }
    }

    return this._rawRequest(fetchargs)
  }


  // Ungated request path shared by direct() and graphql(), each of which
  // checks its own allow.op token first. Private, rather than a flag on
  // fetchargs: a caller-supplied marker would let anyone opt straight back
  // out of the gate by passing it.
  async _rawRequest(fetchargs) {
    const utility = this._utility

    const fetcher = utility.fetcher
    const makeContext = utility.makeContext

    const fetchdef = await this.prepare(fetchargs)
    if (fetchdef instanceof Error) {
      return fetchdef
    }

    let ctx = makeContext({
      opname: 'direct',
      ctrl: (fetchargs || {}).ctrl || {},
    }, this._rootctx)

    try {
      const fetched = await fetcher(ctx, fetchdef.url, fetchdef)

      if (null == fetched) {
        return { ok: false, err: ctx.error('direct_no_response', 'response: undefined') }
      }
      else if (fetched instanceof Error) {
        return { ok: false, err: fetched }
      }

      const status = fetched.status

      // No body responses (204 No Content, 304 Not Modified) and explicit
      // zero content-length must skip JSON parsing — fetched.json() would
      // throw `Unexpected end of JSON input` on an empty body.
      const headers = fetched.headers
      const contentLength = headers && 'function' === typeof headers.get
        ? headers.get('content-length')
        : (headers || {})['content-length']
      const noBody = 204 === status || 304 === status || '0' === String(contentLength)

      let json = undefined
      if (!noBody) {
        try {
          json = 'function' === typeof fetched.json ? await fetched.json() : fetched.json
        }
        catch (parseErr) {
          // Body wasn't valid JSON — surface the raw response rather than
          // throwing. data stays undefined; callers can inspect status/headers.
          json = undefined
        }
      }

      return {
        ok: status >= 200 && status < 300,
        status,
        headers: fetched.headers,
        data: json,
      }
    }
    catch (err) {
      return { ok: false, err }
    }
  }



  // Raw GraphQL access: the pressure valve that makes the generated
  // surface's deliberate omissions (per-call selection sets, typed filter
  // builders, batching, subscriptions) livable — the whole schema stays
  // reachable.
  //
  // Thin wrapper over the same prepare/fetch path `direct` uses, with the
  // one thing raw `direct` cannot do for GraphQL: a GraphQL failure rides
  // HTTP 200 as a top-level `errors` array, so status alone would report a
  // failed query as ok.
  //
  // NOTE: like `direct`, this bypasses the feature pipeline — no retry,
  // ratelimit or paging features apply.
  async graphql(query, variables, ctrl) {
    const options = this._options

    if (!options.allow.op.includes('graphql')) {
      return {
        ok: false,
        err: new Error('BluefinTecsUserBackofficeSDK: graphql: operation not allowed by' +
          ' SDK option allow.op value: "' + options.allow.op + '"'),
      }
    }

    const res = await this._rawRequest({
      method: 'POST',
      headers: { 'content-type': 'application/json' },
      body: { query, variables: variables || {} },
      ctrl,
    })

    if (res instanceof Error) {
      return res
    }

    // Errors are read BEFORE any status check: a GraphQL parse or validation
    // failure comes back as HTTP 400 carrying the standard { errors: [...] }
    // body, and the raw path represents a non-2xx as { ok: false } with no
    // err — so returning early on status would discard the server's own
    // diagnostics, which are the only useful part of that response.
    const errors = null == res.data ? undefined : res.data.errors

    if (null != errors && Array.isArray(errors) && 0 < errors.length) {
      const first = errors[0] || {}
      const err = new Error('BluefinTecsUserBackofficeSDK: graphql: ' +
        (first.message || 'graphql error'))
      err.graphql = errors
      return { ok: false, status: res.status, headers: res.headers, err, data: res.data }
    }

    return res
  }



  // Entity access: `client.OutputActivateDigitalModule().list()` / `client.OutputActivateDigitalModule().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  OutputActivateDigitalModule(entopts) {
    const self = this
    return new OutputActivateDigitalModuleEntity(self, entopts)
  }


  // Entity access: `client.OutputActivatePortalModule().list()` / `client.OutputActivatePortalModule().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  OutputActivatePortalModule(entopts) {
    const self = this
    return new OutputActivatePortalModuleEntity(self, entopts)
  }


  // Entity access: `client.OutputActivateStoreModule().list()` / `client.OutputActivateStoreModule().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  OutputActivateStoreModule(entopts) {
    const self = this
    return new OutputActivateStoreModuleEntity(self, entopts)
  }


  // Entity access: `client.OutputActivateUser().list()` / `client.OutputActivateUser().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  OutputActivateUser(entopts) {
    const self = this
    return new OutputActivateUserEntity(self, entopts)
  }


  // Entity access: `client.OutputAssignRole().list()` / `client.OutputAssignRole().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  OutputAssignRole(entopts) {
    const self = this
    return new OutputAssignRoleEntity(self, entopts)
  }


  // Entity access: `client.OutputChangeLogo().list()` / `client.OutputChangeLogo().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  OutputChangeLogo(entopts) {
    const self = this
    return new OutputChangeLogoEntity(self, entopts)
  }


  // Entity access: `client.OutputCreateMandator().list()` / `client.OutputCreateMandator().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  OutputCreateMandator(entopts) {
    const self = this
    return new OutputCreateMandatorEntity(self, entopts)
  }


  // Entity access: `client.OutputCreateServiceUser().list()` / `client.OutputCreateServiceUser().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  OutputCreateServiceUser(entopts) {
    const self = this
    return new OutputCreateServiceUserEntity(self, entopts)
  }


  // Entity access: `client.OutputDeactivateUser().list()` / `client.OutputDeactivateUser().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  OutputDeactivateUser(entopts) {
    const self = this
    return new OutputDeactivateUserEntity(self, entopts)
  }


  // Entity access: `client.OutputGetKycDocument().list()` / `client.OutputGetKycDocument().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  OutputGetKycDocument(entopts) {
    const self = this
    return new OutputGetKycDocumentEntity(self, entopts)
  }


  // Entity access: `client.OutputGetLogo().list()` / `client.OutputGetLogo().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  OutputGetLogo(entopts) {
    const self = this
    return new OutputGetLogoEntity(self, entopts)
  }


  // Entity access: `client.OutputListOfAvailableRole().list()` / `client.OutputListOfAvailableRole().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  OutputListOfAvailableRole(entopts) {
    const self = this
    return new OutputListOfAvailableRoleEntity(self, entopts)
  }


  // Entity access: `client.OutputListOfMandator().list()` / `client.OutputListOfMandator().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  OutputListOfMandator(entopts) {
    const self = this
    return new OutputListOfMandatorEntity(self, entopts)
  }


  // Entity access: `client.OutputListOfModule().list()` / `client.OutputListOfModule().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  OutputListOfModule(entopts) {
    const self = this
    return new OutputListOfModuleEntity(self, entopts)
  }


  // Entity access: `client.OutputListOfRoleGroup().list()` / `client.OutputListOfRoleGroup().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  OutputListOfRoleGroup(entopts) {
    const self = this
    return new OutputListOfRoleGroupEntity(self, entopts)
  }


  // Entity access: `client.OutputListOfTransactionsHistory().list()` / `client.OutputListOfTransactionsHistory().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  OutputListOfTransactionsHistory(entopts) {
    const self = this
    return new OutputListOfTransactionsHistoryEntity(self, entopts)
  }


  // Entity access: `client.OutputListOfUser().list()` / `client.OutputListOfUser().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  OutputListOfUser(entopts) {
    const self = this
    return new OutputListOfUserEntity(self, entopts)
  }


  // Entity access: `client.OutputProvideCredential().list()` / `client.OutputProvideCredential().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  OutputProvideCredential(entopts) {
    const self = this
    return new OutputProvideCredentialEntity(self, entopts)
  }


  // Entity access: `client.OutputRegisterUser().list()` / `client.OutputRegisterUser().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  OutputRegisterUser(entopts) {
    const self = this
    return new OutputRegisterUserEntity(self, entopts)
  }


  // Entity access: `client.OutputRemoveRole().list()` / `client.OutputRemoveRole().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  OutputRemoveRole(entopts) {
    const self = this
    return new OutputRemoveRoleEntity(self, entopts)
  }


  // Entity access: `client.OutputResendLink().list()` / `client.OutputResendLink().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  OutputResendLink(entopts) {
    const self = this
    return new OutputResendLinkEntity(self, entopts)
  }


  // Entity access: `client.OutputResetPassword().list()` / `client.OutputResetPassword().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  OutputResetPassword(entopts) {
    const self = this
    return new OutputResetPasswordEntity(self, entopts)
  }


  // Entity access: `client.OutputUpdateConsumer().list()` / `client.OutputUpdateConsumer().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  OutputUpdateConsumer(entopts) {
    const self = this
    return new OutputUpdateConsumerEntity(self, entopts)
  }


  // Entity access: `client.OutputUpdateProfile().list()` / `client.OutputUpdateProfile().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  OutputUpdateProfile(entopts) {
    const self = this
    return new OutputUpdateProfileEntity(self, entopts)
  }


  // Entity access: `client.Version().list()` / `client.Version().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  Version(entopts) {
    const self = this
    return new VersionEntity(self, entopts)
  }




  static test(testoptsarg, sdkoptsarg) {
    const struct = stdutil.struct
    const setpath = struct.setpath
    const getdef = struct.getdef
    const clone = struct.clone
    const setprop = struct.setprop

    const sdkopts = getdef(clone(sdkoptsarg), {})
    const testopts = getdef(clone(testoptsarg), {})
    setprop(testopts, 'active', true)
    setpath(sdkopts, 'feature.test', testopts)

    const testsdk = new BluefinTecsUserBackofficeSDK(sdkopts)
    testsdk._mode = 'test'

    return testsdk
  }


  tester(testopts, sdkopts) {
    return BluefinTecsUserBackofficeSDK.test(testopts, sdkopts)
  }


  toJSON() {
    return { name: 'BluefinTecsUserBackoffice' }
  }

  toString() {
    return 'BluefinTecsUserBackoffice ' + this._utility.struct.jsonify(this.toJSON())
  }

  [inspect.custom]() {
    return this.toString()
  }

}




const SDK = BluefinTecsUserBackofficeSDK


module.exports = {
  stdutil,
  config,

  BaseFeature,
  BluefinTecsUserBackofficeEntityBase,

  BluefinTecsUserBackofficeSDK,
  SDK,
}


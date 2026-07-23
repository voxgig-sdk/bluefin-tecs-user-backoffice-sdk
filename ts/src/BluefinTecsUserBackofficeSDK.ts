// BluefinTecsUserBackoffice Ts SDK

import { OutputActivateDigitalModuleEntity } from './entity/OutputActivateDigitalModuleEntity'
import { OutputActivatePortalModuleEntity } from './entity/OutputActivatePortalModuleEntity'
import { OutputActivateStoreModuleEntity } from './entity/OutputActivateStoreModuleEntity'
import { OutputActivateUserEntity } from './entity/OutputActivateUserEntity'
import { OutputAssignRoleEntity } from './entity/OutputAssignRoleEntity'
import { OutputChangeLogoEntity } from './entity/OutputChangeLogoEntity'
import { OutputCreateMandatorEntity } from './entity/OutputCreateMandatorEntity'
import { OutputCreateServiceUserEntity } from './entity/OutputCreateServiceUserEntity'
import { OutputDeactivateUserEntity } from './entity/OutputDeactivateUserEntity'
import { OutputGetKycDocumentEntity } from './entity/OutputGetKycDocumentEntity'
import { OutputGetLogoEntity } from './entity/OutputGetLogoEntity'
import { OutputListOfAvailableRoleEntity } from './entity/OutputListOfAvailableRoleEntity'
import { OutputListOfMandatorEntity } from './entity/OutputListOfMandatorEntity'
import { OutputListOfModuleEntity } from './entity/OutputListOfModuleEntity'
import { OutputListOfRoleGroupEntity } from './entity/OutputListOfRoleGroupEntity'
import { OutputListOfTransactionsHistoryEntity } from './entity/OutputListOfTransactionsHistoryEntity'
import { OutputListOfUserEntity } from './entity/OutputListOfUserEntity'
import { OutputProvideCredentialEntity } from './entity/OutputProvideCredentialEntity'
import { OutputRegisterUserEntity } from './entity/OutputRegisterUserEntity'
import { OutputRemoveRoleEntity } from './entity/OutputRemoveRoleEntity'
import { OutputResendLinkEntity } from './entity/OutputResendLinkEntity'
import { OutputResetPasswordEntity } from './entity/OutputResetPasswordEntity'
import { OutputUpdateConsumerEntity } from './entity/OutputUpdateConsumerEntity'
import { OutputUpdateProfileEntity } from './entity/OutputUpdateProfileEntity'
import { VersionEntity } from './entity/VersionEntity'

export type * from './BluefinTecsUserBackofficeTypes'


import { inspect } from 'node:util'

import type { Context, Feature } from './types'

import { config } from './Config'
import { BluefinTecsUserBackofficeEntityBase } from './BluefinTecsUserBackofficeEntityBase'
import { Utility } from './utility/Utility'


import { BaseFeature } from './feature/base/BaseFeature'


const stdutil = new Utility()


class BluefinTecsUserBackofficeSDK {
  _mode: string = 'live'
  _options: any
  _utility = new Utility()
  _features: Feature[]
  _rootctx: Context

  constructor(options?: any) {

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
    const featureorder = getpath(this._options, '__derived__.featureorder') || []
    for (const fname of featureorder) {
      const fopts = this._options.feature[fname] || {}
      if (fopts.active) {
        featureAdd(this._rootctx, this._rootctx.config.makeFeature(fname))
      }
    }

    if (null != this._options.extend) {
      for (let f of this._options.extend) {
        featureAdd(this._rootctx, f)
      }
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


  async prepare(fetchargs?: any) {
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

    let ctx: Context = makeContext({
      opname: 'prepare',
      ctrl: fetchargs.ctrl || {},
    }, this._rootctx)

    const options = this._options

    // Build spec directly from SDK options + user-provided fetch args.
    const spec: any = {
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


  async direct(fetchargs?: any) {
    const utility = this._utility
    const fetcher = utility.fetcher
    const makeContext = utility.makeContext

    const fetchdef = await this.prepare(fetchargs)
    if (fetchdef instanceof Error) {
      return fetchdef
    }

    let ctx: Context = makeContext({
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

      let json: any = undefined
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
    catch (err: any) {
      return { ok: false, err }
    }
  }



  // Entity access: `client.OutputActivateDigitalModule().list()` / `client.OutputActivateDigitalModule().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  OutputActivateDigitalModule(entopts?: Record<string, any>) {
    const self = this
    return new OutputActivateDigitalModuleEntity(self, entopts)
  }


  // Entity access: `client.OutputActivatePortalModule().list()` / `client.OutputActivatePortalModule().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  OutputActivatePortalModule(entopts?: Record<string, any>) {
    const self = this
    return new OutputActivatePortalModuleEntity(self, entopts)
  }


  // Entity access: `client.OutputActivateStoreModule().list()` / `client.OutputActivateStoreModule().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  OutputActivateStoreModule(entopts?: Record<string, any>) {
    const self = this
    return new OutputActivateStoreModuleEntity(self, entopts)
  }


  // Entity access: `client.OutputActivateUser().list()` / `client.OutputActivateUser().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  OutputActivateUser(entopts?: Record<string, any>) {
    const self = this
    return new OutputActivateUserEntity(self, entopts)
  }


  // Entity access: `client.OutputAssignRole().list()` / `client.OutputAssignRole().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  OutputAssignRole(entopts?: Record<string, any>) {
    const self = this
    return new OutputAssignRoleEntity(self, entopts)
  }


  // Entity access: `client.OutputChangeLogo().list()` / `client.OutputChangeLogo().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  OutputChangeLogo(entopts?: Record<string, any>) {
    const self = this
    return new OutputChangeLogoEntity(self, entopts)
  }


  // Entity access: `client.OutputCreateMandator().list()` / `client.OutputCreateMandator().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  OutputCreateMandator(entopts?: Record<string, any>) {
    const self = this
    return new OutputCreateMandatorEntity(self, entopts)
  }


  // Entity access: `client.OutputCreateServiceUser().list()` / `client.OutputCreateServiceUser().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  OutputCreateServiceUser(entopts?: Record<string, any>) {
    const self = this
    return new OutputCreateServiceUserEntity(self, entopts)
  }


  // Entity access: `client.OutputDeactivateUser().list()` / `client.OutputDeactivateUser().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  OutputDeactivateUser(entopts?: Record<string, any>) {
    const self = this
    return new OutputDeactivateUserEntity(self, entopts)
  }


  // Entity access: `client.OutputGetKycDocument().list()` / `client.OutputGetKycDocument().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  OutputGetKycDocument(entopts?: Record<string, any>) {
    const self = this
    return new OutputGetKycDocumentEntity(self, entopts)
  }


  // Entity access: `client.OutputGetLogo().list()` / `client.OutputGetLogo().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  OutputGetLogo(entopts?: Record<string, any>) {
    const self = this
    return new OutputGetLogoEntity(self, entopts)
  }


  // Entity access: `client.OutputListOfAvailableRole().list()` / `client.OutputListOfAvailableRole().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  OutputListOfAvailableRole(entopts?: Record<string, any>) {
    const self = this
    return new OutputListOfAvailableRoleEntity(self, entopts)
  }


  // Entity access: `client.OutputListOfMandator().list()` / `client.OutputListOfMandator().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  OutputListOfMandator(entopts?: Record<string, any>) {
    const self = this
    return new OutputListOfMandatorEntity(self, entopts)
  }


  // Entity access: `client.OutputListOfModule().list()` / `client.OutputListOfModule().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  OutputListOfModule(entopts?: Record<string, any>) {
    const self = this
    return new OutputListOfModuleEntity(self, entopts)
  }


  // Entity access: `client.OutputListOfRoleGroup().list()` / `client.OutputListOfRoleGroup().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  OutputListOfRoleGroup(entopts?: Record<string, any>) {
    const self = this
    return new OutputListOfRoleGroupEntity(self, entopts)
  }


  // Entity access: `client.OutputListOfTransactionsHistory().list()` / `client.OutputListOfTransactionsHistory().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  OutputListOfTransactionsHistory(entopts?: Record<string, any>) {
    const self = this
    return new OutputListOfTransactionsHistoryEntity(self, entopts)
  }


  // Entity access: `client.OutputListOfUser().list()` / `client.OutputListOfUser().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  OutputListOfUser(entopts?: Record<string, any>) {
    const self = this
    return new OutputListOfUserEntity(self, entopts)
  }


  // Entity access: `client.OutputProvideCredential().list()` / `client.OutputProvideCredential().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  OutputProvideCredential(entopts?: Record<string, any>) {
    const self = this
    return new OutputProvideCredentialEntity(self, entopts)
  }


  // Entity access: `client.OutputRegisterUser().list()` / `client.OutputRegisterUser().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  OutputRegisterUser(entopts?: Record<string, any>) {
    const self = this
    return new OutputRegisterUserEntity(self, entopts)
  }


  // Entity access: `client.OutputRemoveRole().list()` / `client.OutputRemoveRole().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  OutputRemoveRole(entopts?: Record<string, any>) {
    const self = this
    return new OutputRemoveRoleEntity(self, entopts)
  }


  // Entity access: `client.OutputResendLink().list()` / `client.OutputResendLink().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  OutputResendLink(entopts?: Record<string, any>) {
    const self = this
    return new OutputResendLinkEntity(self, entopts)
  }


  // Entity access: `client.OutputResetPassword().list()` / `client.OutputResetPassword().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  OutputResetPassword(entopts?: Record<string, any>) {
    const self = this
    return new OutputResetPasswordEntity(self, entopts)
  }


  // Entity access: `client.OutputUpdateConsumer().list()` / `client.OutputUpdateConsumer().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  OutputUpdateConsumer(entopts?: Record<string, any>) {
    const self = this
    return new OutputUpdateConsumerEntity(self, entopts)
  }


  // Entity access: `client.OutputUpdateProfile().list()` / `client.OutputUpdateProfile().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  OutputUpdateProfile(entopts?: Record<string, any>) {
    const self = this
    return new OutputUpdateProfileEntity(self, entopts)
  }


  // Entity access: `client.Version().list()` / `client.Version().load({ id })`.
  // The argument is the entity OPTIONS object (passed to the entity
  // constructor as entopts), not initial entity data.
  Version(entopts?: Record<string, any>) {
    const self = this
    return new VersionEntity(self, entopts)
  }




  static test(testoptsarg?: any, sdkoptsarg?: any) {
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


  tester(testopts?: any, sdkopts?: any) {
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


export {
  stdutil,
  config,

  BaseFeature,
  BluefinTecsUserBackofficeEntityBase,

  BluefinTecsUserBackofficeSDK,
  SDK,
}



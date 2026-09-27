
const envlocal = __dirname + '/../../../.env.local'
require('../../utility').loadEnvLocal(envlocal)

const Path = require('node:path')
const Fs = require('node:fs')

const { test, describe, afterEach } = require('node:test')
const assert = require('node:assert')
const { createLiveTransport } = require('../../live-runner')
const { runLiveEntity } = require('../../live-entity')


const { BluefinTecsUserBackofficeSDK, BaseFeature, stdutil, config } = require('../../..')

const {
  envOverride,
  liveClientOptions,
  liveDelay,
  makeCtrl,
  makeMatch,
  makeReqdata,
  makeStepData,
  makeValid,
} = require('../../utility')


describe('OutputActivatePortalModuleEntity', async () => {

  // Per-test live pacing. Delay is read from sdk-test-control.json's
  // `test.live.delayMs`; only sleeps when BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE=TRUE.
  afterEach(liveDelay('BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE'))

  test('instance', async () => {
    const testsdk = BluefinTecsUserBackofficeSDK.test()
    const ent = testsdk.OutputActivatePortalModule()
    assert(null != ent)
  })


  test('basic', async (t) => {

    
    const setup = basicSetup()
    if (setup.live) {
      return runLiveEntity(setup, {"active":true,"alias":{"field":{}},"fields":{"clientSecret":{"a":true,"h":"Client Secret","n":"clientSecret","r":true,"t":"`$STRING`","key$":"clientSecret","index$":0},"notificationEmail":{"a":true,"h":"Notification Email","n":"notificationEmail","r":true,"t":"`$STRING`","key$":"notificationEmail","index$":1},"responseCode":{"a":true,"fo":"int32","h":"Response Code","n":"responseCode","r":false,"t":"`$INTEGER`","key$":"responseCode","index$":2},"responseMessage":{"a":true,"h":"Response Message","n":"responseMessage","r":false,"t":"`$STRING`","key$":"responseMessage","index$":3}},"name":"output_activate_portal_module","op":{"create":{"input":"data","name":"create","points":[{"a":true,"co":{"id":"POST /activateMerchantPortalModule","source":"openapi3","version":2},"g":{"header":[{"a":true,"k":"header","n":"authorization","or":"authorization","r":true,"t":"`$STRING`","index$":0}]},"k":"http","m":"POST","o":"/activateMerchantPortalModule","q":{"exist":["authorization"]},"r":{},"s":[{"lit":"activateMerchantPortalModule"}],"t":{"req":"`reqdata`","res":"`body`"},"index$":0}],"key$":"create"}},"relations":{"ancestors":[]},"key$":"output_activate_portal_module","name__orig":"output_activate_portal_module","Name":"OutputActivatePortalModule","name_":"output_activate_portal_module","name-":"output-activate-portal-module","NAME":"OUTPUT_ACTIVATE_PORTAL_MODULE","index$":1}, {"active":true,"entity":"output_activate_portal_module","key$":"BasicOutputActivatePortalModuleFlow","kind":"basic","name":"BasicOutputActivatePortalModuleFlow","param":{},"step":[{"a":true,"d":{},"i":{"ref":"output_activate_portal_module_ref01"},"m":{},"o":"create","s":[],"v":[],"index$":0}]}, 'OutputActivatePortalModule', {"POST /activateMerchantPortalModule":{"protocol":"http","requestBody":{"content":{"application/json":{"schema":{"required":["clientSecret","notificationEmail"],"type":"object","properties":{"clientSecret":{"type":"string","key$":"clientSecret"},"notificationEmail":{"type":"string","key$":"notificationEmail"}},"x-ref":"#/components/schemas/InputActivatePortalModule","index$":1}}},"required":true},"parameters":[{"name":"Authorization","in":"header","required":true,"schema":{"type":"string"},"index$":0}]}})
    }
    const client = setup.client
    const struct = setup.struct

    const isempty = struct.isempty
    const select = struct.select


    // CREATE
    const output_activate_portal_module_ref01_ent = client.OutputActivatePortalModule()
    let output_activate_portal_module_ref01_data = setup.data.new.output_activate_portal_module['output_activate_portal_module_ref01']

    output_activate_portal_module_ref01_data = (await output_activate_portal_module_ref01_ent.create(output_activate_portal_module_ref01_data)).data()
    assert(null != output_activate_portal_module_ref01_data)


  })
})



function basicSetup(extra) {
  // TODO: fix test def options
  const options = {} // null

  // TODO: needs test utility to resolve path
  const entityDataFile =
    Path.resolve(__dirname,
      '../../../../.sdk/test/entity/output_activate_portal_module/OutputActivatePortalModuleTestData.json')

  // TODO: file ready util needed?
  const entityDataSource = Fs.readFileSync(entityDataFile).toString('utf8')

  // TODO: need a xlang JSON parse utility in voxgig/struct with better error msgs
  const entityData = JSON.parse(entityDataSource)

  options.entity = entityData.existing

  let client = BluefinTecsUserBackofficeSDK.test(options, extra)
  const struct = client.utility().struct
  const merge = struct.merge
  const transform = struct.transform

  let idmap = transform(
    ['output_activate_portal_module01','output_activate_portal_module02','output_activate_portal_module03'],
    {
      '`$PACK`': ['', {
        '`$KEY`': '`$COPY`',
        '`$VAL`': ['`$FORMAT`', 'upper', '`$COPY`']
      }]
    })

  const env = envOverride({
    'BLUEFIN_TECS_USER_BACKOFFICE_TEST_OUTPUT_ACTIVATE_PORTAL_MODULE_ENTID': idmap,
    'BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE': 'FALSE',
    'BLUEFIN_TECS_USER_BACKOFFICE_TEST_EXPLAIN': 'FALSE',
    'BLUEFIN_TECS_USER_BACKOFFICE_APIKEY': '',
  })

  idmap = env['BLUEFIN_TECS_USER_BACKOFFICE_TEST_OUTPUT_ACTIVATE_PORTAL_MODULE_ENTID']

  const live = 'TRUE' === env.BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE
  const transport = createLiveTransport()
  if (live) {
    const rawIds = process.env['BLUEFIN_TECS_USER_BACKOFFICE_TEST_OUTPUT_ACTIVATE_PORTAL_MODULE_ENTID']
    idmap = rawIds && rawIds.trim() ? JSON.parse(rawIds) : {}
    if (!idmap || Array.isArray(idmap) || typeof idmap !== 'object') {
      throw new Error('Live ENTID must be a JSON object')
    }
    client = new BluefinTecsUserBackofficeSDK(merge([
      // FIRST, so the generated fields below win: sdk-test-control.json's
      // test.client.options adds to the live client, it does not redirect it.
      liveClientOptions(),
      {
        apikey: env.BLUEFIN_TECS_USER_BACKOFFICE_APIKEY,
      },
      // 'extra || {}', not a bare 'extra': struct.merge returns UNDEFINED when
      // the last entry is undefined, and basicSetup is normally called with no
      // argument at all - so a bare 'extra' silently discarded the apikey and
      // server values above and handed the SDK undefined.
      extra || {},
      { system: { fetch: transport.fetch } }
    ]))
  }

  const setup = {
    idmap,
    env,
    options,
    client,
    struct,
    data: entityData,
    explain: 'TRUE' === env.BLUEFIN_TECS_USER_BACKOFFICE_TEST_EXPLAIN,
    live,
    transport,
    now: Date.now(),
  }

  return setup
}
  

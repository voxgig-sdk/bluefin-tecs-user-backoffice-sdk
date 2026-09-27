
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


describe('OutputResendLinkEntity', async () => {

  // Per-test live pacing. Delay is read from sdk-test-control.json's
  // `test.live.delayMs`; only sleeps when BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE=TRUE.
  afterEach(liveDelay('BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE'))

  test('instance', async () => {
    const testsdk = BluefinTecsUserBackofficeSDK.test()
    const ent = testsdk.OutputResendLink()
    assert(null != ent)
  })


  test('basic', async (t) => {

    
    const setup = basicSetup()
    if (setup.live) {
      return runLiveEntity(setup, {"active":true,"alias":{"field":{}},"fields":{"businessRegistrationNumber":{"a":true,"h":"Business Registration Number","n":"businessRegistrationNumber","r":false,"t":"`$STRING`","key$":"businessRegistrationNumber","index$":0},"consumerUUID":{"a":true,"h":"Consumer Uuid","n":"consumerUUID","r":true,"t":"`$STRING`","key$":"consumerUUID","index$":1},"emailConfirmationCode":{"a":true,"h":"Email Confirmation Code","n":"emailConfirmationCode","r":false,"t":"`$STRING`","key$":"emailConfirmationCode","index$":2},"phoneNumber":{"a":true,"h":"Phone Number","n":"phoneNumber","r":false,"t":"`$STRING`","key$":"phoneNumber","index$":3},"responseCode":{"a":true,"fo":"int32","h":"Response Code","n":"responseCode","r":false,"t":"`$INTEGER`","key$":"responseCode","index$":4},"responseMessage":{"a":true,"h":"Response Message","n":"responseMessage","r":false,"t":"`$STRING`","key$":"responseMessage","index$":5}},"name":"output_resend_link","op":{"create":{"input":"data","name":"create","points":[{"a":true,"co":{"id":"POST /resendLink","source":"openapi3","version":2},"g":{"header":[{"a":true,"k":"header","n":"authorization","or":"authorization","r":false,"t":"`$STRING`","index$":0}]},"k":"http","m":"POST","o":"/resendLink","q":{"exist":["authorization"]},"r":{},"s":[{"lit":"resendLink"}],"t":{"req":"`reqdata`","res":"`body`"},"index$":0}],"key$":"create"}},"relations":{"ancestors":[]},"key$":"output_resend_link","name__orig":"output_resend_link","Name":"OutputResendLink","name_":"output_resend_link","name-":"output-resend-link","NAME":"OUTPUT_RESEND_LINK","index$":20}, {"active":true,"entity":"output_resend_link","key$":"BasicOutputResendLinkFlow","kind":"basic","name":"BasicOutputResendLinkFlow","param":{},"step":[{"a":true,"d":{},"i":{"ref":"output_resend_link_ref01"},"m":{},"o":"create","s":[],"v":[],"index$":0}]}, 'OutputResendLink', {"POST /resendLink":{"protocol":"http","requestBody":{"content":{"application/json":{"schema":{"required":["consumerUUID"],"type":"object","properties":{"consumerUUID":{"type":"string","key$":"consumerUUID"},"phoneNumber":{"type":"string","key$":"phoneNumber"},"emailConfirmationCode":{"type":"string","key$":"emailConfirmationCode"},"businessRegistrationNumber":{"type":"string","key$":"businessRegistrationNumber"}},"x-ref":"#/components/schemas/InputResendLink","index$":1}}},"required":true},"parameters":[{"name":"Authorization","in":"header","required":false,"schema":{"type":"string"},"index$":0}]}})
    }
    const client = setup.client
    const struct = setup.struct

    const isempty = struct.isempty
    const select = struct.select


    // CREATE
    const output_resend_link_ref01_ent = client.OutputResendLink()
    let output_resend_link_ref01_data = setup.data.new.output_resend_link['output_resend_link_ref01']

    output_resend_link_ref01_data = (await output_resend_link_ref01_ent.create(output_resend_link_ref01_data)).data()
    assert(null != output_resend_link_ref01_data)


  })
})



function basicSetup(extra) {
  // TODO: fix test def options
  const options = {} // null

  // TODO: needs test utility to resolve path
  const entityDataFile =
    Path.resolve(__dirname,
      '../../../../.sdk/test/entity/output_resend_link/OutputResendLinkTestData.json')

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
    ['output_resend_link01','output_resend_link02','output_resend_link03'],
    {
      '`$PACK`': ['', {
        '`$KEY`': '`$COPY`',
        '`$VAL`': ['`$FORMAT`', 'upper', '`$COPY`']
      }]
    })

  const env = envOverride({
    'BLUEFIN_TECS_USER_BACKOFFICE_TEST_OUTPUT_RESEND_LINK_ENTID': idmap,
    'BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE': 'FALSE',
    'BLUEFIN_TECS_USER_BACKOFFICE_TEST_EXPLAIN': 'FALSE',
    'BLUEFIN_TECS_USER_BACKOFFICE_APIKEY': '',
  })

  idmap = env['BLUEFIN_TECS_USER_BACKOFFICE_TEST_OUTPUT_RESEND_LINK_ENTID']

  const live = 'TRUE' === env.BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE
  const transport = createLiveTransport()
  if (live) {
    const rawIds = process.env['BLUEFIN_TECS_USER_BACKOFFICE_TEST_OUTPUT_RESEND_LINK_ENTID']
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
  

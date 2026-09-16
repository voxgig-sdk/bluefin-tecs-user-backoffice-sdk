
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


describe('OutputUpdateConsumerEntity', async () => {

  // Per-test live pacing. Delay is read from sdk-test-control.json's
  // `test.live.delayMs`; only sleeps when BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE=TRUE.
  afterEach(liveDelay('BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE'))

  test('instance', async () => {
    const testsdk = BluefinTecsUserBackofficeSDK.test()
    const ent = testsdk.OutputUpdateConsumer()
    assert(null != ent)
  })


  test('basic', async (t) => {

    
    const setup = basicSetup()
    if (setup.live) {
      return runLiveEntity(setup, {"active":true,"alias":{"field":{}},"fields":[{"active":true,"name":"city","req":false,"type":"`$STRING`","index$":0},{"active":true,"name":"consumerUuid","req":true,"type":"`$STRING`","index$":1},{"active":true,"name":"consumerlanguage","req":false,"type":"`$STRING`","index$":2},{"active":true,"name":"country","req":false,"type":"`$STRING`","index$":3},{"active":true,"name":"dateOfBirth","req":false,"type":"`$STRING`","index$":4},{"active":true,"name":"datetime_created","req":false,"type":"`$STRING`","index$":5},{"active":true,"name":"driverLicenceNumber","req":false,"type":"`$STRING`","index$":6},{"active":true,"name":"email","req":false,"type":"`$STRING`","index$":7},{"active":true,"name":"firstName","req":false,"type":"`$STRING`","index$":8},{"active":true,"name":"identificationNumber","req":false,"type":"`$STRING`","index$":9},{"active":true,"name":"kycPassed","req":false,"type":"`$BOOLEAN`","index$":10},{"active":true,"name":"lastName","req":false,"type":"`$STRING`","index$":11},{"active":true,"name":"nationality","req":false,"type":"`$STRING`","index$":12},{"active":true,"name":"passportNumber","req":false,"type":"`$STRING`","index$":13},{"active":true,"name":"phoneNumber","req":false,"type":"`$STRING`","index$":14},{"active":true,"name":"placeOfBirth","req":false,"type":"`$STRING`","index$":15},{"active":true,"format":"int32","name":"responseCode","req":false,"type":"`$INTEGER`","index$":16},{"active":true,"name":"responseMessage","req":false,"type":"`$STRING`","index$":17},{"active":true,"name":"state","req":false,"type":"`$STRING`","index$":18},{"active":true,"name":"street1","req":false,"type":"`$STRING`","index$":19},{"active":true,"name":"street2","req":false,"type":"`$STRING`","index$":20},{"active":true,"name":"transactionhistory_id","req":false,"type":"`$STRING`","index$":21},{"active":true,"name":"zip","req":false,"type":"`$STRING`","index$":22}],"name":"output_update_consumer","op":{"create":{"input":"data","name":"create","points":[{"active":true,"args":{"header":[{"active":true,"kind":"header","name":"authorization","orig":"authorization","reqd":false,"type":"`$STRING`"}]},"contract":{"id":"POST /updateConsumer","json":"{\"operationId\":\"updateConsumer\",\"parameters\":[{\"in\":\"header\",\"name\":\"Authorization\",\"required\":false,\"schema\":{\"type\":\"string\"}}],\"protocol\":\"http\",\"requestBody\":{\"content\":{\"application/json\":{\"schema\":{\"properties\":{\"city\":{\"type\":\"string\"},\"consumerUuid\":{\"type\":\"string\"},\"consumerlanguage\":{\"type\":\"string\"},\"country\":{\"type\":\"string\"},\"dateOfBirth\":{\"type\":\"string\"},\"datetime_created\":{\"type\":\"string\"},\"driverLicenceNumber\":{\"type\":\"string\"},\"email\":{\"type\":\"string\"},\"firstName\":{\"type\":\"string\"},\"identificationNumber\":{\"type\":\"string\"},\"kycPassed\":{\"type\":\"boolean\"},\"lastName\":{\"type\":\"string\"},\"nationality\":{\"type\":\"string\"},\"passportNumber\":{\"type\":\"string\"},\"phoneNumber\":{\"type\":\"string\"},\"placeOfBirth\":{\"type\":\"string\"},\"state\":{\"type\":\"string\"},\"street1\":{\"type\":\"string\"},\"street2\":{\"type\":\"string\"},\"transactionhistory_id\":{\"type\":\"string\"},\"zip\":{\"type\":\"string\"}},\"required\":[\"consumerUuid\"],\"type\":\"object\"}}},\"required\":true},\"responses\":{\"200\":{\"content\":{\"application/json\":{\"schema\":{\"properties\":{\"responseCode\":{\"format\":\"int32\",\"type\":\"integer\"},\"responseMessage\":{\"type\":\"string\"}},\"type\":\"object\"}}},\"description\":\"OK\"}},\"security\":[{\"bearer-auth-header\":[]},{\"basic-auth-header\":[]}],\"securitySchemes\":{\"basic-auth-header\":{\"scheme\":\"basic\",\"type\":\"http\"},\"bearer-auth-header\":{\"scheme\":\"bearer\",\"type\":\"http\"}},\"securitySource\":\"operation\"}","source":"openapi3","version":1},"kind":"http","method":"POST","orig":"/updateConsumer","segments":[{"lit":"updateConsumer"}],"select":{"exist":["authorization"]},"transform":{"req":"`reqdata`","res":"`body`"},"index$":0}],"key$":"create"}},"relations":{"ancestors":[]},"key$":"output_update_consumer","name__orig":"output_update_consumer","Name":"OutputUpdateConsumer","name_":"output_update_consumer","name-":"output-update-consumer","NAME":"OUTPUT_UPDATE_CONSUMER","index$":22}, {"active":true,"entity":"output_update_consumer","key$":"BasicOutputUpdateConsumerFlow","kind":"basic","name":"BasicOutputUpdateConsumerFlow","param":{},"step":[{"active":true,"data":{},"input":{"ref":"output_update_consumer_ref01"},"match":{},"op":"create","spec":[],"valid":[],"index$":0}]}, 'OutputUpdateConsumer')
    }
    const client = setup.client
    const struct = setup.struct

    const isempty = struct.isempty
    const select = struct.select


    // CREATE
    const output_update_consumer_ref01_ent = client.OutputUpdateConsumer()
    let output_update_consumer_ref01_data = setup.data.new.output_update_consumer['output_update_consumer_ref01']

    output_update_consumer_ref01_data = (await output_update_consumer_ref01_ent.create(output_update_consumer_ref01_data)).data()
    assert(null != output_update_consumer_ref01_data)


  })
})



function basicSetup(extra) {
  // TODO: fix test def options
  const options = {} // null

  // TODO: needs test utility to resolve path
  const entityDataFile =
    Path.resolve(__dirname,
      '../../../../.sdk/test/entity/output_update_consumer/OutputUpdateConsumerTestData.json')

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
    ['output_update_consumer01','output_update_consumer02','output_update_consumer03'],
    {
      '`$PACK`': ['', {
        '`$KEY`': '`$COPY`',
        '`$VAL`': ['`$FORMAT`', 'upper', '`$COPY`']
      }]
    })

  const env = envOverride({
    'BLUEFIN_TECS_USER_BACKOFFICE_TEST_OUTPUT_UPDATE_CONSUMER_ENTID': idmap,
    'BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE': 'FALSE',
    'BLUEFIN_TECS_USER_BACKOFFICE_TEST_EXPLAIN': 'FALSE',
    'BLUEFIN_TECS_USER_BACKOFFICE_APIKEY': '',
  })

  idmap = env['BLUEFIN_TECS_USER_BACKOFFICE_TEST_OUTPUT_UPDATE_CONSUMER_ENTID']

  const live = 'TRUE' === env.BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE
  const transport = createLiveTransport()
  if (live) {
    const rawIds = process.env['BLUEFIN_TECS_USER_BACKOFFICE_TEST_OUTPUT_UPDATE_CONSUMER_ENTID']
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
  


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
      return runLiveEntity(setup, {"active":true,"alias":{"field":{}},"fields":{"city":{"a":true,"h":"City","n":"city","r":false,"t":"`$STRING`","key$":"city","index$":0},"consumerUuid":{"a":true,"h":"Consumer Uuid","n":"consumerUuid","r":true,"t":"`$STRING`","key$":"consumerUuid","index$":1},"consumerlanguage":{"a":true,"h":"Consumerlanguage","n":"consumerlanguage","r":false,"t":"`$STRING`","key$":"consumerlanguage","index$":2},"country":{"a":true,"h":"Country","n":"country","r":false,"t":"`$STRING`","key$":"country","index$":3},"dateOfBirth":{"a":true,"h":"Date Of Birth","n":"dateOfBirth","r":false,"t":"`$STRING`","key$":"dateOfBirth","index$":4},"datetime_created":{"a":true,"h":"Datetime Created","n":"datetime_created","r":false,"t":"`$STRING`","key$":"datetime_created","index$":5},"driverLicenceNumber":{"a":true,"h":"Driver Licence Number","n":"driverLicenceNumber","r":false,"t":"`$STRING`","key$":"driverLicenceNumber","index$":6},"email":{"a":true,"h":"Email","n":"email","r":false,"t":"`$STRING`","key$":"email","index$":7},"firstName":{"a":true,"h":"First Name","n":"firstName","r":false,"t":"`$STRING`","key$":"firstName","index$":8},"identificationNumber":{"a":true,"h":"Identification Number","n":"identificationNumber","r":false,"t":"`$STRING`","key$":"identificationNumber","index$":9},"kycPassed":{"a":true,"h":"Kyc Passed","n":"kycPassed","r":false,"t":"`$BOOLEAN`","key$":"kycPassed","index$":10},"lastName":{"a":true,"h":"Last Name","n":"lastName","r":false,"t":"`$STRING`","key$":"lastName","index$":11},"nationality":{"a":true,"h":"Nationality","n":"nationality","r":false,"t":"`$STRING`","key$":"nationality","index$":12},"passportNumber":{"a":true,"h":"Passport Number","n":"passportNumber","r":false,"t":"`$STRING`","key$":"passportNumber","index$":13},"phoneNumber":{"a":true,"h":"Phone Number","n":"phoneNumber","r":false,"t":"`$STRING`","key$":"phoneNumber","index$":14},"placeOfBirth":{"a":true,"h":"Place Of Birth","n":"placeOfBirth","r":false,"t":"`$STRING`","key$":"placeOfBirth","index$":15},"responseCode":{"a":true,"fo":"int32","h":"Response Code","n":"responseCode","r":false,"t":"`$INTEGER`","key$":"responseCode","index$":16},"responseMessage":{"a":true,"h":"Response Message","n":"responseMessage","r":false,"t":"`$STRING`","key$":"responseMessage","index$":17},"state":{"a":true,"h":"State","n":"state","r":false,"t":"`$STRING`","key$":"state","index$":18},"street1":{"a":true,"h":"Street1","n":"street1","r":false,"t":"`$STRING`","key$":"street1","index$":19},"street2":{"a":true,"h":"Street2","n":"street2","r":false,"t":"`$STRING`","key$":"street2","index$":20},"transactionhistory_id":{"a":true,"h":"Transactionhistory Id","n":"transactionhistory_id","r":false,"t":"`$STRING`","key$":"transactionhistory_id","index$":21},"zip":{"a":true,"h":"Zip","n":"zip","r":false,"t":"`$STRING`","key$":"zip","index$":22}},"name":"output_update_consumer","op":{"create":{"input":"data","name":"create","points":[{"a":true,"co":{"id":"POST /updateConsumer","source":"openapi3","version":2},"g":{"header":[{"a":true,"k":"header","n":"authorization","or":"authorization","r":false,"t":"`$STRING`","index$":0}]},"k":"http","m":"POST","o":"/updateConsumer","q":{"exist":["authorization"]},"r":{},"s":[{"lit":"updateConsumer"}],"t":{"req":"`reqdata`","res":"`body`"},"index$":0}],"key$":"create"}},"relations":{"ancestors":[]},"key$":"output_update_consumer","name__orig":"output_update_consumer","Name":"OutputUpdateConsumer","name_":"output_update_consumer","name-":"output-update-consumer","NAME":"OUTPUT_UPDATE_CONSUMER","index$":22}, {"active":true,"entity":"output_update_consumer","key$":"BasicOutputUpdateConsumerFlow","kind":"basic","name":"BasicOutputUpdateConsumerFlow","param":{},"step":[{"a":true,"d":{},"i":{"ref":"output_update_consumer_ref01"},"m":{},"o":"create","s":[],"v":[],"index$":0}]}, 'OutputUpdateConsumer', {"POST /updateConsumer":{"protocol":"http","requestBody":{"content":{"application/json":{"schema":{"required":["consumerUuid"],"type":"object","properties":{"consumerUuid":{"type":"string","key$":"consumerUuid"},"kycPassed":{"type":"boolean","key$":"kycPassed"},"transactionhistory_id":{"type":"string","key$":"transactionhistory_id"},"datetime_created":{"type":"string","key$":"datetime_created"},"phoneNumber":{"type":"string","key$":"phoneNumber"},"nationality":{"type":"string","key$":"nationality"},"placeOfBirth":{"type":"string","key$":"placeOfBirth"},"firstName":{"type":"string","key$":"firstName"},"lastName":{"type":"string","key$":"lastName"},"email":{"type":"string","key$":"email"},"dateOfBirth":{"type":"string","key$":"dateOfBirth"},"identificationNumber":{"type":"string","key$":"identificationNumber"},"passportNumber":{"type":"string","key$":"passportNumber"},"driverLicenceNumber":{"type":"string","key$":"driverLicenceNumber"},"street1":{"type":"string","key$":"street1"},"street2":{"type":"string","key$":"street2"},"city":{"type":"string","key$":"city"},"state":{"type":"string","key$":"state"},"country":{"type":"string","key$":"country"},"zip":{"type":"string","key$":"zip"},"consumerlanguage":{"type":"string","key$":"consumerlanguage"}},"x-ref":"#/components/schemas/InputUpdateConsumer","index$":1}}},"required":true},"parameters":[{"name":"Authorization","in":"header","required":false,"schema":{"type":"string"},"index$":0}]}})
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
  

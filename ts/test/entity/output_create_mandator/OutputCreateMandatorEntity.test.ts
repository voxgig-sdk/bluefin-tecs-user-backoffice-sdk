

import Path from 'node:path'
import * as Fs from 'node:fs'

import { test, describe, afterEach } from 'node:test'
import assert from 'node:assert'
import { createLiveTransport } from '../../live-runner'
import { runLiveEntity } from '../../live-entity'


import { BluefinTecsUserBackofficeSDK, BaseFeature, stdutil } from '../../..'

import {
  envOverride,
  liveClientOptions,
  liveDelay,
  loadEnvLocal,
  makeCtrl,
  makeMatch,
  makeReqdata,
  makeStepData,
  makeValid,
  maybeSkipControl,
} from '../../utility'


// AFTER the imports on purpose: TypeScript hoists `import` above any
// statement in the emitted CommonJS, so a loader placed above them would
// run only after every imported module had already been evaluated - and
// anything reading process.env at module scope would miss these values.
loadEnvLocal(__dirname + '/../../../.env.local')


describe('OutputCreateMandatorEntity', async () => {

  // Per-test live pacing. Delay is read from sdk-test-control.json's
  // `test.live.delayMs`; only sleeps when BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE=TRUE.
  afterEach(liveDelay('BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE'))

  test('instance', async () => {
    const testsdk = BluefinTecsUserBackofficeSDK.test()
    const ent = testsdk.OutputCreateMandator()
    assert(null != ent)
  })


  test('basic', async (t) => {

    const live = 'TRUE' === process.env.BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE
    for (const op of ['create']) {
      if (!live && maybeSkipControl(t, 'entityOp', 'output_create_mandator.' + op, live)) return
    }

    
    const setup = basicSetup()
    if (setup.live) {
      return runLiveEntity(setup, {"active":true,"alias":{"field":{}},"fields":[{"active":true,"name":"city","req":false,"type":"`$STRING`","index$":0},{"active":true,"name":"country","req":false,"type":"`$STRING`","index$":1},{"active":true,"name":"dateOfBirth","req":false,"type":"`$STRING`","index$":2},{"active":true,"name":"description","op":{"create":{"req":true,"type":"`$STRING`"}},"req":false,"type":"`$STRING`","index$":3},{"active":true,"name":"driversLicenseNumber","req":false,"type":"`$STRING`","index$":4},{"active":true,"name":"email","req":true,"type":"`$STRING`","index$":5},{"active":true,"name":"firstName","req":false,"type":"`$STRING`","index$":6},{"active":true,"name":"identificationNumber","req":false,"type":"`$STRING`","index$":7},{"active":true,"name":"lastName","req":false,"type":"`$STRING`","index$":8},{"active":true,"name":"login","req":true,"type":"`$STRING`","index$":9},{"active":true,"name":"name","op":{"create":{"req":true,"type":"`$STRING`"}},"req":false,"type":"`$STRING`","index$":10},{"active":true,"name":"passportNumber","req":false,"type":"`$STRING`","index$":11},{"active":true,"name":"phone","req":true,"type":"`$STRING`","index$":12},{"active":true,"name":"salutation","req":false,"type":"`$STRING`","index$":13},{"active":true,"name":"state","req":false,"type":"`$STRING`","index$":14},{"active":true,"name":"street1","req":false,"type":"`$STRING`","index$":15},{"active":true,"name":"street2","req":false,"type":"`$STRING`","index$":16},{"active":true,"name":"zipCode","req":false,"type":"`$STRING`","index$":17}],"name":"output_create_mandator","op":{"create":{"input":"data","name":"create","points":[{"active":true,"args":{"header":[{"active":true,"kind":"header","name":"authorization","orig":"authorization","reqd":true,"type":"`$STRING`"}]},"contract":{"id":"POST /createMandator","json":"{\"operationId\":\"createMandator\",\"parameters\":[{\"in\":\"header\",\"name\":\"Authorization\",\"required\":true,\"schema\":{\"type\":\"string\"}}],\"protocol\":\"http\",\"requestBody\":{\"content\":{\"application/json\":{\"schema\":{\"properties\":{\"city\":{\"type\":\"string\"},\"country\":{\"type\":\"string\"},\"dateOfBirth\":{\"type\":\"string\"},\"description\":{\"type\":\"string\"},\"driversLicenseNumber\":{\"type\":\"string\"},\"email\":{\"type\":\"string\"},\"firstName\":{\"type\":\"string\"},\"identificationNumber\":{\"type\":\"string\"},\"lastName\":{\"type\":\"string\"},\"login\":{\"type\":\"string\"},\"name\":{\"type\":\"string\"},\"passportNumber\":{\"type\":\"string\"},\"phone\":{\"type\":\"string\"},\"salutation\":{\"type\":\"string\"},\"state\":{\"type\":\"string\"},\"street1\":{\"type\":\"string\"},\"street2\":{\"type\":\"string\"},\"zipCode\":{\"type\":\"string\"}},\"required\":[\"description\",\"email\",\"login\",\"name\",\"phone\"],\"type\":\"object\"}}},\"required\":true},\"responses\":{\"200\":{\"content\":{\"application/json\":{\"schema\":{\"properties\":{\"mandator\":{\"properties\":{\"description\":{\"type\":\"string\"},\"name\":{\"type\":\"string\"}},\"type\":\"object\"},\"responseCode\":{\"format\":\"int32\",\"type\":\"integer\"},\"responseMessage\":{\"type\":\"string\"}},\"type\":\"object\"}}},\"description\":\"OK\"}},\"security\":[{\"bearer-auth-header\":[]},{\"basic-auth-header\":[]}],\"securitySchemes\":{\"basic-auth-header\":{\"scheme\":\"basic\",\"type\":\"http\"},\"bearer-auth-header\":{\"scheme\":\"bearer\",\"type\":\"http\"}},\"securitySource\":\"operation\"}","source":"openapi3","version":1},"kind":"http","method":"POST","orig":"/createMandator","segments":[{"lit":"createMandator"}],"select":{"exist":["authorization"]},"transform":{"req":"`reqdata`","res":"`body.mandator`"},"index$":0}],"key$":"create"}},"relations":{"ancestors":[]},"key$":"output_create_mandator","name__orig":"output_create_mandator","Name":"OutputCreateMandator","name_":"output_create_mandator","name-":"output-create-mandator","NAME":"OUTPUT_CREATE_MANDATOR","index$":6}, {"active":true,"entity":"output_create_mandator","key$":"BasicOutputCreateMandatorFlow","kind":"basic","name":"BasicOutputCreateMandatorFlow","param":{},"step":[{"active":true,"data":{},"input":{"ref":"output_create_mandator_ref01"},"match":{},"op":"create","spec":[],"valid":[],"index$":0}]}, 'OutputCreateMandator')
    }
    const client = setup.client
    const struct = setup.struct

    const isempty = struct.isempty
    const select = struct.select


    // CREATE
    const output_create_mandator_ref01_ent = client.OutputCreateMandator()
    let output_create_mandator_ref01_data = setup.data.new.output_create_mandator['output_create_mandator_ref01']

    output_create_mandator_ref01_data = (await output_create_mandator_ref01_ent.create(output_create_mandator_ref01_data)).data()
    assert(null != output_create_mandator_ref01_data)


  })
})



function basicSetup(extra?: any) {
  // TODO: fix test def options
  const options: any = {} // null

  // TODO: needs test utility to resolve path
  const entityDataFile =
    Path.resolve(__dirname, 
      '../../../../.sdk/test/entity/output_create_mandator/OutputCreateMandatorTestData.json')

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
    ['output_create_mandator01','output_create_mandator02','output_create_mandator03'],
    {
      '`$PACK`': ['', {
        '`$KEY`': '`$COPY`',
        '`$VAL`': ['`$FORMAT`', 'upper', '`$COPY`']
      }]
    })

  const env = envOverride({
    'BLUEFIN_TECS_USER_BACKOFFICE_TEST_OUTPUT_CREATE_MANDATOR_ENTID': idmap,
    'BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE': 'FALSE',
    'BLUEFIN_TECS_USER_BACKOFFICE_TEST_EXPLAIN': 'FALSE',
    'BLUEFIN_TECS_USER_BACKOFFICE_APIKEY': '',
  })

  idmap = env['BLUEFIN_TECS_USER_BACKOFFICE_TEST_OUTPUT_CREATE_MANDATOR_ENTID']

  const live = 'TRUE' === env.BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE

  const transport = createLiveTransport()
  if (live) {
    const rawIds = process.env['BLUEFIN_TECS_USER_BACKOFFICE_TEST_OUTPUT_CREATE_MANDATOR_ENTID']
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
      // 'extra || {}', not a bare 'extra': struct.merge returns UNDEFINED when the
      // last entry is undefined, and basicSetup is normally called with no
      // argument at all - so a bare 'extra' silently discarded the apikey
      // and server values above and handed the SDK undefined. Harmless
      // while there was nothing in that object; not harmless now.
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
  

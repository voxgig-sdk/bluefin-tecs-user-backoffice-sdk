

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


describe('OutputListOfAvailableRoleEntity', async () => {

  // Per-test live pacing. Delay is read from sdk-test-control.json's
  // `test.live.delayMs`; only sleeps when BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE=TRUE.
  afterEach(liveDelay('BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE'))

  test('instance', async () => {
    const testsdk = BluefinTecsUserBackofficeSDK.test()
    const ent = testsdk.OutputListOfAvailableRole()
    assert(null != ent)
  })


  test('basic', async (t) => {

    const live = 'TRUE' === process.env.BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE
    for (const op of ['create']) {
      if (!live && maybeSkipControl(t, 'entityOp', 'output_list_of_available_role.' + op, live)) return
    }

    
    const setup = basicSetup()
    if (setup.live) {
      return runLiveEntity(setup, {"active":true,"alias":{"field":{}},"fields":[{"active":true,"name":"availableRoles","req":false,"type":"`$ARRAY`","index$":0},{"active":true,"format":"int32","name":"responseCode","req":false,"type":"`$INTEGER`","index$":1},{"active":true,"name":"responseMessage","req":false,"type":"`$STRING`","index$":2}],"name":"output_list_of_available_role","op":{"create":{"input":"data","name":"create","points":[{"active":true,"args":{"header":[{"active":true,"kind":"header","name":"authorization","orig":"authorization","reqd":true,"type":"`$STRING`"}]},"contract":{"id":"POST /listOfAvailableRoles","json":"{\"operationId\":\"listOfAvailableRoles\",\"parameters\":[{\"in\":\"header\",\"name\":\"Authorization\",\"required\":true,\"schema\":{\"type\":\"string\"}}],\"protocol\":\"http\",\"requestBody\":{\"content\":{\"application/json\":{\"schema\":{\"type\":\"object\"}}},\"required\":true},\"responses\":{\"200\":{\"content\":{\"application/json\":{\"schema\":{\"properties\":{\"availableRoles\":{\"items\":{\"properties\":{\"corporateName\":{\"type\":\"string\"},\"corporateUUID\":{\"type\":\"string\"},\"userRoleName\":{\"type\":\"string\"}},\"type\":\"object\"},\"type\":\"array\"},\"responseCode\":{\"format\":\"int32\",\"type\":\"integer\"},\"responseMessage\":{\"type\":\"string\"}},\"type\":\"object\"}}},\"description\":\"OK\"}},\"security\":[{\"bearer-auth-header\":[]},{\"basic-auth-header\":[]}],\"securitySchemes\":{\"basic-auth-header\":{\"scheme\":\"basic\",\"type\":\"http\"},\"bearer-auth-header\":{\"scheme\":\"bearer\",\"type\":\"http\"}},\"securitySource\":\"operation\"}","source":"openapi3","version":1},"kind":"http","method":"POST","orig":"/listOfAvailableRoles","segments":[{"lit":"listOfAvailableRoles"}],"select":{"exist":["authorization"]},"transform":{"req":"`reqdata`","res":"`body`"},"index$":0}],"key$":"create"}},"relations":{"ancestors":[]},"key$":"output_list_of_available_role","name__orig":"output_list_of_available_role","Name":"OutputListOfAvailableRole","name_":"output_list_of_available_role","name-":"output-list-of-available-role","NAME":"OUTPUT_LIST_OF_AVAILABLE_ROLE","index$":11}, {"active":true,"entity":"output_list_of_available_role","key$":"BasicOutputListOfAvailableRoleFlow","kind":"basic","name":"BasicOutputListOfAvailableRoleFlow","param":{},"step":[{"active":true,"data":{},"input":{"ref":"output_list_of_available_role_ref01"},"match":{},"op":"create","spec":[],"valid":[],"index$":0}]}, 'OutputListOfAvailableRole')
    }
    const client = setup.client
    const struct = setup.struct

    const isempty = struct.isempty
    const select = struct.select


    // CREATE
    const output_list_of_available_role_ref01_ent = client.OutputListOfAvailableRole()
    let output_list_of_available_role_ref01_data = setup.data.new.output_list_of_available_role['output_list_of_available_role_ref01']

    output_list_of_available_role_ref01_data = (await output_list_of_available_role_ref01_ent.create(output_list_of_available_role_ref01_data)).data()
    assert(null != output_list_of_available_role_ref01_data)


  })
})



function basicSetup(extra?: any) {
  // TODO: fix test def options
  const options: any = {} // null

  // TODO: needs test utility to resolve path
  const entityDataFile =
    Path.resolve(__dirname, 
      '../../../../.sdk/test/entity/output_list_of_available_role/OutputListOfAvailableRoleTestData.json')

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
    ['output_list_of_available_role01','output_list_of_available_role02','output_list_of_available_role03'],
    {
      '`$PACK`': ['', {
        '`$KEY`': '`$COPY`',
        '`$VAL`': ['`$FORMAT`', 'upper', '`$COPY`']
      }]
    })

  const env = envOverride({
    'BLUEFIN_TECS_USER_BACKOFFICE_TEST_OUTPUT_LIST_OF_AVAILABLE_ROLE_ENTID': idmap,
    'BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE': 'FALSE',
    'BLUEFIN_TECS_USER_BACKOFFICE_TEST_EXPLAIN': 'FALSE',
    'BLUEFIN_TECS_USER_BACKOFFICE_APIKEY': '',
  })

  idmap = env['BLUEFIN_TECS_USER_BACKOFFICE_TEST_OUTPUT_LIST_OF_AVAILABLE_ROLE_ENTID']

  const live = 'TRUE' === env.BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE

  const transport = createLiveTransport()
  if (live) {
    const rawIds = process.env['BLUEFIN_TECS_USER_BACKOFFICE_TEST_OUTPUT_LIST_OF_AVAILABLE_ROLE_ENTID']
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
  

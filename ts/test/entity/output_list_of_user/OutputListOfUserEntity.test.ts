

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


loadEnvLocal(__dirname + '/../../../.env.local')


describe('OutputListOfUserEntity', async () => {

  // Per-test live pacing. Delay is read from sdk-test-control.json's
  // `test.live.delayMs`; only sleeps when BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE=TRUE.
  afterEach(liveDelay('BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE'))

  test('instance', async () => {
    const testsdk = BluefinTecsUserBackofficeSDK.test()
    const ent = testsdk.OutputListOfUser()
    assert(null != ent)
  })


  test('basic', async (t) => {

    const live = 'TRUE' === process.env.BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE
    for (const op of ['create']) {
      if (!live && maybeSkipControl(t, 'entityOp', 'output_list_of_user.' + op, live)) return
    }

    
    const setup = basicSetup()
    if (setup.live) {
      return runLiveEntity(setup, {"active":true,"alias":{"field":{}},"fields":{"filter":{"a":true,"h":"Filter","n":"filter","r":false,"t":"`$OBJECT`","key$":"filter","index$":0},"list":{"a":true,"h":"List","n":"list","r":false,"t":"`$ARRAY`","key$":"list","index$":1},"pagination":{"a":true,"h":"Pagination","n":"pagination","r":false,"t":"`$OBJECT`","key$":"pagination","index$":2},"responseCode":{"a":true,"fo":"int32","h":"Response Code","n":"responseCode","r":false,"t":"`$INTEGER`","key$":"responseCode","index$":3},"responseMessage":{"a":true,"h":"Response Message","n":"responseMessage","r":false,"t":"`$STRING`","key$":"responseMessage","index$":4},"sorting":{"a":true,"h":"Sorting","n":"sorting","r":false,"t":"`$OBJECT`","key$":"sorting","index$":5}},"name":"output_list_of_user","op":{"create":{"input":"data","name":"create","points":[{"a":true,"co":{"id":"POST /listOfUsers","source":"openapi3","version":2},"g":{"header":[{"a":true,"k":"header","n":"authorization","or":"authorization","r":true,"t":"`$STRING`","index$":0}]},"k":"http","m":"POST","o":"/listOfUsers","q":{"exist":["authorization"]},"r":{},"s":[{"lit":"listOfUsers"}],"t":{"req":"`reqdata`","res":"`body`"},"index$":0}],"key$":"create"}},"relations":{"ancestors":[]},"key$":"output_list_of_user","name__orig":"output_list_of_user","Name":"OutputListOfUser","name_":"output_list_of_user","name-":"output-list-of-user","NAME":"OUTPUT_LIST_OF_USER","index$":16}, {"active":true,"entity":"output_list_of_user","key$":"BasicOutputListOfUserFlow","kind":"basic","name":"BasicOutputListOfUserFlow","param":{},"step":[{"a":true,"d":{},"i":{"ref":"output_list_of_user_ref01"},"m":{},"o":"create","s":[],"v":[],"index$":0}]}, 'OutputListOfUser', {"POST /listOfUsers":{"protocol":"http","requestBody":{"content":{"application/json":{"schema":{"type":"object","properties":{"pagination":{"type":"object","properties":{"page":{"type":"integer","format":"int32"},"size":{"type":"integer","format":"int32"}},"x-ref":"#/components/schemas/Pagination","key$":"pagination"},"sorting":{"type":"object","properties":{"name":{"type":"string"},"type":{"type":"string"}},"x-ref":"#/components/schemas/Sorting","key$":"sorting"},"filter":{"type":"object","properties":{"consumerUUID":{"type":"string"},"firstName":{"type":"string"},"lastName":{"type":"string"},"email":{"type":"string"},"statusID":{"type":"array","items":{"type":"integer","format":"int32"}},"kycLevel":{"type":"integer","format":"int32"},"kycStatusID":{"type":"array","items":{"type":"integer","format":"int32"}},"userRoleName":{"type":"array","items":{"type":"string"}},"registeredDateFrom":{"type":"string","format":"date-time"},"registeredDateTo":{"type":"string","format":"date-time"},"lockedUntillFrom":{"type":"string","format":"date-time"},"lockedUntillTo":{"type":"string","format":"date-time"},"identificationStatus":{"type":"string"},"corporateUUID":{"type":"string"}},"x-ref":"#/components/schemas/UsersFilter","key$":"filter"}},"x-ref":"#/components/schemas/InputListOfUsers","index$":1}}},"required":true},"parameters":[{"name":"Authorization","in":"header","required":true,"schema":{"type":"string"},"index$":0}]}})
    }
    const client = setup.client
    const struct = setup.struct

    const isempty = struct.isempty
    const select = struct.select


    // CREATE
    const output_list_of_user_ref01_ent = client.OutputListOfUser()
    let output_list_of_user_ref01_data = setup.data.new.output_list_of_user['output_list_of_user_ref01']

    output_list_of_user_ref01_data = (await output_list_of_user_ref01_ent.create(output_list_of_user_ref01_data)).data()
    assert(null != output_list_of_user_ref01_data)


  })
})



function basicSetup(extra?: any) {
  // TODO: fix test def options
  const options: any = {} // null

  // TODO: needs test utility to resolve path
  const entityDataFile =
    Path.resolve(__dirname, 
      '../../../../.sdk/test/entity/output_list_of_user/OutputListOfUserTestData.json')

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
    ['output_list_of_user01','output_list_of_user02','output_list_of_user03'],
    {
      '`$PACK`': ['', {
        '`$KEY`': '`$COPY`',
        '`$VAL`': ['`$FORMAT`', 'upper', '`$COPY`']
      }]
    })

  const env = envOverride({
    'BLUEFIN_TECS_USER_BACKOFFICE_TEST_OUTPUT_LIST_OF_USER_ENTID': idmap,
    'BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE': 'FALSE',
    'BLUEFIN_TECS_USER_BACKOFFICE_TEST_EXPLAIN': 'FALSE',
    'BLUEFIN_TECS_USER_BACKOFFICE_APIKEY': '',
  })

  idmap = env['BLUEFIN_TECS_USER_BACKOFFICE_TEST_OUTPUT_LIST_OF_USER_ENTID']

  const live = 'TRUE' === env.BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE

  const transport = createLiveTransport()
  if (live) {
    const rawIds = process.env['BLUEFIN_TECS_USER_BACKOFFICE_TEST_OUTPUT_LIST_OF_USER_ENTID']
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
  

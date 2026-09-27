

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


describe('OutputUpdateProfileEntity', async () => {

  // Per-test live pacing. Delay is read from sdk-test-control.json's
  // `test.live.delayMs`; only sleeps when BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE=TRUE.
  afterEach(liveDelay('BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE'))

  test('instance', async () => {
    const testsdk = BluefinTecsUserBackofficeSDK.test()
    const ent = testsdk.OutputUpdateProfile()
    assert(null != ent)
  })


  test('basic', async (t) => {

    const live = 'TRUE' === process.env.BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE
    for (const op of ['create']) {
      if (!live && maybeSkipControl(t, 'entityOp', 'output_update_profile.' + op, live)) return
    }

    
    const setup = basicSetup()
    if (setup.live) {
      return runLiveEntity(setup, {"active":true,"alias":{"field":{}},"fields":{"consumerLanguage":{"a":true,"h":"Consumer Language","n":"consumerLanguage","r":false,"t":"`$STRING`","key$":"consumerLanguage","index$":0},"email":{"a":true,"h":"Email","n":"email","r":false,"t":"`$STRING`","key$":"email","index$":1},"firstName":{"a":true,"h":"First Name","n":"firstName","r":false,"t":"`$STRING`","key$":"firstName","index$":2},"lastName":{"a":true,"h":"Last Name","n":"lastName","r":false,"t":"`$STRING`","key$":"lastName","index$":3},"phoneNumber":{"a":true,"h":"Phone Number","n":"phoneNumber","r":false,"t":"`$STRING`","key$":"phoneNumber","index$":4},"responseCode":{"a":true,"fo":"int32","h":"Response Code","n":"responseCode","r":false,"t":"`$INTEGER`","key$":"responseCode","index$":5},"responseMessage":{"a":true,"h":"Response Message","n":"responseMessage","r":false,"t":"`$STRING`","key$":"responseMessage","index$":6}},"name":"output_update_profile","op":{"create":{"input":"data","name":"create","points":[{"a":true,"co":{"id":"POST /updateProfile","source":"openapi3","version":2},"g":{"header":[{"a":true,"k":"header","n":"authorization","or":"authorization","r":false,"t":"`$STRING`","index$":0}]},"k":"http","m":"POST","o":"/updateProfile","q":{"exist":["authorization"]},"r":{},"s":[{"lit":"updateProfile"}],"t":{"req":"`reqdata`","res":"`body`"},"index$":0}],"key$":"create"}},"relations":{"ancestors":[]},"key$":"output_update_profile","name__orig":"output_update_profile","Name":"OutputUpdateProfile","name_":"output_update_profile","name-":"output-update-profile","NAME":"OUTPUT_UPDATE_PROFILE","index$":23}, {"active":true,"entity":"output_update_profile","key$":"BasicOutputUpdateProfileFlow","kind":"basic","name":"BasicOutputUpdateProfileFlow","param":{},"step":[{"a":true,"d":{},"i":{"ref":"output_update_profile_ref01"},"m":{},"o":"create","s":[],"v":[],"index$":0}]}, 'OutputUpdateProfile', {"POST /updateProfile":{"protocol":"http","requestBody":{"content":{"application/json":{"schema":{"type":"object","properties":{"firstName":{"type":"string","key$":"firstName"},"lastName":{"type":"string","key$":"lastName"},"email":{"type":"string","key$":"email"},"phoneNumber":{"type":"string","key$":"phoneNumber"},"consumerLanguage":{"type":"string","key$":"consumerLanguage"}},"x-ref":"#/components/schemas/InputUpdateProfile","index$":1}}},"required":true},"parameters":[{"name":"Authorization","in":"header","required":false,"schema":{"type":"string"},"index$":0}]}})
    }
    const client = setup.client
    const struct = setup.struct

    const isempty = struct.isempty
    const select = struct.select


    // CREATE
    const output_update_profile_ref01_ent = client.OutputUpdateProfile()
    let output_update_profile_ref01_data = setup.data.new.output_update_profile['output_update_profile_ref01']

    output_update_profile_ref01_data = (await output_update_profile_ref01_ent.create(output_update_profile_ref01_data)).data()
    assert(null != output_update_profile_ref01_data)


  })
})



function basicSetup(extra?: any) {
  // TODO: fix test def options
  const options: any = {} // null

  // TODO: needs test utility to resolve path
  const entityDataFile =
    Path.resolve(__dirname, 
      '../../../../.sdk/test/entity/output_update_profile/OutputUpdateProfileTestData.json')

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
    ['output_update_profile01','output_update_profile02','output_update_profile03'],
    {
      '`$PACK`': ['', {
        '`$KEY`': '`$COPY`',
        '`$VAL`': ['`$FORMAT`', 'upper', '`$COPY`']
      }]
    })

  const env = envOverride({
    'BLUEFIN_TECS_USER_BACKOFFICE_TEST_OUTPUT_UPDATE_PROFILE_ENTID': idmap,
    'BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE': 'FALSE',
    'BLUEFIN_TECS_USER_BACKOFFICE_TEST_EXPLAIN': 'FALSE',
    'BLUEFIN_TECS_USER_BACKOFFICE_APIKEY': '',
  })

  idmap = env['BLUEFIN_TECS_USER_BACKOFFICE_TEST_OUTPUT_UPDATE_PROFILE_ENTID']

  const live = 'TRUE' === env.BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE

  const transport = createLiveTransport()
  if (live) {
    const rawIds = process.env['BLUEFIN_TECS_USER_BACKOFFICE_TEST_OUTPUT_UPDATE_PROFILE_ENTID']
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
  

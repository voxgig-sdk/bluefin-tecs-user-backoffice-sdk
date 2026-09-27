

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


describe('OutputRegisterUserEntity', async () => {

  // Per-test live pacing. Delay is read from sdk-test-control.json's
  // `test.live.delayMs`; only sleeps when BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE=TRUE.
  afterEach(liveDelay('BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE'))

  test('instance', async () => {
    const testsdk = BluefinTecsUserBackofficeSDK.test()
    const ent = testsdk.OutputRegisterUser()
    assert(null != ent)
  })


  test('basic', async (t) => {

    const live = 'TRUE' === process.env.BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE
    for (const op of ['create']) {
      if (!live && maybeSkipControl(t, 'entityOp', 'output_register_user.' + op, live)) return
    }

    
    const setup = basicSetup()
    if (setup.live) {
      return runLiveEntity(setup, {"active":true,"alias":{"field":{}},"fields":{"city":{"a":true,"h":"City","n":"city","r":false,"sh":"City where the user resides.","t":"`$STRING`","key$":"city","index$":0},"consumerId":{"a":true,"h":"Consumer Id","n":"consumerId","r":false,"sh":"User login or unique user identifier.","t":"`$STRING`","key$":"consumerId","index$":1},"consumerLanguage":{"a":true,"h":"Consumer Language","n":"consumerLanguage","r":false,"sh":"Preferred language for the user (e.g., 'en').","t":"`$STRING`","key$":"consumerLanguage","index$":2},"country":{"a":true,"h":"Country","n":"country","r":false,"sh":"User's country.","t":"`$STRING`","key$":"country","index$":3},"dateOfBirth":{"a":true,"h":"Date Of Birth","n":"dateOfBirth","r":false,"sh":"User's date of birth (expected format: dd.MM.yyyy).","t":"`$STRING`","key$":"dateOfBirth","index$":4},"driverLicenceNumber":{"a":true,"h":"Driver Licence Number","n":"driverLicenceNumber","r":false,"sh":"User's driver's license number.","t":"`$STRING`","key$":"driverLicenceNumber","index$":5},"email":{"a":true,"fo":"email","h":"Email","n":"email","r":true,"sh":"User's email address (must be unique).","t":"`$STRING`","key$":"email","index$":6},"firstName":{"a":true,"h":"First Name","n":"firstName","r":false,"sh":"User's first name.","t":"`$STRING`","key$":"firstName","index$":7},"identificationNumber":{"a":true,"h":"Identification Number","n":"identificationNumber","r":false,"sh":"User's identification number.","t":"`$STRING`","key$":"identificationNumber","index$":8},"lastName":{"a":true,"h":"Last Name","n":"lastName","r":false,"sh":"User's last name.","t":"`$STRING`","key$":"lastName","index$":9},"login":{"a":true,"h":"Login","n":"login","r":false,"sh":"User login identifier (should be unique).","t":"`$STRING`","key$":"login","index$":10},"module":{"a":true,"h":"Module","n":"module","r":false,"sh":"Module identifier (if applicable).","t":"`$STRING`","key$":"module","index$":11},"passportNumber":{"a":true,"h":"Passport Number","n":"passportNumber","r":false,"sh":"User's passport number.","t":"`$STRING`","key$":"passportNumber","index$":12},"phone":{"a":true,"h":"Phone","n":"phone","r":false,"sh":"User's phone number.","t":"`$STRING`","key$":"phone","index$":13},"responseCode":{"a":true,"fo":"int32","h":"Response Code","n":"responseCode","r":false,"sh":"Response code (0 indicates success; non-zero indicates an error).","t":"`$INTEGER`","key$":"responseCode","index$":14},"responseMessage":{"a":true,"h":"Response Message","n":"responseMessage","r":false,"sh":"Human-readable response message.","t":"`$STRING`","key$":"responseMessage","index$":15},"salutation":{"a":true,"h":"Salutation","n":"salutation","r":false,"sh":"User's salutation (e.g., Mr., Ms.).","t":"`$STRING`","key$":"salutation","index$":16},"state":{"a":true,"h":"State","n":"state","r":false,"sh":"User's state or region.","t":"`$STRING`","key$":"state","index$":17},"street1":{"a":true,"h":"Street1","n":"street1","r":false,"sh":"Primary address line.","t":"`$STRING`","key$":"street1","index$":18},"street2":{"a":true,"h":"Street2","n":"street2","r":false,"sh":"Secondary address line.","t":"`$STRING`","key$":"street2","index$":19},"zip":{"a":true,"h":"Zip","n":"zip","r":false,"sh":"Postal code.","t":"`$STRING`","key$":"zip","index$":20}},"name":"output_register_user","op":{"create":{"input":"data","name":"create","points":[{"a":true,"co":{"id":"POST /registerUser","source":"openapi3","version":2},"g":{"header":[{"a":true,"k":"header","n":"authorization","or":"authorization","r":true,"t":"`$STRING`","index$":0}]},"k":"http","m":"POST","o":"/registerUser","q":{"exist":["authorization"]},"r":{},"s":[{"lit":"registerUser"}],"t":{"req":"`reqdata`","res":"`body`"},"index$":0}],"key$":"create"}},"relations":{"ancestors":[]},"key$":"output_register_user","name__orig":"output_register_user","Name":"OutputRegisterUser","name_":"output_register_user","name-":"output-register-user","NAME":"OUTPUT_REGISTER_USER","index$":18}, {"active":true,"entity":"output_register_user","key$":"BasicOutputRegisterUserFlow","kind":"basic","name":"BasicOutputRegisterUserFlow","param":{},"step":[{"a":true,"d":{},"i":{"ref":"output_register_user_ref01"},"m":{},"o":"create","s":[],"v":[],"index$":0}]}, 'OutputRegisterUser', {"POST /registerUser":{"protocol":"http","requestBody":{"required":true,"content":{"application/json":{"schema":{"type":"object","required":["email"],"properties":{"firstName":{"type":"string","description":"User's first name.","example":"UserName","key$":"firstName"},"lastName":{"type":"string","description":"User's last name.","example":"UserSurname","key$":"lastName"},"email":{"type":"string","format":"email","description":"User's email address (must be unique).","example":"user@mail.com","key$":"email"},"dateOfBirth":{"type":"string","description":"User's date of birth (expected format: dd.MM.yyyy).","example":"01.01.2000","key$":"dateOfBirth"},"street1":{"type":"string","description":"Primary address line.","example":"Potsdamer","key$":"street1"},"street2":{"type":"string","description":"Secondary address line.","example":"13","key$":"street2"},"city":{"type":"string","description":"City where the user resides.","example":"Berlin","key$":"city"},"country":{"type":"string","description":"User's country.","example":"Germany","key$":"country"},"zip":{"type":"string","description":"Postal code.","example":"10783","key$":"zip"},"salutation":{"type":"string","description":"User's salutation (e.g., Mr., Ms.).","example":"Mr.","key$":"salutation"},"phone":{"type":"string","description":"User's phone number.","example":"+4991199009926","key$":"phone"},"identificationNumber":{"type":"string","description":"User's identification number.","example":"19574328625","key$":"identificationNumber"},"passportNumber":{"type":"string","description":"User's passport number.","example":"VH488314","key$":"passportNumber"},"driverLicenceNumber":{"type":"string","description":"User's driver's license number.","example":"DC357158","key$":"driverLicenceNumber"},"state":{"type":"string","description":"User's state or region.","example":"Berlin","key$":"state"},"login":{"type":"string","description":"User login identifier (should be unique).","example":"userlogin","key$":"login"},"module":{"type":"string","description":"Module identifier (if applicable).","example":"pam","key$":"module"},"consumerLanguage":{"type":"string","description":"Preferred language for the user (e.g., 'en').","example":"en","key$":"consumerLanguage"}},"x-ref":"#/components/schemas/InputRegisterUser","index$":1}}}},"parameters":[{"name":"Authorization","in":"header","required":true,"schema":{"type":"string"},"description":"Authorization header using either: - Bearer token (e.g., \"Bearer <token>\") - Basic authentication (e.g., \"Basic <Base64 encoded credentials>\")\n","index$":0}]}})
    }
    const client = setup.client
    const struct = setup.struct

    const isempty = struct.isempty
    const select = struct.select


    // CREATE
    const output_register_user_ref01_ent = client.OutputRegisterUser()
    let output_register_user_ref01_data = setup.data.new.output_register_user['output_register_user_ref01']

    output_register_user_ref01_data = (await output_register_user_ref01_ent.create(output_register_user_ref01_data)).data()
    assert(null != output_register_user_ref01_data)


  })
})



function basicSetup(extra?: any) {
  // TODO: fix test def options
  const options: any = {} // null

  // TODO: needs test utility to resolve path
  const entityDataFile =
    Path.resolve(__dirname, 
      '../../../../.sdk/test/entity/output_register_user/OutputRegisterUserTestData.json')

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
    ['output_register_user01','output_register_user02','output_register_user03'],
    {
      '`$PACK`': ['', {
        '`$KEY`': '`$COPY`',
        '`$VAL`': ['`$FORMAT`', 'upper', '`$COPY`']
      }]
    })

  const env = envOverride({
    'BLUEFIN_TECS_USER_BACKOFFICE_TEST_OUTPUT_REGISTER_USER_ENTID': idmap,
    'BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE': 'FALSE',
    'BLUEFIN_TECS_USER_BACKOFFICE_TEST_EXPLAIN': 'FALSE',
    'BLUEFIN_TECS_USER_BACKOFFICE_APIKEY': '',
  })

  idmap = env['BLUEFIN_TECS_USER_BACKOFFICE_TEST_OUTPUT_REGISTER_USER_ENTID']

  const live = 'TRUE' === env.BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE

  const transport = createLiveTransport()
  if (live) {
    const rawIds = process.env['BLUEFIN_TECS_USER_BACKOFFICE_TEST_OUTPUT_REGISTER_USER_ENTID']
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
  

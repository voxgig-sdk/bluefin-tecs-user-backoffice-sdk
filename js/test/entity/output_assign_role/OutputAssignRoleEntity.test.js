
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


describe('OutputAssignRoleEntity', async () => {

  // Per-test live pacing. Delay is read from sdk-test-control.json's
  // `test.live.delayMs`; only sleeps when BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE=TRUE.
  afterEach(liveDelay('BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE'))

  test('instance', async () => {
    const testsdk = BluefinTecsUserBackofficeSDK.test()
    const ent = testsdk.OutputAssignRole()
    assert(null != ent)
  })


  test('basic', async (t) => {

    
    const setup = basicSetup()
    if (setup.live) {
      return runLiveEntity(setup, {"active":true,"alias":{"field":{}},"fields":{"consumerUUID":{"a":true,"h":"Consumer Uuid","n":"consumerUUID","r":true,"sh":"Unique identifier of the consumer (user) to whom the role(s) will be assigned.","t":"`$STRING`","key$":"consumerUUID","index$":0},"responseCode":{"a":true,"fo":"int32","h":"Response Code","n":"responseCode","r":false,"sh":"Response code: 0 indicates success; any non-zero value indicates an error.","t":"`$INTEGER`","key$":"responseCode","index$":1},"responseMessage":{"a":true,"h":"Response Message","n":"responseMessage","r":false,"sh":"A human-readable message providing additional details about the outcome.","t":"`$STRING`","key$":"responseMessage","index$":2},"roles":{"a":true,"h":"Roles","n":"roles","r":true,"sh":"List of roles to assign to the consumer.","t":"`$ARRAY`","key$":"roles","index$":3}},"name":"output_assign_role","op":{"create":{"input":"data","name":"create","points":[{"a":true,"co":{"id":"POST /assignRoles","source":"openapi3","version":2},"g":{"header":[{"a":true,"k":"header","n":"authorization","or":"authorization","r":true,"t":"`$STRING`","index$":0}]},"k":"http","m":"POST","o":"/assignRoles","q":{"exist":["authorization"]},"r":{},"s":[{"lit":"assignRoles"}],"t":{"req":"`reqdata`","res":"`body`"},"index$":0}],"key$":"create"}},"relations":{"ancestors":[]},"key$":"output_assign_role","name__orig":"output_assign_role","Name":"OutputAssignRole","name_":"output_assign_role","name-":"output-assign-role","NAME":"OUTPUT_ASSIGN_ROLE","index$":4}, {"active":true,"entity":"output_assign_role","key$":"BasicOutputAssignRoleFlow","kind":"basic","name":"BasicOutputAssignRoleFlow","param":{},"step":[{"a":true,"d":{},"i":{"ref":"output_assign_role_ref01"},"m":{},"o":"create","s":[],"v":[],"index$":0}]}, 'OutputAssignRole', {"POST /assignRoles":{"protocol":"http","requestBody":{"required":true,"content":{"application/json":{"schema":{"type":"object","required":["consumerUUID","roles"],"properties":{"consumerUUID":{"type":"string","description":"Unique identifier of the consumer (user) to whom the role(s) will be assigned.","example":"user-12345","key$":"consumerUUID"},"roles":{"type":"array","description":"List of roles to assign to the consumer.","items":{"type":"object","required":["corporateUUID","userRoleName"],"properties":{"corporateUUID":{"type":"string","description":"Unique identifier of the corporate entity associated with the role.","example":"4dbbab90-74f5-4d8d-92e1-d02e6a4a0dee"},"userRoleName":{"type":"string","description":"The name of the role to assign.","enum":[],"example":"MP_CORPORATE"}},"x-ref":"#/components/schemas/UserRole"},"key$":"roles"}},"x-ref":"#/components/schemas/InputAssignRoles","index$":1},"examples":{"default":{"summary":"Example input","value":{"consumerUUID":"user-12345","roles":[{"corporateUUID":"4dbbab90-74f5-4d8d-92e1-d02e6a4a0dee","userRoleName":"MP_CORPORATE"}]}}}}}},"parameters":[{"name":"Authorization","in":"header","required":true,"schema":{"type":"string"},"description":"Authorization header. Use either: - Bearer token (e.g., \"Bearer <token>\") - Basic authentication (e.g., \"Basic <Base64 encoded credentials>\")\n","index$":0}]}})
    }
    const client = setup.client
    const struct = setup.struct

    const isempty = struct.isempty
    const select = struct.select


    // CREATE
    const output_assign_role_ref01_ent = client.OutputAssignRole()
    let output_assign_role_ref01_data = setup.data.new.output_assign_role['output_assign_role_ref01']

    output_assign_role_ref01_data = (await output_assign_role_ref01_ent.create(output_assign_role_ref01_data)).data()
    assert(null != output_assign_role_ref01_data)


  })
})



function basicSetup(extra) {
  // TODO: fix test def options
  const options = {} // null

  // TODO: needs test utility to resolve path
  const entityDataFile =
    Path.resolve(__dirname,
      '../../../../.sdk/test/entity/output_assign_role/OutputAssignRoleTestData.json')

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
    ['output_assign_role01','output_assign_role02','output_assign_role03'],
    {
      '`$PACK`': ['', {
        '`$KEY`': '`$COPY`',
        '`$VAL`': ['`$FORMAT`', 'upper', '`$COPY`']
      }]
    })

  const env = envOverride({
    'BLUEFIN_TECS_USER_BACKOFFICE_TEST_OUTPUT_ASSIGN_ROLE_ENTID': idmap,
    'BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE': 'FALSE',
    'BLUEFIN_TECS_USER_BACKOFFICE_TEST_EXPLAIN': 'FALSE',
    'BLUEFIN_TECS_USER_BACKOFFICE_APIKEY': '',
  })

  idmap = env['BLUEFIN_TECS_USER_BACKOFFICE_TEST_OUTPUT_ASSIGN_ROLE_ENTID']

  const live = 'TRUE' === env.BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE
  const transport = createLiveTransport()
  if (live) {
    const rawIds = process.env['BLUEFIN_TECS_USER_BACKOFFICE_TEST_OUTPUT_ASSIGN_ROLE_ENTID']
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
  

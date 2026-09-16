
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
      return runLiveEntity(setup, {"active":true,"alias":{"field":{}},"fields":[{"active":true,"name":"consumerUUID","req":true,"short":"Unique identifier of the consumer (user) to whom the role(s) will be assigned.","type":"`$STRING`","index$":0},{"active":true,"format":"int32","name":"responseCode","req":false,"short":"Response code: 0 indicates success; any non-zero value indicates an error.","type":"`$INTEGER`","index$":1},{"active":true,"name":"responseMessage","req":false,"short":"A human-readable message providing additional details about the outcome.","type":"`$STRING`","index$":2},{"active":true,"name":"roles","req":true,"short":"List of roles to assign to the consumer.","type":"`$ARRAY`","index$":3}],"name":"output_assign_role","op":{"create":{"input":"data","name":"create","points":[{"active":true,"args":{"header":[{"active":true,"kind":"header","name":"authorization","orig":"authorization","reqd":true,"type":"`$STRING`"}]},"contract":{"id":"POST /assignRoles","json":"{\"operationId\":\"assignRoles\",\"parameters\":[{\"description\":\"Authorization header. Use either: - Bearer token (e.g., \\\"Bearer <token>\\\") - Basic authentication (e.g., \\\"Basic <Base64 encoded credentials>\\\")\\n\",\"in\":\"header\",\"name\":\"Authorization\",\"required\":true,\"schema\":{\"type\":\"string\"}}],\"protocol\":\"http\",\"requestBody\":{\"content\":{\"application/json\":{\"examples\":{\"default\":{\"summary\":\"Example input\",\"value\":{\"consumerUUID\":\"user-12345\",\"roles\":[{\"corporateUUID\":\"4dbbab90-74f5-4d8d-92e1-d02e6a4a0dee\",\"userRoleName\":\"MP_CORPORATE\"}]}}},\"schema\":{\"properties\":{\"consumerUUID\":{\"description\":\"Unique identifier of the consumer (user) to whom the role(s) will be assigned.\",\"example\":\"user-12345\",\"type\":\"string\"},\"roles\":{\"description\":\"List of roles to assign to the consumer.\",\"items\":{\"properties\":{\"corporateUUID\":{\"description\":\"Unique identifier of the corporate entity associated with the role.\",\"example\":\"4dbbab90-74f5-4d8d-92e1-d02e6a4a0dee\",\"type\":\"string\"},\"userRoleName\":{\"description\":\"The name of the role to assign.\",\"enum\":[\"TE_MERCHANT_TERMINAL_MANAGEMENT\",\"BO_TE_TRANSACTION_HISTORY\",\"BO_TRANSACTIONMANAGEMENT_CANCEL\",\"BO_TRANSACTIONMANAGEMENT_REFUND\",\"BO_TRANSACTIONMANAGEMENT_EMV\",\"BO_TRANSACTIONMANAGEMENT_ECR\",\"SERVICE_BLACKLISTCHECK\",\"MP_CORPORATE\",\"BO_USERMANAGEMENT_MANDATOR_MANAGER\",\"BO_TRANSACTIONMANAGEMENT_COMPLETION\",\"BO_TRANSACTIONMANAGEMENT_PAYMENT\",\"MCOM_WEBAPP_TX_HISTORY\",\"BO_USERMANAGEMENT_UPDATE_CORPORATE\",\"BO_MP_CREATE_NEW_PRODUCT\",\"SYSTEM_GET_TERMINAL_ID\",\"BO_DAILY_REPORTS_VIEW\",\"DAILY_REPORTS_VIEW\",\"BO_DAILY_REPORTS_CUSTOM\",\"DAILY_REPORTS_CUSTOM\",\"TW_GET_ECOM_PARAMETERS\",\"TE_KEEP_ALIVE_LIST\",\"BO_TRANSACTIONMANAGEMENT_ECOM\",\"BO_MP_UPDATE_XML_TEMPLATE\",\"BO_MP_GET_XML_TEMPLATE\",\"BO_MANDATOR_CLEARING_EXPORT\",\"SYSTEM_REGISTER_MERCHANT_TERMINAL\",\"BO_MP_MOVE_TID\"],\"example\":\"MP_CORPORATE\",\"type\":\"string\"}},\"required\":[\"corporateUUID\",\"userRoleName\"],\"type\":\"object\"},\"type\":\"array\"}},\"required\":[\"consumerUUID\",\"roles\"],\"type\":\"object\"}}},\"required\":true},\"responses\":{\"200\":{\"content\":{\"application/json\":{\"examples\":{\"default\":{\"summary\":\"Successful response\",\"value\":{\"responseCode\":0,\"responseMessage\":\"OK\"}}},\"schema\":{\"properties\":{\"responseCode\":{\"description\":\"Response code: 0 indicates success; any non-zero value indicates an error.\",\"example\":0,\"format\":\"int32\",\"type\":\"integer\"},\"responseMessage\":{\"description\":\"A human-readable message providing additional details about the outcome.\",\"example\":\"OK\",\"type\":\"string\"}},\"type\":\"object\"}}},\"description\":\"Role assignment successful.\"}},\"security\":[{\"bearer-auth-header\":[]},{\"basic-auth-header\":[]}],\"securitySchemes\":{\"basic-auth-header\":{\"scheme\":\"basic\",\"type\":\"http\"},\"bearer-auth-header\":{\"scheme\":\"bearer\",\"type\":\"http\"}},\"securitySource\":\"operation\"}","source":"openapi3","version":1},"kind":"http","method":"POST","orig":"/assignRoles","segments":[{"lit":"assignRoles"}],"select":{"exist":["authorization"]},"transform":{"req":"`reqdata`","res":"`body`"},"index$":0}],"key$":"create"}},"relations":{"ancestors":[]},"key$":"output_assign_role","name__orig":"output_assign_role","Name":"OutputAssignRole","name_":"output_assign_role","name-":"output-assign-role","NAME":"OUTPUT_ASSIGN_ROLE","index$":4}, {"active":true,"entity":"output_assign_role","key$":"BasicOutputAssignRoleFlow","kind":"basic","name":"BasicOutputAssignRoleFlow","param":{},"step":[{"active":true,"data":{},"input":{"ref":"output_assign_role_ref01"},"match":{},"op":"create","spec":[],"valid":[],"index$":0}]}, 'OutputAssignRole')
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
  

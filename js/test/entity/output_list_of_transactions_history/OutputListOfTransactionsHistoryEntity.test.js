
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


describe('OutputListOfTransactionsHistoryEntity', async () => {

  // Per-test live pacing. Delay is read from sdk-test-control.json's
  // `test.live.delayMs`; only sleeps when BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE=TRUE.
  afterEach(liveDelay('BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE'))

  test('instance', async () => {
    const testsdk = BluefinTecsUserBackofficeSDK.test()
    const ent = testsdk.OutputListOfTransactionsHistory()
    assert(null != ent)
  })


  test('basic', async (t) => {

    
    const setup = basicSetup()
    if (setup.live) {
      return runLiveEntity(setup, {"active":true,"alias":{"field":{}},"fields":[{"active":true,"name":"filter","req":false,"type":"`$OBJECT`","index$":0},{"active":true,"name":"list","req":false,"type":"`$ARRAY`","index$":1},{"active":true,"name":"pagination","req":false,"type":"`$OBJECT`","index$":2},{"active":true,"format":"int32","name":"responseCode","req":false,"type":"`$INTEGER`","index$":3},{"active":true,"name":"responseMessage","req":false,"type":"`$STRING`","index$":4},{"active":true,"name":"sorting","req":false,"type":"`$OBJECT`","index$":5}],"name":"output_list_of_transactions_history","op":{"create":{"input":"data","name":"create","points":[{"active":true,"args":{"header":[{"active":true,"kind":"header","name":"authorization","orig":"authorization","reqd":true,"type":"`$STRING`"}]},"contract":{"id":"POST /listOfTransactionsHistory","json":"{\"operationId\":\"listOfTransactionsHistory\",\"parameters\":[{\"in\":\"header\",\"name\":\"Authorization\",\"required\":true,\"schema\":{\"type\":\"string\"}}],\"protocol\":\"http\",\"requestBody\":{\"content\":{\"application/json\":{\"schema\":{\"properties\":{\"filter\":{\"properties\":{\"consumerUUID\":{\"type\":\"string\"},\"createdFrom\":{\"format\":\"date-time\",\"type\":\"string\"},\"createdTo\":{\"format\":\"date-time\",\"type\":\"string\"},\"eventID\":{\"format\":\"int32\",\"type\":\"integer\"},\"requestorDateFrom\":{\"format\":\"date-time\",\"type\":\"string\"},\"requestorDateTo\":{\"format\":\"date-time\",\"type\":\"string\"},\"requestorTransactionID\":{\"format\":\"int64\",\"type\":\"integer\"},\"statusID\":{\"format\":\"int32\",\"type\":\"integer\"}},\"type\":\"object\"},\"pagination\":{\"properties\":{\"page\":{\"format\":\"int32\",\"type\":\"integer\"},\"size\":{\"format\":\"int32\",\"type\":\"integer\"}},\"type\":\"object\"},\"sorting\":{\"properties\":{\"name\":{\"type\":\"string\"},\"type\":{\"type\":\"string\"}},\"type\":\"object\"}},\"type\":\"object\"}}},\"required\":true},\"responses\":{\"200\":{\"content\":{\"application/json\":{\"schema\":{\"properties\":{\"list\":{\"items\":{\"properties\":{\"consumerUUID\":{\"type\":\"string\"},\"created\":{\"format\":\"date-time\",\"type\":\"string\"},\"description\":{\"type\":\"string\"},\"event\":{\"properties\":{\"name\":{\"type\":\"string\"}},\"type\":\"object\"},\"requestor\":{\"properties\":{\"datetime\":{\"format\":\"date-time\",\"type\":\"string\"},\"transactionID\":{\"format\":\"int64\",\"type\":\"integer\"}},\"type\":\"object\"},\"responseDatetime\":{\"format\":\"date-time\",\"type\":\"string\"},\"status\":{\"properties\":{\"name\":{\"type\":\"string\"}},\"type\":\"object\"}},\"type\":\"object\"},\"type\":\"array\"},\"pagination\":{\"properties\":{\"page\":{\"format\":\"int32\",\"type\":\"integer\"},\"size\":{\"format\":\"int32\",\"type\":\"integer\"},\"totalElements\":{\"format\":\"int64\",\"type\":\"integer\"},\"totalPages\":{\"format\":\"int32\",\"type\":\"integer\"}},\"type\":\"object\"},\"responseCode\":{\"format\":\"int32\",\"type\":\"integer\"},\"responseMessage\":{\"type\":\"string\"}},\"type\":\"object\"}}},\"description\":\"OK\"}},\"security\":[{\"bearer-auth-header\":[]},{\"basic-auth-header\":[]}],\"securitySchemes\":{\"basic-auth-header\":{\"scheme\":\"basic\",\"type\":\"http\"},\"bearer-auth-header\":{\"scheme\":\"bearer\",\"type\":\"http\"}},\"securitySource\":\"operation\"}","source":"openapi3","version":1},"kind":"http","method":"POST","orig":"/listOfTransactionsHistory","segments":[{"lit":"listOfTransactionsHistory"}],"select":{"exist":["authorization"]},"transform":{"req":"`reqdata`","res":"`body`"},"index$":0}],"key$":"create"}},"relations":{"ancestors":[]},"key$":"output_list_of_transactions_history","name__orig":"output_list_of_transactions_history","Name":"OutputListOfTransactionsHistory","name_":"output_list_of_transactions_history","name-":"output-list-of-transactions-history","NAME":"OUTPUT_LIST_OF_TRANSACTIONS_HISTORY","index$":15}, {"active":true,"entity":"output_list_of_transactions_history","key$":"BasicOutputListOfTransactionsHistoryFlow","kind":"basic","name":"BasicOutputListOfTransactionsHistoryFlow","param":{},"step":[{"active":true,"data":{},"input":{"ref":"output_list_of_transactions_history_ref01"},"match":{},"op":"create","spec":[],"valid":[],"index$":0}]}, 'OutputListOfTransactionsHistory')
    }
    const client = setup.client
    const struct = setup.struct

    const isempty = struct.isempty
    const select = struct.select


    // CREATE
    const output_list_of_transactions_history_ref01_ent = client.OutputListOfTransactionsHistory()
    let output_list_of_transactions_history_ref01_data = setup.data.new.output_list_of_transactions_history['output_list_of_transactions_history_ref01']

    output_list_of_transactions_history_ref01_data = (await output_list_of_transactions_history_ref01_ent.create(output_list_of_transactions_history_ref01_data)).data()
    assert(null != output_list_of_transactions_history_ref01_data)


  })
})



function basicSetup(extra) {
  // TODO: fix test def options
  const options = {} // null

  // TODO: needs test utility to resolve path
  const entityDataFile =
    Path.resolve(__dirname,
      '../../../../.sdk/test/entity/output_list_of_transactions_history/OutputListOfTransactionsHistoryTestData.json')

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
    ['output_list_of_transactions_history01','output_list_of_transactions_history02','output_list_of_transactions_history03'],
    {
      '`$PACK`': ['', {
        '`$KEY`': '`$COPY`',
        '`$VAL`': ['`$FORMAT`', 'upper', '`$COPY`']
      }]
    })

  const env = envOverride({
    'BLUEFIN_TECS_USER_BACKOFFICE_TEST_OUTPUT_LIST_OF_TRANSACTIONS_HISTORY_ENTID': idmap,
    'BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE': 'FALSE',
    'BLUEFIN_TECS_USER_BACKOFFICE_TEST_EXPLAIN': 'FALSE',
    'BLUEFIN_TECS_USER_BACKOFFICE_APIKEY': '',
  })

  idmap = env['BLUEFIN_TECS_USER_BACKOFFICE_TEST_OUTPUT_LIST_OF_TRANSACTIONS_HISTORY_ENTID']

  const live = 'TRUE' === env.BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE
  const transport = createLiveTransport()
  if (live) {
    const rawIds = process.env['BLUEFIN_TECS_USER_BACKOFFICE_TEST_OUTPUT_LIST_OF_TRANSACTIONS_HISTORY_ENTID']
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
  

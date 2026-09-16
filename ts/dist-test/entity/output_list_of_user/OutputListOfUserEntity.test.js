"use strict";
var __createBinding = (this && this.__createBinding) || (Object.create ? (function(o, m, k, k2) {
    if (k2 === undefined) k2 = k;
    var desc = Object.getOwnPropertyDescriptor(m, k);
    if (!desc || ("get" in desc ? !m.__esModule : desc.writable || desc.configurable)) {
      desc = { enumerable: true, get: function() { return m[k]; } };
    }
    Object.defineProperty(o, k2, desc);
}) : (function(o, m, k, k2) {
    if (k2 === undefined) k2 = k;
    o[k2] = m[k];
}));
var __setModuleDefault = (this && this.__setModuleDefault) || (Object.create ? (function(o, v) {
    Object.defineProperty(o, "default", { enumerable: true, value: v });
}) : function(o, v) {
    o["default"] = v;
});
var __importStar = (this && this.__importStar) || (function () {
    var ownKeys = function(o) {
        ownKeys = Object.getOwnPropertyNames || function (o) {
            var ar = [];
            for (var k in o) if (Object.prototype.hasOwnProperty.call(o, k)) ar[ar.length] = k;
            return ar;
        };
        return ownKeys(o);
    };
    return function (mod) {
        if (mod && mod.__esModule) return mod;
        var result = {};
        if (mod != null) for (var k = ownKeys(mod), i = 0; i < k.length; i++) if (k[i] !== "default") __createBinding(result, mod, k[i]);
        __setModuleDefault(result, mod);
        return result;
    };
})();
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const node_path_1 = __importDefault(require("node:path"));
const Fs = __importStar(require("node:fs"));
const node_test_1 = require("node:test");
const node_assert_1 = __importDefault(require("node:assert"));
const live_runner_1 = require("../../live-runner");
const live_entity_1 = require("../../live-entity");
const __1 = require("../../..");
const utility_1 = require("../../utility");
// AFTER the imports on purpose: TypeScript hoists `import` above any
// statement in the emitted CommonJS, so a loader placed above them would
// run only after every imported module had already been evaluated - and
// anything reading process.env at module scope would miss these values.
(0, utility_1.loadEnvLocal)(__dirname + '/../../../.env.local');
(0, node_test_1.describe)('OutputListOfUserEntity', async () => {
    // Per-test live pacing. Delay is read from sdk-test-control.json's
    // `test.live.delayMs`; only sleeps when BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE=TRUE.
    (0, node_test_1.afterEach)((0, utility_1.liveDelay)('BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE'));
    (0, node_test_1.test)('instance', async () => {
        const testsdk = __1.BluefinTecsUserBackofficeSDK.test();
        const ent = testsdk.OutputListOfUser();
        (0, node_assert_1.default)(null != ent);
    });
    (0, node_test_1.test)('basic', async (t) => {
        const live = 'TRUE' === process.env.BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE;
        for (const op of ['create']) {
            if (!live && (0, utility_1.maybeSkipControl)(t, 'entityOp', 'output_list_of_user.' + op, live))
                return;
        }
        const setup = basicSetup();
        if (setup.live) {
            return (0, live_entity_1.runLiveEntity)(setup, { "active": true, "alias": { "field": {} }, "fields": [{ "active": true, "name": "filter", "req": false, "type": "`$OBJECT`", "index$": 0 }, { "active": true, "name": "list", "req": false, "type": "`$ARRAY`", "index$": 1 }, { "active": true, "name": "pagination", "req": false, "type": "`$OBJECT`", "index$": 2 }, { "active": true, "format": "int32", "name": "responseCode", "req": false, "type": "`$INTEGER`", "index$": 3 }, { "active": true, "name": "responseMessage", "req": false, "type": "`$STRING`", "index$": 4 }, { "active": true, "name": "sorting", "req": false, "type": "`$OBJECT`", "index$": 5 }], "name": "output_list_of_user", "op": { "create": { "input": "data", "name": "create", "points": [{ "active": true, "args": { "header": [{ "active": true, "kind": "header", "name": "authorization", "orig": "authorization", "reqd": true, "type": "`$STRING`" }] }, "contract": { "id": "POST /listOfUsers", "json": "{\"operationId\":\"listOfUsers\",\"parameters\":[{\"in\":\"header\",\"name\":\"Authorization\",\"required\":true,\"schema\":{\"type\":\"string\"}}],\"protocol\":\"http\",\"requestBody\":{\"content\":{\"application/json\":{\"schema\":{\"properties\":{\"filter\":{\"properties\":{\"consumerUUID\":{\"type\":\"string\"},\"corporateUUID\":{\"type\":\"string\"},\"email\":{\"type\":\"string\"},\"firstName\":{\"type\":\"string\"},\"identificationStatus\":{\"type\":\"string\"},\"kycLevel\":{\"format\":\"int32\",\"type\":\"integer\"},\"kycStatusID\":{\"items\":{\"format\":\"int32\",\"type\":\"integer\"},\"type\":\"array\"},\"lastName\":{\"type\":\"string\"},\"lockedUntillFrom\":{\"format\":\"date-time\",\"type\":\"string\"},\"lockedUntillTo\":{\"format\":\"date-time\",\"type\":\"string\"},\"registeredDateFrom\":{\"format\":\"date-time\",\"type\":\"string\"},\"registeredDateTo\":{\"format\":\"date-time\",\"type\":\"string\"},\"statusID\":{\"items\":{\"format\":\"int32\",\"type\":\"integer\"},\"type\":\"array\"},\"userRoleName\":{\"items\":{\"type\":\"string\"},\"type\":\"array\"}},\"type\":\"object\"},\"pagination\":{\"properties\":{\"page\":{\"format\":\"int32\",\"type\":\"integer\"},\"size\":{\"format\":\"int32\",\"type\":\"integer\"}},\"type\":\"object\"},\"sorting\":{\"properties\":{\"name\":{\"type\":\"string\"},\"type\":{\"type\":\"string\"}},\"type\":\"object\"}},\"type\":\"object\"}}},\"required\":true},\"responses\":{\"200\":{\"content\":{\"application/json\":{\"schema\":{\"properties\":{\"list\":{\"items\":{\"properties\":{\"addresses\":{\"items\":{\"properties\":{\"city\":{\"type\":\"string\"},\"country\":{\"type\":\"string\"},\"description\":{\"type\":\"string\"},\"name\":{\"type\":\"string\"},\"state\":{\"type\":\"string\"},\"street1\":{\"type\":\"string\"},\"street2\":{\"type\":\"string\"},\"zipCode\":{\"type\":\"string\"}},\"type\":\"object\"},\"type\":\"array\"},\"consumerUUID\":{\"type\":\"string\"},\"dateOfBirth\":{\"format\":\"date-time\",\"type\":\"string\"},\"email\":{\"type\":\"string\"},\"firstName\":{\"type\":\"string\"},\"gender\":{\"properties\":{\"name\":{\"type\":\"string\"}},\"type\":\"object\"},\"idCards\":{\"items\":{\"properties\":{\"number\":{\"type\":\"string\"},\"type\":{\"properties\":{\"name\":{\"type\":\"string\"}},\"type\":\"object\"}},\"type\":\"object\"},\"type\":\"array\"},\"kyc\":{\"properties\":{\"cases\":{\"items\":{\"properties\":{\"failure\":{\"properties\":{\"name\":{\"type\":\"string\"}},\"type\":\"object\"},\"id\":{\"type\":\"string\"},\"providers\":{\"items\":{\"properties\":{\"datetimeCreated\":{\"format\":\"date-time\",\"type\":\"string\"},\"method\":{\"type\":\"string\"},\"status\":{\"type\":\"string\"}},\"type\":\"object\"},\"type\":\"array\"},\"validUntil\":{\"format\":\"date-time\",\"type\":\"string\"}},\"type\":\"object\"},\"type\":\"array\"},\"level\":{\"format\":\"int32\",\"type\":\"integer\"},\"status\":{\"properties\":{\"name\":{\"type\":\"string\"}},\"type\":\"object\"}},\"type\":\"object\"},\"lastName\":{\"type\":\"string\"},\"lockedUntill\":{\"format\":\"date-time\",\"type\":\"string\"},\"nationality\":{\"type\":\"string\"},\"phones\":{\"items\":{\"properties\":{\"description\":{\"type\":\"string\"},\"number\":{\"type\":\"string\"}},\"type\":\"object\"},\"type\":\"array\"},\"placeOfBirth\":{\"type\":\"string\"},\"registered\":{\"format\":\"date-time\",\"type\":\"string\"},\"status\":{\"properties\":{\"name\":{\"type\":\"string\"}},\"type\":\"object\"},\"userRoles\":{\"items\":{\"properties\":{\"corporate\":{\"properties\":{\"name\":{\"type\":\"string\"},\"uuid\":{\"type\":\"string\"}},\"type\":\"object\"},\"name\":{\"type\":\"string\"}},\"type\":\"object\"},\"type\":\"array\"}},\"type\":\"object\"},\"type\":\"array\"},\"pagination\":{\"properties\":{\"page\":{\"format\":\"int32\",\"type\":\"integer\"},\"size\":{\"format\":\"int32\",\"type\":\"integer\"},\"totalElements\":{\"format\":\"int64\",\"type\":\"integer\"},\"totalPages\":{\"format\":\"int32\",\"type\":\"integer\"}},\"type\":\"object\"},\"responseCode\":{\"format\":\"int32\",\"type\":\"integer\"},\"responseMessage\":{\"type\":\"string\"}},\"type\":\"object\"}}},\"description\":\"OK\"}},\"security\":[{\"bearer-auth-header\":[]},{\"basic-auth-header\":[]}],\"securitySchemes\":{\"basic-auth-header\":{\"scheme\":\"basic\",\"type\":\"http\"},\"bearer-auth-header\":{\"scheme\":\"bearer\",\"type\":\"http\"}},\"securitySource\":\"operation\"}", "source": "openapi3", "version": 1 }, "kind": "http", "method": "POST", "orig": "/listOfUsers", "segments": [{ "lit": "listOfUsers" }], "select": { "exist": ["authorization"] }, "transform": { "req": "`reqdata`", "res": "`body`" }, "index$": 0 }], "key$": "create" } }, "relations": { "ancestors": [] }, "key$": "output_list_of_user", "name__orig": "output_list_of_user", "Name": "OutputListOfUser", "name_": "output_list_of_user", "name-": "output-list-of-user", "NAME": "OUTPUT_LIST_OF_USER", "index$": 16 }, { "active": true, "entity": "output_list_of_user", "key$": "BasicOutputListOfUserFlow", "kind": "basic", "name": "BasicOutputListOfUserFlow", "param": {}, "step": [{ "active": true, "data": {}, "input": { "ref": "output_list_of_user_ref01" }, "match": {}, "op": "create", "spec": [], "valid": [], "index$": 0 }] }, 'OutputListOfUser');
        }
        const client = setup.client;
        const struct = setup.struct;
        const isempty = struct.isempty;
        const select = struct.select;
        // CREATE
        const output_list_of_user_ref01_ent = client.OutputListOfUser();
        let output_list_of_user_ref01_data = setup.data.new.output_list_of_user['output_list_of_user_ref01'];
        output_list_of_user_ref01_data = (await output_list_of_user_ref01_ent.create(output_list_of_user_ref01_data)).data();
        (0, node_assert_1.default)(null != output_list_of_user_ref01_data);
    });
});
function basicSetup(extra) {
    // TODO: fix test def options
    const options = {}; // null
    // TODO: needs test utility to resolve path
    const entityDataFile = node_path_1.default.resolve(__dirname, '../../../../.sdk/test/entity/output_list_of_user/OutputListOfUserTestData.json');
    // TODO: file ready util needed?
    const entityDataSource = Fs.readFileSync(entityDataFile).toString('utf8');
    // TODO: need a xlang JSON parse utility in voxgig/struct with better error msgs
    const entityData = JSON.parse(entityDataSource);
    options.entity = entityData.existing;
    let client = __1.BluefinTecsUserBackofficeSDK.test(options, extra);
    const struct = client.utility().struct;
    const merge = struct.merge;
    const transform = struct.transform;
    let idmap = transform(['output_list_of_user01', 'output_list_of_user02', 'output_list_of_user03'], {
        '`$PACK`': ['', {
                '`$KEY`': '`$COPY`',
                '`$VAL`': ['`$FORMAT`', 'upper', '`$COPY`']
            }]
    });
    const env = (0, utility_1.envOverride)({
        'BLUEFIN_TECS_USER_BACKOFFICE_TEST_OUTPUT_LIST_OF_USER_ENTID': idmap,
        'BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE': 'FALSE',
        'BLUEFIN_TECS_USER_BACKOFFICE_TEST_EXPLAIN': 'FALSE',
        'BLUEFIN_TECS_USER_BACKOFFICE_APIKEY': '',
    });
    idmap = env['BLUEFIN_TECS_USER_BACKOFFICE_TEST_OUTPUT_LIST_OF_USER_ENTID'];
    const live = 'TRUE' === env.BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE;
    const transport = (0, live_runner_1.createLiveTransport)();
    if (live) {
        const rawIds = process.env['BLUEFIN_TECS_USER_BACKOFFICE_TEST_OUTPUT_LIST_OF_USER_ENTID'];
        idmap = rawIds && rawIds.trim() ? JSON.parse(rawIds) : {};
        if (!idmap || Array.isArray(idmap) || typeof idmap !== 'object') {
            throw new Error('Live ENTID must be a JSON object');
        }
        client = new __1.BluefinTecsUserBackofficeSDK(merge([
            // FIRST, so the generated fields below win: sdk-test-control.json's
            // test.client.options adds to the live client, it does not redirect it.
            (0, utility_1.liveClientOptions)(),
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
        ]));
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
    };
    return setup;
}
//# sourceMappingURL=OutputListOfUserEntity.test.js.map
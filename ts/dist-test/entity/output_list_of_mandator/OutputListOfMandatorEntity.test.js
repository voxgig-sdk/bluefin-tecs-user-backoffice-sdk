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
(0, utility_1.loadEnvLocal)(__dirname + '/../../../.env.local');
(0, node_test_1.describe)('OutputListOfMandatorEntity', async () => {
    // Per-test live pacing. Delay is read from sdk-test-control.json's
    // `test.live.delayMs`; only sleeps when BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE=TRUE.
    (0, node_test_1.afterEach)((0, utility_1.liveDelay)('BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE'));
    (0, node_test_1.test)('instance', async () => {
        const testsdk = __1.BluefinTecsUserBackofficeSDK.test();
        const ent = testsdk.OutputListOfMandator();
        (0, node_assert_1.default)(null != ent);
    });
    (0, node_test_1.test)('basic', async (t) => {
        const live = 'TRUE' === process.env.BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE;
        for (const op of ['create']) {
            if (!live && (0, utility_1.maybeSkipControl)(t, 'entityOp', 'output_list_of_mandator.' + op, live))
                return;
        }
        const setup = basicSetup();
        if (setup.live) {
            return (0, live_entity_1.runLiveEntity)(setup, { "active": true, "alias": { "field": {} }, "fields": { "filter": { "a": true, "h": "Filter", "n": "filter", "r": false, "t": "`$OBJECT`", "key$": "filter", "index$": 0 }, "list": { "a": true, "h": "List", "n": "list", "r": false, "t": "`$ARRAY`", "key$": "list", "index$": 1 }, "pagination": { "a": true, "h": "Pagination", "n": "pagination", "r": false, "t": "`$OBJECT`", "key$": "pagination", "index$": 2 }, "responseCode": { "a": true, "fo": "int32", "h": "Response Code", "n": "responseCode", "r": false, "t": "`$INTEGER`", "key$": "responseCode", "index$": 3 }, "responseMessage": { "a": true, "h": "Response Message", "n": "responseMessage", "r": false, "t": "`$STRING`", "key$": "responseMessage", "index$": 4 }, "sorting": { "a": true, "h": "Sorting", "n": "sorting", "r": false, "t": "`$OBJECT`", "key$": "sorting", "index$": 5 } }, "name": "output_list_of_mandator", "op": { "create": { "input": "data", "name": "create", "points": [{ "a": true, "co": { "id": "POST /listOfMandators", "source": "openapi3", "version": 2 }, "g": { "header": [{ "a": true, "k": "header", "n": "authorization", "or": "authorization", "r": true, "t": "`$STRING`", "index$": 0 }] }, "k": "http", "m": "POST", "o": "/listOfMandators", "q": { "exist": ["authorization"] }, "r": {}, "s": [{ "lit": "listOfMandators" }], "t": { "req": "`reqdata`", "res": "`body`" }, "index$": 0 }], "key$": "create" } }, "relations": { "ancestors": [] }, "key$": "output_list_of_mandator", "name__orig": "output_list_of_mandator", "Name": "OutputListOfMandator", "name_": "output_list_of_mandator", "name-": "output-list-of-mandator", "NAME": "OUTPUT_LIST_OF_MANDATOR", "index$": 12 }, { "active": true, "entity": "output_list_of_mandator", "key$": "BasicOutputListOfMandatorFlow", "kind": "basic", "name": "BasicOutputListOfMandatorFlow", "param": {}, "step": [{ "a": true, "d": {}, "i": { "ref": "output_list_of_mandator_ref01" }, "m": {}, "o": "create", "s": [], "v": [], "index$": 0 }] }, 'OutputListOfMandator', { "POST /listOfMandators": { "protocol": "http", "requestBody": { "content": { "application/json": { "schema": { "type": "object", "properties": { "pagination": { "type": "object", "properties": { "page": { "type": "integer", "format": "int32" }, "size": { "type": "integer", "format": "int32" } }, "x-ref": "#/components/schemas/Pagination", "key$": "pagination" }, "sorting": { "type": "object", "properties": { "name": { "type": "string" }, "type": { "type": "string" } }, "x-ref": "#/components/schemas/Sorting", "key$": "sorting" }, "filter": { "type": "object", "properties": { "name": { "type": "string" } }, "x-ref": "#/components/schemas/MandatorFilter", "key$": "filter" } }, "x-ref": "#/components/schemas/InputListOfMandators", "index$": 1 } } }, "required": true }, "parameters": [{ "name": "Authorization", "in": "header", "required": true, "schema": { "type": "string" }, "index$": 0 }] } });
        }
        const client = setup.client;
        const struct = setup.struct;
        const isempty = struct.isempty;
        const select = struct.select;
        // CREATE
        const output_list_of_mandator_ref01_ent = client.OutputListOfMandator();
        let output_list_of_mandator_ref01_data = setup.data.new.output_list_of_mandator['output_list_of_mandator_ref01'];
        output_list_of_mandator_ref01_data = (await output_list_of_mandator_ref01_ent.create(output_list_of_mandator_ref01_data)).data();
        (0, node_assert_1.default)(null != output_list_of_mandator_ref01_data);
    });
});
function basicSetup(extra) {
    // TODO: fix test def options
    const options = {}; // null
    // TODO: needs test utility to resolve path
    const entityDataFile = node_path_1.default.resolve(__dirname, '../../../../.sdk/test/entity/output_list_of_mandator/OutputListOfMandatorTestData.json');
    // TODO: file ready util needed?
    const entityDataSource = Fs.readFileSync(entityDataFile).toString('utf8');
    // TODO: need a xlang JSON parse utility in voxgig/struct with better error msgs
    const entityData = JSON.parse(entityDataSource);
    options.entity = entityData.existing;
    let client = __1.BluefinTecsUserBackofficeSDK.test(options, extra);
    const struct = client.utility().struct;
    const merge = struct.merge;
    const transform = struct.transform;
    let idmap = transform(['output_list_of_mandator01', 'output_list_of_mandator02', 'output_list_of_mandator03'], {
        '`$PACK`': ['', {
                '`$KEY`': '`$COPY`',
                '`$VAL`': ['`$FORMAT`', 'upper', '`$COPY`']
            }]
    });
    const env = (0, utility_1.envOverride)({
        'BLUEFIN_TECS_USER_BACKOFFICE_TEST_OUTPUT_LIST_OF_MANDATOR_ENTID': idmap,
        'BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE': 'FALSE',
        'BLUEFIN_TECS_USER_BACKOFFICE_TEST_EXPLAIN': 'FALSE',
        'BLUEFIN_TECS_USER_BACKOFFICE_APIKEY': '',
    });
    idmap = env['BLUEFIN_TECS_USER_BACKOFFICE_TEST_OUTPUT_LIST_OF_MANDATOR_ENTID'];
    const live = 'TRUE' === env.BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE;
    const transport = (0, live_runner_1.createLiveTransport)();
    if (live) {
        const rawIds = process.env['BLUEFIN_TECS_USER_BACKOFFICE_TEST_OUTPUT_LIST_OF_MANDATOR_ENTID'];
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
//# sourceMappingURL=OutputListOfMandatorEntity.test.js.map
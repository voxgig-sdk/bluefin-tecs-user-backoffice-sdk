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
(0, node_test_1.describe)('OutputCreateMandatorEntity', async () => {
    // Per-test live pacing. Delay is read from sdk-test-control.json's
    // `test.live.delayMs`; only sleeps when BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE=TRUE.
    (0, node_test_1.afterEach)((0, utility_1.liveDelay)('BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE'));
    (0, node_test_1.test)('instance', async () => {
        const testsdk = __1.BluefinTecsUserBackofficeSDK.test();
        const ent = testsdk.OutputCreateMandator();
        (0, node_assert_1.default)(null != ent);
    });
    (0, node_test_1.test)('basic', async (t) => {
        const live = 'TRUE' === process.env.BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE;
        for (const op of ['create']) {
            if (!live && (0, utility_1.maybeSkipControl)(t, 'entityOp', 'output_create_mandator.' + op, live))
                return;
        }
        const setup = basicSetup();
        if (setup.live) {
            return (0, live_entity_1.runLiveEntity)(setup, { "active": true, "alias": { "field": {} }, "fields": { "city": { "a": true, "h": "City", "n": "city", "r": false, "t": "`$STRING`", "key$": "city", "index$": 0 }, "country": { "a": true, "h": "Country", "n": "country", "r": false, "t": "`$STRING`", "key$": "country", "index$": 1 }, "dateOfBirth": { "a": true, "h": "Date Of Birth", "n": "dateOfBirth", "r": false, "t": "`$STRING`", "key$": "dateOfBirth", "index$": 2 }, "description": { "a": true, "h": "Description", "n": "description", "op": { "create": { "req": true, "type": "`$STRING`" } }, "r": false, "t": "`$STRING`", "key$": "description", "index$": 3 }, "driversLicenseNumber": { "a": true, "h": "Drivers License Number", "n": "driversLicenseNumber", "r": false, "t": "`$STRING`", "key$": "driversLicenseNumber", "index$": 4 }, "email": { "a": true, "h": "Email", "n": "email", "r": true, "t": "`$STRING`", "key$": "email", "index$": 5 }, "firstName": { "a": true, "h": "First Name", "n": "firstName", "r": false, "t": "`$STRING`", "key$": "firstName", "index$": 6 }, "identificationNumber": { "a": true, "h": "Identification Number", "n": "identificationNumber", "r": false, "t": "`$STRING`", "key$": "identificationNumber", "index$": 7 }, "lastName": { "a": true, "h": "Last Name", "n": "lastName", "r": false, "t": "`$STRING`", "key$": "lastName", "index$": 8 }, "login": { "a": true, "h": "Login", "n": "login", "r": true, "t": "`$STRING`", "key$": "login", "index$": 9 }, "name": { "a": true, "h": "Name", "n": "name", "op": { "create": { "req": true, "type": "`$STRING`" } }, "r": false, "t": "`$STRING`", "key$": "name", "index$": 10 }, "passportNumber": { "a": true, "h": "Passport Number", "n": "passportNumber", "r": false, "t": "`$STRING`", "key$": "passportNumber", "index$": 11 }, "phone": { "a": true, "h": "Phone", "n": "phone", "r": true, "t": "`$STRING`", "key$": "phone", "index$": 12 }, "salutation": { "a": true, "h": "Salutation", "n": "salutation", "r": false, "t": "`$STRING`", "key$": "salutation", "index$": 13 }, "state": { "a": true, "h": "State", "n": "state", "r": false, "t": "`$STRING`", "key$": "state", "index$": 14 }, "street1": { "a": true, "h": "Street1", "n": "street1", "r": false, "t": "`$STRING`", "key$": "street1", "index$": 15 }, "street2": { "a": true, "h": "Street2", "n": "street2", "r": false, "t": "`$STRING`", "key$": "street2", "index$": 16 }, "zipCode": { "a": true, "h": "Zip Code", "n": "zipCode", "r": false, "t": "`$STRING`", "key$": "zipCode", "index$": 17 } }, "name": "output_create_mandator", "op": { "create": { "input": "data", "name": "create", "points": [{ "a": true, "co": { "id": "POST /createMandator", "source": "openapi3", "version": 2 }, "g": { "header": [{ "a": true, "k": "header", "n": "authorization", "or": "authorization", "r": true, "t": "`$STRING`", "index$": 0 }] }, "k": "http", "m": "POST", "o": "/createMandator", "q": { "exist": ["authorization"] }, "r": {}, "s": [{ "lit": "createMandator" }], "t": { "req": "`reqdata`", "res": "`body.mandator`" }, "index$": 0 }], "key$": "create" } }, "relations": { "ancestors": [] }, "key$": "output_create_mandator", "name__orig": "output_create_mandator", "Name": "OutputCreateMandator", "name_": "output_create_mandator", "name-": "output-create-mandator", "NAME": "OUTPUT_CREATE_MANDATOR", "index$": 6 }, { "active": true, "entity": "output_create_mandator", "key$": "BasicOutputCreateMandatorFlow", "kind": "basic", "name": "BasicOutputCreateMandatorFlow", "param": {}, "step": [{ "a": true, "d": {}, "i": { "ref": "output_create_mandator_ref01" }, "m": {}, "o": "create", "s": [], "v": [], "index$": 0 }] }, 'OutputCreateMandator', { "POST /createMandator": { "protocol": "http", "requestBody": { "content": { "application/json": { "schema": { "required": ["description", "email", "login", "name", "phone"], "type": "object", "properties": { "name": { "type": "string", "key$": "name" }, "description": { "type": "string", "key$": "description" }, "email": { "type": "string", "key$": "email" }, "login": { "type": "string", "key$": "login" }, "phone": { "type": "string", "key$": "phone" }, "firstName": { "type": "string", "key$": "firstName" }, "lastName": { "type": "string", "key$": "lastName" }, "dateOfBirth": { "type": "string", "key$": "dateOfBirth" }, "street1": { "type": "string", "key$": "street1" }, "city": { "type": "string", "key$": "city" }, "country": { "type": "string", "key$": "country" }, "zipCode": { "type": "string", "key$": "zipCode" }, "salutation": { "type": "string", "key$": "salutation" }, "identificationNumber": { "type": "string", "key$": "identificationNumber" }, "passportNumber": { "type": "string", "key$": "passportNumber" }, "driversLicenseNumber": { "type": "string", "key$": "driversLicenseNumber" }, "street2": { "type": "string", "key$": "street2" }, "state": { "type": "string", "key$": "state" } }, "x-ref": "#/components/schemas/InputCreateMandator", "index$": 1 } } }, "required": true }, "parameters": [{ "name": "Authorization", "in": "header", "required": true, "schema": { "type": "string" }, "index$": 0 }] } });
        }
        const client = setup.client;
        const struct = setup.struct;
        const isempty = struct.isempty;
        const select = struct.select;
        // CREATE
        const output_create_mandator_ref01_ent = client.OutputCreateMandator();
        let output_create_mandator_ref01_data = setup.data.new.output_create_mandator['output_create_mandator_ref01'];
        output_create_mandator_ref01_data = (await output_create_mandator_ref01_ent.create(output_create_mandator_ref01_data)).data();
        (0, node_assert_1.default)(null != output_create_mandator_ref01_data);
    });
});
function basicSetup(extra) {
    // TODO: fix test def options
    const options = {}; // null
    // TODO: needs test utility to resolve path
    const entityDataFile = node_path_1.default.resolve(__dirname, '../../../../.sdk/test/entity/output_create_mandator/OutputCreateMandatorTestData.json');
    // TODO: file ready util needed?
    const entityDataSource = Fs.readFileSync(entityDataFile).toString('utf8');
    // TODO: need a xlang JSON parse utility in voxgig/struct with better error msgs
    const entityData = JSON.parse(entityDataSource);
    options.entity = entityData.existing;
    let client = __1.BluefinTecsUserBackofficeSDK.test(options, extra);
    const struct = client.utility().struct;
    const merge = struct.merge;
    const transform = struct.transform;
    let idmap = transform(['output_create_mandator01', 'output_create_mandator02', 'output_create_mandator03'], {
        '`$PACK`': ['', {
                '`$KEY`': '`$COPY`',
                '`$VAL`': ['`$FORMAT`', 'upper', '`$COPY`']
            }]
    });
    const env = (0, utility_1.envOverride)({
        'BLUEFIN_TECS_USER_BACKOFFICE_TEST_OUTPUT_CREATE_MANDATOR_ENTID': idmap,
        'BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE': 'FALSE',
        'BLUEFIN_TECS_USER_BACKOFFICE_TEST_EXPLAIN': 'FALSE',
        'BLUEFIN_TECS_USER_BACKOFFICE_APIKEY': '',
    });
    idmap = env['BLUEFIN_TECS_USER_BACKOFFICE_TEST_OUTPUT_CREATE_MANDATOR_ENTID'];
    const live = 'TRUE' === env.BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE;
    const transport = (0, live_runner_1.createLiveTransport)();
    if (live) {
        const rawIds = process.env['BLUEFIN_TECS_USER_BACKOFFICE_TEST_OUTPUT_CREATE_MANDATOR_ENTID'];
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
//# sourceMappingURL=OutputCreateMandatorEntity.test.js.map
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
(0, node_test_1.describe)('OutputRegisterUserEntity', async () => {
    // Per-test live pacing. Delay is read from sdk-test-control.json's
    // `test.live.delayMs`; only sleeps when BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE=TRUE.
    (0, node_test_1.afterEach)((0, utility_1.liveDelay)('BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE'));
    (0, node_test_1.test)('instance', async () => {
        const testsdk = __1.BluefinTecsUserBackofficeSDK.test();
        const ent = testsdk.OutputRegisterUser();
        (0, node_assert_1.default)(null != ent);
    });
    (0, node_test_1.test)('basic', async (t) => {
        const live = 'TRUE' === process.env.BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE;
        for (const op of ['create']) {
            if (!live && (0, utility_1.maybeSkipControl)(t, 'entityOp', 'output_register_user.' + op, live))
                return;
        }
        const setup = basicSetup();
        if (setup.live) {
            return (0, live_entity_1.runLiveEntity)(setup, { "active": true, "alias": { "field": {} }, "fields": [{ "active": true, "name": "city", "req": false, "short": "City where the user resides.", "type": "`$STRING`", "index$": 0 }, { "active": true, "name": "consumerId", "req": false, "short": "User login or unique user identifier.", "type": "`$STRING`", "index$": 1 }, { "active": true, "name": "consumerLanguage", "req": false, "short": "Preferred language for the user (e.g., 'en').", "type": "`$STRING`", "index$": 2 }, { "active": true, "name": "country", "req": false, "short": "User's country.", "type": "`$STRING`", "index$": 3 }, { "active": true, "name": "dateOfBirth", "req": false, "short": "User's date of birth (expected format: dd.MM.yyyy).", "type": "`$STRING`", "index$": 4 }, { "active": true, "name": "driverLicenceNumber", "req": false, "short": "User's driver's license number.", "type": "`$STRING`", "index$": 5 }, { "active": true, "format": "email", "name": "email", "req": true, "short": "User's email address (must be unique).", "type": "`$STRING`", "index$": 6 }, { "active": true, "name": "firstName", "req": false, "short": "User's first name.", "type": "`$STRING`", "index$": 7 }, { "active": true, "name": "identificationNumber", "req": false, "short": "User's identification number.", "type": "`$STRING`", "index$": 8 }, { "active": true, "name": "lastName", "req": false, "short": "User's last name.", "type": "`$STRING`", "index$": 9 }, { "active": true, "name": "login", "req": false, "short": "User login identifier (should be unique).", "type": "`$STRING`", "index$": 10 }, { "active": true, "name": "module", "req": false, "short": "Module identifier (if applicable).", "type": "`$STRING`", "index$": 11 }, { "active": true, "name": "passportNumber", "req": false, "short": "User's passport number.", "type": "`$STRING`", "index$": 12 }, { "active": true, "name": "phone", "req": false, "short": "User's phone number.", "type": "`$STRING`", "index$": 13 }, { "active": true, "format": "int32", "name": "responseCode", "req": false, "short": "Response code (0 indicates success; non-zero indicates an error).", "type": "`$INTEGER`", "index$": 14 }, { "active": true, "name": "responseMessage", "req": false, "short": "Human-readable response message.", "type": "`$STRING`", "index$": 15 }, { "active": true, "name": "salutation", "req": false, "short": "User's salutation (e.g., Mr., Ms.).", "type": "`$STRING`", "index$": 16 }, { "active": true, "name": "state", "req": false, "short": "User's state or region.", "type": "`$STRING`", "index$": 17 }, { "active": true, "name": "street1", "req": false, "short": "Primary address line.", "type": "`$STRING`", "index$": 18 }, { "active": true, "name": "street2", "req": false, "short": "Secondary address line.", "type": "`$STRING`", "index$": 19 }, { "active": true, "name": "zip", "req": false, "short": "Postal code.", "type": "`$STRING`", "index$": 20 }], "name": "output_register_user", "op": { "create": { "input": "data", "name": "create", "points": [{ "active": true, "args": { "header": [{ "active": true, "kind": "header", "name": "authorization", "orig": "authorization", "reqd": true, "type": "`$STRING`" }] }, "contract": { "id": "POST /registerUser", "json": "{\"operationId\":\"registerUser\",\"parameters\":[{\"description\":\"Authorization header using either: - Bearer token (e.g., \\\"Bearer <token>\\\") - Basic authentication (e.g., \\\"Basic <Base64 encoded credentials>\\\")\\n\",\"in\":\"header\",\"name\":\"Authorization\",\"required\":true,\"schema\":{\"type\":\"string\"}}],\"protocol\":\"http\",\"requestBody\":{\"content\":{\"application/json\":{\"schema\":{\"properties\":{\"city\":{\"description\":\"City where the user resides.\",\"example\":\"Berlin\",\"type\":\"string\"},\"consumerLanguage\":{\"description\":\"Preferred language for the user (e.g., 'en').\",\"example\":\"en\",\"type\":\"string\"},\"country\":{\"description\":\"User's country.\",\"example\":\"Germany\",\"type\":\"string\"},\"dateOfBirth\":{\"description\":\"User's date of birth (expected format: dd.MM.yyyy).\",\"example\":\"01.01.2000\",\"type\":\"string\"},\"driverLicenceNumber\":{\"description\":\"User's driver's license number.\",\"example\":\"DC357158\",\"type\":\"string\"},\"email\":{\"description\":\"User's email address (must be unique).\",\"example\":\"user@mail.com\",\"format\":\"email\",\"type\":\"string\"},\"firstName\":{\"description\":\"User's first name.\",\"example\":\"UserName\",\"type\":\"string\"},\"identificationNumber\":{\"description\":\"User's identification number.\",\"example\":\"19574328625\",\"type\":\"string\"},\"lastName\":{\"description\":\"User's last name.\",\"example\":\"UserSurname\",\"type\":\"string\"},\"login\":{\"description\":\"User login identifier (should be unique).\",\"example\":\"userlogin\",\"type\":\"string\"},\"module\":{\"description\":\"Module identifier (if applicable).\",\"example\":\"pam\",\"type\":\"string\"},\"passportNumber\":{\"description\":\"User's passport number.\",\"example\":\"VH488314\",\"type\":\"string\"},\"phone\":{\"description\":\"User's phone number.\",\"example\":\"+4991199009926\",\"type\":\"string\"},\"salutation\":{\"description\":\"User's salutation (e.g., Mr., Ms.).\",\"example\":\"Mr.\",\"type\":\"string\"},\"state\":{\"description\":\"User's state or region.\",\"example\":\"Berlin\",\"type\":\"string\"},\"street1\":{\"description\":\"Primary address line.\",\"example\":\"Potsdamer\",\"type\":\"string\"},\"street2\":{\"description\":\"Secondary address line.\",\"example\":\"13\",\"type\":\"string\"},\"zip\":{\"description\":\"Postal code.\",\"example\":\"10783\",\"type\":\"string\"}},\"required\":[\"email\"],\"type\":\"object\"}}},\"required\":true},\"responses\":{\"200\":{\"content\":{\"application/json\":{\"schema\":{\"properties\":{\"consumerId\":{\"description\":\"User login or unique user identifier.\",\"example\":\"userlogin\",\"type\":\"string\"},\"responseCode\":{\"description\":\"Response code (0 indicates success; non-zero indicates an error).\",\"example\":0,\"format\":\"int32\",\"type\":\"integer\"},\"responseMessage\":{\"description\":\"Human-readable response message.\",\"example\":\"OK\",\"type\":\"string\"}},\"type\":\"object\"}}},\"description\":\"User registered successfully.\"}},\"security\":[{\"bearer-auth-header\":[]},{\"basic-auth-header\":[]}],\"securitySchemes\":{\"basic-auth-header\":{\"scheme\":\"basic\",\"type\":\"http\"},\"bearer-auth-header\":{\"scheme\":\"bearer\",\"type\":\"http\"}},\"securitySource\":\"operation\"}", "source": "openapi3", "version": 1 }, "kind": "http", "method": "POST", "orig": "/registerUser", "segments": [{ "lit": "registerUser" }], "select": { "exist": ["authorization"] }, "transform": { "req": "`reqdata`", "res": "`body`" }, "index$": 0 }], "key$": "create" } }, "relations": { "ancestors": [] }, "key$": "output_register_user", "name__orig": "output_register_user", "Name": "OutputRegisterUser", "name_": "output_register_user", "name-": "output-register-user", "NAME": "OUTPUT_REGISTER_USER", "index$": 18 }, { "active": true, "entity": "output_register_user", "key$": "BasicOutputRegisterUserFlow", "kind": "basic", "name": "BasicOutputRegisterUserFlow", "param": {}, "step": [{ "active": true, "data": {}, "input": { "ref": "output_register_user_ref01" }, "match": {}, "op": "create", "spec": [], "valid": [], "index$": 0 }] }, 'OutputRegisterUser');
        }
        const client = setup.client;
        const struct = setup.struct;
        const isempty = struct.isempty;
        const select = struct.select;
        // CREATE
        const output_register_user_ref01_ent = client.OutputRegisterUser();
        let output_register_user_ref01_data = setup.data.new.output_register_user['output_register_user_ref01'];
        output_register_user_ref01_data = (await output_register_user_ref01_ent.create(output_register_user_ref01_data)).data();
        (0, node_assert_1.default)(null != output_register_user_ref01_data);
    });
});
function basicSetup(extra) {
    // TODO: fix test def options
    const options = {}; // null
    // TODO: needs test utility to resolve path
    const entityDataFile = node_path_1.default.resolve(__dirname, '../../../../.sdk/test/entity/output_register_user/OutputRegisterUserTestData.json');
    // TODO: file ready util needed?
    const entityDataSource = Fs.readFileSync(entityDataFile).toString('utf8');
    // TODO: need a xlang JSON parse utility in voxgig/struct with better error msgs
    const entityData = JSON.parse(entityDataSource);
    options.entity = entityData.existing;
    let client = __1.BluefinTecsUserBackofficeSDK.test(options, extra);
    const struct = client.utility().struct;
    const merge = struct.merge;
    const transform = struct.transform;
    let idmap = transform(['output_register_user01', 'output_register_user02', 'output_register_user03'], {
        '`$PACK`': ['', {
                '`$KEY`': '`$COPY`',
                '`$VAL`': ['`$FORMAT`', 'upper', '`$COPY`']
            }]
    });
    const env = (0, utility_1.envOverride)({
        'BLUEFIN_TECS_USER_BACKOFFICE_TEST_OUTPUT_REGISTER_USER_ENTID': idmap,
        'BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE': 'FALSE',
        'BLUEFIN_TECS_USER_BACKOFFICE_TEST_EXPLAIN': 'FALSE',
        'BLUEFIN_TECS_USER_BACKOFFICE_APIKEY': '',
    });
    idmap = env['BLUEFIN_TECS_USER_BACKOFFICE_TEST_OUTPUT_REGISTER_USER_ENTID'];
    const live = 'TRUE' === env.BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE;
    const transport = (0, live_runner_1.createLiveTransport)();
    if (live) {
        const rawIds = process.env['BLUEFIN_TECS_USER_BACKOFFICE_TEST_OUTPUT_REGISTER_USER_ENTID'];
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
//# sourceMappingURL=OutputRegisterUserEntity.test.js.map
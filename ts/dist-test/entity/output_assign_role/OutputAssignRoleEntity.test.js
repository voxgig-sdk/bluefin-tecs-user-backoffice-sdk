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
(0, node_test_1.describe)('OutputAssignRoleEntity', async () => {
    // Per-test live pacing. Delay is read from sdk-test-control.json's
    // `test.live.delayMs`; only sleeps when BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE=TRUE.
    (0, node_test_1.afterEach)((0, utility_1.liveDelay)('BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE'));
    (0, node_test_1.test)('instance', async () => {
        const testsdk = __1.BluefinTecsUserBackofficeSDK.test();
        const ent = testsdk.OutputAssignRole();
        (0, node_assert_1.default)(null != ent);
    });
    (0, node_test_1.test)('basic', async (t) => {
        const live = 'TRUE' === process.env.BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE;
        for (const op of ['create']) {
            if (!live && (0, utility_1.maybeSkipControl)(t, 'entityOp', 'output_assign_role.' + op, live))
                return;
        }
        const setup = basicSetup();
        if (setup.live) {
            return (0, live_entity_1.runLiveEntity)(setup, { "active": true, "alias": { "field": {} }, "fields": { "consumerUUID": { "a": true, "h": "Consumer Uuid", "n": "consumerUUID", "r": true, "sh": "Unique identifier of the consumer (user) to whom the role(s) will be assigned.", "t": "`$STRING`", "key$": "consumerUUID", "index$": 0 }, "responseCode": { "a": true, "fo": "int32", "h": "Response Code", "n": "responseCode", "r": false, "sh": "Response code: 0 indicates success; any non-zero value indicates an error.", "t": "`$INTEGER`", "key$": "responseCode", "index$": 1 }, "responseMessage": { "a": true, "h": "Response Message", "n": "responseMessage", "r": false, "sh": "A human-readable message providing additional details about the outcome.", "t": "`$STRING`", "key$": "responseMessage", "index$": 2 }, "roles": { "a": true, "h": "Roles", "n": "roles", "r": true, "sh": "List of roles to assign to the consumer.", "t": "`$ARRAY`", "key$": "roles", "index$": 3 } }, "name": "output_assign_role", "op": { "create": { "input": "data", "name": "create", "points": [{ "a": true, "co": { "id": "POST /assignRoles", "source": "openapi3", "version": 2 }, "g": { "header": [{ "a": true, "k": "header", "n": "authorization", "or": "authorization", "r": true, "t": "`$STRING`", "index$": 0 }] }, "k": "http", "m": "POST", "o": "/assignRoles", "q": { "exist": ["authorization"] }, "r": {}, "s": [{ "lit": "assignRoles" }], "t": { "req": "`reqdata`", "res": "`body`" }, "index$": 0 }], "key$": "create" } }, "relations": { "ancestors": [] }, "key$": "output_assign_role", "name__orig": "output_assign_role", "Name": "OutputAssignRole", "name_": "output_assign_role", "name-": "output-assign-role", "NAME": "OUTPUT_ASSIGN_ROLE", "index$": 4 }, { "active": true, "entity": "output_assign_role", "key$": "BasicOutputAssignRoleFlow", "kind": "basic", "name": "BasicOutputAssignRoleFlow", "param": {}, "step": [{ "a": true, "d": {}, "i": { "ref": "output_assign_role_ref01" }, "m": {}, "o": "create", "s": [], "v": [], "index$": 0 }] }, 'OutputAssignRole', { "POST /assignRoles": { "protocol": "http", "requestBody": { "required": true, "content": { "application/json": { "schema": { "type": "object", "required": ["consumerUUID", "roles"], "properties": { "consumerUUID": { "type": "string", "description": "Unique identifier of the consumer (user) to whom the role(s) will be assigned.", "example": "user-12345", "key$": "consumerUUID" }, "roles": { "type": "array", "description": "List of roles to assign to the consumer.", "items": { "type": "object", "required": ["corporateUUID", "userRoleName"], "properties": { "corporateUUID": { "type": "string", "description": "Unique identifier of the corporate entity associated with the role.", "example": "4dbbab90-74f5-4d8d-92e1-d02e6a4a0dee" }, "userRoleName": { "type": "string", "description": "The name of the role to assign.", "enum": [], "example": "MP_CORPORATE" } }, "x-ref": "#/components/schemas/UserRole" }, "key$": "roles" } }, "x-ref": "#/components/schemas/InputAssignRoles", "index$": 1 }, "examples": { "default": { "summary": "Example input", "value": { "consumerUUID": "user-12345", "roles": [{ "corporateUUID": "4dbbab90-74f5-4d8d-92e1-d02e6a4a0dee", "userRoleName": "MP_CORPORATE" }] } } } } } }, "parameters": [{ "name": "Authorization", "in": "header", "required": true, "schema": { "type": "string" }, "description": "Authorization header. Use either: - Bearer token (e.g., \"Bearer <token>\") - Basic authentication (e.g., \"Basic <Base64 encoded credentials>\")\n", "index$": 0 }] } });
        }
        const client = setup.client;
        const struct = setup.struct;
        const isempty = struct.isempty;
        const select = struct.select;
        // CREATE
        const output_assign_role_ref01_ent = client.OutputAssignRole();
        let output_assign_role_ref01_data = setup.data.new.output_assign_role['output_assign_role_ref01'];
        output_assign_role_ref01_data = (await output_assign_role_ref01_ent.create(output_assign_role_ref01_data)).data();
        (0, node_assert_1.default)(null != output_assign_role_ref01_data);
    });
});
function basicSetup(extra) {
    // TODO: fix test def options
    const options = {}; // null
    // TODO: needs test utility to resolve path
    const entityDataFile = node_path_1.default.resolve(__dirname, '../../../../.sdk/test/entity/output_assign_role/OutputAssignRoleTestData.json');
    // TODO: file ready util needed?
    const entityDataSource = Fs.readFileSync(entityDataFile).toString('utf8');
    // TODO: need a xlang JSON parse utility in voxgig/struct with better error msgs
    const entityData = JSON.parse(entityDataSource);
    options.entity = entityData.existing;
    let client = __1.BluefinTecsUserBackofficeSDK.test(options, extra);
    const struct = client.utility().struct;
    const merge = struct.merge;
    const transform = struct.transform;
    let idmap = transform(['output_assign_role01', 'output_assign_role02', 'output_assign_role03'], {
        '`$PACK`': ['', {
                '`$KEY`': '`$COPY`',
                '`$VAL`': ['`$FORMAT`', 'upper', '`$COPY`']
            }]
    });
    const env = (0, utility_1.envOverride)({
        'BLUEFIN_TECS_USER_BACKOFFICE_TEST_OUTPUT_ASSIGN_ROLE_ENTID': idmap,
        'BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE': 'FALSE',
        'BLUEFIN_TECS_USER_BACKOFFICE_TEST_EXPLAIN': 'FALSE',
        'BLUEFIN_TECS_USER_BACKOFFICE_APIKEY': '',
    });
    idmap = env['BLUEFIN_TECS_USER_BACKOFFICE_TEST_OUTPUT_ASSIGN_ROLE_ENTID'];
    const live = 'TRUE' === env.BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE;
    const transport = (0, live_runner_1.createLiveTransport)();
    if (live) {
        const rawIds = process.env['BLUEFIN_TECS_USER_BACKOFFICE_TEST_OUTPUT_ASSIGN_ROLE_ENTID'];
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
//# sourceMappingURL=OutputAssignRoleEntity.test.js.map
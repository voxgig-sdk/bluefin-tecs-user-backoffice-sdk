# BluefinTecsUserBackoffice Zig SDK



The Zig SDK for the BluefinTecsUserBackoffice API — an entity-oriented client following idiomatic Zig conventions.

The SDK exposes the API as capitalised, semantic **Entities** — for example `client.output_activate_digital_module(h.vnull())` — each
carrying a small, uniform set of operations (`load`, `create`) instead of raw URL
paths and query strings. You work with named resources and verbs, which
keeps the cognitive load low.

> Other languages, the CLI, and MCP server live alongside this one — see
> the [top-level README](../README.md).


## Install
Zig has no central package registry, so this package is distributed as a
git tag (`zig/vX.Y.Z`, see [Releases](https://github.com/voxgig-sdk/bluefin-tecs-user-backoffice-sdk/releases)). Add it to
your `build.zig.zon` dependencies, or build from a source checkout:

```bash
cd zig && zig build
```

To depend on it from another project, add the tagged archive to
`build.zig.zon`:

```zig
.dependencies = .{
    .sdk = .{
        .url = "<repo-url>/archive/refs/tags/zig/vX.Y.Z.tar.gz",
        // .hash = "...", // filled in by `zig fetch`
    },
},
```


## Tutorial: your first API call

This tutorial walks through creating a client, listing entities, and
loading a specific record.

### 1. Create a client

```zig
const std = @import("std");
const sdk = @import("sdk");
const h = sdk.h;

const client = sdk.BluefinTecsUserBackofficeSDK.new(h.jo(&.{
    .{ "apikey", h.vstr(std.posix.getenv("BLUEFIN_TECS_USER_BACKOFFICE_APIKEY") orelse "") },
}));
```

### 4. Create, update, and remove

```zig
// Create — .ok carries the created record
switch (client.output_activate_digital_module(h.vnull()).create(h.jo(&.{.{ "response_code", h.vnum(1) }, .{ "response_message", h.vstr("example_response_message") }}), h.vnull())) {
    .ok => |created| std.debug.print("{s}\n", .{h.stringify(created)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}

```


## Error handling

Entity operations reject on failure, so wrap them in `try` / `catch`:

```ts
try {
  const outputgetlogo = await client.OutputGetLogo().load()
  console.log(outputgetlogo)
} catch (err) {
  console.error('load failed:', err)
}
```

The low-level `direct()` method does **not** throw — it returns the
value or an `Error`, so check the result before using it:

```ts
const result = await client.direct({
  path: '/api/resource/{id}',
  method: 'GET',
  params: { id: 'example_id' },
})

if (result instanceof Error) {
  throw result
}
```


## How-to guides

### Make a direct HTTP request

For endpoints not covered by entity methods:

```zig
const result = client.direct(h.jo(&.{
    .{ "path", h.vstr("/api/resource/{id}") },
    .{ "method", h.vstr("GET") },
    .{ "params", h.jo(&.{.{ "id", h.vstr("example") }}) },
}));

if (h.get_bool(result, "ok") orelse false) {
    std.debug.print("{d}\n", .{h.to_int(h.getp(result, "status"))}); // 200
    std.debug.print("{s}\n", .{h.stringify(h.getp(result, "data"))}); // response body
} else {
    // A non-2xx response carries status + data (the error body); a
    // transport-level failure carries err instead. Only one is present.
    std.debug.print("{s}\n", .{h.get_str(result, "err") orelse ""});
}
```

### Prepare a request without sending it

```zig
// prepare() returns the fetch definition (an error union — use `catch`/`try`).
const fetchdef = client.prepare(h.jo(&.{
    .{ "path", h.vstr("/api/resource/{id}") },
    .{ "method", h.vstr("DELETE") },
    .{ "params", h.jo(&.{.{ "id", h.vstr("example") }}) },
})) catch unreachable;

std.debug.print("{s}\n", .{h.get_str(fetchdef, "url") orelse ""});
std.debug.print("{s}\n", .{h.get_str(fetchdef, "method") orelse ""});
std.debug.print("{s}\n", .{h.stringify(h.getp(fetchdef, "headers"))});
```

### Use test mode

Create a mock client for unit testing — no server required:

```zig
const client = sdk.test_sdk(h.vnull(), h.vnull());

// Entity ops return an OpResult — .ok carries the record, .err the error.
switch (client.output_get_logo(h.vnull()).load(h.vnull(), h.vnull())) {
    .ok => |output_get_logo| std.debug.print("{s}\n", .{h.stringify(output_get_logo)}), // the mock record
    .err => |e| std.debug.print("load failed: {s}\n", .{e.msg}),
}
```

### Point at a different server

Override the base URL to reach a local or staging server:

```zig
const client = sdk.BluefinTecsUserBackofficeSDK.new(h.jo(&.{
    .{ "base", h.vstr("http://localhost:8080") },
}));
```

### Run live tests

Create a `.env.local` file at the project root:

```
BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE=TRUE
BLUEFIN_TECS_USER_BACKOFFICE_APIKEY=<your-key>
```

Then run:

```bash
cd zig && zig build test
```


## Reference

### BluefinTecsUserBackofficeSDK

```zig
const sdk = @import("sdk");
const h = sdk.h;

const client = sdk.BluefinTecsUserBackofficeSDK.new(options);
```

Creates a new SDK client. `options` is a `Value` map (`h.vnull()` for
none) carrying any of the following keys:

| Option | Value type | Description |
| --- | --- | --- |
| `apikey` | `string` | API key for authentication. |
| `base` | `string` | Base URL of the API server. |
| `prefix` | `string` | URL path prefix prepended to all requests. |
| `suffix` | `string` | URL path suffix appended to all requests. |
| `feature` | `map` | Feature activation flags. |
| `system` | `map` | System overrides (e.g. a custom fetcher). |

### test_sdk

```zig
const client = sdk.test_sdk(testopts, sdkopts);
```

Creates a test-mode client with mock transport. Both arguments may be
`h.vnull()`.

### BluefinTecsUserBackofficeSDK methods

| Method | Signature | Description |
| --- | --- | --- |
| `options_map` | `() Value` | Deep copy of the current SDK options. |
| `get_utility` | `() *Utility` | Copy of the SDK utility object. |
| `prepare` | `(fetchargs: Value) E!Value` | Build an HTTP request definition without sending. |
| `direct` | `(fetchargs: Value) Value` | Build and send an HTTP request. Returns a result map (branch on `ok`). |
| `output_activate_digital_module` | `(entopts: Value) *OutputActivateDigitalModuleEntity` | Create an OutputActivateDigitalModule entity instance. |
| `output_activate_portal_module` | `(entopts: Value) *OutputActivatePortalModuleEntity` | Create an OutputActivatePortalModule entity instance. |
| `output_activate_store_module` | `(entopts: Value) *OutputActivateStoreModuleEntity` | Create an OutputActivateStoreModule entity instance. |
| `output_activate_user` | `(entopts: Value) *OutputActivateUserEntity` | Create an OutputActivateUser entity instance. |
| `output_assign_role` | `(entopts: Value) *OutputAssignRoleEntity` | Create an OutputAssignRole entity instance. |
| `output_change_logo` | `(entopts: Value) *OutputChangeLogoEntity` | Create an OutputChangeLogo entity instance. |
| `output_create_mandator` | `(entopts: Value) *OutputCreateMandatorEntity` | Create an OutputCreateMandator entity instance. |
| `output_create_service_user` | `(entopts: Value) *OutputCreateServiceUserEntity` | Create an OutputCreateServiceUser entity instance. |
| `output_deactivate_user` | `(entopts: Value) *OutputDeactivateUserEntity` | Create an OutputDeactivateUser entity instance. |
| `output_get_kyc_document` | `(entopts: Value) *OutputGetKycDocumentEntity` | Create an OutputGetKycDocument entity instance. |
| `output_get_logo` | `(entopts: Value) *OutputGetLogoEntity` | Create an OutputGetLogo entity instance. |
| `output_list_of_available_role` | `(entopts: Value) *OutputListOfAvailableRoleEntity` | Create an OutputListOfAvailableRole entity instance. |
| `output_list_of_mandator` | `(entopts: Value) *OutputListOfMandatorEntity` | Create an OutputListOfMandator entity instance. |
| `output_list_of_module` | `(entopts: Value) *OutputListOfModuleEntity` | Create an OutputListOfModule entity instance. |
| `output_list_of_role_group` | `(entopts: Value) *OutputListOfRoleGroupEntity` | Create an OutputListOfRoleGroup entity instance. |
| `output_list_of_transactions_history` | `(entopts: Value) *OutputListOfTransactionsHistoryEntity` | Create an OutputListOfTransactionsHistory entity instance. |
| `output_list_of_user` | `(entopts: Value) *OutputListOfUserEntity` | Create an OutputListOfUser entity instance. |
| `output_provide_credential` | `(entopts: Value) *OutputProvideCredentialEntity` | Create an OutputProvideCredential entity instance. |
| `output_register_user` | `(entopts: Value) *OutputRegisterUserEntity` | Create an OutputRegisterUser entity instance. |
| `output_remove_role` | `(entopts: Value) *OutputRemoveRoleEntity` | Create an OutputRemoveRole entity instance. |
| `output_resend_link` | `(entopts: Value) *OutputResendLinkEntity` | Create an OutputResendLink entity instance. |
| `output_reset_password` | `(entopts: Value) *OutputResetPasswordEntity` | Create an OutputResetPassword entity instance. |
| `output_update_consumer` | `(entopts: Value) *OutputUpdateConsumerEntity` | Create an OutputUpdateConsumer entity instance. |
| `output_update_profile` | `(entopts: Value) *OutputUpdateProfileEntity` | Create an OutputUpdateProfile entity instance. |
| `version` | `(entopts: Value) *VersionEntity` | Create a Version entity instance. |

### Entity interface

All entities share the same interface.

| Method | Signature | Description |
| --- | --- | --- |
| `load` | `(reqmatch: Value, ctrl: Value) OpResult` | Load a single entity by match criteria. |
| `create` | `(reqdata: Value, ctrl: Value) OpResult` | Create a new entity. |
| `stream` | `(action: []const u8, args: Value, callopts: Value) []Value` | Run an op through the pipeline and materialise its result items. |
| `data` | `(args: ?Value) Value` | Get entity data (pass a map to set). |
| `matchv` | `(args: ?Value) Value` | Get entity match criteria (pass a map to set). |
| `get_name` | `() []const u8` | Return the entity name. |

### Result shape

Entity operations return an `OpResult` union — `switch` on it: `.ok`
carries the bare result data (a `Value` object for single-entity ops, a
`Value` array for `list`), `.err` carries the branded error pointer.

The `direct()` escape hatch returns a result `Value` map directly (no
error union) — even on a non-2xx response — that you branch on via
`h.get_bool(result, "ok")`:

| Key | Type | Description |
| --- | --- | --- |
| `ok` | `bool` | `true` if the HTTP status is 2xx. |
| `status` | `number` | HTTP status code. |
| `headers` | `map` | Response headers. |
| `data` | `any` | Parsed JSON response body. |

On error, `ok` is `false` and `err` carries the error message.

### Entities

#### OutputActivateDigitalModule

| Field | Description |
| --- | --- |
| `response_code` |  |
| `response_message` |  |

Operations: Create.

API path: `/activateDigitalModule`

#### OutputActivatePortalModule

| Field | Description |
| --- | --- |
| `client_secret` |  |
| `notification_email` |  |
| `response_code` |  |
| `response_message` |  |

Operations: Create.

API path: `/activateMerchantPortalModule`

#### OutputActivateStoreModule

| Field | Description |
| --- | --- |
| `response_code` |  |
| `response_message` |  |

Operations: Create.

API path: `/activateAppStoreModule`

#### OutputActivateUser

| Field | Description |
| --- | --- |
| `consumer_uuid` |  |
| `response_code` |  |
| `response_message` |  |

Operations: Create.

API path: `/activateUser`

#### OutputAssignRole

| Field | Description |
| --- | --- |
| `consumer_uuid` |  |
| `response_code` |  |
| `response_message` |  |
| `role` |  |

Operations: Create.

API path: `/assignRoles`

#### OutputChangeLogo

| Field | Description |
| --- | --- |
| `content_as_base64` |  |
| `mime_type` |  |
| `response_code` |  |
| `response_message` |  |

Operations: Create.

API path: `/changeLogo`

#### OutputCreateMandator

| Field | Description |
| --- | --- |
| `city` |  |
| `country` |  |
| `date_of_birth` |  |
| `description` |  |
| `drivers_license_number` |  |
| `email` |  |
| `first_name` |  |
| `identification_number` |  |
| `last_name` |  |
| `login` |  |
| `mandator` |  |
| `name` |  |
| `passport_number` |  |
| `phone` |  |
| `response_code` |  |
| `response_message` |  |
| `salutation` |  |
| `state` |  |
| `street1` |  |
| `street2` |  |
| `zip_code` |  |

Operations: Create.

API path: `/createMandator`

#### OutputCreateServiceUser

| Field | Description |
| --- | --- |
| `mandator_name` |  |
| `response_code` |  |
| `response_message` |  |

Operations: Create.

API path: `/createServiceUser`

#### OutputDeactivateUser

| Field | Description |
| --- | --- |
| `consumer_uuid` |  |
| `response_code` |  |
| `response_message` |  |

Operations: Create.

API path: `/deactivateUser`

#### OutputGetKycDocument

| Field | Description |
| --- | --- |
| `case_id` |  |
| `encoded_data_base64` |  |
| `response_code` |  |
| `response_message` |  |

Operations: Create.

API path: `/getKycDocument`

#### OutputGetLogo

| Field | Description |
| --- | --- |
| `content_as_base64` |  |
| `mime_type` |  |
| `response_code` |  |
| `response_message` |  |

Operations: Load.

API path: `/getLogo`

#### OutputListOfAvailableRole

| Field | Description |
| --- | --- |
| `available_role` |  |
| `response_code` |  |
| `response_message` |  |

Operations: Create.

API path: `/listOfAvailableRoles`

#### OutputListOfMandator

| Field | Description |
| --- | --- |
| `filter` |  |
| `list` |  |
| `pagination` |  |
| `response_code` |  |
| `response_message` |  |
| `sorting` |  |

Operations: Create.

API path: `/listOfMandators`

#### OutputListOfModule

| Field | Description |
| --- | --- |
| `list` |  |
| `pagination` |  |
| `response_code` |  |
| `response_message` |  |

Operations: Create.

API path: `/listOfModules`

#### OutputListOfRoleGroup

| Field | Description |
| --- | --- |
| `filter` |  |
| `group_role` |  |
| `pagination` |  |
| `response_code` |  |
| `response_message` |  |
| `sorting` |  |

Operations: Create.

API path: `/listOfRoleGroups`

#### OutputListOfTransactionsHistory

| Field | Description |
| --- | --- |
| `filter` |  |
| `list` |  |
| `pagination` |  |
| `response_code` |  |
| `response_message` |  |
| `sorting` |  |

Operations: Create.

API path: `/listOfTransactionsHistory`

#### OutputListOfUser

| Field | Description |
| --- | --- |
| `filter` |  |
| `list` |  |
| `pagination` |  |
| `response_code` |  |
| `response_message` |  |
| `sorting` |  |

Operations: Create.

API path: `/listOfUsers`

#### OutputProvideCredential

| Field | Description |
| --- | --- |
| `mandator_name` |  |
| `password` |  |
| `response_code` |  |
| `response_message` |  |
| `username` |  |

Operations: Create.

API path: `/provideCredentials`

#### OutputRegisterUser

| Field | Description |
| --- | --- |
| `city` |  |
| `consumer_id` |  |
| `consumer_language` |  |
| `country` |  |
| `date_of_birth` |  |
| `driver_licence_number` |  |
| `email` |  |
| `first_name` |  |
| `identification_number` |  |
| `last_name` |  |
| `login` |  |
| `module` |  |
| `passport_number` |  |
| `phone` |  |
| `response_code` |  |
| `response_message` |  |
| `salutation` |  |
| `state` |  |
| `street1` |  |
| `street2` |  |
| `zip` |  |

Operations: Create.

API path: `/registerUser`

#### OutputRemoveRole

| Field | Description |
| --- | --- |
| `consumer_uuid` |  |
| `response_code` |  |
| `response_message` |  |
| `role` |  |

Operations: Create.

API path: `/removeRoles`

#### OutputResendLink

| Field | Description |
| --- | --- |
| `business_registration_number` |  |
| `consumer_uuid` |  |
| `email_confirmation_code` |  |
| `phone_number` |  |
| `response_code` |  |
| `response_message` |  |

Operations: Create.

API path: `/resendLink`

#### OutputResetPassword

| Field | Description |
| --- | --- |
| `consumer_uuid` |  |
| `phone_number` |  |
| `response_code` |  |
| `response_message` |  |

Operations: Create.

API path: `/resetPassword`

#### OutputUpdateConsumer

| Field | Description |
| --- | --- |
| `city` |  |
| `consumer_uuid` |  |
| `consumerlanguage` |  |
| `country` |  |
| `date_of_birth` |  |
| `datetime_created` |  |
| `driver_licence_number` |  |
| `email` |  |
| `first_name` |  |
| `identification_number` |  |
| `kyc_passed` |  |
| `last_name` |  |
| `nationality` |  |
| `passport_number` |  |
| `phone_number` |  |
| `place_of_birth` |  |
| `response_code` |  |
| `response_message` |  |
| `state` |  |
| `street1` |  |
| `street2` |  |
| `transactionhistory_id` |  |
| `zip` |  |

Operations: Create.

API path: `/updateConsumer`

#### OutputUpdateProfile

| Field | Description |
| --- | --- |
| `consumer_language` |  |
| `email` |  |
| `first_name` |  |
| `last_name` |  |
| `phone_number` |  |
| `response_code` |  |
| `response_message` |  |

Operations: Create.

API path: `/updateProfile`

#### Version

| Field | Description |
| --- | --- |
| `app_name` |  |
| `build_date` |  |
| `version` |  |

Operations: Load.

API path: `/version`



## Entities


### OutputActivateDigitalModule

Create an instance: `const output_activate_digital_module = client.output_activate_digital_module(h.vnull());`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

Each operation returns an `OpResult` — `switch` on it: `.ok => |data|`
carries the result `Value`, `.err => |e|` carries the branded error.

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `response_code` | `i64` |  |
| `response_message` | `[]const u8` |  |

#### Example: Create

```zig
switch (client.output_activate_digital_module(h.vnull()).create(h.jo(&.{
}), h.vnull())) {
    .ok => |output_activate_digital_module| std.debug.print("{s}\n", .{h.stringify(output_activate_digital_module)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```


### OutputActivatePortalModule

Create an instance: `const output_activate_portal_module = client.output_activate_portal_module(h.vnull());`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

Each operation returns an `OpResult` — `switch` on it: `.ok => |data|`
carries the result `Value`, `.err => |e|` carries the branded error.

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `client_secret` | `[]const u8` |  |
| `notification_email` | `[]const u8` |  |
| `response_code` | `i64` |  |
| `response_message` | `[]const u8` |  |

#### Example: Create

```zig
switch (client.output_activate_portal_module(h.vnull()).create(h.jo(&.{
    .{ "client_secret", h.vstr("example_client_secret") }, // []const u8
    .{ "notification_email", h.vstr("example_notification_email") }, // []const u8
}), h.vnull())) {
    .ok => |output_activate_portal_module| std.debug.print("{s}\n", .{h.stringify(output_activate_portal_module)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```


### OutputActivateStoreModule

Create an instance: `const output_activate_store_module = client.output_activate_store_module(h.vnull());`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

Each operation returns an `OpResult` — `switch` on it: `.ok => |data|`
carries the result `Value`, `.err => |e|` carries the branded error.

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `response_code` | `i64` |  |
| `response_message` | `[]const u8` |  |

#### Example: Create

```zig
switch (client.output_activate_store_module(h.vnull()).create(h.jo(&.{
}), h.vnull())) {
    .ok => |output_activate_store_module| std.debug.print("{s}\n", .{h.stringify(output_activate_store_module)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```


### OutputActivateUser

Create an instance: `const output_activate_user = client.output_activate_user(h.vnull());`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

Each operation returns an `OpResult` — `switch` on it: `.ok => |data|`
carries the result `Value`, `.err => |e|` carries the branded error.

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumer_uuid` | `[]const u8` |  |
| `response_code` | `i64` |  |
| `response_message` | `[]const u8` |  |

#### Example: Create

```zig
switch (client.output_activate_user(h.vnull()).create(h.jo(&.{
}), h.vnull())) {
    .ok => |output_activate_user| std.debug.print("{s}\n", .{h.stringify(output_activate_user)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```


### OutputAssignRole

Create an instance: `const output_assign_role = client.output_assign_role(h.vnull());`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

Each operation returns an `OpResult` — `switch` on it: `.ok => |data|`
carries the result `Value`, `.err => |e|` carries the branded error.

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumer_uuid` | `[]const u8` |  |
| `response_code` | `i64` |  |
| `response_message` | `[]const u8` |  |
| `role` | `Value (array)` |  |

#### Example: Create

```zig
switch (client.output_assign_role(h.vnull()).create(h.jo(&.{
    .{ "consumer_uuid", h.vstr("example_consumer_uuid") }, // []const u8
    .{ "role", h.olist() }, // Value (array)
}), h.vnull())) {
    .ok => |output_assign_role| std.debug.print("{s}\n", .{h.stringify(output_assign_role)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```


### OutputChangeLogo

Create an instance: `const output_change_logo = client.output_change_logo(h.vnull());`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

Each operation returns an `OpResult` — `switch` on it: `.ok => |data|`
carries the result `Value`, `.err => |e|` carries the branded error.

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `content_as_base64` | `[]const u8` |  |
| `mime_type` | `[]const u8` |  |
| `response_code` | `i64` |  |
| `response_message` | `[]const u8` |  |

#### Example: Create

```zig
switch (client.output_change_logo(h.vnull()).create(h.jo(&.{
    .{ "content_as_base64", h.vstr("example_content_as_base64") }, // []const u8
    .{ "mime_type", h.vstr("example_mime_type") }, // []const u8
}), h.vnull())) {
    .ok => |output_change_logo| std.debug.print("{s}\n", .{h.stringify(output_change_logo)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```


### OutputCreateMandator

Create an instance: `const output_create_mandator = client.output_create_mandator(h.vnull());`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

Each operation returns an `OpResult` — `switch` on it: `.ok => |data|`
carries the result `Value`, `.err => |e|` carries the branded error.

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `city` | `[]const u8` |  |
| `country` | `[]const u8` |  |
| `date_of_birth` | `[]const u8` |  |
| `description` | `[]const u8` |  |
| `drivers_license_number` | `[]const u8` |  |
| `email` | `[]const u8` |  |
| `first_name` | `[]const u8` |  |
| `identification_number` | `[]const u8` |  |
| `last_name` | `[]const u8` |  |
| `login` | `[]const u8` |  |
| `mandator` | `Value (object)` |  |
| `name` | `[]const u8` |  |
| `passport_number` | `[]const u8` |  |
| `phone` | `[]const u8` |  |
| `response_code` | `i64` |  |
| `response_message` | `[]const u8` |  |
| `salutation` | `[]const u8` |  |
| `state` | `[]const u8` |  |
| `street1` | `[]const u8` |  |
| `street2` | `[]const u8` |  |
| `zip_code` | `[]const u8` |  |

#### Example: Create

```zig
switch (client.output_create_mandator(h.vnull()).create(h.jo(&.{
    .{ "description", h.vstr("example_description") }, // []const u8
    .{ "email", h.vstr("example_email") }, // []const u8
    .{ "login", h.vstr("example_login") }, // []const u8
    .{ "name", h.vstr("example_name") }, // []const u8
    .{ "phone", h.vstr("example_phone") }, // []const u8
}), h.vnull())) {
    .ok => |output_create_mandator| std.debug.print("{s}\n", .{h.stringify(output_create_mandator)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```


### OutputCreateServiceUser

Create an instance: `const output_create_service_user = client.output_create_service_user(h.vnull());`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

Each operation returns an `OpResult` — `switch` on it: `.ok => |data|`
carries the result `Value`, `.err => |e|` carries the branded error.

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `mandator_name` | `[]const u8` |  |
| `response_code` | `i64` |  |
| `response_message` | `[]const u8` |  |

#### Example: Create

```zig
switch (client.output_create_service_user(h.vnull()).create(h.jo(&.{
    .{ "mandator_name", h.vstr("example_mandator_name") }, // []const u8
}), h.vnull())) {
    .ok => |output_create_service_user| std.debug.print("{s}\n", .{h.stringify(output_create_service_user)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```


### OutputDeactivateUser

Create an instance: `const output_deactivate_user = client.output_deactivate_user(h.vnull());`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

Each operation returns an `OpResult` — `switch` on it: `.ok => |data|`
carries the result `Value`, `.err => |e|` carries the branded error.

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumer_uuid` | `[]const u8` |  |
| `response_code` | `i64` |  |
| `response_message` | `[]const u8` |  |

#### Example: Create

```zig
switch (client.output_deactivate_user(h.vnull()).create(h.jo(&.{
}), h.vnull())) {
    .ok => |output_deactivate_user| std.debug.print("{s}\n", .{h.stringify(output_deactivate_user)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```


### OutputGetKycDocument

Create an instance: `const output_get_kyc_document = client.output_get_kyc_document(h.vnull());`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

Each operation returns an `OpResult` — `switch` on it: `.ok => |data|`
carries the result `Value`, `.err => |e|` carries the branded error.

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `case_id` | `[]const u8` |  |
| `encoded_data_base64` | `[]const u8` |  |
| `response_code` | `i64` |  |
| `response_message` | `[]const u8` |  |

#### Example: Create

```zig
switch (client.output_get_kyc_document(h.vnull()).create(h.jo(&.{
}), h.vnull())) {
    .ok => |output_get_kyc_document| std.debug.print("{s}\n", .{h.stringify(output_get_kyc_document)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```


### OutputGetLogo

Create an instance: `const output_get_logo = client.output_get_logo(h.vnull());`

#### Operations

| Method | Description |
| --- | --- |
| `load(reqmatch, ctrl)` | Load a single entity by match criteria. |

Each operation returns an `OpResult` — `switch` on it: `.ok => |data|`
carries the result `Value`, `.err => |e|` carries the branded error.

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `content_as_base64` | `[]const u8` |  |
| `mime_type` | `[]const u8` |  |
| `response_code` | `i64` |  |
| `response_message` | `[]const u8` |  |

#### Example: Load

```zig
switch (client.output_get_logo(h.vnull()).load(h.vnull(), h.vnull())) {
    .ok => |output_get_logo| std.debug.print("{s}\n", .{h.stringify(output_get_logo)}),
    .err => |e| std.debug.print("load failed: {s}\n", .{e.msg}),
}
```


### OutputListOfAvailableRole

Create an instance: `const output_list_of_available_role = client.output_list_of_available_role(h.vnull());`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

Each operation returns an `OpResult` — `switch` on it: `.ok => |data|`
carries the result `Value`, `.err => |e|` carries the branded error.

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `available_role` | `Value (array)` |  |
| `response_code` | `i64` |  |
| `response_message` | `[]const u8` |  |

#### Example: Create

```zig
switch (client.output_list_of_available_role(h.vnull()).create(h.jo(&.{
}), h.vnull())) {
    .ok => |output_list_of_available_role| std.debug.print("{s}\n", .{h.stringify(output_list_of_available_role)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```


### OutputListOfMandator

Create an instance: `const output_list_of_mandator = client.output_list_of_mandator(h.vnull());`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

Each operation returns an `OpResult` — `switch` on it: `.ok => |data|`
carries the result `Value`, `.err => |e|` carries the branded error.

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `filter` | `Value (object)` |  |
| `list` | `Value (array)` |  |
| `pagination` | `Value (object)` |  |
| `response_code` | `i64` |  |
| `response_message` | `[]const u8` |  |
| `sorting` | `Value (object)` |  |

#### Example: Create

```zig
switch (client.output_list_of_mandator(h.vnull()).create(h.jo(&.{
}), h.vnull())) {
    .ok => |output_list_of_mandator| std.debug.print("{s}\n", .{h.stringify(output_list_of_mandator)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```


### OutputListOfModule

Create an instance: `const output_list_of_module = client.output_list_of_module(h.vnull());`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

Each operation returns an `OpResult` — `switch` on it: `.ok => |data|`
carries the result `Value`, `.err => |e|` carries the branded error.

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `list` | `Value (array)` |  |
| `pagination` | `Value (object)` |  |
| `response_code` | `i64` |  |
| `response_message` | `[]const u8` |  |

#### Example: Create

```zig
switch (client.output_list_of_module(h.vnull()).create(h.jo(&.{
}), h.vnull())) {
    .ok => |output_list_of_module| std.debug.print("{s}\n", .{h.stringify(output_list_of_module)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```


### OutputListOfRoleGroup

Create an instance: `const output_list_of_role_group = client.output_list_of_role_group(h.vnull());`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

Each operation returns an `OpResult` — `switch` on it: `.ok => |data|`
carries the result `Value`, `.err => |e|` carries the branded error.

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `filter` | `Value (object)` |  |
| `group_role` | `Value (array)` |  |
| `pagination` | `Value (object)` |  |
| `response_code` | `i64` |  |
| `response_message` | `[]const u8` |  |
| `sorting` | `Value (object)` |  |

#### Example: Create

```zig
switch (client.output_list_of_role_group(h.vnull()).create(h.jo(&.{
}), h.vnull())) {
    .ok => |output_list_of_role_group| std.debug.print("{s}\n", .{h.stringify(output_list_of_role_group)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```


### OutputListOfTransactionsHistory

Create an instance: `const output_list_of_transactions_history = client.output_list_of_transactions_history(h.vnull());`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

Each operation returns an `OpResult` — `switch` on it: `.ok => |data|`
carries the result `Value`, `.err => |e|` carries the branded error.

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `filter` | `Value (object)` |  |
| `list` | `Value (array)` |  |
| `pagination` | `Value (object)` |  |
| `response_code` | `i64` |  |
| `response_message` | `[]const u8` |  |
| `sorting` | `Value (object)` |  |

#### Example: Create

```zig
switch (client.output_list_of_transactions_history(h.vnull()).create(h.jo(&.{
}), h.vnull())) {
    .ok => |output_list_of_transactions_history| std.debug.print("{s}\n", .{h.stringify(output_list_of_transactions_history)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```


### OutputListOfUser

Create an instance: `const output_list_of_user = client.output_list_of_user(h.vnull());`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

Each operation returns an `OpResult` — `switch` on it: `.ok => |data|`
carries the result `Value`, `.err => |e|` carries the branded error.

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `filter` | `Value (object)` |  |
| `list` | `Value (array)` |  |
| `pagination` | `Value (object)` |  |
| `response_code` | `i64` |  |
| `response_message` | `[]const u8` |  |
| `sorting` | `Value (object)` |  |

#### Example: Create

```zig
switch (client.output_list_of_user(h.vnull()).create(h.jo(&.{
}), h.vnull())) {
    .ok => |output_list_of_user| std.debug.print("{s}\n", .{h.stringify(output_list_of_user)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```


### OutputProvideCredential

Create an instance: `const output_provide_credential = client.output_provide_credential(h.vnull());`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

Each operation returns an `OpResult` — `switch` on it: `.ok => |data|`
carries the result `Value`, `.err => |e|` carries the branded error.

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `mandator_name` | `[]const u8` |  |
| `password` | `[]const u8` |  |
| `response_code` | `i64` |  |
| `response_message` | `[]const u8` |  |
| `username` | `[]const u8` |  |

#### Example: Create

```zig
switch (client.output_provide_credential(h.vnull()).create(h.jo(&.{
    .{ "mandator_name", h.vstr("example_mandator_name") }, // []const u8
}), h.vnull())) {
    .ok => |output_provide_credential| std.debug.print("{s}\n", .{h.stringify(output_provide_credential)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```


### OutputRegisterUser

Create an instance: `const output_register_user = client.output_register_user(h.vnull());`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

Each operation returns an `OpResult` — `switch` on it: `.ok => |data|`
carries the result `Value`, `.err => |e|` carries the branded error.

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `city` | `[]const u8` |  |
| `consumer_id` | `[]const u8` |  |
| `consumer_language` | `[]const u8` |  |
| `country` | `[]const u8` |  |
| `date_of_birth` | `[]const u8` |  |
| `driver_licence_number` | `[]const u8` |  |
| `email` | `[]const u8` |  |
| `first_name` | `[]const u8` |  |
| `identification_number` | `[]const u8` |  |
| `last_name` | `[]const u8` |  |
| `login` | `[]const u8` |  |
| `module` | `[]const u8` |  |
| `passport_number` | `[]const u8` |  |
| `phone` | `[]const u8` |  |
| `response_code` | `i64` |  |
| `response_message` | `[]const u8` |  |
| `salutation` | `[]const u8` |  |
| `state` | `[]const u8` |  |
| `street1` | `[]const u8` |  |
| `street2` | `[]const u8` |  |
| `zip` | `[]const u8` |  |

#### Example: Create

```zig
switch (client.output_register_user(h.vnull()).create(h.jo(&.{
    .{ "email", h.vstr("example_email") }, // []const u8
}), h.vnull())) {
    .ok => |output_register_user| std.debug.print("{s}\n", .{h.stringify(output_register_user)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```


### OutputRemoveRole

Create an instance: `const output_remove_role = client.output_remove_role(h.vnull());`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

Each operation returns an `OpResult` — `switch` on it: `.ok => |data|`
carries the result `Value`, `.err => |e|` carries the branded error.

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumer_uuid` | `[]const u8` |  |
| `response_code` | `i64` |  |
| `response_message` | `[]const u8` |  |
| `role` | `Value (array)` |  |

#### Example: Create

```zig
switch (client.output_remove_role(h.vnull()).create(h.jo(&.{
}), h.vnull())) {
    .ok => |output_remove_role| std.debug.print("{s}\n", .{h.stringify(output_remove_role)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```


### OutputResendLink

Create an instance: `const output_resend_link = client.output_resend_link(h.vnull());`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

Each operation returns an `OpResult` — `switch` on it: `.ok => |data|`
carries the result `Value`, `.err => |e|` carries the branded error.

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `business_registration_number` | `[]const u8` |  |
| `consumer_uuid` | `[]const u8` |  |
| `email_confirmation_code` | `[]const u8` |  |
| `phone_number` | `[]const u8` |  |
| `response_code` | `i64` |  |
| `response_message` | `[]const u8` |  |

#### Example: Create

```zig
switch (client.output_resend_link(h.vnull()).create(h.jo(&.{
    .{ "consumer_uuid", h.vstr("example_consumer_uuid") }, // []const u8
}), h.vnull())) {
    .ok => |output_resend_link| std.debug.print("{s}\n", .{h.stringify(output_resend_link)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```


### OutputResetPassword

Create an instance: `const output_reset_password = client.output_reset_password(h.vnull());`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

Each operation returns an `OpResult` — `switch` on it: `.ok => |data|`
carries the result `Value`, `.err => |e|` carries the branded error.

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumer_uuid` | `[]const u8` |  |
| `phone_number` | `[]const u8` |  |
| `response_code` | `i64` |  |
| `response_message` | `[]const u8` |  |

#### Example: Create

```zig
switch (client.output_reset_password(h.vnull()).create(h.jo(&.{
}), h.vnull())) {
    .ok => |output_reset_password| std.debug.print("{s}\n", .{h.stringify(output_reset_password)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```


### OutputUpdateConsumer

Create an instance: `const output_update_consumer = client.output_update_consumer(h.vnull());`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

Each operation returns an `OpResult` — `switch` on it: `.ok => |data|`
carries the result `Value`, `.err => |e|` carries the branded error.

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `city` | `[]const u8` |  |
| `consumer_uuid` | `[]const u8` |  |
| `consumerlanguage` | `[]const u8` |  |
| `country` | `[]const u8` |  |
| `date_of_birth` | `[]const u8` |  |
| `datetime_created` | `[]const u8` |  |
| `driver_licence_number` | `[]const u8` |  |
| `email` | `[]const u8` |  |
| `first_name` | `[]const u8` |  |
| `identification_number` | `[]const u8` |  |
| `kyc_passed` | `bool` |  |
| `last_name` | `[]const u8` |  |
| `nationality` | `[]const u8` |  |
| `passport_number` | `[]const u8` |  |
| `phone_number` | `[]const u8` |  |
| `place_of_birth` | `[]const u8` |  |
| `response_code` | `i64` |  |
| `response_message` | `[]const u8` |  |
| `state` | `[]const u8` |  |
| `street1` | `[]const u8` |  |
| `street2` | `[]const u8` |  |
| `transactionhistory_id` | `[]const u8` |  |
| `zip` | `[]const u8` |  |

#### Example: Create

```zig
switch (client.output_update_consumer(h.vnull()).create(h.jo(&.{
    .{ "consumer_uuid", h.vstr("example_consumer_uuid") }, // []const u8
}), h.vnull())) {
    .ok => |output_update_consumer| std.debug.print("{s}\n", .{h.stringify(output_update_consumer)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```


### OutputUpdateProfile

Create an instance: `const output_update_profile = client.output_update_profile(h.vnull());`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

Each operation returns an `OpResult` — `switch` on it: `.ok => |data|`
carries the result `Value`, `.err => |e|` carries the branded error.

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumer_language` | `[]const u8` |  |
| `email` | `[]const u8` |  |
| `first_name` | `[]const u8` |  |
| `last_name` | `[]const u8` |  |
| `phone_number` | `[]const u8` |  |
| `response_code` | `i64` |  |
| `response_message` | `[]const u8` |  |

#### Example: Create

```zig
switch (client.output_update_profile(h.vnull()).create(h.jo(&.{
}), h.vnull())) {
    .ok => |output_update_profile| std.debug.print("{s}\n", .{h.stringify(output_update_profile)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```


### Version

Create an instance: `const version = client.version(h.vnull());`

#### Operations

| Method | Description |
| --- | --- |
| `load(reqmatch, ctrl)` | Load a single entity by match criteria. |

Each operation returns an `OpResult` — `switch` on it: `.ok => |data|`
carries the result `Value`, `.err => |e|` carries the branded error.

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `app_name` | `[]const u8` |  |
| `build_date` | `[]const u8` |  |
| `version` | `[]const u8` |  |

#### Example: Load

```zig
switch (client.version(h.vnull()).load(h.vnull(), h.vnull())) {
    .ok => |version| std.debug.print("{s}\n", .{h.stringify(version)}),
    .err => |e| std.debug.print("load failed: {s}\n", .{e.msg}),
}
```


## Advanced

> The sections above cover everyday use. The material below explains the
> SDK's internals — useful when extending it with custom features, but not
> needed for normal use.

### The operation pipeline

Every entity operation follows a six-stage pipeline. Each stage fires a
feature hook before executing:

```
PrePoint → PreSpec → PreRequest → PreResponse → PreResult → PreDone
```

- **PrePoint**: Resolves which API endpoint to call based on the
  operation name and entity configuration.
- **PreSpec**: Builds the HTTP spec — URL, method, headers, body —
  from the resolved point and the caller's parameters.
- **PreRequest**: Sends the HTTP request. Features can intercept here
  to replace the transport (as TestFeature does with mocks).
- **PreResponse**: Parses the raw HTTP response.
- **PreResult**: Extracts the business data from the parsed response.
- **PreDone**: Final stage before returning to the caller. Entity
  state (match, data) is updated here.

If any stage errors, the pipeline short-circuits and the error surfaces
to the caller — see [Error handling](#error-handling) for how that looks
in this language.

### Features and hooks

Features are the extension mechanism. A feature is an object with a
`hooks` map. Each hook key is a pipeline stage name, and the value is
a function that receives the context.

The SDK ships with built-in features:

- **TestFeature**: In-memory mock transport for testing without a live server

Features are initialized in order. Hooks fire in the order features
were added, so later features can override earlier ones.

### Data as `Value`

The Zig SDK uses a single dynamic `Value` type throughout rather than a
typed struct per entity. `Value` is the vendored voxgig struct port's
`JsonValue` (a JSON-shaped tagged union: `.string`, `.integer`,
`.float`, `.bool`, `.array`, `.object`, `.null`). This mirrors the
dynamic nature of the API and keeps the SDK flexible — no code generation is
needed when the API schema changes.

Build request maps with the `h.jo` / `h.ja` helpers and read fields back
with `h.getp` (or the typed `h.get_str` / `h.get_bool` / `h.to_int`
accessors); use `h.to_map` to safely coerce a value to a map.

### Module structure

```
zig/
├── root.zig                     -- Module root (re-exports the public surface)
├── build.zig                    -- Build + test wiring
├── core/                        -- Pipeline types, config, client (sdk.zig)
├── entity/                      -- Per-entity clients (one file each)
├── feature/                     -- Built-in features (base, test, log)
├── utility/                     -- Utilities + the vendored voxgig struct port
└── test/                        -- Test suites
```

The public API is re-exported from `root.zig`, so `@import("sdk")` reaches
the SDK client, `Value`, and the `h` (helpers) namespace directly. Import
entity or utility modules only when needed.

### Entity state

Entity instances are stateful. After a successful `load`, the entity
stores the returned data and match criteria internally. Subsequent
calls on the same instance can rely on this state.

```ts
const outputgetlogo = client.OutputGetLogo()
await outputgetlogo.load()

// outputgetlogo.data() now returns the outputgetlogo data from the last `load`
// outputgetlogo.match() returns the last match criteria
```

Call `make()` to create a fresh instance with the same configuration
but no stored state.

### Direct vs entity access

The entity interface handles URL construction, parameter placement,
and response parsing automatically. Use it for standard CRUD operations.

The `direct` method gives full control over the HTTP request. Use it
for non-standard endpoints, bulk operations, or any path not modelled
as an entity. The `prepare` method is useful for debugging — it
shows exactly what `direct` would send.


## Full Reference

See [REFERENCE.md](REFERENCE.md) for complete API reference
documentation including all method signatures, entity field schemas,
and detailed usage examples.

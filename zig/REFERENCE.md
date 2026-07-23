# BluefinTecsUserBackoffice Zig SDK Reference

Complete API reference for the BluefinTecsUserBackoffice Zig SDK.


## BluefinTecsUserBackofficeSDK

### Constructor

```zig
const sdk = @import("sdk");
const h = sdk.h;

const client = sdk.BluefinTecsUserBackofficeSDK.new(options);
```

Create a new SDK client instance. `options` is a `Value` map
(`h.vnull()` for none).

**Parameters:**

| Key | Value type | Description |
| --- | --- | --- |
| `apikey` | `string` | API key for authentication. |
| `base` | `string` | Base URL for API requests. |
| `prefix` | `string` | URL prefix appended after base. |
| `suffix` | `string` | URL suffix appended after path. |
| `headers` | `map` | Custom headers for all requests. |
| `feature` | `map` | Feature configuration. |
| `system` | `map` | System overrides. |


### Static Functions

#### `test_sdk(testopts: Value, sdkopts: Value) *BluefinTecsUserBackofficeSDK`

Create a test client with mock features active. Both arguments may be
`h.vnull()`.

```zig
const client = sdk.test_sdk(h.vnull(), h.vnull());
```


### Instance Methods

#### `output_activate_digital_module(entopts: Value) *OutputActivateDigitalModuleEntity`

Create a new `OutputActivateDigitalModuleEntity` instance. Pass `h.vnull()` for no
initial options.

#### `output_activate_portal_module(entopts: Value) *OutputActivatePortalModuleEntity`

Create a new `OutputActivatePortalModuleEntity` instance. Pass `h.vnull()` for no
initial options.

#### `output_activate_store_module(entopts: Value) *OutputActivateStoreModuleEntity`

Create a new `OutputActivateStoreModuleEntity` instance. Pass `h.vnull()` for no
initial options.

#### `output_activate_user(entopts: Value) *OutputActivateUserEntity`

Create a new `OutputActivateUserEntity` instance. Pass `h.vnull()` for no
initial options.

#### `output_assign_role(entopts: Value) *OutputAssignRoleEntity`

Create a new `OutputAssignRoleEntity` instance. Pass `h.vnull()` for no
initial options.

#### `output_change_logo(entopts: Value) *OutputChangeLogoEntity`

Create a new `OutputChangeLogoEntity` instance. Pass `h.vnull()` for no
initial options.

#### `output_create_mandator(entopts: Value) *OutputCreateMandatorEntity`

Create a new `OutputCreateMandatorEntity` instance. Pass `h.vnull()` for no
initial options.

#### `output_create_service_user(entopts: Value) *OutputCreateServiceUserEntity`

Create a new `OutputCreateServiceUserEntity` instance. Pass `h.vnull()` for no
initial options.

#### `output_deactivate_user(entopts: Value) *OutputDeactivateUserEntity`

Create a new `OutputDeactivateUserEntity` instance. Pass `h.vnull()` for no
initial options.

#### `output_get_kyc_document(entopts: Value) *OutputGetKycDocumentEntity`

Create a new `OutputGetKycDocumentEntity` instance. Pass `h.vnull()` for no
initial options.

#### `output_get_logo(entopts: Value) *OutputGetLogoEntity`

Create a new `OutputGetLogoEntity` instance. Pass `h.vnull()` for no
initial options.

#### `output_list_of_available_role(entopts: Value) *OutputListOfAvailableRoleEntity`

Create a new `OutputListOfAvailableRoleEntity` instance. Pass `h.vnull()` for no
initial options.

#### `output_list_of_mandator(entopts: Value) *OutputListOfMandatorEntity`

Create a new `OutputListOfMandatorEntity` instance. Pass `h.vnull()` for no
initial options.

#### `output_list_of_module(entopts: Value) *OutputListOfModuleEntity`

Create a new `OutputListOfModuleEntity` instance. Pass `h.vnull()` for no
initial options.

#### `output_list_of_role_group(entopts: Value) *OutputListOfRoleGroupEntity`

Create a new `OutputListOfRoleGroupEntity` instance. Pass `h.vnull()` for no
initial options.

#### `output_list_of_transactions_history(entopts: Value) *OutputListOfTransactionsHistoryEntity`

Create a new `OutputListOfTransactionsHistoryEntity` instance. Pass `h.vnull()` for no
initial options.

#### `output_list_of_user(entopts: Value) *OutputListOfUserEntity`

Create a new `OutputListOfUserEntity` instance. Pass `h.vnull()` for no
initial options.

#### `output_provide_credential(entopts: Value) *OutputProvideCredentialEntity`

Create a new `OutputProvideCredentialEntity` instance. Pass `h.vnull()` for no
initial options.

#### `output_register_user(entopts: Value) *OutputRegisterUserEntity`

Create a new `OutputRegisterUserEntity` instance. Pass `h.vnull()` for no
initial options.

#### `output_remove_role(entopts: Value) *OutputRemoveRoleEntity`

Create a new `OutputRemoveRoleEntity` instance. Pass `h.vnull()` for no
initial options.

#### `output_resend_link(entopts: Value) *OutputResendLinkEntity`

Create a new `OutputResendLinkEntity` instance. Pass `h.vnull()` for no
initial options.

#### `output_reset_password(entopts: Value) *OutputResetPasswordEntity`

Create a new `OutputResetPasswordEntity` instance. Pass `h.vnull()` for no
initial options.

#### `output_update_consumer(entopts: Value) *OutputUpdateConsumerEntity`

Create a new `OutputUpdateConsumerEntity` instance. Pass `h.vnull()` for no
initial options.

#### `output_update_profile(entopts: Value) *OutputUpdateProfileEntity`

Create a new `OutputUpdateProfileEntity` instance. Pass `h.vnull()` for no
initial options.

#### `version(entopts: Value) *VersionEntity`

Create a new `VersionEntity` instance. Pass `h.vnull()` for no
initial options.

#### `options_map() Value`

Return a deep copy of the current SDK options.

#### `get_utility() *Utility`

Return a copy of the SDK utility object.

#### `direct(fetchargs: Value) Value`

Make a direct HTTP request to any API endpoint. Returns a result `Value`
map with `ok`, `status`, `headers`, and `data` (or `err` on failure).
This escape hatch returns a map even on a non-2xx response — branch on
`h.get_bool(result, "ok")`.

**Parameters (`fetchargs` map keys):**

| Key | Value type | Description |
| --- | --- | --- |
| `path` | `string` | URL path with optional `{param}` placeholders. |
| `method` | `string` | HTTP method (default: `"GET"`). |
| `params` | `map` | Path parameter values. |
| `query` | `map` | Query string parameters. |
| `headers` | `map` | Request headers (merged with defaults). |
| `body` | `any` | Request body (maps are JSON-serialized). |

#### `prepare(fetchargs: Value) E!Value`

Prepare a fetch definition without sending. Returns the fetchdef (use
`catch`/`try` to handle the error union).


---

## OutputActivateDigitalModuleEntity

```zig
const output_activate_digital_module = client.output_activate_digital_module(h.vnull());
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `response_code` | `i64` | No |  |
| `response_message` | `[]const u8` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) OpResult`

Create a new entity with the given data. `.ok` carries the created entity data.

```zig
switch (client.output_activate_digital_module(h.vnull()).create(h.jo(&.{
}), h.vnull())) {
    .ok => |result| std.debug.print("{s}\n", .{h.stringify(result)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```

### Common Methods

#### `data(args: ?Value) Value`

Get the entity data. Pass a map to set it.

#### `matchv(args: ?Value) Value`

Get the entity match criteria. Pass a map to set it.

#### `stream(action: []const u8, args: Value, callopts: Value) []Value`

Run an operation through the pipeline and materialise its result items.

#### `get_name() []const u8`

Return the entity name.


---

## OutputActivatePortalModuleEntity

```zig
const output_activate_portal_module = client.output_activate_portal_module(h.vnull());
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `client_secret` | `[]const u8` | Yes |  |
| `notification_email` | `[]const u8` | Yes |  |
| `response_code` | `i64` | No |  |
| `response_message` | `[]const u8` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) OpResult`

Create a new entity with the given data. `.ok` carries the created entity data.

```zig
switch (client.output_activate_portal_module(h.vnull()).create(h.jo(&.{
    .{ "client_secret", h.vstr("example_client_secret") }, // []const u8
    .{ "notification_email", h.vstr("example_notification_email") }, // []const u8
}), h.vnull())) {
    .ok => |result| std.debug.print("{s}\n", .{h.stringify(result)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```

### Common Methods

#### `data(args: ?Value) Value`

Get the entity data. Pass a map to set it.

#### `matchv(args: ?Value) Value`

Get the entity match criteria. Pass a map to set it.

#### `stream(action: []const u8, args: Value, callopts: Value) []Value`

Run an operation through the pipeline and materialise its result items.

#### `get_name() []const u8`

Return the entity name.


---

## OutputActivateStoreModuleEntity

```zig
const output_activate_store_module = client.output_activate_store_module(h.vnull());
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `response_code` | `i64` | No |  |
| `response_message` | `[]const u8` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) OpResult`

Create a new entity with the given data. `.ok` carries the created entity data.

```zig
switch (client.output_activate_store_module(h.vnull()).create(h.jo(&.{
}), h.vnull())) {
    .ok => |result| std.debug.print("{s}\n", .{h.stringify(result)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```

### Common Methods

#### `data(args: ?Value) Value`

Get the entity data. Pass a map to set it.

#### `matchv(args: ?Value) Value`

Get the entity match criteria. Pass a map to set it.

#### `stream(action: []const u8, args: Value, callopts: Value) []Value`

Run an operation through the pipeline and materialise its result items.

#### `get_name() []const u8`

Return the entity name.


---

## OutputActivateUserEntity

```zig
const output_activate_user = client.output_activate_user(h.vnull());
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumer_uuid` | `[]const u8` | No |  |
| `response_code` | `i64` | No |  |
| `response_message` | `[]const u8` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) OpResult`

Create a new entity with the given data. `.ok` carries the created entity data.

```zig
switch (client.output_activate_user(h.vnull()).create(h.jo(&.{
}), h.vnull())) {
    .ok => |result| std.debug.print("{s}\n", .{h.stringify(result)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```

### Common Methods

#### `data(args: ?Value) Value`

Get the entity data. Pass a map to set it.

#### `matchv(args: ?Value) Value`

Get the entity match criteria. Pass a map to set it.

#### `stream(action: []const u8, args: Value, callopts: Value) []Value`

Run an operation through the pipeline and materialise its result items.

#### `get_name() []const u8`

Return the entity name.


---

## OutputAssignRoleEntity

```zig
const output_assign_role = client.output_assign_role(h.vnull());
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumer_uuid` | `[]const u8` | Yes |  |
| `response_code` | `i64` | No |  |
| `response_message` | `[]const u8` | No |  |
| `role` | `Value (array)` | Yes |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) OpResult`

Create a new entity with the given data. `.ok` carries the created entity data.

```zig
switch (client.output_assign_role(h.vnull()).create(h.jo(&.{
    .{ "consumer_uuid", h.vstr("example_consumer_uuid") }, // []const u8
    .{ "role", h.olist() }, // Value (array)
}), h.vnull())) {
    .ok => |result| std.debug.print("{s}\n", .{h.stringify(result)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```

### Common Methods

#### `data(args: ?Value) Value`

Get the entity data. Pass a map to set it.

#### `matchv(args: ?Value) Value`

Get the entity match criteria. Pass a map to set it.

#### `stream(action: []const u8, args: Value, callopts: Value) []Value`

Run an operation through the pipeline and materialise its result items.

#### `get_name() []const u8`

Return the entity name.


---

## OutputChangeLogoEntity

```zig
const output_change_logo = client.output_change_logo(h.vnull());
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `content_as_base64` | `[]const u8` | Yes |  |
| `mime_type` | `[]const u8` | Yes |  |
| `response_code` | `i64` | No |  |
| `response_message` | `[]const u8` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) OpResult`

Create a new entity with the given data. `.ok` carries the created entity data.

```zig
switch (client.output_change_logo(h.vnull()).create(h.jo(&.{
    .{ "content_as_base64", h.vstr("example_content_as_base64") }, // []const u8
    .{ "mime_type", h.vstr("example_mime_type") }, // []const u8
}), h.vnull())) {
    .ok => |result| std.debug.print("{s}\n", .{h.stringify(result)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```

### Common Methods

#### `data(args: ?Value) Value`

Get the entity data. Pass a map to set it.

#### `matchv(args: ?Value) Value`

Get the entity match criteria. Pass a map to set it.

#### `stream(action: []const u8, args: Value, callopts: Value) []Value`

Run an operation through the pipeline and materialise its result items.

#### `get_name() []const u8`

Return the entity name.


---

## OutputCreateMandatorEntity

```zig
const output_create_mandator = client.output_create_mandator(h.vnull());
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `city` | `[]const u8` | No |  |
| `country` | `[]const u8` | No |  |
| `date_of_birth` | `[]const u8` | No |  |
| `description` | `[]const u8` | Yes |  |
| `drivers_license_number` | `[]const u8` | No |  |
| `email` | `[]const u8` | Yes |  |
| `first_name` | `[]const u8` | No |  |
| `identification_number` | `[]const u8` | No |  |
| `last_name` | `[]const u8` | No |  |
| `login` | `[]const u8` | Yes |  |
| `mandator` | `Value (object)` | No |  |
| `name` | `[]const u8` | Yes |  |
| `passport_number` | `[]const u8` | No |  |
| `phone` | `[]const u8` | Yes |  |
| `response_code` | `i64` | No |  |
| `response_message` | `[]const u8` | No |  |
| `salutation` | `[]const u8` | No |  |
| `state` | `[]const u8` | No |  |
| `street1` | `[]const u8` | No |  |
| `street2` | `[]const u8` | No |  |
| `zip_code` | `[]const u8` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) OpResult`

Create a new entity with the given data. `.ok` carries the created entity data.

```zig
switch (client.output_create_mandator(h.vnull()).create(h.jo(&.{
    .{ "description", h.vstr("example_description") }, // []const u8
    .{ "email", h.vstr("example_email") }, // []const u8
    .{ "login", h.vstr("example_login") }, // []const u8
    .{ "name", h.vstr("example_name") }, // []const u8
    .{ "phone", h.vstr("example_phone") }, // []const u8
}), h.vnull())) {
    .ok => |result| std.debug.print("{s}\n", .{h.stringify(result)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```

### Common Methods

#### `data(args: ?Value) Value`

Get the entity data. Pass a map to set it.

#### `matchv(args: ?Value) Value`

Get the entity match criteria. Pass a map to set it.

#### `stream(action: []const u8, args: Value, callopts: Value) []Value`

Run an operation through the pipeline and materialise its result items.

#### `get_name() []const u8`

Return the entity name.


---

## OutputCreateServiceUserEntity

```zig
const output_create_service_user = client.output_create_service_user(h.vnull());
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `mandator_name` | `[]const u8` | Yes |  |
| `response_code` | `i64` | No |  |
| `response_message` | `[]const u8` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) OpResult`

Create a new entity with the given data. `.ok` carries the created entity data.

```zig
switch (client.output_create_service_user(h.vnull()).create(h.jo(&.{
    .{ "mandator_name", h.vstr("example_mandator_name") }, // []const u8
}), h.vnull())) {
    .ok => |result| std.debug.print("{s}\n", .{h.stringify(result)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```

### Common Methods

#### `data(args: ?Value) Value`

Get the entity data. Pass a map to set it.

#### `matchv(args: ?Value) Value`

Get the entity match criteria. Pass a map to set it.

#### `stream(action: []const u8, args: Value, callopts: Value) []Value`

Run an operation through the pipeline and materialise its result items.

#### `get_name() []const u8`

Return the entity name.


---

## OutputDeactivateUserEntity

```zig
const output_deactivate_user = client.output_deactivate_user(h.vnull());
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumer_uuid` | `[]const u8` | No |  |
| `response_code` | `i64` | No |  |
| `response_message` | `[]const u8` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) OpResult`

Create a new entity with the given data. `.ok` carries the created entity data.

```zig
switch (client.output_deactivate_user(h.vnull()).create(h.jo(&.{
}), h.vnull())) {
    .ok => |result| std.debug.print("{s}\n", .{h.stringify(result)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```

### Common Methods

#### `data(args: ?Value) Value`

Get the entity data. Pass a map to set it.

#### `matchv(args: ?Value) Value`

Get the entity match criteria. Pass a map to set it.

#### `stream(action: []const u8, args: Value, callopts: Value) []Value`

Run an operation through the pipeline and materialise its result items.

#### `get_name() []const u8`

Return the entity name.


---

## OutputGetKycDocumentEntity

```zig
const output_get_kyc_document = client.output_get_kyc_document(h.vnull());
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `case_id` | `[]const u8` | No |  |
| `encoded_data_base64` | `[]const u8` | No |  |
| `response_code` | `i64` | No |  |
| `response_message` | `[]const u8` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) OpResult`

Create a new entity with the given data. `.ok` carries the created entity data.

```zig
switch (client.output_get_kyc_document(h.vnull()).create(h.jo(&.{
}), h.vnull())) {
    .ok => |result| std.debug.print("{s}\n", .{h.stringify(result)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```

### Common Methods

#### `data(args: ?Value) Value`

Get the entity data. Pass a map to set it.

#### `matchv(args: ?Value) Value`

Get the entity match criteria. Pass a map to set it.

#### `stream(action: []const u8, args: Value, callopts: Value) []Value`

Run an operation through the pipeline and materialise its result items.

#### `get_name() []const u8`

Return the entity name.


---

## OutputGetLogoEntity

```zig
const output_get_logo = client.output_get_logo(h.vnull());
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `content_as_base64` | `[]const u8` | Yes |  |
| `mime_type` | `[]const u8` | Yes |  |
| `response_code` | `i64` | No |  |
| `response_message` | `[]const u8` | No |  |

### Operations

#### `load(reqmatch: Value, ctrl: Value) OpResult`

Load a single entity matching the given criteria. `.ok` carries the entity data, `.err` the branded error.

```zig
switch (client.output_get_logo(h.vnull()).load(h.vnull(), h.vnull())) {
    .ok => |result| std.debug.print("{s}\n", .{h.stringify(result)}),
    .err => |e| std.debug.print("load failed: {s}\n", .{e.msg}),
}
```

### Common Methods

#### `data(args: ?Value) Value`

Get the entity data. Pass a map to set it.

#### `matchv(args: ?Value) Value`

Get the entity match criteria. Pass a map to set it.

#### `stream(action: []const u8, args: Value, callopts: Value) []Value`

Run an operation through the pipeline and materialise its result items.

#### `get_name() []const u8`

Return the entity name.


---

## OutputListOfAvailableRoleEntity

```zig
const output_list_of_available_role = client.output_list_of_available_role(h.vnull());
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `available_role` | `Value (array)` | No |  |
| `response_code` | `i64` | No |  |
| `response_message` | `[]const u8` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) OpResult`

Create a new entity with the given data. `.ok` carries the created entity data.

```zig
switch (client.output_list_of_available_role(h.vnull()).create(h.jo(&.{
}), h.vnull())) {
    .ok => |result| std.debug.print("{s}\n", .{h.stringify(result)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```

### Common Methods

#### `data(args: ?Value) Value`

Get the entity data. Pass a map to set it.

#### `matchv(args: ?Value) Value`

Get the entity match criteria. Pass a map to set it.

#### `stream(action: []const u8, args: Value, callopts: Value) []Value`

Run an operation through the pipeline and materialise its result items.

#### `get_name() []const u8`

Return the entity name.


---

## OutputListOfMandatorEntity

```zig
const output_list_of_mandator = client.output_list_of_mandator(h.vnull());
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `filter` | `Value (object)` | No |  |
| `list` | `Value (array)` | No |  |
| `pagination` | `Value (object)` | No |  |
| `response_code` | `i64` | No |  |
| `response_message` | `[]const u8` | No |  |
| `sorting` | `Value (object)` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) OpResult`

Create a new entity with the given data. `.ok` carries the created entity data.

```zig
switch (client.output_list_of_mandator(h.vnull()).create(h.jo(&.{
}), h.vnull())) {
    .ok => |result| std.debug.print("{s}\n", .{h.stringify(result)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```

### Common Methods

#### `data(args: ?Value) Value`

Get the entity data. Pass a map to set it.

#### `matchv(args: ?Value) Value`

Get the entity match criteria. Pass a map to set it.

#### `stream(action: []const u8, args: Value, callopts: Value) []Value`

Run an operation through the pipeline and materialise its result items.

#### `get_name() []const u8`

Return the entity name.


---

## OutputListOfModuleEntity

```zig
const output_list_of_module = client.output_list_of_module(h.vnull());
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `list` | `Value (array)` | No |  |
| `pagination` | `Value (object)` | No |  |
| `response_code` | `i64` | No |  |
| `response_message` | `[]const u8` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) OpResult`

Create a new entity with the given data. `.ok` carries the created entity data.

```zig
switch (client.output_list_of_module(h.vnull()).create(h.jo(&.{
}), h.vnull())) {
    .ok => |result| std.debug.print("{s}\n", .{h.stringify(result)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```

### Common Methods

#### `data(args: ?Value) Value`

Get the entity data. Pass a map to set it.

#### `matchv(args: ?Value) Value`

Get the entity match criteria. Pass a map to set it.

#### `stream(action: []const u8, args: Value, callopts: Value) []Value`

Run an operation through the pipeline and materialise its result items.

#### `get_name() []const u8`

Return the entity name.


---

## OutputListOfRoleGroupEntity

```zig
const output_list_of_role_group = client.output_list_of_role_group(h.vnull());
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `filter` | `Value (object)` | No |  |
| `group_role` | `Value (array)` | No |  |
| `pagination` | `Value (object)` | No |  |
| `response_code` | `i64` | No |  |
| `response_message` | `[]const u8` | No |  |
| `sorting` | `Value (object)` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) OpResult`

Create a new entity with the given data. `.ok` carries the created entity data.

```zig
switch (client.output_list_of_role_group(h.vnull()).create(h.jo(&.{
}), h.vnull())) {
    .ok => |result| std.debug.print("{s}\n", .{h.stringify(result)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```

### Common Methods

#### `data(args: ?Value) Value`

Get the entity data. Pass a map to set it.

#### `matchv(args: ?Value) Value`

Get the entity match criteria. Pass a map to set it.

#### `stream(action: []const u8, args: Value, callopts: Value) []Value`

Run an operation through the pipeline and materialise its result items.

#### `get_name() []const u8`

Return the entity name.


---

## OutputListOfTransactionsHistoryEntity

```zig
const output_list_of_transactions_history = client.output_list_of_transactions_history(h.vnull());
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `filter` | `Value (object)` | No |  |
| `list` | `Value (array)` | No |  |
| `pagination` | `Value (object)` | No |  |
| `response_code` | `i64` | No |  |
| `response_message` | `[]const u8` | No |  |
| `sorting` | `Value (object)` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) OpResult`

Create a new entity with the given data. `.ok` carries the created entity data.

```zig
switch (client.output_list_of_transactions_history(h.vnull()).create(h.jo(&.{
}), h.vnull())) {
    .ok => |result| std.debug.print("{s}\n", .{h.stringify(result)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```

### Common Methods

#### `data(args: ?Value) Value`

Get the entity data. Pass a map to set it.

#### `matchv(args: ?Value) Value`

Get the entity match criteria. Pass a map to set it.

#### `stream(action: []const u8, args: Value, callopts: Value) []Value`

Run an operation through the pipeline and materialise its result items.

#### `get_name() []const u8`

Return the entity name.


---

## OutputListOfUserEntity

```zig
const output_list_of_user = client.output_list_of_user(h.vnull());
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `filter` | `Value (object)` | No |  |
| `list` | `Value (array)` | No |  |
| `pagination` | `Value (object)` | No |  |
| `response_code` | `i64` | No |  |
| `response_message` | `[]const u8` | No |  |
| `sorting` | `Value (object)` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) OpResult`

Create a new entity with the given data. `.ok` carries the created entity data.

```zig
switch (client.output_list_of_user(h.vnull()).create(h.jo(&.{
}), h.vnull())) {
    .ok => |result| std.debug.print("{s}\n", .{h.stringify(result)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```

### Common Methods

#### `data(args: ?Value) Value`

Get the entity data. Pass a map to set it.

#### `matchv(args: ?Value) Value`

Get the entity match criteria. Pass a map to set it.

#### `stream(action: []const u8, args: Value, callopts: Value) []Value`

Run an operation through the pipeline and materialise its result items.

#### `get_name() []const u8`

Return the entity name.


---

## OutputProvideCredentialEntity

```zig
const output_provide_credential = client.output_provide_credential(h.vnull());
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `mandator_name` | `[]const u8` | Yes |  |
| `password` | `[]const u8` | No |  |
| `response_code` | `i64` | No |  |
| `response_message` | `[]const u8` | No |  |
| `username` | `[]const u8` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) OpResult`

Create a new entity with the given data. `.ok` carries the created entity data.

```zig
switch (client.output_provide_credential(h.vnull()).create(h.jo(&.{
    .{ "mandator_name", h.vstr("example_mandator_name") }, // []const u8
}), h.vnull())) {
    .ok => |result| std.debug.print("{s}\n", .{h.stringify(result)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```

### Common Methods

#### `data(args: ?Value) Value`

Get the entity data. Pass a map to set it.

#### `matchv(args: ?Value) Value`

Get the entity match criteria. Pass a map to set it.

#### `stream(action: []const u8, args: Value, callopts: Value) []Value`

Run an operation through the pipeline and materialise its result items.

#### `get_name() []const u8`

Return the entity name.


---

## OutputRegisterUserEntity

```zig
const output_register_user = client.output_register_user(h.vnull());
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `city` | `[]const u8` | No |  |
| `consumer_id` | `[]const u8` | No |  |
| `consumer_language` | `[]const u8` | No |  |
| `country` | `[]const u8` | No |  |
| `date_of_birth` | `[]const u8` | No |  |
| `driver_licence_number` | `[]const u8` | No |  |
| `email` | `[]const u8` | Yes |  |
| `first_name` | `[]const u8` | No |  |
| `identification_number` | `[]const u8` | No |  |
| `last_name` | `[]const u8` | No |  |
| `login` | `[]const u8` | No |  |
| `module` | `[]const u8` | No |  |
| `passport_number` | `[]const u8` | No |  |
| `phone` | `[]const u8` | No |  |
| `response_code` | `i64` | No |  |
| `response_message` | `[]const u8` | No |  |
| `salutation` | `[]const u8` | No |  |
| `state` | `[]const u8` | No |  |
| `street1` | `[]const u8` | No |  |
| `street2` | `[]const u8` | No |  |
| `zip` | `[]const u8` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) OpResult`

Create a new entity with the given data. `.ok` carries the created entity data.

```zig
switch (client.output_register_user(h.vnull()).create(h.jo(&.{
    .{ "email", h.vstr("example_email") }, // []const u8
}), h.vnull())) {
    .ok => |result| std.debug.print("{s}\n", .{h.stringify(result)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```

### Common Methods

#### `data(args: ?Value) Value`

Get the entity data. Pass a map to set it.

#### `matchv(args: ?Value) Value`

Get the entity match criteria. Pass a map to set it.

#### `stream(action: []const u8, args: Value, callopts: Value) []Value`

Run an operation through the pipeline and materialise its result items.

#### `get_name() []const u8`

Return the entity name.


---

## OutputRemoveRoleEntity

```zig
const output_remove_role = client.output_remove_role(h.vnull());
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumer_uuid` | `[]const u8` | No |  |
| `response_code` | `i64` | No |  |
| `response_message` | `[]const u8` | No |  |
| `role` | `Value (array)` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) OpResult`

Create a new entity with the given data. `.ok` carries the created entity data.

```zig
switch (client.output_remove_role(h.vnull()).create(h.jo(&.{
}), h.vnull())) {
    .ok => |result| std.debug.print("{s}\n", .{h.stringify(result)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```

### Common Methods

#### `data(args: ?Value) Value`

Get the entity data. Pass a map to set it.

#### `matchv(args: ?Value) Value`

Get the entity match criteria. Pass a map to set it.

#### `stream(action: []const u8, args: Value, callopts: Value) []Value`

Run an operation through the pipeline and materialise its result items.

#### `get_name() []const u8`

Return the entity name.


---

## OutputResendLinkEntity

```zig
const output_resend_link = client.output_resend_link(h.vnull());
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `business_registration_number` | `[]const u8` | No |  |
| `consumer_uuid` | `[]const u8` | Yes |  |
| `email_confirmation_code` | `[]const u8` | No |  |
| `phone_number` | `[]const u8` | No |  |
| `response_code` | `i64` | No |  |
| `response_message` | `[]const u8` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) OpResult`

Create a new entity with the given data. `.ok` carries the created entity data.

```zig
switch (client.output_resend_link(h.vnull()).create(h.jo(&.{
    .{ "consumer_uuid", h.vstr("example_consumer_uuid") }, // []const u8
}), h.vnull())) {
    .ok => |result| std.debug.print("{s}\n", .{h.stringify(result)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```

### Common Methods

#### `data(args: ?Value) Value`

Get the entity data. Pass a map to set it.

#### `matchv(args: ?Value) Value`

Get the entity match criteria. Pass a map to set it.

#### `stream(action: []const u8, args: Value, callopts: Value) []Value`

Run an operation through the pipeline and materialise its result items.

#### `get_name() []const u8`

Return the entity name.


---

## OutputResetPasswordEntity

```zig
const output_reset_password = client.output_reset_password(h.vnull());
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumer_uuid` | `[]const u8` | No |  |
| `phone_number` | `[]const u8` | No |  |
| `response_code` | `i64` | No |  |
| `response_message` | `[]const u8` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) OpResult`

Create a new entity with the given data. `.ok` carries the created entity data.

```zig
switch (client.output_reset_password(h.vnull()).create(h.jo(&.{
}), h.vnull())) {
    .ok => |result| std.debug.print("{s}\n", .{h.stringify(result)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```

### Common Methods

#### `data(args: ?Value) Value`

Get the entity data. Pass a map to set it.

#### `matchv(args: ?Value) Value`

Get the entity match criteria. Pass a map to set it.

#### `stream(action: []const u8, args: Value, callopts: Value) []Value`

Run an operation through the pipeline and materialise its result items.

#### `get_name() []const u8`

Return the entity name.


---

## OutputUpdateConsumerEntity

```zig
const output_update_consumer = client.output_update_consumer(h.vnull());
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `city` | `[]const u8` | No |  |
| `consumer_uuid` | `[]const u8` | Yes |  |
| `consumerlanguage` | `[]const u8` | No |  |
| `country` | `[]const u8` | No |  |
| `date_of_birth` | `[]const u8` | No |  |
| `datetime_created` | `[]const u8` | No |  |
| `driver_licence_number` | `[]const u8` | No |  |
| `email` | `[]const u8` | No |  |
| `first_name` | `[]const u8` | No |  |
| `identification_number` | `[]const u8` | No |  |
| `kyc_passed` | `bool` | No |  |
| `last_name` | `[]const u8` | No |  |
| `nationality` | `[]const u8` | No |  |
| `passport_number` | `[]const u8` | No |  |
| `phone_number` | `[]const u8` | No |  |
| `place_of_birth` | `[]const u8` | No |  |
| `response_code` | `i64` | No |  |
| `response_message` | `[]const u8` | No |  |
| `state` | `[]const u8` | No |  |
| `street1` | `[]const u8` | No |  |
| `street2` | `[]const u8` | No |  |
| `transactionhistory_id` | `[]const u8` | No |  |
| `zip` | `[]const u8` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) OpResult`

Create a new entity with the given data. `.ok` carries the created entity data.

```zig
switch (client.output_update_consumer(h.vnull()).create(h.jo(&.{
    .{ "consumer_uuid", h.vstr("example_consumer_uuid") }, // []const u8
}), h.vnull())) {
    .ok => |result| std.debug.print("{s}\n", .{h.stringify(result)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```

### Common Methods

#### `data(args: ?Value) Value`

Get the entity data. Pass a map to set it.

#### `matchv(args: ?Value) Value`

Get the entity match criteria. Pass a map to set it.

#### `stream(action: []const u8, args: Value, callopts: Value) []Value`

Run an operation through the pipeline and materialise its result items.

#### `get_name() []const u8`

Return the entity name.


---

## OutputUpdateProfileEntity

```zig
const output_update_profile = client.output_update_profile(h.vnull());
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumer_language` | `[]const u8` | No |  |
| `email` | `[]const u8` | No |  |
| `first_name` | `[]const u8` | No |  |
| `last_name` | `[]const u8` | No |  |
| `phone_number` | `[]const u8` | No |  |
| `response_code` | `i64` | No |  |
| `response_message` | `[]const u8` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) OpResult`

Create a new entity with the given data. `.ok` carries the created entity data.

```zig
switch (client.output_update_profile(h.vnull()).create(h.jo(&.{
}), h.vnull())) {
    .ok => |result| std.debug.print("{s}\n", .{h.stringify(result)}),
    .err => |e| std.debug.print("create failed: {s}\n", .{e.msg}),
}
```

### Common Methods

#### `data(args: ?Value) Value`

Get the entity data. Pass a map to set it.

#### `matchv(args: ?Value) Value`

Get the entity match criteria. Pass a map to set it.

#### `stream(action: []const u8, args: Value, callopts: Value) []Value`

Run an operation through the pipeline and materialise its result items.

#### `get_name() []const u8`

Return the entity name.


---

## VersionEntity

```zig
const version = client.version(h.vnull());
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `app_name` | `[]const u8` | No |  |
| `build_date` | `[]const u8` | No |  |
| `version` | `[]const u8` | No |  |

### Operations

#### `load(reqmatch: Value, ctrl: Value) OpResult`

Load a single entity matching the given criteria. `.ok` carries the entity data, `.err` the branded error.

```zig
switch (client.version(h.vnull()).load(h.vnull(), h.vnull())) {
    .ok => |result| std.debug.print("{s}\n", .{h.stringify(result)}),
    .err => |e| std.debug.print("load failed: {s}\n", .{e.msg}),
}
```

### Common Methods

#### `data(args: ?Value) Value`

Get the entity data. Pass a map to set it.

#### `matchv(args: ?Value) Value`

Get the entity match criteria. Pass a map to set it.

#### `stream(action: []const u8, args: Value, callopts: Value) []Value`

Run an operation through the pipeline and materialise its result items.

#### `get_name() []const u8`

Return the entity name.


---

## Features

| Feature | Version | Description |
| --- | --- | --- |
| `test` | 0.0.1 | In-memory mock transport for testing without a live server |


Features are activated via the `feature` option:

```zig
const client = sdk.BluefinTecsUserBackofficeSDK.new(h.jo(&.{
    .{ "feature", h.jo(&.{
        .{ "test", h.jo(&.{.{ "active", h.vbool(true) }}) },
    }) },
}));
```


# BluefinTecsUserBackoffice Rust SDK Reference

Complete API reference for the BluefinTecsUserBackoffice Rust SDK.


## BluefinTecsUserBackofficeSDK

### Constructor

```rust
use bluefin_tecs_user_backoffice_sdk::{BluefinTecsUserBackofficeSDK, Value};

let client = BluefinTecsUserBackofficeSDK::new(options);
```

Create a new SDK client instance. `options` is a `Value` map
(`Value::Noval` for none).

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

#### `test_sdk(testopts: Value, sdkopts: Value) -> Rc<BluefinTecsUserBackofficeSDK>`

Create a test client with mock features active. Both arguments may be
`Value::Noval`.

```rust
use bluefin_tecs_user_backoffice_sdk::{test_sdk, Value};

let client = test_sdk(Value::Noval, Value::Noval);
```


### Instance Methods

#### `output_activate_digital_module(entopts: Value) -> Rc<OutputActivateDigitalModuleEntity>`

Create a new `OutputActivateDigitalModuleEntity` instance. Pass `Value::Noval` for no
initial options.

#### `output_activate_portal_module(entopts: Value) -> Rc<OutputActivatePortalModuleEntity>`

Create a new `OutputActivatePortalModuleEntity` instance. Pass `Value::Noval` for no
initial options.

#### `output_activate_store_module(entopts: Value) -> Rc<OutputActivateStoreModuleEntity>`

Create a new `OutputActivateStoreModuleEntity` instance. Pass `Value::Noval` for no
initial options.

#### `output_activate_user(entopts: Value) -> Rc<OutputActivateUserEntity>`

Create a new `OutputActivateUserEntity` instance. Pass `Value::Noval` for no
initial options.

#### `output_assign_role(entopts: Value) -> Rc<OutputAssignRoleEntity>`

Create a new `OutputAssignRoleEntity` instance. Pass `Value::Noval` for no
initial options.

#### `output_change_logo(entopts: Value) -> Rc<OutputChangeLogoEntity>`

Create a new `OutputChangeLogoEntity` instance. Pass `Value::Noval` for no
initial options.

#### `output_create_mandator(entopts: Value) -> Rc<OutputCreateMandatorEntity>`

Create a new `OutputCreateMandatorEntity` instance. Pass `Value::Noval` for no
initial options.

#### `output_create_service_user(entopts: Value) -> Rc<OutputCreateServiceUserEntity>`

Create a new `OutputCreateServiceUserEntity` instance. Pass `Value::Noval` for no
initial options.

#### `output_deactivate_user(entopts: Value) -> Rc<OutputDeactivateUserEntity>`

Create a new `OutputDeactivateUserEntity` instance. Pass `Value::Noval` for no
initial options.

#### `output_get_kyc_document(entopts: Value) -> Rc<OutputGetKycDocumentEntity>`

Create a new `OutputGetKycDocumentEntity` instance. Pass `Value::Noval` for no
initial options.

#### `output_get_logo(entopts: Value) -> Rc<OutputGetLogoEntity>`

Create a new `OutputGetLogoEntity` instance. Pass `Value::Noval` for no
initial options.

#### `output_list_of_available_role(entopts: Value) -> Rc<OutputListOfAvailableRoleEntity>`

Create a new `OutputListOfAvailableRoleEntity` instance. Pass `Value::Noval` for no
initial options.

#### `output_list_of_mandator(entopts: Value) -> Rc<OutputListOfMandatorEntity>`

Create a new `OutputListOfMandatorEntity` instance. Pass `Value::Noval` for no
initial options.

#### `output_list_of_module(entopts: Value) -> Rc<OutputListOfModuleEntity>`

Create a new `OutputListOfModuleEntity` instance. Pass `Value::Noval` for no
initial options.

#### `output_list_of_role_group(entopts: Value) -> Rc<OutputListOfRoleGroupEntity>`

Create a new `OutputListOfRoleGroupEntity` instance. Pass `Value::Noval` for no
initial options.

#### `output_list_of_transactions_history(entopts: Value) -> Rc<OutputListOfTransactionsHistoryEntity>`

Create a new `OutputListOfTransactionsHistoryEntity` instance. Pass `Value::Noval` for no
initial options.

#### `output_list_of_user(entopts: Value) -> Rc<OutputListOfUserEntity>`

Create a new `OutputListOfUserEntity` instance. Pass `Value::Noval` for no
initial options.

#### `output_provide_credential(entopts: Value) -> Rc<OutputProvideCredentialEntity>`

Create a new `OutputProvideCredentialEntity` instance. Pass `Value::Noval` for no
initial options.

#### `output_register_user(entopts: Value) -> Rc<OutputRegisterUserEntity>`

Create a new `OutputRegisterUserEntity` instance. Pass `Value::Noval` for no
initial options.

#### `output_remove_role(entopts: Value) -> Rc<OutputRemoveRoleEntity>`

Create a new `OutputRemoveRoleEntity` instance. Pass `Value::Noval` for no
initial options.

#### `output_resend_link(entopts: Value) -> Rc<OutputResendLinkEntity>`

Create a new `OutputResendLinkEntity` instance. Pass `Value::Noval` for no
initial options.

#### `output_reset_password(entopts: Value) -> Rc<OutputResetPasswordEntity>`

Create a new `OutputResetPasswordEntity` instance. Pass `Value::Noval` for no
initial options.

#### `output_update_consumer(entopts: Value) -> Rc<OutputUpdateConsumerEntity>`

Create a new `OutputUpdateConsumerEntity` instance. Pass `Value::Noval` for no
initial options.

#### `output_update_profile(entopts: Value) -> Rc<OutputUpdateProfileEntity>`

Create a new `OutputUpdateProfileEntity` instance. Pass `Value::Noval` for no
initial options.

#### `version(entopts: Value) -> Rc<VersionEntity>`

Create a new `VersionEntity` instance. Pass `Value::Noval` for no
initial options.

#### `options_map() -> Value`

Return a deep copy of the current SDK options.

#### `get_utility() -> Rc<Utility>`

Return a copy of the SDK utility object.

#### `direct(fetchargs: Value) -> Result<Value, BluefinTecsUserBackofficeError>`

Make a direct HTTP request to any API endpoint. `Ok` is a result `Value::Map`
with `ok`, `status`, `headers`, and `data` (or `err` on failure). This
escape hatch resolves to `Ok` even on a non-2xx response — branch on
`getp(&result, "ok")`.

**Parameters (`fetchargs` map keys):**

| Key | Value type | Description |
| --- | --- | --- |
| `path` | `string` | URL path with optional `{param}` placeholders. |
| `method` | `string` | HTTP method (default: `"GET"`). |
| `params` | `map` | Path parameter values. |
| `query` | `map` | Query string parameters. |
| `headers` | `map` | Request headers (merged with defaults). |
| `body` | `any` | Request body (maps are JSON-serialized). |

#### `prepare(fetchargs: Value) -> Result<Value, BluefinTecsUserBackofficeError>`

Prepare a fetch definition without sending. Returns the fetchdef on `Ok`.


---

## OutputActivateDigitalModuleEntity

```rust
let output_activate_digital_module = client.output_activate_digital_module(Value::Noval);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `response_code` | `i64` | No |  |
| `response_message` | `String` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsUserBackofficeError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.output_activate_digital_module(Value::Noval).create(jo(vec![
]), Value::Noval).unwrap();
```

### Common Methods

#### `data(args: Option<&Value>) -> Value`

Get the entity data. Pass `Some(&map)` to set it.

#### `matchv(args: Option<&Value>) -> Value`

Get the entity match criteria. Pass `Some(&map)` to set it.

#### `make() -> Rc<dyn Entity>`

Create a new `OutputActivateDigitalModuleEntity` instance with the same options.

#### `get_name() -> String`

Return the entity name.


---

## OutputActivatePortalModuleEntity

```rust
let output_activate_portal_module = client.output_activate_portal_module(Value::Noval);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `client_secret` | `String` | Yes |  |
| `notification_email` | `String` | Yes |  |
| `response_code` | `i64` | No |  |
| `response_message` | `String` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsUserBackofficeError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.output_activate_portal_module(Value::Noval).create(jo(vec![
    ("client_secret", Value::str("example_client_secret")),  // String
    ("notification_email", Value::str("example_notification_email")),  // String
]), Value::Noval).unwrap();
```

### Common Methods

#### `data(args: Option<&Value>) -> Value`

Get the entity data. Pass `Some(&map)` to set it.

#### `matchv(args: Option<&Value>) -> Value`

Get the entity match criteria. Pass `Some(&map)` to set it.

#### `make() -> Rc<dyn Entity>`

Create a new `OutputActivatePortalModuleEntity` instance with the same options.

#### `get_name() -> String`

Return the entity name.


---

## OutputActivateStoreModuleEntity

```rust
let output_activate_store_module = client.output_activate_store_module(Value::Noval);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `response_code` | `i64` | No |  |
| `response_message` | `String` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsUserBackofficeError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.output_activate_store_module(Value::Noval).create(jo(vec![
]), Value::Noval).unwrap();
```

### Common Methods

#### `data(args: Option<&Value>) -> Value`

Get the entity data. Pass `Some(&map)` to set it.

#### `matchv(args: Option<&Value>) -> Value`

Get the entity match criteria. Pass `Some(&map)` to set it.

#### `make() -> Rc<dyn Entity>`

Create a new `OutputActivateStoreModuleEntity` instance with the same options.

#### `get_name() -> String`

Return the entity name.


---

## OutputActivateUserEntity

```rust
let output_activate_user = client.output_activate_user(Value::Noval);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumer_uuid` | `String` | No |  |
| `response_code` | `i64` | No |  |
| `response_message` | `String` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsUserBackofficeError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.output_activate_user(Value::Noval).create(jo(vec![
]), Value::Noval).unwrap();
```

### Common Methods

#### `data(args: Option<&Value>) -> Value`

Get the entity data. Pass `Some(&map)` to set it.

#### `matchv(args: Option<&Value>) -> Value`

Get the entity match criteria. Pass `Some(&map)` to set it.

#### `make() -> Rc<dyn Entity>`

Create a new `OutputActivateUserEntity` instance with the same options.

#### `get_name() -> String`

Return the entity name.


---

## OutputAssignRoleEntity

```rust
let output_assign_role = client.output_assign_role(Value::Noval);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumer_uuid` | `String` | Yes |  |
| `response_code` | `i64` | No |  |
| `response_message` | `String` | No |  |
| `role` | `Vec<Value>` | Yes |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsUserBackofficeError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.output_assign_role(Value::Noval).create(jo(vec![
    ("consumer_uuid", Value::str("example_consumer_uuid")),  // String
    ("role", Value::empty_list()),  // Vec<Value>
]), Value::Noval).unwrap();
```

### Common Methods

#### `data(args: Option<&Value>) -> Value`

Get the entity data. Pass `Some(&map)` to set it.

#### `matchv(args: Option<&Value>) -> Value`

Get the entity match criteria. Pass `Some(&map)` to set it.

#### `make() -> Rc<dyn Entity>`

Create a new `OutputAssignRoleEntity` instance with the same options.

#### `get_name() -> String`

Return the entity name.


---

## OutputChangeLogoEntity

```rust
let output_change_logo = client.output_change_logo(Value::Noval);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `content_as_base64` | `String` | Yes |  |
| `mime_type` | `String` | Yes |  |
| `response_code` | `i64` | No |  |
| `response_message` | `String` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsUserBackofficeError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.output_change_logo(Value::Noval).create(jo(vec![
    ("content_as_base64", Value::str("example_content_as_base64")),  // String
    ("mime_type", Value::str("example_mime_type")),  // String
]), Value::Noval).unwrap();
```

### Common Methods

#### `data(args: Option<&Value>) -> Value`

Get the entity data. Pass `Some(&map)` to set it.

#### `matchv(args: Option<&Value>) -> Value`

Get the entity match criteria. Pass `Some(&map)` to set it.

#### `make() -> Rc<dyn Entity>`

Create a new `OutputChangeLogoEntity` instance with the same options.

#### `get_name() -> String`

Return the entity name.


---

## OutputCreateMandatorEntity

```rust
let output_create_mandator = client.output_create_mandator(Value::Noval);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `city` | `String` | No |  |
| `country` | `String` | No |  |
| `date_of_birth` | `String` | No |  |
| `description` | `String` | Yes |  |
| `drivers_license_number` | `String` | No |  |
| `email` | `String` | Yes |  |
| `first_name` | `String` | No |  |
| `identification_number` | `String` | No |  |
| `last_name` | `String` | No |  |
| `login` | `String` | Yes |  |
| `mandator` | `std::collections::HashMap<String, Value>` | No |  |
| `name` | `String` | Yes |  |
| `passport_number` | `String` | No |  |
| `phone` | `String` | Yes |  |
| `response_code` | `i64` | No |  |
| `response_message` | `String` | No |  |
| `salutation` | `String` | No |  |
| `state` | `String` | No |  |
| `street1` | `String` | No |  |
| `street2` | `String` | No |  |
| `zip_code` | `String` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsUserBackofficeError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.output_create_mandator(Value::Noval).create(jo(vec![
    ("description", Value::str("example_description")),  // String
    ("email", Value::str("example_email")),  // String
    ("login", Value::str("example_login")),  // String
    ("name", Value::str("example_name")),  // String
    ("phone", Value::str("example_phone")),  // String
]), Value::Noval).unwrap();
```

### Common Methods

#### `data(args: Option<&Value>) -> Value`

Get the entity data. Pass `Some(&map)` to set it.

#### `matchv(args: Option<&Value>) -> Value`

Get the entity match criteria. Pass `Some(&map)` to set it.

#### `make() -> Rc<dyn Entity>`

Create a new `OutputCreateMandatorEntity` instance with the same options.

#### `get_name() -> String`

Return the entity name.


---

## OutputCreateServiceUserEntity

```rust
let output_create_service_user = client.output_create_service_user(Value::Noval);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `mandator_name` | `String` | Yes |  |
| `response_code` | `i64` | No |  |
| `response_message` | `String` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsUserBackofficeError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.output_create_service_user(Value::Noval).create(jo(vec![
    ("mandator_name", Value::str("example_mandator_name")),  // String
]), Value::Noval).unwrap();
```

### Common Methods

#### `data(args: Option<&Value>) -> Value`

Get the entity data. Pass `Some(&map)` to set it.

#### `matchv(args: Option<&Value>) -> Value`

Get the entity match criteria. Pass `Some(&map)` to set it.

#### `make() -> Rc<dyn Entity>`

Create a new `OutputCreateServiceUserEntity` instance with the same options.

#### `get_name() -> String`

Return the entity name.


---

## OutputDeactivateUserEntity

```rust
let output_deactivate_user = client.output_deactivate_user(Value::Noval);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumer_uuid` | `String` | No |  |
| `response_code` | `i64` | No |  |
| `response_message` | `String` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsUserBackofficeError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.output_deactivate_user(Value::Noval).create(jo(vec![
]), Value::Noval).unwrap();
```

### Common Methods

#### `data(args: Option<&Value>) -> Value`

Get the entity data. Pass `Some(&map)` to set it.

#### `matchv(args: Option<&Value>) -> Value`

Get the entity match criteria. Pass `Some(&map)` to set it.

#### `make() -> Rc<dyn Entity>`

Create a new `OutputDeactivateUserEntity` instance with the same options.

#### `get_name() -> String`

Return the entity name.


---

## OutputGetKycDocumentEntity

```rust
let output_get_kyc_document = client.output_get_kyc_document(Value::Noval);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `case_id` | `String` | No |  |
| `encoded_data_base64` | `String` | No |  |
| `response_code` | `i64` | No |  |
| `response_message` | `String` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsUserBackofficeError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.output_get_kyc_document(Value::Noval).create(jo(vec![
]), Value::Noval).unwrap();
```

### Common Methods

#### `data(args: Option<&Value>) -> Value`

Get the entity data. Pass `Some(&map)` to set it.

#### `matchv(args: Option<&Value>) -> Value`

Get the entity match criteria. Pass `Some(&map)` to set it.

#### `make() -> Rc<dyn Entity>`

Create a new `OutputGetKycDocumentEntity` instance with the same options.

#### `get_name() -> String`

Return the entity name.


---

## OutputGetLogoEntity

```rust
let output_get_logo = client.output_get_logo(Value::Noval);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `content_as_base64` | `String` | Yes |  |
| `mime_type` | `String` | Yes |  |
| `response_code` | `i64` | No |  |
| `response_message` | `String` | No |  |

### Operations

#### `load(reqmatch: Value, ctrl: Value) -> Result<Value, BluefinTecsUserBackofficeError>`

Load a single entity matching the given criteria. Returns the entity data on `Ok` and `Err` on failure.

```rust
let result = client.output_get_logo(Value::Noval).load(Value::Noval, Value::Noval).unwrap();
```

### Common Methods

#### `data(args: Option<&Value>) -> Value`

Get the entity data. Pass `Some(&map)` to set it.

#### `matchv(args: Option<&Value>) -> Value`

Get the entity match criteria. Pass `Some(&map)` to set it.

#### `make() -> Rc<dyn Entity>`

Create a new `OutputGetLogoEntity` instance with the same options.

#### `get_name() -> String`

Return the entity name.


---

## OutputListOfAvailableRoleEntity

```rust
let output_list_of_available_role = client.output_list_of_available_role(Value::Noval);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `available_role` | `Vec<Value>` | No |  |
| `response_code` | `i64` | No |  |
| `response_message` | `String` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsUserBackofficeError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.output_list_of_available_role(Value::Noval).create(jo(vec![
]), Value::Noval).unwrap();
```

### Common Methods

#### `data(args: Option<&Value>) -> Value`

Get the entity data. Pass `Some(&map)` to set it.

#### `matchv(args: Option<&Value>) -> Value`

Get the entity match criteria. Pass `Some(&map)` to set it.

#### `make() -> Rc<dyn Entity>`

Create a new `OutputListOfAvailableRoleEntity` instance with the same options.

#### `get_name() -> String`

Return the entity name.


---

## OutputListOfMandatorEntity

```rust
let output_list_of_mandator = client.output_list_of_mandator(Value::Noval);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `filter` | `std::collections::HashMap<String, Value>` | No |  |
| `list` | `Vec<Value>` | No |  |
| `pagination` | `std::collections::HashMap<String, Value>` | No |  |
| `response_code` | `i64` | No |  |
| `response_message` | `String` | No |  |
| `sorting` | `std::collections::HashMap<String, Value>` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsUserBackofficeError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.output_list_of_mandator(Value::Noval).create(jo(vec![
]), Value::Noval).unwrap();
```

### Common Methods

#### `data(args: Option<&Value>) -> Value`

Get the entity data. Pass `Some(&map)` to set it.

#### `matchv(args: Option<&Value>) -> Value`

Get the entity match criteria. Pass `Some(&map)` to set it.

#### `make() -> Rc<dyn Entity>`

Create a new `OutputListOfMandatorEntity` instance with the same options.

#### `get_name() -> String`

Return the entity name.


---

## OutputListOfModuleEntity

```rust
let output_list_of_module = client.output_list_of_module(Value::Noval);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `list` | `Vec<Value>` | No |  |
| `pagination` | `std::collections::HashMap<String, Value>` | No |  |
| `response_code` | `i64` | No |  |
| `response_message` | `String` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsUserBackofficeError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.output_list_of_module(Value::Noval).create(jo(vec![
]), Value::Noval).unwrap();
```

### Common Methods

#### `data(args: Option<&Value>) -> Value`

Get the entity data. Pass `Some(&map)` to set it.

#### `matchv(args: Option<&Value>) -> Value`

Get the entity match criteria. Pass `Some(&map)` to set it.

#### `make() -> Rc<dyn Entity>`

Create a new `OutputListOfModuleEntity` instance with the same options.

#### `get_name() -> String`

Return the entity name.


---

## OutputListOfRoleGroupEntity

```rust
let output_list_of_role_group = client.output_list_of_role_group(Value::Noval);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `filter` | `std::collections::HashMap<String, Value>` | No |  |
| `group_role` | `Vec<Value>` | No |  |
| `pagination` | `std::collections::HashMap<String, Value>` | No |  |
| `response_code` | `i64` | No |  |
| `response_message` | `String` | No |  |
| `sorting` | `std::collections::HashMap<String, Value>` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsUserBackofficeError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.output_list_of_role_group(Value::Noval).create(jo(vec![
]), Value::Noval).unwrap();
```

### Common Methods

#### `data(args: Option<&Value>) -> Value`

Get the entity data. Pass `Some(&map)` to set it.

#### `matchv(args: Option<&Value>) -> Value`

Get the entity match criteria. Pass `Some(&map)` to set it.

#### `make() -> Rc<dyn Entity>`

Create a new `OutputListOfRoleGroupEntity` instance with the same options.

#### `get_name() -> String`

Return the entity name.


---

## OutputListOfTransactionsHistoryEntity

```rust
let output_list_of_transactions_history = client.output_list_of_transactions_history(Value::Noval);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `filter` | `std::collections::HashMap<String, Value>` | No |  |
| `list` | `Vec<Value>` | No |  |
| `pagination` | `std::collections::HashMap<String, Value>` | No |  |
| `response_code` | `i64` | No |  |
| `response_message` | `String` | No |  |
| `sorting` | `std::collections::HashMap<String, Value>` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsUserBackofficeError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.output_list_of_transactions_history(Value::Noval).create(jo(vec![
]), Value::Noval).unwrap();
```

### Common Methods

#### `data(args: Option<&Value>) -> Value`

Get the entity data. Pass `Some(&map)` to set it.

#### `matchv(args: Option<&Value>) -> Value`

Get the entity match criteria. Pass `Some(&map)` to set it.

#### `make() -> Rc<dyn Entity>`

Create a new `OutputListOfTransactionsHistoryEntity` instance with the same options.

#### `get_name() -> String`

Return the entity name.


---

## OutputListOfUserEntity

```rust
let output_list_of_user = client.output_list_of_user(Value::Noval);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `filter` | `std::collections::HashMap<String, Value>` | No |  |
| `list` | `Vec<Value>` | No |  |
| `pagination` | `std::collections::HashMap<String, Value>` | No |  |
| `response_code` | `i64` | No |  |
| `response_message` | `String` | No |  |
| `sorting` | `std::collections::HashMap<String, Value>` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsUserBackofficeError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.output_list_of_user(Value::Noval).create(jo(vec![
]), Value::Noval).unwrap();
```

### Common Methods

#### `data(args: Option<&Value>) -> Value`

Get the entity data. Pass `Some(&map)` to set it.

#### `matchv(args: Option<&Value>) -> Value`

Get the entity match criteria. Pass `Some(&map)` to set it.

#### `make() -> Rc<dyn Entity>`

Create a new `OutputListOfUserEntity` instance with the same options.

#### `get_name() -> String`

Return the entity name.


---

## OutputProvideCredentialEntity

```rust
let output_provide_credential = client.output_provide_credential(Value::Noval);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `mandator_name` | `String` | Yes |  |
| `password` | `String` | No |  |
| `response_code` | `i64` | No |  |
| `response_message` | `String` | No |  |
| `username` | `String` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsUserBackofficeError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.output_provide_credential(Value::Noval).create(jo(vec![
    ("mandator_name", Value::str("example_mandator_name")),  // String
]), Value::Noval).unwrap();
```

### Common Methods

#### `data(args: Option<&Value>) -> Value`

Get the entity data. Pass `Some(&map)` to set it.

#### `matchv(args: Option<&Value>) -> Value`

Get the entity match criteria. Pass `Some(&map)` to set it.

#### `make() -> Rc<dyn Entity>`

Create a new `OutputProvideCredentialEntity` instance with the same options.

#### `get_name() -> String`

Return the entity name.


---

## OutputRegisterUserEntity

```rust
let output_register_user = client.output_register_user(Value::Noval);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `city` | `String` | No |  |
| `consumer_id` | `String` | No |  |
| `consumer_language` | `String` | No |  |
| `country` | `String` | No |  |
| `date_of_birth` | `String` | No |  |
| `driver_licence_number` | `String` | No |  |
| `email` | `String` | Yes |  |
| `first_name` | `String` | No |  |
| `identification_number` | `String` | No |  |
| `last_name` | `String` | No |  |
| `login` | `String` | No |  |
| `module` | `String` | No |  |
| `passport_number` | `String` | No |  |
| `phone` | `String` | No |  |
| `response_code` | `i64` | No |  |
| `response_message` | `String` | No |  |
| `salutation` | `String` | No |  |
| `state` | `String` | No |  |
| `street1` | `String` | No |  |
| `street2` | `String` | No |  |
| `zip` | `String` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsUserBackofficeError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.output_register_user(Value::Noval).create(jo(vec![
    ("email", Value::str("example_email")),  // String
]), Value::Noval).unwrap();
```

### Common Methods

#### `data(args: Option<&Value>) -> Value`

Get the entity data. Pass `Some(&map)` to set it.

#### `matchv(args: Option<&Value>) -> Value`

Get the entity match criteria. Pass `Some(&map)` to set it.

#### `make() -> Rc<dyn Entity>`

Create a new `OutputRegisterUserEntity` instance with the same options.

#### `get_name() -> String`

Return the entity name.


---

## OutputRemoveRoleEntity

```rust
let output_remove_role = client.output_remove_role(Value::Noval);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumer_uuid` | `String` | No |  |
| `response_code` | `i64` | No |  |
| `response_message` | `String` | No |  |
| `role` | `Vec<Value>` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsUserBackofficeError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.output_remove_role(Value::Noval).create(jo(vec![
]), Value::Noval).unwrap();
```

### Common Methods

#### `data(args: Option<&Value>) -> Value`

Get the entity data. Pass `Some(&map)` to set it.

#### `matchv(args: Option<&Value>) -> Value`

Get the entity match criteria. Pass `Some(&map)` to set it.

#### `make() -> Rc<dyn Entity>`

Create a new `OutputRemoveRoleEntity` instance with the same options.

#### `get_name() -> String`

Return the entity name.


---

## OutputResendLinkEntity

```rust
let output_resend_link = client.output_resend_link(Value::Noval);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `business_registration_number` | `String` | No |  |
| `consumer_uuid` | `String` | Yes |  |
| `email_confirmation_code` | `String` | No |  |
| `phone_number` | `String` | No |  |
| `response_code` | `i64` | No |  |
| `response_message` | `String` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsUserBackofficeError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.output_resend_link(Value::Noval).create(jo(vec![
    ("consumer_uuid", Value::str("example_consumer_uuid")),  // String
]), Value::Noval).unwrap();
```

### Common Methods

#### `data(args: Option<&Value>) -> Value`

Get the entity data. Pass `Some(&map)` to set it.

#### `matchv(args: Option<&Value>) -> Value`

Get the entity match criteria. Pass `Some(&map)` to set it.

#### `make() -> Rc<dyn Entity>`

Create a new `OutputResendLinkEntity` instance with the same options.

#### `get_name() -> String`

Return the entity name.


---

## OutputResetPasswordEntity

```rust
let output_reset_password = client.output_reset_password(Value::Noval);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumer_uuid` | `String` | No |  |
| `phone_number` | `String` | No |  |
| `response_code` | `i64` | No |  |
| `response_message` | `String` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsUserBackofficeError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.output_reset_password(Value::Noval).create(jo(vec![
]), Value::Noval).unwrap();
```

### Common Methods

#### `data(args: Option<&Value>) -> Value`

Get the entity data. Pass `Some(&map)` to set it.

#### `matchv(args: Option<&Value>) -> Value`

Get the entity match criteria. Pass `Some(&map)` to set it.

#### `make() -> Rc<dyn Entity>`

Create a new `OutputResetPasswordEntity` instance with the same options.

#### `get_name() -> String`

Return the entity name.


---

## OutputUpdateConsumerEntity

```rust
let output_update_consumer = client.output_update_consumer(Value::Noval);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `city` | `String` | No |  |
| `consumer_uuid` | `String` | Yes |  |
| `consumerlanguage` | `String` | No |  |
| `country` | `String` | No |  |
| `date_of_birth` | `String` | No |  |
| `datetime_created` | `String` | No |  |
| `driver_licence_number` | `String` | No |  |
| `email` | `String` | No |  |
| `first_name` | `String` | No |  |
| `identification_number` | `String` | No |  |
| `kyc_passed` | `bool` | No |  |
| `last_name` | `String` | No |  |
| `nationality` | `String` | No |  |
| `passport_number` | `String` | No |  |
| `phone_number` | `String` | No |  |
| `place_of_birth` | `String` | No |  |
| `response_code` | `i64` | No |  |
| `response_message` | `String` | No |  |
| `state` | `String` | No |  |
| `street1` | `String` | No |  |
| `street2` | `String` | No |  |
| `transactionhistory_id` | `String` | No |  |
| `zip` | `String` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsUserBackofficeError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.output_update_consumer(Value::Noval).create(jo(vec![
    ("consumer_uuid", Value::str("example_consumer_uuid")),  // String
]), Value::Noval).unwrap();
```

### Common Methods

#### `data(args: Option<&Value>) -> Value`

Get the entity data. Pass `Some(&map)` to set it.

#### `matchv(args: Option<&Value>) -> Value`

Get the entity match criteria. Pass `Some(&map)` to set it.

#### `make() -> Rc<dyn Entity>`

Create a new `OutputUpdateConsumerEntity` instance with the same options.

#### `get_name() -> String`

Return the entity name.


---

## OutputUpdateProfileEntity

```rust
let output_update_profile = client.output_update_profile(Value::Noval);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumer_language` | `String` | No |  |
| `email` | `String` | No |  |
| `first_name` | `String` | No |  |
| `last_name` | `String` | No |  |
| `phone_number` | `String` | No |  |
| `response_code` | `i64` | No |  |
| `response_message` | `String` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsUserBackofficeError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.output_update_profile(Value::Noval).create(jo(vec![
]), Value::Noval).unwrap();
```

### Common Methods

#### `data(args: Option<&Value>) -> Value`

Get the entity data. Pass `Some(&map)` to set it.

#### `matchv(args: Option<&Value>) -> Value`

Get the entity match criteria. Pass `Some(&map)` to set it.

#### `make() -> Rc<dyn Entity>`

Create a new `OutputUpdateProfileEntity` instance with the same options.

#### `get_name() -> String`

Return the entity name.


---

## VersionEntity

```rust
let version = client.version(Value::Noval);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `app_name` | `String` | No |  |
| `build_date` | `String` | No |  |
| `version` | `String` | No |  |

### Operations

#### `load(reqmatch: Value, ctrl: Value) -> Result<Value, BluefinTecsUserBackofficeError>`

Load a single entity matching the given criteria. Returns the entity data on `Ok` and `Err` on failure.

```rust
let result = client.version(Value::Noval).load(Value::Noval, Value::Noval).unwrap();
```

### Common Methods

#### `data(args: Option<&Value>) -> Value`

Get the entity data. Pass `Some(&map)` to set it.

#### `matchv(args: Option<&Value>) -> Value`

Get the entity match criteria. Pass `Some(&map)` to set it.

#### `make() -> Rc<dyn Entity>`

Create a new `VersionEntity` instance with the same options.

#### `get_name() -> String`

Return the entity name.


---

## Features

| Feature | Version | Description |
| --- | --- | --- |
| `test` | 0.0.1 | In-memory mock transport for testing without a live server |


Features are activated via the `feature` option:

```rust
let client = BluefinTecsUserBackofficeSDK::new(jo(vec![
    ("feature", jo(vec![
        ("test", jo(vec![("active", Value::Bool(true))])),
    ])),
]));
```


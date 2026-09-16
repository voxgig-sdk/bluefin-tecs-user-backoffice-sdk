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
| `responseCode` | `i64` | No |  |
| `responseMessage` | `String` | No |  |

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
| `clientSecret` | `String` | Yes |  |
| `notificationEmail` | `String` | Yes |  |
| `responseCode` | `i64` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsUserBackofficeError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.output_activate_portal_module(Value::Noval).create(jo(vec![
    ("clientSecret", Value::str("example_clientSecret")),  // String
    ("notificationEmail", Value::str("example_notificationEmail")),  // String
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
| `responseCode` | `i64` | No |  |
| `responseMessage` | `String` | No |  |

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
| `consumerUUID` | `String` | No |  |
| `responseCode` | `i64` | No |  |
| `responseMessage` | `String` | No |  |

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
| `consumerUUID` | `String` | Yes | Unique identifier of the consumer (user) to whom the role(s) will be assigned. |
| `responseCode` | `i64` | No | Response code: 0 indicates success; any non-zero value indicates an error. |
| `responseMessage` | `String` | No | A human-readable message providing additional details about the outcome. |
| `roles` | `Vec<Value>` | Yes | List of roles to assign to the consumer. |

### Operations

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsUserBackofficeError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.output_assign_role(Value::Noval).create(jo(vec![
    ("consumerUUID", Value::str("example_consumerUUID")),  // String
    ("roles", Value::empty_list()),  // Vec<Value>
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
| `contentAsBase64` | `String` | Yes | The content of the image as base64 encoded string |
| `mimeType` | `String` | Yes | The MIME type of the image |
| `responseCode` | `i64` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsUserBackofficeError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.output_change_logo(Value::Noval).create(jo(vec![
    ("contentAsBase64", Value::str("example_contentAsBase64")),  // String
    ("mimeType", Value::str("example_mimeType")),  // String
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
| `dateOfBirth` | `String` | No |  |
| `description` | `String` | No |  |
| `driversLicenseNumber` | `String` | No |  |
| `email` | `String` | Yes |  |
| `firstName` | `String` | No |  |
| `identificationNumber` | `String` | No |  |
| `lastName` | `String` | No |  |
| `login` | `String` | Yes |  |
| `name` | `String` | No |  |
| `passportNumber` | `String` | No |  |
| `phone` | `String` | Yes |  |
| `salutation` | `String` | No |  |
| `state` | `String` | No |  |
| `street1` | `String` | No |  |
| `street2` | `String` | No |  |
| `zipCode` | `String` | No |  |

### Field Usage by Operation

| Field | create |
| --- | --- |
| `city` | - |
| `country` | - |
| `dateOfBirth` | - |
| `description` | Yes |
| `driversLicenseNumber` | - |
| `email` | - |
| `firstName` | - |
| `identificationNumber` | - |
| `lastName` | - |
| `login` | - |
| `name` | Yes |
| `passportNumber` | - |
| `phone` | - |
| `salutation` | - |
| `state` | - |
| `street1` | - |
| `street2` | - |
| `zipCode` | - |

### Operations

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsUserBackofficeError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.output_create_mandator(Value::Noval).create(jo(vec![
    ("email", Value::str("example_email")),  // String
    ("login", Value::str("example_login")),  // String
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
| `mandatorName` | `String` | Yes |  |
| `responseCode` | `i64` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsUserBackofficeError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.output_create_service_user(Value::Noval).create(jo(vec![
    ("mandatorName", Value::str("example_mandatorName")),  // String
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
| `consumerUUID` | `String` | No |  |
| `responseCode` | `i64` | No |  |
| `responseMessage` | `String` | No |  |

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
| `caseID` | `String` | No |  |
| `encodedDataBase64` | `String` | No |  |
| `responseCode` | `i64` | No |  |
| `responseMessage` | `String` | No |  |

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
| `contentAsBase64` | `String` | Yes | The content of the image as base64 encoded string |
| `mimeType` | `String` | Yes | The MIME type of the image |
| `responseCode` | `i64` | No |  |
| `responseMessage` | `String` | No |  |

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
| `availableRoles` | `Vec<Value>` | No |  |
| `responseCode` | `i64` | No |  |
| `responseMessage` | `String` | No |  |

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
| `responseCode` | `i64` | No |  |
| `responseMessage` | `String` | No |  |
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
| `responseCode` | `i64` | No |  |
| `responseMessage` | `String` | No |  |

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
| `groupRoles` | `Vec<Value>` | No |  |
| `pagination` | `std::collections::HashMap<String, Value>` | No |  |
| `responseCode` | `i64` | No |  |
| `responseMessage` | `String` | No |  |
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
| `responseCode` | `i64` | No |  |
| `responseMessage` | `String` | No |  |
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
| `responseCode` | `i64` | No |  |
| `responseMessage` | `String` | No |  |
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
| `mandatorName` | `String` | Yes |  |
| `password` | `String` | No |  |
| `responseCode` | `i64` | No |  |
| `responseMessage` | `String` | No |  |
| `username` | `String` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsUserBackofficeError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.output_provide_credential(Value::Noval).create(jo(vec![
    ("mandatorName", Value::str("example_mandatorName")),  // String
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
| `city` | `String` | No | City where the user resides. |
| `consumerId` | `String` | No | User login or unique user identifier. |
| `consumerLanguage` | `String` | No | Preferred language for the user (e.g., 'en'). |
| `country` | `String` | No | User's country. |
| `dateOfBirth` | `String` | No | User's date of birth (expected format: dd.MM.yyyy). |
| `driverLicenceNumber` | `String` | No | User's driver's license number. |
| `email` | `String` | Yes | User's email address (must be unique). |
| `firstName` | `String` | No | User's first name. |
| `identificationNumber` | `String` | No | User's identification number. |
| `lastName` | `String` | No | User's last name. |
| `login` | `String` | No | User login identifier (should be unique). |
| `module` | `String` | No | Module identifier (if applicable). |
| `passportNumber` | `String` | No | User's passport number. |
| `phone` | `String` | No | User's phone number. |
| `responseCode` | `i64` | No | Response code (0 indicates success; non-zero indicates an error). |
| `responseMessage` | `String` | No | Human-readable response message. |
| `salutation` | `String` | No | User's salutation (e.g., Mr., Ms.). |
| `state` | `String` | No | User's state or region. |
| `street1` | `String` | No | Primary address line. |
| `street2` | `String` | No | Secondary address line. |
| `zip` | `String` | No | Postal code. |

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
| `consumerUUID` | `String` | No |  |
| `responseCode` | `i64` | No |  |
| `responseMessage` | `String` | No |  |
| `roles` | `Vec<Value>` | No |  |

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
| `businessRegistrationNumber` | `String` | No |  |
| `consumerUUID` | `String` | Yes |  |
| `emailConfirmationCode` | `String` | No |  |
| `phoneNumber` | `String` | No |  |
| `responseCode` | `i64` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `create(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsUserBackofficeError>`

Create a new entity with the given data. Returns the created entity data on `Ok` and `Err` on failure.

```rust
let result = client.output_resend_link(Value::Noval).create(jo(vec![
    ("consumerUUID", Value::str("example_consumerUUID")),  // String
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
| `consumerUuid` | `String` | No |  |
| `phoneNumber` | `String` | No |  |
| `responseCode` | `i64` | No |  |
| `responseMessage` | `String` | No |  |

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
| `consumerUuid` | `String` | Yes |  |
| `consumerlanguage` | `String` | No |  |
| `country` | `String` | No |  |
| `dateOfBirth` | `String` | No |  |
| `datetime_created` | `String` | No |  |
| `driverLicenceNumber` | `String` | No |  |
| `email` | `String` | No |  |
| `firstName` | `String` | No |  |
| `identificationNumber` | `String` | No |  |
| `kycPassed` | `bool` | No |  |
| `lastName` | `String` | No |  |
| `nationality` | `String` | No |  |
| `passportNumber` | `String` | No |  |
| `phoneNumber` | `String` | No |  |
| `placeOfBirth` | `String` | No |  |
| `responseCode` | `i64` | No |  |
| `responseMessage` | `String` | No |  |
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
    ("consumerUuid", Value::str("example_consumerUuid")),  // String
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
| `consumerLanguage` | `String` | No |  |
| `email` | `String` | No |  |
| `firstName` | `String` | No |  |
| `lastName` | `String` | No |  |
| `phoneNumber` | `String` | No |  |
| `responseCode` | `i64` | No |  |
| `responseMessage` | `String` | No |  |

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
| `appName` | `String` | No |  |
| `buildDate` | `String` | No |  |
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
| `audit` | 0.0.1 | Structured audit trail of operations |
| `clienttrack` | 0.0.1 | Client identity and per-request correlation headers |
| `debug` | 0.0.1 | Request/response capture ring buffer for debugging |
| `idempotency` | 0.0.1 | Idempotency keys for safe retries of mutating operations |
| `log` | 0.0.1 | Structured request and response logging |
| `metrics` | 0.0.1 | Statistics capture: per-operation counters and latency |
| `paging` | 0.0.1 | Pagination signals for list operations |
| `ratelimit` | 0.0.1 | Client-side rate limiting via a token bucket |
| `retry` | 0.0.1 | Automatic retry of transient failures with exponential backoff |
| `telemetry` | 0.0.1 | Distributed tracing spans with W3C trace-context propagation |
| `test` | 0.0.1 | In-memory mock transport for testing without a live server |
| `timeout` | 0.0.1 | Per-request timeout with transport abort |


Features are activated via the `feature` option:

```rust
let client = BluefinTecsUserBackofficeSDK::new(jo(vec![
    ("feature", jo(vec![
        ("audit", jo(vec![("active", Value::Bool(true))])),
        ("clienttrack", jo(vec![("active", Value::Bool(true))])),
        ("debug", jo(vec![("active", Value::Bool(true))])),
        ("idempotency", jo(vec![("active", Value::Bool(true))])),
        ("log", jo(vec![("active", Value::Bool(true))])),
        ("metrics", jo(vec![("active", Value::Bool(true))])),
        ("paging", jo(vec![("active", Value::Bool(true))])),
        ("ratelimit", jo(vec![("active", Value::Bool(true))])),
        ("retry", jo(vec![("active", Value::Bool(true))])),
        ("telemetry", jo(vec![("active", Value::Bool(true))])),
        ("test", jo(vec![("active", Value::Bool(true))])),
        ("timeout", jo(vec![("active", Value::Bool(true))])),
    ])),
]));
```


### Configuring features

Each feature is inactive until switched on, and an SDK with no feature
configured does no feature work at all. Every option below keeps its default
unless you name it.

The array form of \`feature\` is significant: several features wrap the
transport, and the order you list them in is the order they nest.

#### Ordering

`ratelimit`, `retry`, `timeout` wrap the transport. Each
wraps whatever is already installed, so **activation order is nesting order**:
a feature activated later sits OUTSIDE one activated earlier, and sees the call
first.

That decides behaviour, not just sequence: a feature that short-circuits the
call, such as a cache serving a hit, stops every feature nested inside it from
ever seeing that call.

`audit`, `clienttrack`, `debug`, `idempotency`, `log`, `metrics`, `paging`, `telemetry`, `test` attach to pipeline hooks
rather than the transport, so their order does not affect what they observe.

#### `audit`

Structured audit trail of operations.

**Configuration**

| Option | Default |
|---|---|
| `active` | `false` |
| `actor` | `'anonymous'` |
| `max` | `1000` |

| Option | Type |
|---|---|
| `now` | function |
| `sink` | function |

These take no default: the feature behaves one way when you supply them and
another when you do not.

**Usage**

Set `feature.audit.active` to true in the client options, and override any option above in the same entry. Every option keeps
its default unless you name it.

**Considerations**

- Attaches to pipeline hooks, not the transport, so activation order does
  not change what it observes.
- Inactive by default: leaving it out costs nothing at runtime.

#### `clienttrack`

Client identity and per-request correlation headers.

**Configuration**

| Option | Default |
|---|---|
| `active` | `false` |
| `clientVersion` | `'0.0.1'` |

| Option | Type |
|---|---|
| `clientName` | string |
| `headers` | map |
| `idgen` | function |
| `sessionId` | string |

These take no default: the feature behaves one way when you supply them and
another when you do not.

**Usage**

Set `feature.clienttrack.active` to true in the client options, and override any option above in the same entry. Every option keeps
its default unless you name it.

**Considerations**

- Attaches to pipeline hooks, not the transport, so activation order does
  not change what it observes.
- Inactive by default: leaving it out costs nothing at runtime.

#### `debug`

Request/response capture ring buffer for debugging.

**Configuration**

| Option | Default |
|---|---|
| `active` | `false` |
| `max` | `100` |
| `redact` | `['authorization', 'cookie', 'set-cookie', 'api-key', 'apikey', 'x-api-key', 'idempotency-key']` |

| Option | Type |
|---|---|
| `now` | function |
| `onEntry` | function |

These take no default: the feature behaves one way when you supply them and
another when you do not.

**Usage**

Set `feature.debug.active` to true in the client options, and override any option above in the same entry. Every option keeps
its default unless you name it.

**Considerations**

- Attaches to pipeline hooks, not the transport, so activation order does
  not change what it observes.
- Inactive by default: leaving it out costs nothing at runtime.

#### `idempotency`

Idempotency keys for safe retries of mutating operations.

**Configuration**

| Option | Default |
|---|---|
| `active` | `false` |
| `header` | `'Idempotency-Key'` |
| `methods` | `['POST', 'PUT', 'PATCH', 'DELETE']` |
| `ops` | `['create', 'update', 'remove']` |

| Option | Type |
|---|---|
| `keygen` | function |

These take no default: the feature behaves one way when you supply them and
another when you do not.

**Usage**

Set `feature.idempotency.active` to true in the client options, and override any option above in the same entry. Every option keeps
its default unless you name it.

**Considerations**

- Attaches to pipeline hooks, not the transport, so activation order does
  not change what it observes.
- Inactive by default: leaving it out costs nothing at runtime.

#### `log`

Structured request and response logging.

**Configuration**

| Option | Default |
|---|---|
| `active` | `true` |

| Option | Type |
|---|---|
| `level` | string |
| `logger` | any |

These take no default: the feature behaves one way when you supply them and
another when you do not.

**Usage**

Set `feature.log.active` to true in the client options, and override any option above in the same entry. Every option keeps
its default unless you name it.

**Considerations**

- Attaches to pipeline hooks, not the transport, so activation order does
  not change what it observes.
- Inactive by default: leaving it out costs nothing at runtime.

#### `metrics`

Statistics capture: per-operation counters and latency.

**Configuration**

| Option | Default |
|---|---|
| `active` | `false` |

| Option | Type |
|---|---|
| `now` | function |

These take no default: the feature behaves one way when you supply them and
another when you do not.

**Usage**

Set `feature.metrics.active` to true in the client options, and override any option above in the same entry. Every option keeps
its default unless you name it.

**Considerations**

- Attaches to pipeline hooks, not the transport, so activation order does
  not change what it observes.
- Inactive by default: leaving it out costs nothing at runtime.

#### `paging`

Pagination signals for list operations.

**Configuration**

| Option | Default |
|---|---|
| `active` | `false` |
| `afterVar` | `'after'` |
| `cursorParam` | `'cursor'` |
| `firstVar` | `'first'` |
| `limitParam` | `'limit'` |
| `pageParam` | `'page'` |
| `startPage` | `1` |

| Option | Type |
|---|---|
| `limit` | number |
| `ops` | list |

These take no default: the feature behaves one way when you supply them and
another when you do not.

**Usage**

Set `feature.paging.active` to true in the client options, and override any option above in the same entry. Every option keeps
its default unless you name it.

**Considerations**

- Attaches to pipeline hooks, not the transport, so activation order does
  not change what it observes.
- Inactive by default: leaving it out costs nothing at runtime.

#### `ratelimit`

Client-side rate limiting via a token bucket.

**Configuration**

| Option | Default |
|---|---|
| `active` | `false` |
| `burst` | `5` |
| `rate` | `5` |

| Option | Type |
|---|---|
| `now` | function |
| `sleep` | function |

These take no default: the feature behaves one way when you supply them and
another when you do not.

**Usage**

Set `feature.ratelimit.active` to true in the client options, and override any option above in the same entry. Every option keeps
its default unless you name it.

**Considerations**

- Wraps the transport: its place in the activation order decides what it
  sees. See [Ordering](#ordering) above.
- Inactive by default: leaving it out costs nothing at runtime.

#### `retry`

Automatic retry of transient failures with exponential backoff.

**Configuration**

| Option | Default |
|---|---|
| `active` | `false` |
| `factor` | `2` |
| `maxDelay` | `2000` |
| `minDelay` | `50` |
| `retries` | `2` |
| `statuses` | `[408, 425, 429, 500, 502, 503, 504]` |

| Option | Type |
|---|---|
| `jitter` | boolean |
| `sleep` | function |

These take no default: the feature behaves one way when you supply them and
another when you do not.

**Usage**

Set `feature.retry.active` to true in the client options, and override any option above in the same entry. Every option keeps
its default unless you name it.

**Considerations**

- Wraps the transport: its place in the activation order decides what it
  sees. See [Ordering](#ordering) above.
- Inactive by default: leaving it out costs nothing at runtime.

#### `telemetry`

Distributed tracing spans with W3C trace-context propagation.

**Configuration**

| Option | Default |
|---|---|
| `active` | `false` |

| Option | Type |
|---|---|
| `exporter` | function |
| `headers` | map |
| `idgen` | function |
| `now` | function |

These take no default: the feature behaves one way when you supply them and
another when you do not.

**Usage**

Set `feature.telemetry.active` to true in the client options, and override any option above in the same entry. Every option keeps
its default unless you name it.

**Considerations**

- Attaches to pipeline hooks, not the transport, so activation order does
  not change what it observes.
- Inactive by default: leaving it out costs nothing at runtime.

#### `test`

In-memory mock transport for testing without a live server.

**Configuration**

| Option | Default |
|---|---|
| `active` | `false` |

| Option | Type |
|---|---|
| `entity` | map |
| `net` | map |

These take no default: the feature behaves one way when you supply them and
another when you do not.

**Usage**

Set `feature.test.active` to true in the client options, and override any option above in the same entry. Every option keeps
its default unless you name it.

**Considerations**

- Attaches to pipeline hooks, not the transport, so activation order does
  not change what it observes.
- Installs the BASE transport that the wrapping features wrap, so it must be
  activated before them.
- Inactive by default: leaving it out costs nothing at runtime.

#### `timeout`

Per-request timeout with transport abort.

**Configuration**

| Option | Default |
|---|---|
| `active` | `false` |
| `ms` | `30000` |

| Option | Type |
|---|---|
| `clearTimer` | function |
| `setTimer` | function |

These take no default: the feature behaves one way when you supply them and
another when you do not.

**Usage**

Set `feature.timeout.active` to true in the client options, and override any option above in the same entry. Every option keeps
its default unless you name it.

**Considerations**

- Wraps the transport: its place in the activation order decides what it
  sees. See [Ordering](#ordering) above.
- Inactive by default: leaving it out costs nothing at runtime.


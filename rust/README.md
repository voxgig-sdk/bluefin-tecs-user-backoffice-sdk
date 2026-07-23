# BluefinTecsUserBackoffice Rust SDK



The Rust SDK for the BluefinTecsUserBackoffice API — an entity-oriented client following idiomatic Rust conventions.

The SDK exposes the API as capitalised, semantic **Entities** — for example `client.output_activate_digital_module(Value::Noval)` — each
carrying a small, uniform set of operations (`load`, `create`) instead of raw URL
paths and query strings. You work with named resources and verbs, which
keeps the cognitive load low.

> Other languages, the CLI, and MCP server live alongside this one — see
> the [top-level README](../README.md).


## Install
This crate is not yet published to crates.io. Depend on it from the GitHub
release tag (`rust/vX.Y.Z`, see [Releases](https://github.com/voxgig-sdk/bluefin-tecs-user-backoffice-sdk/releases)) or
from a source checkout by adding it to your `Cargo.toml`:

```toml
[dependencies]
# From a source checkout:
voxgig-bluefin-tecs-user-backoffice-sdk = { path = "../rust" }

# Or from the git release tag:
# voxgig-bluefin-tecs-user-backoffice-sdk = { git = "<repo-url>", tag = "rust/vX.Y.Z" }
```


## Tutorial: your first API call

This tutorial walks through creating a client, listing entities, and
loading a specific record.

### 1. Create a client

```rust
use bluefin_tecs_user_backoffice_sdk::{getp, jo, BluefinTecsUserBackofficeSDK, Value};

let client = BluefinTecsUserBackofficeSDK::new(jo(vec![
    ("apikey", Value::str(std::env::var("BLUEFIN_TECS_USER_BACKOFFICE_APIKEY").unwrap_or_default())),
]));
```

### 4. Create, update, and remove

```rust
// Create — returns the bare created record
let created = client.output_activate_digital_module(Value::Noval).create(jo(vec![("response_code", Value::Num(1.0)), ("response_message", Value::str("example_response_message"))]), Value::Noval).unwrap();

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

```rust
let result = client.direct(jo(vec![
    ("path", Value::str("/api/resource/{id}")),
    ("method", Value::str("GET")),
    ("params", jo(vec![("id", Value::str("example"))])),
])).unwrap();

if getp(&result, "ok") == Value::Bool(true) {
    println!("{:?}", getp(&result, "status"));  // 200
    println!("{:?}", getp(&result, "data"));    // response body
} else {
    // A non-2xx response carries status + data (the error body); a
    // transport-level failure carries err instead. Only one is present.
    println!("{:?} {:?}", getp(&result, "status"), getp(&result, "err"));
}
```

### Prepare a request without sending it

```rust
// prepare() returns the fetch definition on Ok and Err on failure.
let fetchdef = client.prepare(jo(vec![
    ("path", Value::str("/api/resource/{id}")),
    ("method", Value::str("DELETE")),
    ("params", jo(vec![("id", Value::str("example"))])),
])).unwrap();

println!("{:?}", getp(&fetchdef, "url"));
println!("{:?}", getp(&fetchdef, "method"));
println!("{:?}", getp(&fetchdef, "headers"));
```

### Use test mode

Create a mock client for unit testing — no server required:

```rust
let client = test_sdk(Value::Noval, Value::Noval);

// Entity ops return the bare record on Ok and Err on failure.
let output_get_logo = client.output_get_logo(Value::Noval).load(Value::Noval, Value::Noval).unwrap();
// output_get_logo contains the mock response record
```

### Point at a different server

Override the base URL to reach a local or staging server:

```rust
let client = BluefinTecsUserBackofficeSDK::new(jo(vec![
    ("base", Value::str("http://localhost:8080")),
]));
```

### Run live tests

Create a `.env.local` file at the crate root:

```
BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE=TRUE
BLUEFIN_TECS_USER_BACKOFFICE_APIKEY=<your-key>
```

Then run:

```bash
cd rust && cargo test
```


## Reference

### BluefinTecsUserBackofficeSDK

```rust
use bluefin_tecs_user_backoffice_sdk::{BluefinTecsUserBackofficeSDK, Value};

let client = BluefinTecsUserBackofficeSDK::new(options);
```

Creates a new SDK client. `options` is a `Value` map (`Value::Noval` for
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

```rust
use bluefin_tecs_user_backoffice_sdk::{test_sdk, Value};

let client = test_sdk(testopts, sdkopts);
```

Creates a test-mode client with mock transport. Both arguments may be
`Value::Noval`.

### BluefinTecsUserBackofficeSDK methods

| Method | Signature | Description |
| --- | --- | --- |
| `options_map` | `() -> Value` | Deep copy of the current SDK options. |
| `get_utility` | `() -> Rc<Utility>` | Copy of the SDK utility object. |
| `prepare` | `(fetchargs: Value) -> Result<Value, BluefinTecsUserBackofficeError>` | Build an HTTP request definition without sending. |
| `direct` | `(fetchargs: Value) -> Result<Value, BluefinTecsUserBackofficeError>` | Build and send an HTTP request. `Ok` is a result map (branch on `ok`). |
| `output_activate_digital_module` | `(entopts: Value) -> Rc<OutputActivateDigitalModuleEntity>` | Create an OutputActivateDigitalModule entity instance. |
| `output_activate_portal_module` | `(entopts: Value) -> Rc<OutputActivatePortalModuleEntity>` | Create an OutputActivatePortalModule entity instance. |
| `output_activate_store_module` | `(entopts: Value) -> Rc<OutputActivateStoreModuleEntity>` | Create an OutputActivateStoreModule entity instance. |
| `output_activate_user` | `(entopts: Value) -> Rc<OutputActivateUserEntity>` | Create an OutputActivateUser entity instance. |
| `output_assign_role` | `(entopts: Value) -> Rc<OutputAssignRoleEntity>` | Create an OutputAssignRole entity instance. |
| `output_change_logo` | `(entopts: Value) -> Rc<OutputChangeLogoEntity>` | Create an OutputChangeLogo entity instance. |
| `output_create_mandator` | `(entopts: Value) -> Rc<OutputCreateMandatorEntity>` | Create an OutputCreateMandator entity instance. |
| `output_create_service_user` | `(entopts: Value) -> Rc<OutputCreateServiceUserEntity>` | Create an OutputCreateServiceUser entity instance. |
| `output_deactivate_user` | `(entopts: Value) -> Rc<OutputDeactivateUserEntity>` | Create an OutputDeactivateUser entity instance. |
| `output_get_kyc_document` | `(entopts: Value) -> Rc<OutputGetKycDocumentEntity>` | Create an OutputGetKycDocument entity instance. |
| `output_get_logo` | `(entopts: Value) -> Rc<OutputGetLogoEntity>` | Create an OutputGetLogo entity instance. |
| `output_list_of_available_role` | `(entopts: Value) -> Rc<OutputListOfAvailableRoleEntity>` | Create an OutputListOfAvailableRole entity instance. |
| `output_list_of_mandator` | `(entopts: Value) -> Rc<OutputListOfMandatorEntity>` | Create an OutputListOfMandator entity instance. |
| `output_list_of_module` | `(entopts: Value) -> Rc<OutputListOfModuleEntity>` | Create an OutputListOfModule entity instance. |
| `output_list_of_role_group` | `(entopts: Value) -> Rc<OutputListOfRoleGroupEntity>` | Create an OutputListOfRoleGroup entity instance. |
| `output_list_of_transactions_history` | `(entopts: Value) -> Rc<OutputListOfTransactionsHistoryEntity>` | Create an OutputListOfTransactionsHistory entity instance. |
| `output_list_of_user` | `(entopts: Value) -> Rc<OutputListOfUserEntity>` | Create an OutputListOfUser entity instance. |
| `output_provide_credential` | `(entopts: Value) -> Rc<OutputProvideCredentialEntity>` | Create an OutputProvideCredential entity instance. |
| `output_register_user` | `(entopts: Value) -> Rc<OutputRegisterUserEntity>` | Create an OutputRegisterUser entity instance. |
| `output_remove_role` | `(entopts: Value) -> Rc<OutputRemoveRoleEntity>` | Create an OutputRemoveRole entity instance. |
| `output_resend_link` | `(entopts: Value) -> Rc<OutputResendLinkEntity>` | Create an OutputResendLink entity instance. |
| `output_reset_password` | `(entopts: Value) -> Rc<OutputResetPasswordEntity>` | Create an OutputResetPassword entity instance. |
| `output_update_consumer` | `(entopts: Value) -> Rc<OutputUpdateConsumerEntity>` | Create an OutputUpdateConsumer entity instance. |
| `output_update_profile` | `(entopts: Value) -> Rc<OutputUpdateProfileEntity>` | Create an OutputUpdateProfile entity instance. |
| `version` | `(entopts: Value) -> Rc<VersionEntity>` | Create a Version entity instance. |

### Entity interface

All entities share the same interface.

| Method | Signature | Description |
| --- | --- | --- |
| `load` | `(reqmatch: Value, ctrl: Value) -> Result<Value, BluefinTecsUserBackofficeError>` | Load a single entity by match criteria. |
| `create` | `(reqdata: Value, ctrl: Value) -> Result<Value, BluefinTecsUserBackofficeError>` | Create a new entity. |
| `data` | `(args: Option<&Value>) -> Value` | Get entity data (pass `Some(&map)` to set). |
| `matchv` | `(args: Option<&Value>) -> Value` | Get entity match criteria (pass `Some(&map)` to set). |
| `make` | `() -> Rc<dyn Entity>` | Create a new instance with the same options. |
| `get_name` | `() -> String` | Return the entity name. |

### Result shape

Entity operations return `Result<Value, BluefinTecsUserBackofficeError>` — the
bare result data on `Ok` (a `Value::Map` for single-entity ops, a
`Value::List` for `list`) and the branded error on `Err`.

The `direct()` escape hatch resolves to `Ok` even on a non-2xx response —
it returns a result `Value::Map` you branch on via `getp(&result, "ok")`:

| Key | Type | Description |
| --- | --- | --- |
| `ok` | `bool` | `true` if the HTTP status is 2xx. |
| `status` | `number` | HTTP status code. |
| `headers` | `map` | Response headers. |
| `data` | `any` | Parsed JSON response body. |

On error, `ok` is `false` and `err` carries the error value.

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

Create an instance: `let output_activate_digital_module = client.output_activate_digital_module(Value::Noval);`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `response_code` | `i64` |  |
| `response_message` | `String` |  |

#### Example: Create

```rust
let output_activate_digital_module = client.output_activate_digital_module(Value::Noval).create(jo(vec![
]), Value::Noval).unwrap();
```


### OutputActivatePortalModule

Create an instance: `let output_activate_portal_module = client.output_activate_portal_module(Value::Noval);`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `client_secret` | `String` |  |
| `notification_email` | `String` |  |
| `response_code` | `i64` |  |
| `response_message` | `String` |  |

#### Example: Create

```rust
let output_activate_portal_module = client.output_activate_portal_module(Value::Noval).create(jo(vec![
    ("client_secret", Value::str("example_client_secret")),  // String
    ("notification_email", Value::str("example_notification_email")),  // String
]), Value::Noval).unwrap();
```


### OutputActivateStoreModule

Create an instance: `let output_activate_store_module = client.output_activate_store_module(Value::Noval);`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `response_code` | `i64` |  |
| `response_message` | `String` |  |

#### Example: Create

```rust
let output_activate_store_module = client.output_activate_store_module(Value::Noval).create(jo(vec![
]), Value::Noval).unwrap();
```


### OutputActivateUser

Create an instance: `let output_activate_user = client.output_activate_user(Value::Noval);`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumer_uuid` | `String` |  |
| `response_code` | `i64` |  |
| `response_message` | `String` |  |

#### Example: Create

```rust
let output_activate_user = client.output_activate_user(Value::Noval).create(jo(vec![
]), Value::Noval).unwrap();
```


### OutputAssignRole

Create an instance: `let output_assign_role = client.output_assign_role(Value::Noval);`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumer_uuid` | `String` |  |
| `response_code` | `i64` |  |
| `response_message` | `String` |  |
| `role` | `Vec<Value>` |  |

#### Example: Create

```rust
let output_assign_role = client.output_assign_role(Value::Noval).create(jo(vec![
    ("consumer_uuid", Value::str("example_consumer_uuid")),  // String
    ("role", Value::empty_list()),  // Vec<Value>
]), Value::Noval).unwrap();
```


### OutputChangeLogo

Create an instance: `let output_change_logo = client.output_change_logo(Value::Noval);`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `content_as_base64` | `String` |  |
| `mime_type` | `String` |  |
| `response_code` | `i64` |  |
| `response_message` | `String` |  |

#### Example: Create

```rust
let output_change_logo = client.output_change_logo(Value::Noval).create(jo(vec![
    ("content_as_base64", Value::str("example_content_as_base64")),  // String
    ("mime_type", Value::str("example_mime_type")),  // String
]), Value::Noval).unwrap();
```


### OutputCreateMandator

Create an instance: `let output_create_mandator = client.output_create_mandator(Value::Noval);`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `city` | `String` |  |
| `country` | `String` |  |
| `date_of_birth` | `String` |  |
| `description` | `String` |  |
| `drivers_license_number` | `String` |  |
| `email` | `String` |  |
| `first_name` | `String` |  |
| `identification_number` | `String` |  |
| `last_name` | `String` |  |
| `login` | `String` |  |
| `mandator` | `std::collections::HashMap<String, Value>` |  |
| `name` | `String` |  |
| `passport_number` | `String` |  |
| `phone` | `String` |  |
| `response_code` | `i64` |  |
| `response_message` | `String` |  |
| `salutation` | `String` |  |
| `state` | `String` |  |
| `street1` | `String` |  |
| `street2` | `String` |  |
| `zip_code` | `String` |  |

#### Example: Create

```rust
let output_create_mandator = client.output_create_mandator(Value::Noval).create(jo(vec![
    ("description", Value::str("example_description")),  // String
    ("email", Value::str("example_email")),  // String
    ("login", Value::str("example_login")),  // String
    ("name", Value::str("example_name")),  // String
    ("phone", Value::str("example_phone")),  // String
]), Value::Noval).unwrap();
```


### OutputCreateServiceUser

Create an instance: `let output_create_service_user = client.output_create_service_user(Value::Noval);`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `mandator_name` | `String` |  |
| `response_code` | `i64` |  |
| `response_message` | `String` |  |

#### Example: Create

```rust
let output_create_service_user = client.output_create_service_user(Value::Noval).create(jo(vec![
    ("mandator_name", Value::str("example_mandator_name")),  // String
]), Value::Noval).unwrap();
```


### OutputDeactivateUser

Create an instance: `let output_deactivate_user = client.output_deactivate_user(Value::Noval);`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumer_uuid` | `String` |  |
| `response_code` | `i64` |  |
| `response_message` | `String` |  |

#### Example: Create

```rust
let output_deactivate_user = client.output_deactivate_user(Value::Noval).create(jo(vec![
]), Value::Noval).unwrap();
```


### OutputGetKycDocument

Create an instance: `let output_get_kyc_document = client.output_get_kyc_document(Value::Noval);`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `case_id` | `String` |  |
| `encoded_data_base64` | `String` |  |
| `response_code` | `i64` |  |
| `response_message` | `String` |  |

#### Example: Create

```rust
let output_get_kyc_document = client.output_get_kyc_document(Value::Noval).create(jo(vec![
]), Value::Noval).unwrap();
```


### OutputGetLogo

Create an instance: `let output_get_logo = client.output_get_logo(Value::Noval);`

#### Operations

| Method | Description |
| --- | --- |
| `load(reqmatch, ctrl)` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `content_as_base64` | `String` |  |
| `mime_type` | `String` |  |
| `response_code` | `i64` |  |
| `response_message` | `String` |  |

#### Example: Load

```rust
let output_get_logo = client.output_get_logo(Value::Noval).load(Value::Noval, Value::Noval).unwrap();
```


### OutputListOfAvailableRole

Create an instance: `let output_list_of_available_role = client.output_list_of_available_role(Value::Noval);`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `available_role` | `Vec<Value>` |  |
| `response_code` | `i64` |  |
| `response_message` | `String` |  |

#### Example: Create

```rust
let output_list_of_available_role = client.output_list_of_available_role(Value::Noval).create(jo(vec![
]), Value::Noval).unwrap();
```


### OutputListOfMandator

Create an instance: `let output_list_of_mandator = client.output_list_of_mandator(Value::Noval);`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `filter` | `std::collections::HashMap<String, Value>` |  |
| `list` | `Vec<Value>` |  |
| `pagination` | `std::collections::HashMap<String, Value>` |  |
| `response_code` | `i64` |  |
| `response_message` | `String` |  |
| `sorting` | `std::collections::HashMap<String, Value>` |  |

#### Example: Create

```rust
let output_list_of_mandator = client.output_list_of_mandator(Value::Noval).create(jo(vec![
]), Value::Noval).unwrap();
```


### OutputListOfModule

Create an instance: `let output_list_of_module = client.output_list_of_module(Value::Noval);`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `list` | `Vec<Value>` |  |
| `pagination` | `std::collections::HashMap<String, Value>` |  |
| `response_code` | `i64` |  |
| `response_message` | `String` |  |

#### Example: Create

```rust
let output_list_of_module = client.output_list_of_module(Value::Noval).create(jo(vec![
]), Value::Noval).unwrap();
```


### OutputListOfRoleGroup

Create an instance: `let output_list_of_role_group = client.output_list_of_role_group(Value::Noval);`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `filter` | `std::collections::HashMap<String, Value>` |  |
| `group_role` | `Vec<Value>` |  |
| `pagination` | `std::collections::HashMap<String, Value>` |  |
| `response_code` | `i64` |  |
| `response_message` | `String` |  |
| `sorting` | `std::collections::HashMap<String, Value>` |  |

#### Example: Create

```rust
let output_list_of_role_group = client.output_list_of_role_group(Value::Noval).create(jo(vec![
]), Value::Noval).unwrap();
```


### OutputListOfTransactionsHistory

Create an instance: `let output_list_of_transactions_history = client.output_list_of_transactions_history(Value::Noval);`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `filter` | `std::collections::HashMap<String, Value>` |  |
| `list` | `Vec<Value>` |  |
| `pagination` | `std::collections::HashMap<String, Value>` |  |
| `response_code` | `i64` |  |
| `response_message` | `String` |  |
| `sorting` | `std::collections::HashMap<String, Value>` |  |

#### Example: Create

```rust
let output_list_of_transactions_history = client.output_list_of_transactions_history(Value::Noval).create(jo(vec![
]), Value::Noval).unwrap();
```


### OutputListOfUser

Create an instance: `let output_list_of_user = client.output_list_of_user(Value::Noval);`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `filter` | `std::collections::HashMap<String, Value>` |  |
| `list` | `Vec<Value>` |  |
| `pagination` | `std::collections::HashMap<String, Value>` |  |
| `response_code` | `i64` |  |
| `response_message` | `String` |  |
| `sorting` | `std::collections::HashMap<String, Value>` |  |

#### Example: Create

```rust
let output_list_of_user = client.output_list_of_user(Value::Noval).create(jo(vec![
]), Value::Noval).unwrap();
```


### OutputProvideCredential

Create an instance: `let output_provide_credential = client.output_provide_credential(Value::Noval);`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `mandator_name` | `String` |  |
| `password` | `String` |  |
| `response_code` | `i64` |  |
| `response_message` | `String` |  |
| `username` | `String` |  |

#### Example: Create

```rust
let output_provide_credential = client.output_provide_credential(Value::Noval).create(jo(vec![
    ("mandator_name", Value::str("example_mandator_name")),  // String
]), Value::Noval).unwrap();
```


### OutputRegisterUser

Create an instance: `let output_register_user = client.output_register_user(Value::Noval);`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `city` | `String` |  |
| `consumer_id` | `String` |  |
| `consumer_language` | `String` |  |
| `country` | `String` |  |
| `date_of_birth` | `String` |  |
| `driver_licence_number` | `String` |  |
| `email` | `String` |  |
| `first_name` | `String` |  |
| `identification_number` | `String` |  |
| `last_name` | `String` |  |
| `login` | `String` |  |
| `module` | `String` |  |
| `passport_number` | `String` |  |
| `phone` | `String` |  |
| `response_code` | `i64` |  |
| `response_message` | `String` |  |
| `salutation` | `String` |  |
| `state` | `String` |  |
| `street1` | `String` |  |
| `street2` | `String` |  |
| `zip` | `String` |  |

#### Example: Create

```rust
let output_register_user = client.output_register_user(Value::Noval).create(jo(vec![
    ("email", Value::str("example_email")),  // String
]), Value::Noval).unwrap();
```


### OutputRemoveRole

Create an instance: `let output_remove_role = client.output_remove_role(Value::Noval);`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumer_uuid` | `String` |  |
| `response_code` | `i64` |  |
| `response_message` | `String` |  |
| `role` | `Vec<Value>` |  |

#### Example: Create

```rust
let output_remove_role = client.output_remove_role(Value::Noval).create(jo(vec![
]), Value::Noval).unwrap();
```


### OutputResendLink

Create an instance: `let output_resend_link = client.output_resend_link(Value::Noval);`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `business_registration_number` | `String` |  |
| `consumer_uuid` | `String` |  |
| `email_confirmation_code` | `String` |  |
| `phone_number` | `String` |  |
| `response_code` | `i64` |  |
| `response_message` | `String` |  |

#### Example: Create

```rust
let output_resend_link = client.output_resend_link(Value::Noval).create(jo(vec![
    ("consumer_uuid", Value::str("example_consumer_uuid")),  // String
]), Value::Noval).unwrap();
```


### OutputResetPassword

Create an instance: `let output_reset_password = client.output_reset_password(Value::Noval);`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumer_uuid` | `String` |  |
| `phone_number` | `String` |  |
| `response_code` | `i64` |  |
| `response_message` | `String` |  |

#### Example: Create

```rust
let output_reset_password = client.output_reset_password(Value::Noval).create(jo(vec![
]), Value::Noval).unwrap();
```


### OutputUpdateConsumer

Create an instance: `let output_update_consumer = client.output_update_consumer(Value::Noval);`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `city` | `String` |  |
| `consumer_uuid` | `String` |  |
| `consumerlanguage` | `String` |  |
| `country` | `String` |  |
| `date_of_birth` | `String` |  |
| `datetime_created` | `String` |  |
| `driver_licence_number` | `String` |  |
| `email` | `String` |  |
| `first_name` | `String` |  |
| `identification_number` | `String` |  |
| `kyc_passed` | `bool` |  |
| `last_name` | `String` |  |
| `nationality` | `String` |  |
| `passport_number` | `String` |  |
| `phone_number` | `String` |  |
| `place_of_birth` | `String` |  |
| `response_code` | `i64` |  |
| `response_message` | `String` |  |
| `state` | `String` |  |
| `street1` | `String` |  |
| `street2` | `String` |  |
| `transactionhistory_id` | `String` |  |
| `zip` | `String` |  |

#### Example: Create

```rust
let output_update_consumer = client.output_update_consumer(Value::Noval).create(jo(vec![
    ("consumer_uuid", Value::str("example_consumer_uuid")),  // String
]), Value::Noval).unwrap();
```


### OutputUpdateProfile

Create an instance: `let output_update_profile = client.output_update_profile(Value::Noval);`

#### Operations

| Method | Description |
| --- | --- |
| `create(reqdata, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumer_language` | `String` |  |
| `email` | `String` |  |
| `first_name` | `String` |  |
| `last_name` | `String` |  |
| `phone_number` | `String` |  |
| `response_code` | `i64` |  |
| `response_message` | `String` |  |

#### Example: Create

```rust
let output_update_profile = client.output_update_profile(Value::Noval).create(jo(vec![
]), Value::Noval).unwrap();
```


### Version

Create an instance: `let version = client.version(Value::Noval);`

#### Operations

| Method | Description |
| --- | --- |
| `load(reqmatch, ctrl)` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `app_name` | `String` |  |
| `build_date` | `String` |  |
| `version` | `String` |  |

#### Example: Load

```rust
let version = client.version(Value::Noval).load(Value::Noval, Value::Noval).unwrap();
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

The Rust SDK uses a single dynamic `Value` type throughout rather than a
typed struct per entity. `Value` is the vendored voxgig struct port (a
JSON-shaped enum: `Str`, `Num`, `Bool`, `List`, `Map`, `Null`,
`Noval`). This mirrors the dynamic nature of the API and keeps the SDK
flexible — no code generation is needed when the API schema changes.

Build request maps with the `jo` / `ja` helpers and read fields back with
`getp`; use `to_map` to safely coerce a value to a map.

### Crate structure

```
rust/
├── lib.rs                       -- Crate root (module decls + re-exports)
├── core/                        -- Pipeline types, config, client (sdk.rs)
├── entity/                      -- Per-entity clients (one module each)
├── feature/                     -- Built-in features (base, test, log)
└── utility/                     -- Utilities + the vendored voxgig struct port
```

The public API is re-exported from the crate root, so `use bluefin_tecs_user_backoffice_sdk::{...}`
reaches the SDK client, `Value`, and the `jo` / `ja` / `getp` helpers
directly. Import entity or utility modules only when needed.

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

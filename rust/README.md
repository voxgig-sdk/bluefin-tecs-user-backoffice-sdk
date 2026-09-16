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
let created = client.output_activate_digital_module(Value::Noval).create(jo(vec![("responseCode", Value::Num(1.0)), ("responseMessage", Value::str("example_responseMessage"))]), Value::Noval).unwrap();

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
| `responseCode` |  |
| `responseMessage` |  |

Operations: Create.

API path: `/activateDigitalModule`

#### OutputActivatePortalModule

| Field | Description |
| --- | --- |
| `clientSecret` |  |
| `notificationEmail` |  |
| `responseCode` |  |
| `responseMessage` |  |

Operations: Create.

API path: `/activateMerchantPortalModule`

#### OutputActivateStoreModule

| Field | Description |
| --- | --- |
| `responseCode` |  |
| `responseMessage` |  |

Operations: Create.

API path: `/activateAppStoreModule`

#### OutputActivateUser

| Field | Description |
| --- | --- |
| `consumerUUID` |  |
| `responseCode` |  |
| `responseMessage` |  |

Operations: Create.

API path: `/activateUser`

#### OutputAssignRole

| Field | Description |
| --- | --- |
| `consumerUUID` | Unique identifier of the consumer (user) to whom the role(s) will be assigned. |
| `responseCode` | Response code: 0 indicates success; any non-zero value indicates an error. |
| `responseMessage` | A human-readable message providing additional details about the outcome. |
| `roles` | List of roles to assign to the consumer. |

Operations: Create.

API path: `/assignRoles`

#### OutputChangeLogo

| Field | Description |
| --- | --- |
| `contentAsBase64` | The content of the image as base64 encoded string |
| `mimeType` | The MIME type of the image |
| `responseCode` |  |
| `responseMessage` |  |

Operations: Create.

API path: `/changeLogo`

#### OutputCreateMandator

| Field | Description |
| --- | --- |
| `city` |  |
| `country` |  |
| `dateOfBirth` |  |
| `description` |  |
| `driversLicenseNumber` |  |
| `email` |  |
| `firstName` |  |
| `identificationNumber` |  |
| `lastName` |  |
| `login` |  |
| `name` |  |
| `passportNumber` |  |
| `phone` |  |
| `salutation` |  |
| `state` |  |
| `street1` |  |
| `street2` |  |
| `zipCode` |  |

Operations: Create.

API path: `/createMandator`

#### OutputCreateServiceUser

| Field | Description |
| --- | --- |
| `mandatorName` |  |
| `responseCode` |  |
| `responseMessage` |  |

Operations: Create.

API path: `/createServiceUser`

#### OutputDeactivateUser

| Field | Description |
| --- | --- |
| `consumerUUID` |  |
| `responseCode` |  |
| `responseMessage` |  |

Operations: Create.

API path: `/deactivateUser`

#### OutputGetKycDocument

| Field | Description |
| --- | --- |
| `caseID` |  |
| `encodedDataBase64` |  |
| `responseCode` |  |
| `responseMessage` |  |

Operations: Create.

API path: `/getKycDocument`

#### OutputGetLogo

| Field | Description |
| --- | --- |
| `contentAsBase64` | The content of the image as base64 encoded string |
| `mimeType` | The MIME type of the image |
| `responseCode` |  |
| `responseMessage` |  |

Operations: Load.

API path: `/getLogo`

#### OutputListOfAvailableRole

| Field | Description |
| --- | --- |
| `availableRoles` |  |
| `responseCode` |  |
| `responseMessage` |  |

Operations: Create.

API path: `/listOfAvailableRoles`

#### OutputListOfMandator

| Field | Description |
| --- | --- |
| `filter` |  |
| `list` |  |
| `pagination` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `sorting` |  |

Operations: Create.

API path: `/listOfMandators`

#### OutputListOfModule

| Field | Description |
| --- | --- |
| `list` |  |
| `pagination` |  |
| `responseCode` |  |
| `responseMessage` |  |

Operations: Create.

API path: `/listOfModules`

#### OutputListOfRoleGroup

| Field | Description |
| --- | --- |
| `filter` |  |
| `groupRoles` |  |
| `pagination` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `sorting` |  |

Operations: Create.

API path: `/listOfRoleGroups`

#### OutputListOfTransactionsHistory

| Field | Description |
| --- | --- |
| `filter` |  |
| `list` |  |
| `pagination` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `sorting` |  |

Operations: Create.

API path: `/listOfTransactionsHistory`

#### OutputListOfUser

| Field | Description |
| --- | --- |
| `filter` |  |
| `list` |  |
| `pagination` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `sorting` |  |

Operations: Create.

API path: `/listOfUsers`

#### OutputProvideCredential

| Field | Description |
| --- | --- |
| `mandatorName` |  |
| `password` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `username` |  |

Operations: Create.

API path: `/provideCredentials`

#### OutputRegisterUser

| Field | Description |
| --- | --- |
| `city` | City where the user resides. |
| `consumerId` | User login or unique user identifier. |
| `consumerLanguage` | Preferred language for the user (e.g., 'en'). |
| `country` | User's country. |
| `dateOfBirth` | User's date of birth (expected format: dd.MM.yyyy). |
| `driverLicenceNumber` | User's driver's license number. |
| `email` | User's email address (must be unique). |
| `firstName` | User's first name. |
| `identificationNumber` | User's identification number. |
| `lastName` | User's last name. |
| `login` | User login identifier (should be unique). |
| `module` | Module identifier (if applicable). |
| `passportNumber` | User's passport number. |
| `phone` | User's phone number. |
| `responseCode` | Response code (0 indicates success; non-zero indicates an error). |
| `responseMessage` | Human-readable response message. |
| `salutation` | User's salutation (e.g., Mr., Ms.). |
| `state` | User's state or region. |
| `street1` | Primary address line. |
| `street2` | Secondary address line. |
| `zip` | Postal code. |

Operations: Create.

API path: `/registerUser`

#### OutputRemoveRole

| Field | Description |
| --- | --- |
| `consumerUUID` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `roles` |  |

Operations: Create.

API path: `/removeRoles`

#### OutputResendLink

| Field | Description |
| --- | --- |
| `businessRegistrationNumber` |  |
| `consumerUUID` |  |
| `emailConfirmationCode` |  |
| `phoneNumber` |  |
| `responseCode` |  |
| `responseMessage` |  |

Operations: Create.

API path: `/resendLink`

#### OutputResetPassword

| Field | Description |
| --- | --- |
| `consumerUuid` |  |
| `phoneNumber` |  |
| `responseCode` |  |
| `responseMessage` |  |

Operations: Create.

API path: `/resetPassword`

#### OutputUpdateConsumer

| Field | Description |
| --- | --- |
| `city` |  |
| `consumerUuid` |  |
| `consumerlanguage` |  |
| `country` |  |
| `dateOfBirth` |  |
| `datetime_created` |  |
| `driverLicenceNumber` |  |
| `email` |  |
| `firstName` |  |
| `identificationNumber` |  |
| `kycPassed` |  |
| `lastName` |  |
| `nationality` |  |
| `passportNumber` |  |
| `phoneNumber` |  |
| `placeOfBirth` |  |
| `responseCode` |  |
| `responseMessage` |  |
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
| `consumerLanguage` |  |
| `email` |  |
| `firstName` |  |
| `lastName` |  |
| `phoneNumber` |  |
| `responseCode` |  |
| `responseMessage` |  |

Operations: Create.

API path: `/updateProfile`

#### Version

| Field | Description |
| --- | --- |
| `appName` |  |
| `buildDate` |  |
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
| `responseCode` | `i64` |  |
| `responseMessage` | `String` |  |

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
| `clientSecret` | `String` |  |
| `notificationEmail` | `String` |  |
| `responseCode` | `i64` |  |
| `responseMessage` | `String` |  |

#### Example: Create

```rust
let output_activate_portal_module = client.output_activate_portal_module(Value::Noval).create(jo(vec![
    ("clientSecret", Value::str("example_clientSecret")),  // String
    ("notificationEmail", Value::str("example_notificationEmail")),  // String
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
| `responseCode` | `i64` |  |
| `responseMessage` | `String` |  |

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
| `consumerUUID` | `String` |  |
| `responseCode` | `i64` |  |
| `responseMessage` | `String` |  |

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
| `consumerUUID` | `String` | Unique identifier of the consumer (user) to whom the role(s) will be assigned. |
| `responseCode` | `i64` | Response code: 0 indicates success; any non-zero value indicates an error. |
| `responseMessage` | `String` | A human-readable message providing additional details about the outcome. |
| `roles` | `Vec<Value>` | List of roles to assign to the consumer. |

#### Example: Create

```rust
let output_assign_role = client.output_assign_role(Value::Noval).create(jo(vec![
    ("consumerUUID", Value::str("example_consumerUUID")),  // String
    ("roles", Value::empty_list()),  // Vec<Value>
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
| `contentAsBase64` | `String` | The content of the image as base64 encoded string |
| `mimeType` | `String` | The MIME type of the image |
| `responseCode` | `i64` |  |
| `responseMessage` | `String` |  |

#### Example: Create

```rust
let output_change_logo = client.output_change_logo(Value::Noval).create(jo(vec![
    ("contentAsBase64", Value::str("example_contentAsBase64")),  // String
    ("mimeType", Value::str("example_mimeType")),  // String
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
| `dateOfBirth` | `String` |  |
| `description` | `String` |  |
| `driversLicenseNumber` | `String` |  |
| `email` | `String` |  |
| `firstName` | `String` |  |
| `identificationNumber` | `String` |  |
| `lastName` | `String` |  |
| `login` | `String` |  |
| `name` | `String` |  |
| `passportNumber` | `String` |  |
| `phone` | `String` |  |
| `salutation` | `String` |  |
| `state` | `String` |  |
| `street1` | `String` |  |
| `street2` | `String` |  |
| `zipCode` | `String` |  |

#### Example: Create

```rust
let output_create_mandator = client.output_create_mandator(Value::Noval).create(jo(vec![
    ("email", Value::str("example_email")),  // String
    ("login", Value::str("example_login")),  // String
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
| `mandatorName` | `String` |  |
| `responseCode` | `i64` |  |
| `responseMessage` | `String` |  |

#### Example: Create

```rust
let output_create_service_user = client.output_create_service_user(Value::Noval).create(jo(vec![
    ("mandatorName", Value::str("example_mandatorName")),  // String
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
| `consumerUUID` | `String` |  |
| `responseCode` | `i64` |  |
| `responseMessage` | `String` |  |

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
| `caseID` | `String` |  |
| `encodedDataBase64` | `String` |  |
| `responseCode` | `i64` |  |
| `responseMessage` | `String` |  |

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
| `contentAsBase64` | `String` | The content of the image as base64 encoded string |
| `mimeType` | `String` | The MIME type of the image |
| `responseCode` | `i64` |  |
| `responseMessage` | `String` |  |

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
| `availableRoles` | `Vec<Value>` |  |
| `responseCode` | `i64` |  |
| `responseMessage` | `String` |  |

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
| `responseCode` | `i64` |  |
| `responseMessage` | `String` |  |
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
| `responseCode` | `i64` |  |
| `responseMessage` | `String` |  |

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
| `groupRoles` | `Vec<Value>` |  |
| `pagination` | `std::collections::HashMap<String, Value>` |  |
| `responseCode` | `i64` |  |
| `responseMessage` | `String` |  |
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
| `responseCode` | `i64` |  |
| `responseMessage` | `String` |  |
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
| `responseCode` | `i64` |  |
| `responseMessage` | `String` |  |
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
| `mandatorName` | `String` |  |
| `password` | `String` |  |
| `responseCode` | `i64` |  |
| `responseMessage` | `String` |  |
| `username` | `String` |  |

#### Example: Create

```rust
let output_provide_credential = client.output_provide_credential(Value::Noval).create(jo(vec![
    ("mandatorName", Value::str("example_mandatorName")),  // String
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
| `city` | `String` | City where the user resides. |
| `consumerId` | `String` | User login or unique user identifier. |
| `consumerLanguage` | `String` | Preferred language for the user (e.g., 'en'). |
| `country` | `String` | User's country. |
| `dateOfBirth` | `String` | User's date of birth (expected format: dd.MM.yyyy). |
| `driverLicenceNumber` | `String` | User's driver's license number. |
| `email` | `String` | User's email address (must be unique). |
| `firstName` | `String` | User's first name. |
| `identificationNumber` | `String` | User's identification number. |
| `lastName` | `String` | User's last name. |
| `login` | `String` | User login identifier (should be unique). |
| `module` | `String` | Module identifier (if applicable). |
| `passportNumber` | `String` | User's passport number. |
| `phone` | `String` | User's phone number. |
| `responseCode` | `i64` | Response code (0 indicates success; non-zero indicates an error). |
| `responseMessage` | `String` | Human-readable response message. |
| `salutation` | `String` | User's salutation (e.g., Mr., Ms.). |
| `state` | `String` | User's state or region. |
| `street1` | `String` | Primary address line. |
| `street2` | `String` | Secondary address line. |
| `zip` | `String` | Postal code. |

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
| `consumerUUID` | `String` |  |
| `responseCode` | `i64` |  |
| `responseMessage` | `String` |  |
| `roles` | `Vec<Value>` |  |

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
| `businessRegistrationNumber` | `String` |  |
| `consumerUUID` | `String` |  |
| `emailConfirmationCode` | `String` |  |
| `phoneNumber` | `String` |  |
| `responseCode` | `i64` |  |
| `responseMessage` | `String` |  |

#### Example: Create

```rust
let output_resend_link = client.output_resend_link(Value::Noval).create(jo(vec![
    ("consumerUUID", Value::str("example_consumerUUID")),  // String
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
| `consumerUuid` | `String` |  |
| `phoneNumber` | `String` |  |
| `responseCode` | `i64` |  |
| `responseMessage` | `String` |  |

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
| `consumerUuid` | `String` |  |
| `consumerlanguage` | `String` |  |
| `country` | `String` |  |
| `dateOfBirth` | `String` |  |
| `datetime_created` | `String` |  |
| `driverLicenceNumber` | `String` |  |
| `email` | `String` |  |
| `firstName` | `String` |  |
| `identificationNumber` | `String` |  |
| `kycPassed` | `bool` |  |
| `lastName` | `String` |  |
| `nationality` | `String` |  |
| `passportNumber` | `String` |  |
| `phoneNumber` | `String` |  |
| `placeOfBirth` | `String` |  |
| `responseCode` | `i64` |  |
| `responseMessage` | `String` |  |
| `state` | `String` |  |
| `street1` | `String` |  |
| `street2` | `String` |  |
| `transactionhistory_id` | `String` |  |
| `zip` | `String` |  |

#### Example: Create

```rust
let output_update_consumer = client.output_update_consumer(Value::Noval).create(jo(vec![
    ("consumerUuid", Value::str("example_consumerUuid")),  // String
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
| `consumerLanguage` | `String` |  |
| `email` | `String` |  |
| `firstName` | `String` |  |
| `lastName` | `String` |  |
| `phoneNumber` | `String` |  |
| `responseCode` | `i64` |  |
| `responseMessage` | `String` |  |

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
| `appName` | `String` |  |
| `buildDate` | `String` |  |
| `version` | `String` |  |

#### Example: Load

```rust
let version = client.version(Value::Noval).load(Value::Noval, Value::Noval).unwrap();
```

## Features

This SDK ships 12 optional features. Each is **inactive until you
switch it on**, so an SDK you have not configured behaves exactly as if none of
them existed — no retries, no cache, no logging, no measurable overhead.

Activate a feature by name in the client options, alongside the options shown
above:

| Feature | What it does |
|---|---|
| [`audit`](#audit) | Structured audit trail of operations |
| [`clienttrack`](#clienttrack) | Client identity and per-request correlation headers |
| [`debug`](#debug) | Request/response capture ring buffer for debugging |
| [`idempotency`](#idempotency) | Idempotency keys for safe retries of mutating operations |
| [`log`](#log) | Structured request and response logging |
| [`metrics`](#metrics) | Statistics capture: per-operation counters and latency |
| [`paging`](#paging) | Pagination signals for list operations |
| [`ratelimit`](#ratelimit) | Client-side rate limiting via a token bucket |
| [`retry`](#retry) | Automatic retry of transient failures with exponential backoff |
| [`telemetry`](#telemetry) | Distributed tracing spans with W3C trace-context propagation |
| [`test`](#test) | In-memory mock transport for testing without a live server |
| [`timeout`](#timeout) | Per-request timeout with transport abort |

> **Order matters for `ratelimit`, `retry`, `timeout`.** These wrap the
> transport, so each one wraps whatever is already installed: the order you
> activate them in IS the nesting order. Activating them as an ordered list
> rather than a map is what fixes that order.

### audit

Structured audit trail of operations.

| Option | Default |
|---|---|
| `active` | `false` |
| `actor` | `'anonymous'` |
| `max` | `1000` |

Set `feature.audit.active` to enable it, then override any of the options above.

### clienttrack

Client identity and per-request correlation headers.

| Option | Default |
|---|---|
| `active` | `false` |
| `clientVersion` | `'0.0.1'` |

Set `feature.clienttrack.active` to enable it, then override any of the options above.

### debug

Request/response capture ring buffer for debugging.

| Option | Default |
|---|---|
| `active` | `false` |
| `max` | `100` |
| `redact` | `['authorization', 'cookie', 'set-cookie', 'api-key', 'apikey', 'x-api-key', 'idempotency-key']` |

Set `feature.debug.active` to enable it, then override any of the options above.

### idempotency

Idempotency keys for safe retries of mutating operations.

| Option | Default |
|---|---|
| `active` | `false` |
| `header` | `'Idempotency-Key'` |
| `methods` | `['POST', 'PUT', 'PATCH', 'DELETE']` |
| `ops` | `['create', 'update', 'remove']` |

Set `feature.idempotency.active` to enable it, then override any of the options above.

### log

Structured request and response logging.

| Option | Default |
|---|---|
| `active` | `true` |

Set `feature.log.active` to enable it, then override any of the options above.

### metrics

Statistics capture: per-operation counters and latency.

| Option | Default |
|---|---|
| `active` | `false` |

Set `feature.metrics.active` to enable it, then override any of the options above.

### paging

Pagination signals for list operations.

| Option | Default |
|---|---|
| `active` | `false` |
| `afterVar` | `'after'` |
| `cursorParam` | `'cursor'` |
| `firstVar` | `'first'` |
| `limitParam` | `'limit'` |
| `pageParam` | `'page'` |
| `startPage` | `1` |

Set `feature.paging.active` to enable it, then override any of the options above.

### ratelimit

Client-side rate limiting via a token bucket.

| Option | Default |
|---|---|
| `active` | `false` |
| `burst` | `5` |
| `rate` | `5` |

Set `feature.ratelimit.active` to enable it, then override any of the options above.

`ratelimit` wraps the transport, so its position among the other
transport features decides what it sees. A feature activated later wraps one
activated earlier.

### retry

Automatic retry of transient failures with exponential backoff.

| Option | Default |
|---|---|
| `active` | `false` |
| `factor` | `2` |
| `maxDelay` | `2000` |
| `minDelay` | `50` |
| `retries` | `2` |
| `statuses` | `[408, 425, 429, 500, 502, 503, 504]` |

Set `feature.retry.active` to enable it, then override any of the options above.

`retry` wraps the transport, so its position among the other
transport features decides what it sees. A feature activated later wraps one
activated earlier.

### telemetry

Distributed tracing spans with W3C trace-context propagation.

| Option | Default |
|---|---|
| `active` | `false` |

Set `feature.telemetry.active` to enable it, then override any of the options above.

### test

In-memory mock transport for testing without a live server.

| Option | Default |
|---|---|
| `active` | `false` |

Set `feature.test.active` to enable it, then override any of the options above.

### timeout

Per-request timeout with transport abort.

| Option | Default |
|---|---|
| `active` | `false` |
| `ms` | `30000` |

Set `feature.timeout.active` to enable it, then override any of the options above.

`timeout` wraps the transport, so its position among the other
transport features decides what it sees. A feature activated later wraps one
activated earlier.


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

- **AuditFeature**: Structured audit trail of operations
- **ClienttrackFeature**: Client identity and per-request correlation headers
- **DebugFeature**: Request/response capture ring buffer for debugging
- **IdempotencyFeature**: Idempotency keys for safe retries of mutating operations
- **LogFeature**: Structured request and response logging
- **MetricsFeature**: Statistics capture: per-operation counters and latency
- **PagingFeature**: Pagination signals for list operations
- **RatelimitFeature**: Client-side rate limiting via a token bucket
- **RetryFeature**: Automatic retry of transient failures with exponential backoff
- **TelemetryFeature**: Distributed tracing spans with W3C trace-context propagation
- **TestFeature**: In-memory mock transport for testing without a live server
- **TimeoutFeature**: Per-request timeout with transport abort

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

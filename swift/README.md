# BluefinTecsUserBackoffice Swift SDK



The Swift SDK for the BluefinTecsUserBackoffice API — an entity-oriented client following idiomatic Swift conventions.

The SDK exposes the API as capitalised, semantic **Entities** — for example `client.OutputActivateDigitalModule()` — each
carrying a small, uniform set of operations (`load`, `create`) instead of raw URL
paths and query strings. You work with named resources and verbs, which
keeps the cognitive load low.

> Other languages, the CLI, and MCP server live alongside this one — see
> the [top-level README](../README.md).


## Install
This package is not yet published to a SwiftPM registry. The generated SDK
is a dependency-free SwiftPM package (Foundation only, plus the vendored
Voxgig Struct port). Depend on it from the GitHub release tag
(`swift/vX.Y.Z`, see [Releases](https://github.com/voxgig-sdk/bluefin-tecs-user-backoffice-sdk/releases)) by adding it to
your `Package.swift`:

```swift
dependencies: [
    // From the git release tag:
    .package(url: "<repo-url>", exact: "0.0.1"),
],
```

Or build from a source checkout with SwiftPM:

```bash
cd swift && swift build
```


## Tutorial: your first API call

This tutorial walks through creating a client, listing entities, and
loading a specific record.

### 1. Create a client

```swift
import BluefinTecsUserBackofficeSdk

let options = VMap()
options.entries["apikey"] = .string(
    ProcessInfo.processInfo.environment["BLUEFIN_TECS_USER_BACKOFFICE_APIKEY"] ?? "")
let client = BluefinTecsUserBackofficeSDK(options)
```

### 4. Create, update, and remove

```swift
// Create — returns the ENTITY (call data() for the record)
let created = try client.OutputActivateDigitalModule().create(VMap([("responseCode", .int(1)), ("responseMessage", .string("example_responseMessage"))]), nil)

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

```swift
let result = client.direct(VMap([
    ("path", .string("/api/resource/{id}")),
    ("method", .string("GET")),
    ("params", .map([("id", .string("example"))])),
]))

if result.entries["ok"] == .bool(true) {
    print(result.entries["status"] ?? .noval)  // 200
    print(result.entries["data"] ?? .noval)     // response body
}
else {
    // A non-2xx response carries status + data (the error body); a
    // transport-level failure carries err instead. Only one is present, so
    // an absent key simply reads as .noval.
    print(result.entries["status"] ?? .noval, result.entries["err"] ?? .noval)
}
```

### Prepare a request without sending it

```swift
// prepare() returns the fetch definition and throws on error.
let fetchdef = try client.prepare(VMap([
    ("path", .string("/api/resource/{id}")),
    ("method", .string("DELETE")),
    ("params", .map([("id", .string("example"))])),
]))

print(fetchdef.entries["url"] ?? .noval)
print(fetchdef.entries["method"] ?? .noval)
print(fetchdef.entries["headers"] ?? .noval)
```

### Use test mode

Create a mock client for unit testing — no server required:

```swift
let client = BluefinTecsUserBackofficeSDK.testSDK(nil, nil)

// Entity ops return the ENTITY and throws on error;
// call data() for the record.
let outputGetLogo = try client.OutputGetLogo().load(nil, nil)
// outputGetLogo holds the mock response record
print(outputGetLogo)
```

### Use a custom fetch function

Replace the HTTP transport with your own `SystemFetch` closure:

```swift
let fetch: SystemFetch = { url, _ in
    let m = VMap()
    m.entries["status"] = .int(200)
    m.entries["statusText"] = .string("OK")
    m.entries["headers"] = .map(VMap())
    m.entries["json"] = .nat({ () -> Value in .map(VMap([("id", .string("mock01"))])) } as NativeCall0)
    return .map(m)
}

let system = VMap()
system.entries["fetch"] = .nat(fetch)
let options = VMap()
options.entries["base"] = .string("http://localhost:8080")
options.entries["system"] = .map(system)
let client = BluefinTecsUserBackofficeSDK(options)
```

### Run live tests

Create a `.env.local` file at the project root:

```
BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE=TRUE
BLUEFIN_TECS_USER_BACKOFFICE_APIKEY=<your-key>
```

Then run:

```bash
cd swift && make test
```


## Reference

### BluefinTecsUserBackofficeSDK

```swift
let client = BluefinTecsUserBackofficeSDK(options)
```

Creates a new SDK client. `options` is a `VMap` of `Value`.

| Option | Type | Description |
| --- | --- | --- |
| `apikey` | `String` | API key for authentication. |
| `base` | `String` | Base URL of the API server. |
| `prefix` | `String` | URL path prefix prepended to all requests. |
| `suffix` | `String` | URL path suffix appended to all requests. |
| `feature` | `VMap` | Feature activation flags. |
| `extend` | `VList` | Additional Feature instances to load. |
| `system` | `VMap` | System overrides (e.g. custom `fetch` function). |

### testSDK

```swift
let client = BluefinTecsUserBackofficeSDK.testSDK(testopts, sdkopts)
```

Creates a test-mode client with mock transport. Both arguments may be `nil`.

### BluefinTecsUserBackofficeSDK methods

| Method | Signature | Description |
| --- | --- | --- |
| `optionsMap` | `() -> VMap` | Deep copy of current SDK options. |
| `getUtility` | `() -> Utility` | Copy of the SDK utility object. |
| `prepare` | `(fetchargs) throws -> VMap` | Build an HTTP request definition without sending. Throws on error. |
| `direct` | `(fetchargs) -> VMap` | Build and send an HTTP request. Returns a result map (branch on `ok`). |
| `OutputActivateDigitalModule` | `(entopts) -> BluefinTecsUserBackofficeEntityBase` | Create an OutputActivateDigitalModule entity instance. |
| `OutputActivatePortalModule` | `(entopts) -> BluefinTecsUserBackofficeEntityBase` | Create an OutputActivatePortalModule entity instance. |
| `OutputActivateStoreModule` | `(entopts) -> BluefinTecsUserBackofficeEntityBase` | Create an OutputActivateStoreModule entity instance. |
| `OutputActivateUser` | `(entopts) -> BluefinTecsUserBackofficeEntityBase` | Create an OutputActivateUser entity instance. |
| `OutputAssignRole` | `(entopts) -> BluefinTecsUserBackofficeEntityBase` | Create an OutputAssignRole entity instance. |
| `OutputChangeLogo` | `(entopts) -> BluefinTecsUserBackofficeEntityBase` | Create an OutputChangeLogo entity instance. |
| `OutputCreateMandator` | `(entopts) -> BluefinTecsUserBackofficeEntityBase` | Create an OutputCreateMandator entity instance. |
| `OutputCreateServiceUser` | `(entopts) -> BluefinTecsUserBackofficeEntityBase` | Create an OutputCreateServiceUser entity instance. |
| `OutputDeactivateUser` | `(entopts) -> BluefinTecsUserBackofficeEntityBase` | Create an OutputDeactivateUser entity instance. |
| `OutputGetKycDocument` | `(entopts) -> BluefinTecsUserBackofficeEntityBase` | Create an OutputGetKycDocument entity instance. |
| `OutputGetLogo` | `(entopts) -> BluefinTecsUserBackofficeEntityBase` | Create an OutputGetLogo entity instance. |
| `OutputListOfAvailableRole` | `(entopts) -> BluefinTecsUserBackofficeEntityBase` | Create an OutputListOfAvailableRole entity instance. |
| `OutputListOfMandator` | `(entopts) -> BluefinTecsUserBackofficeEntityBase` | Create an OutputListOfMandator entity instance. |
| `OutputListOfModule` | `(entopts) -> BluefinTecsUserBackofficeEntityBase` | Create an OutputListOfModule entity instance. |
| `OutputListOfRoleGroup` | `(entopts) -> BluefinTecsUserBackofficeEntityBase` | Create an OutputListOfRoleGroup entity instance. |
| `OutputListOfTransactionsHistory` | `(entopts) -> BluefinTecsUserBackofficeEntityBase` | Create an OutputListOfTransactionsHistory entity instance. |
| `OutputListOfUser` | `(entopts) -> BluefinTecsUserBackofficeEntityBase` | Create an OutputListOfUser entity instance. |
| `OutputProvideCredential` | `(entopts) -> BluefinTecsUserBackofficeEntityBase` | Create an OutputProvideCredential entity instance. |
| `OutputRegisterUser` | `(entopts) -> BluefinTecsUserBackofficeEntityBase` | Create an OutputRegisterUser entity instance. |
| `OutputRemoveRole` | `(entopts) -> BluefinTecsUserBackofficeEntityBase` | Create an OutputRemoveRole entity instance. |
| `OutputResendLink` | `(entopts) -> BluefinTecsUserBackofficeEntityBase` | Create an OutputResendLink entity instance. |
| `OutputResetPassword` | `(entopts) -> BluefinTecsUserBackofficeEntityBase` | Create an OutputResetPassword entity instance. |
| `OutputUpdateConsumer` | `(entopts) -> BluefinTecsUserBackofficeEntityBase` | Create an OutputUpdateConsumer entity instance. |
| `OutputUpdateProfile` | `(entopts) -> BluefinTecsUserBackofficeEntityBase` | Create an OutputUpdateProfile entity instance. |
| `Version` | `(entopts) -> BluefinTecsUserBackofficeEntityBase` | Create a Version entity instance. |

### Entity interface

All entities share the same interface.

| Method | Signature | Description |
| --- | --- | --- |
| `load` | `(reqmatch, ctrl) throws -> Value` | Load a single entity by match criteria. Throws on error. |
| `create` | `(reqdata, ctrl) throws -> Value` | Create a new entity. Throws on error. |
| `data` | `(newdata?) -> Value` | Get or set entity data. |
| `matchv` | `(newmatch?) -> Value` | Get or set entity match criteria. |
| `make` | `() -> Entity` | Create a new instance with the same options. |
| `getName` | `() -> String` | Return the entity name. |

### Result shape

Entity operations return the ENTITY (call data() for the record) (a `Value` map for
single-entity ops, a `Value` list for `list`) and throw on error. Wrap
calls in `do`/`catch` to handle failures.

The `direct()` escape hatch never throws — it returns a result `VMap` you
branch on via `result.entries["ok"]`:

| Key | Type | Description |
| --- | --- | --- |
| `ok` | `Bool` | `true` if the HTTP status is 2xx. |
| `status` | `Int` | HTTP status code. |
| `headers` | `VMap` | Response headers. |
| `data` | `Value` | Parsed JSON response body. |

On error, `ok` is `false` and `err` contains the error value.

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

Create an instance: `let outputActivateDigitalModule = client.OutputActivateDigitalModule()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |

#### Example: Create

```swift
let outputActivateDigitalModule = try client.OutputActivateDigitalModule().create(VMap([
]), nil)
```


### OutputActivatePortalModule

Create an instance: `let outputActivatePortalModule = client.OutputActivatePortalModule()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clientSecret` | `String` |  |
| `notificationEmail` | `String` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |

#### Example: Create

```swift
let outputActivatePortalModule = try client.OutputActivatePortalModule().create(VMap([
    ("clientSecret", .string("example_clientSecret")),  // String
    ("notificationEmail", .string("example_notificationEmail"))  // String
]), nil)
```


### OutputActivateStoreModule

Create an instance: `let outputActivateStoreModule = client.OutputActivateStoreModule()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |

#### Example: Create

```swift
let outputActivateStoreModule = try client.OutputActivateStoreModule().create(VMap([
]), nil)
```


### OutputActivateUser

Create an instance: `let outputActivateUser = client.OutputActivateUser()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumerUUID` | `String` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |

#### Example: Create

```swift
let outputActivateUser = try client.OutputActivateUser().create(VMap([
]), nil)
```


### OutputAssignRole

Create an instance: `let outputAssignRole = client.OutputAssignRole()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumerUUID` | `String` | Unique identifier of the consumer (user) to whom the role(s) will be assigned. |
| `responseCode` | `Int` | Response code: 0 indicates success; any non-zero value indicates an error. |
| `responseMessage` | `String` | A human-readable message providing additional details about the outcome. |
| `roles` | `[Value]` | List of roles to assign to the consumer. |

#### Example: Create

```swift
let outputAssignRole = try client.OutputAssignRole().create(VMap([
    ("consumerUUID", .string("example_consumerUUID")),  // String
    ("roles", .list([]))  // [Value]
]), nil)
```


### OutputChangeLogo

Create an instance: `let outputChangeLogo = client.OutputChangeLogo()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `contentAsBase64` | `String` | The content of the image as base64 encoded string |
| `mimeType` | `String` | The MIME type of the image |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |

#### Example: Create

```swift
let outputChangeLogo = try client.OutputChangeLogo().create(VMap([
    ("contentAsBase64", .string("example_contentAsBase64")),  // String
    ("mimeType", .string("example_mimeType"))  // String
]), nil)
```


### OutputCreateMandator

Create an instance: `let outputCreateMandator = client.OutputCreateMandator()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

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

```swift
let outputCreateMandator = try client.OutputCreateMandator().create(VMap([
    ("email", .string("example_email")),  // String
    ("login", .string("example_login")),  // String
    ("phone", .string("example_phone"))  // String
]), nil)
```


### OutputCreateServiceUser

Create an instance: `let outputCreateServiceUser = client.OutputCreateServiceUser()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `mandatorName` | `String` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |

#### Example: Create

```swift
let outputCreateServiceUser = try client.OutputCreateServiceUser().create(VMap([
    ("mandatorName", .string("example_mandatorName"))  // String
]), nil)
```


### OutputDeactivateUser

Create an instance: `let outputDeactivateUser = client.OutputDeactivateUser()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumerUUID` | `String` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |

#### Example: Create

```swift
let outputDeactivateUser = try client.OutputDeactivateUser().create(VMap([
]), nil)
```


### OutputGetKycDocument

Create an instance: `let outputGetKycDocument = client.OutputGetKycDocument()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `caseID` | `String` |  |
| `encodedDataBase64` | `String` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |

#### Example: Create

```swift
let outputGetKycDocument = try client.OutputGetKycDocument().create(VMap([
]), nil)
```


### OutputGetLogo

Create an instance: `let outputGetLogo = client.OutputGetLogo()`

#### Operations

| Method | Description |
| --- | --- |
| `load(match, nil)` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `contentAsBase64` | `String` | The content of the image as base64 encoded string |
| `mimeType` | `String` | The MIME type of the image |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |

#### Example: Load

```swift
let outputGetLogo = try client.OutputGetLogo().load(nil, nil)
```


### OutputListOfAvailableRole

Create an instance: `let outputListOfAvailableRole = client.OutputListOfAvailableRole()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `availableRoles` | `[Value]` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |

#### Example: Create

```swift
let outputListOfAvailableRole = try client.OutputListOfAvailableRole().create(VMap([
]), nil)
```


### OutputListOfMandator

Create an instance: `let outputListOfMandator = client.OutputListOfMandator()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `filter` | `VMap` |  |
| `list` | `[Value]` |  |
| `pagination` | `VMap` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |
| `sorting` | `VMap` |  |

#### Example: Create

```swift
let outputListOfMandator = try client.OutputListOfMandator().create(VMap([
]), nil)
```


### OutputListOfModule

Create an instance: `let outputListOfModule = client.OutputListOfModule()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `list` | `[Value]` |  |
| `pagination` | `VMap` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |

#### Example: Create

```swift
let outputListOfModule = try client.OutputListOfModule().create(VMap([
]), nil)
```


### OutputListOfRoleGroup

Create an instance: `let outputListOfRoleGroup = client.OutputListOfRoleGroup()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `filter` | `VMap` |  |
| `groupRoles` | `[Value]` |  |
| `pagination` | `VMap` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |
| `sorting` | `VMap` |  |

#### Example: Create

```swift
let outputListOfRoleGroup = try client.OutputListOfRoleGroup().create(VMap([
]), nil)
```


### OutputListOfTransactionsHistory

Create an instance: `let outputListOfTransactionsHistory = client.OutputListOfTransactionsHistory()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `filter` | `VMap` |  |
| `list` | `[Value]` |  |
| `pagination` | `VMap` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |
| `sorting` | `VMap` |  |

#### Example: Create

```swift
let outputListOfTransactionsHistory = try client.OutputListOfTransactionsHistory().create(VMap([
]), nil)
```


### OutputListOfUser

Create an instance: `let outputListOfUser = client.OutputListOfUser()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `filter` | `VMap` |  |
| `list` | `[Value]` |  |
| `pagination` | `VMap` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |
| `sorting` | `VMap` |  |

#### Example: Create

```swift
let outputListOfUser = try client.OutputListOfUser().create(VMap([
]), nil)
```


### OutputProvideCredential

Create an instance: `let outputProvideCredential = client.OutputProvideCredential()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `mandatorName` | `String` |  |
| `password` | `String` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |
| `username` | `String` |  |

#### Example: Create

```swift
let outputProvideCredential = try client.OutputProvideCredential().create(VMap([
    ("mandatorName", .string("example_mandatorName"))  // String
]), nil)
```


### OutputRegisterUser

Create an instance: `let outputRegisterUser = client.OutputRegisterUser()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

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
| `responseCode` | `Int` | Response code (0 indicates success; non-zero indicates an error). |
| `responseMessage` | `String` | Human-readable response message. |
| `salutation` | `String` | User's salutation (e.g., Mr., Ms.). |
| `state` | `String` | User's state or region. |
| `street1` | `String` | Primary address line. |
| `street2` | `String` | Secondary address line. |
| `zip` | `String` | Postal code. |

#### Example: Create

```swift
let outputRegisterUser = try client.OutputRegisterUser().create(VMap([
    ("email", .string("example_email"))  // String
]), nil)
```


### OutputRemoveRole

Create an instance: `let outputRemoveRole = client.OutputRemoveRole()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumerUUID` | `String` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |
| `roles` | `[Value]` |  |

#### Example: Create

```swift
let outputRemoveRole = try client.OutputRemoveRole().create(VMap([
]), nil)
```


### OutputResendLink

Create an instance: `let outputResendLink = client.OutputResendLink()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `businessRegistrationNumber` | `String` |  |
| `consumerUUID` | `String` |  |
| `emailConfirmationCode` | `String` |  |
| `phoneNumber` | `String` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |

#### Example: Create

```swift
let outputResendLink = try client.OutputResendLink().create(VMap([
    ("consumerUUID", .string("example_consumerUUID"))  // String
]), nil)
```


### OutputResetPassword

Create an instance: `let outputResetPassword = client.OutputResetPassword()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumerUuid` | `String` |  |
| `phoneNumber` | `String` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |

#### Example: Create

```swift
let outputResetPassword = try client.OutputResetPassword().create(VMap([
]), nil)
```


### OutputUpdateConsumer

Create an instance: `let outputUpdateConsumer = client.OutputUpdateConsumer()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

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
| `kycPassed` | `Bool` |  |
| `lastName` | `String` |  |
| `nationality` | `String` |  |
| `passportNumber` | `String` |  |
| `phoneNumber` | `String` |  |
| `placeOfBirth` | `String` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |
| `state` | `String` |  |
| `street1` | `String` |  |
| `street2` | `String` |  |
| `transactionhistory_id` | `String` |  |
| `zip` | `String` |  |

#### Example: Create

```swift
let outputUpdateConsumer = try client.OutputUpdateConsumer().create(VMap([
    ("consumerUuid", .string("example_consumerUuid"))  // String
]), nil)
```


### OutputUpdateProfile

Create an instance: `let outputUpdateProfile = client.OutputUpdateProfile()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, nil)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumerLanguage` | `String` |  |
| `email` | `String` |  |
| `firstName` | `String` |  |
| `lastName` | `String` |  |
| `phoneNumber` | `String` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |

#### Example: Create

```swift
let outputUpdateProfile = try client.OutputUpdateProfile().create(VMap([
]), nil)
```


### Version

Create an instance: `let version = client.Version()`

#### Operations

| Method | Description |
| --- | --- |
| `load(match, nil)` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `appName` | `String` |  |
| `buildDate` | `String` |  |
| `version` | `String` |  |

#### Example: Load

```swift
let version = try client.Version().load(nil, nil)
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

### Data as loose values

The Swift SDK uses a loose object model — the vendored `Value` enum
(with `VMap` / `VList` wrappers) throughout — rather than a bespoke typed
struct per endpoint. This mirrors the dynamic nature of the API and keeps the
SDK flexible: no regeneration is needed when the API schema changes.

Use the `.asMap` / `.asList` / `.asString` accessors to safely coerce a
`Value` to a concrete Swift type (each returns `nil` on a type mismatch).
A `BluefinTecsUserBackofficeTypes.swift` file of reference `struct` types is also
generated for editor documentation.

### Project structure

```
swift/
├── Package.swift                     -- SwiftPM manifest (zero runtime deps)
├── Sources/ProjectNameSDK/
│   ├── core/                         -- Main client, config, entity base, error type
│   ├── entity/                       -- Generated entity clients
│   ├── feature/                      -- Built-in features (Base, Test, Log, ...)
│   ├── utility/                      -- Utility functions
│   └── Struct/                       -- Vendored Voxgig Struct port
└── Tests/ProjectNameSDKTests/        -- Test suites (XCTest)
```

The main client class (`BluefinTecsUserBackofficeSDK`, under `Sources/ProjectNameSDK/core`)
exposes the entity accessors. Reference entity or utility types directly only
when needed. The SDK is dependency-free: JSON parsing is the vendored
`Struct/JSON.swift`, HTTP transport is Foundation's `URLSession`, and the
struct library is inlined under `Struct/`.

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

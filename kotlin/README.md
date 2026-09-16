# BluefinTecsUserBackoffice Kotlin SDK



The Kotlin SDK for the BluefinTecsUserBackoffice API — an entity-oriented client following idiomatic Kotlin conventions.

The SDK exposes the API as capitalised, semantic **Entities** — for example `client.outputActivateDigitalModule(null)` — each
carrying a small, uniform set of operations (`load`, `create`) instead of raw URL
paths and query strings. You work with named resources and verbs, which
keeps the cognitive load low.

> Other languages, the CLI, and MCP server live alongside this one — see
> the [top-level README](../README.md).


## Install
This package is not yet published to Maven Central. Install it from the GitHub
release tag (`kotlin/vX.Y.Z`, see [Releases](https://github.com/voxgig-sdk/bluefin-tecs-user-backoffice-sdk/releases)) or
from a source checkout — build the library with Gradle:

```bash
cd kotlin && gradle build
```


## Tutorial: your first API call

This tutorial walks through creating a client, listing entities, and
loading a specific record.

### 1. Create a client

```kotlin
import voxgig.bluefintecsuserbackofficesdk.core.BluefinTecsUserBackofficeSDK

val client = BluefinTecsUserBackofficeSDK(mutableMapOf<String, Any?>(
    "apikey" to System.getenv("BLUEFIN_TECS_USER_BACKOFFICE_APIKEY"),
))
```

### 4. Create, update, and remove

```kotlin
// Create — returns the ENTITY (call data() for the record)
val created = client.outputActivateDigitalModule(null).create(mutableMapOf<String, Any?>("responseCode" to 1L, "responseMessage" to "example_responseMessage"), null)

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

```kotlin
val result = client.direct(mutableMapOf<String, Any?>(
    "path" to "/api/resource/{id}",
    "method" to "GET",
    "params" to mapOf("id" to "example")))

if (result["ok"] == true) {
    println(result["status"])  // 200
    println(result["data"])    // response body
}
else {
    // A non-2xx response carries status + data (the error body); a
    // transport-level failure carries err instead. Only one is present, so
    // an absent key simply reads as null.
    println("" + result["status"] + " " + result["err"])
}
```

### Prepare a request without sending it

```kotlin
// prepare() returns the fetch definition and raises on error.
val fetchdef = client.prepare(mutableMapOf<String, Any?>(
    "path" to "/api/resource/{id}",
    "method" to "DELETE",
    "params" to mapOf("id" to "example")))

println(fetchdef["url"])
println(fetchdef["method"])
println(fetchdef["headers"])
```

### Use test mode

Create a mock client for unit testing — no server required:

```kotlin
val client = BluefinTecsUserBackofficeSDK.testSDK(null, null)

// Entity ops return the ENTITY and raises on error;
// call data() for the record.
val outputGetLogo = client.outputGetLogo(null).load(null, null)
// outputGetLogo holds the mock response record
println(outputGetLogo)
```

### Use a custom fetch function

Replace the HTTP transport with your own `BiFunction`:

```kotlin
val mockFetch = java.util.function.BiFunction<String, MutableMap<String, Any?>, Any?> { url, init ->
    mutableMapOf<String, Any?>(
        "status" to 200,
        "statusText" to "OK",
        "headers" to mutableMapOf<String, Any?>(),
        "json" to java.util.function.Supplier<Any?> { mapOf("id" to "mock01") },
    )
}

val client = BluefinTecsUserBackofficeSDK(mutableMapOf<String, Any?>(
    "base" to "http://localhost:8080",
    "system" to mapOf("fetch" to mockFetch),
))
```

### Run live tests

Create a `.env.local` file at the project root:

```
BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE=TRUE
BLUEFIN_TECS_USER_BACKOFFICE_APIKEY=<your-key>
```

Then run:

```bash
cd kotlin && gradle test
```


## Reference

### BluefinTecsUserBackofficeSDK

```kotlin
val client = BluefinTecsUserBackofficeSDK(options)
```

Creates a new SDK client. `options` is a `MutableMap<String, Any?>`.

| Option | Type | Description |
| --- | --- | --- |
| `apikey` | `String` | API key for authentication. |
| `base` | `String` | Base URL of the API server. |
| `prefix` | `String` | URL path prefix prepended to all requests. |
| `suffix` | `String` | URL path suffix appended to all requests. |
| `feature` | `Map` | Feature activation flags. |
| `extend` | `List` | Additional Feature instances to load. |
| `system` | `Map` | System overrides (e.g. custom `fetch` function). |

### testSDK

```kotlin
val client = BluefinTecsUserBackofficeSDK.testSDK(testopts, sdkopts)
```

Creates a test-mode client with mock transport. Both arguments may be `null`.

### BluefinTecsUserBackofficeSDK methods

| Method | Signature | Description |
| --- | --- | --- |
| `optionsMap` | `() -> MutableMap` | Deep copy of current SDK options. |
| `getUtility` | `() -> Utility` | Copy of the SDK utility object. |
| `prepare` | `(fetchargs) -> MutableMap` | Build an HTTP request definition without sending. Raises on error. |
| `direct` | `(fetchargs) -> MutableMap` | Build and send an HTTP request. Returns a result map (branch on `ok`). |
| `outputActivateDigitalModule` | `(entopts) -> SdkEntity` | Create an OutputActivateDigitalModule entity instance. |
| `outputActivatePortalModule` | `(entopts) -> SdkEntity` | Create an OutputActivatePortalModule entity instance. |
| `outputActivateStoreModule` | `(entopts) -> SdkEntity` | Create an OutputActivateStoreModule entity instance. |
| `outputActivateUser` | `(entopts) -> SdkEntity` | Create an OutputActivateUser entity instance. |
| `outputAssignRole` | `(entopts) -> SdkEntity` | Create an OutputAssignRole entity instance. |
| `outputChangeLogo` | `(entopts) -> SdkEntity` | Create an OutputChangeLogo entity instance. |
| `outputCreateMandator` | `(entopts) -> SdkEntity` | Create an OutputCreateMandator entity instance. |
| `outputCreateServiceUser` | `(entopts) -> SdkEntity` | Create an OutputCreateServiceUser entity instance. |
| `outputDeactivateUser` | `(entopts) -> SdkEntity` | Create an OutputDeactivateUser entity instance. |
| `outputGetKycDocument` | `(entopts) -> SdkEntity` | Create an OutputGetKycDocument entity instance. |
| `outputGetLogo` | `(entopts) -> SdkEntity` | Create an OutputGetLogo entity instance. |
| `outputListOfAvailableRole` | `(entopts) -> SdkEntity` | Create an OutputListOfAvailableRole entity instance. |
| `outputListOfMandator` | `(entopts) -> SdkEntity` | Create an OutputListOfMandator entity instance. |
| `outputListOfModule` | `(entopts) -> SdkEntity` | Create an OutputListOfModule entity instance. |
| `outputListOfRoleGroup` | `(entopts) -> SdkEntity` | Create an OutputListOfRoleGroup entity instance. |
| `outputListOfTransactionsHistory` | `(entopts) -> SdkEntity` | Create an OutputListOfTransactionsHistory entity instance. |
| `outputListOfUser` | `(entopts) -> SdkEntity` | Create an OutputListOfUser entity instance. |
| `outputProvideCredential` | `(entopts) -> SdkEntity` | Create an OutputProvideCredential entity instance. |
| `outputRegisterUser` | `(entopts) -> SdkEntity` | Create an OutputRegisterUser entity instance. |
| `outputRemoveRole` | `(entopts) -> SdkEntity` | Create an OutputRemoveRole entity instance. |
| `outputResendLink` | `(entopts) -> SdkEntity` | Create an OutputResendLink entity instance. |
| `outputResetPassword` | `(entopts) -> SdkEntity` | Create an OutputResetPassword entity instance. |
| `outputUpdateConsumer` | `(entopts) -> SdkEntity` | Create an OutputUpdateConsumer entity instance. |
| `outputUpdateProfile` | `(entopts) -> SdkEntity` | Create an OutputUpdateProfile entity instance. |
| `version` | `(entopts) -> SdkEntity` | Create a Version entity instance. |

### Entity interface

All entities share the same interface.

| Method | Signature | Description |
| --- | --- | --- |
| `load` | `(reqmatch, ctrl) -> Any?` | Load a single entity by match criteria. Raises on error. |
| `create` | `(reqdata, ctrl) -> Any?` | Create a new entity. Raises on error. |
| `data` | `(vararg newdata) -> Any?` | Get or set entity data. |
| `match` | `(vararg newmatch) -> Any?` | Get or set entity match criteria. |
| `make` | `() -> Entity` | Create a new instance with the same options. |
| `name` | `val: String` | The entity name. |

### Result shape

Entity operations return the ENTITY (call data() for the record) (a `Map` for single-entity
ops, an aggregate `List` for `list`) as `Any?` and raise on error. Wrap
calls in `try`/`catch` to handle failures.

The `direct()` escape hatch never raises — it returns a result
`MutableMap<String, Any?>` you branch on via `result["ok"]`:

| Key | Type | Description |
| --- | --- | --- |
| `ok` | `Boolean` | `true` if the HTTP status is 2xx. |
| `status` | `Int` | HTTP status code. |
| `headers` | `Map` | Response headers. |
| `data` | `Any?` | Parsed JSON response body. |

On error, `ok` is `false` and `err` contains the error value.

### Entities

#### OutputActivateDigitalModule

| Field | Description |
| --- | --- |
| `responseCode` |  |
| `responseMessage` |  |

Operations: create.

API path: `/activateDigitalModule`

#### OutputActivatePortalModule

| Field | Description |
| --- | --- |
| `clientSecret` |  |
| `notificationEmail` |  |
| `responseCode` |  |
| `responseMessage` |  |

Operations: create.

API path: `/activateMerchantPortalModule`

#### OutputActivateStoreModule

| Field | Description |
| --- | --- |
| `responseCode` |  |
| `responseMessage` |  |

Operations: create.

API path: `/activateAppStoreModule`

#### OutputActivateUser

| Field | Description |
| --- | --- |
| `consumerUUID` |  |
| `responseCode` |  |
| `responseMessage` |  |

Operations: create.

API path: `/activateUser`

#### OutputAssignRole

| Field | Description |
| --- | --- |
| `consumerUUID` | Unique identifier of the consumer (user) to whom the role(s) will be assigned. |
| `responseCode` | Response code: 0 indicates success; any non-zero value indicates an error. |
| `responseMessage` | A human-readable message providing additional details about the outcome. |
| `roles` | List of roles to assign to the consumer. |

Operations: create.

API path: `/assignRoles`

#### OutputChangeLogo

| Field | Description |
| --- | --- |
| `contentAsBase64` | The content of the image as base64 encoded string |
| `mimeType` | The MIME type of the image |
| `responseCode` |  |
| `responseMessage` |  |

Operations: create.

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

Operations: create.

API path: `/createMandator`

#### OutputCreateServiceUser

| Field | Description |
| --- | --- |
| `mandatorName` |  |
| `responseCode` |  |
| `responseMessage` |  |

Operations: create.

API path: `/createServiceUser`

#### OutputDeactivateUser

| Field | Description |
| --- | --- |
| `consumerUUID` |  |
| `responseCode` |  |
| `responseMessage` |  |

Operations: create.

API path: `/deactivateUser`

#### OutputGetKycDocument

| Field | Description |
| --- | --- |
| `caseID` |  |
| `encodedDataBase64` |  |
| `responseCode` |  |
| `responseMessage` |  |

Operations: create.

API path: `/getKycDocument`

#### OutputGetLogo

| Field | Description |
| --- | --- |
| `contentAsBase64` | The content of the image as base64 encoded string |
| `mimeType` | The MIME type of the image |
| `responseCode` |  |
| `responseMessage` |  |

Operations: load.

API path: `/getLogo`

#### OutputListOfAvailableRole

| Field | Description |
| --- | --- |
| `availableRoles` |  |
| `responseCode` |  |
| `responseMessage` |  |

Operations: create.

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

Operations: create.

API path: `/listOfMandators`

#### OutputListOfModule

| Field | Description |
| --- | --- |
| `list` |  |
| `pagination` |  |
| `responseCode` |  |
| `responseMessage` |  |

Operations: create.

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

Operations: create.

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

Operations: create.

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

Operations: create.

API path: `/listOfUsers`

#### OutputProvideCredential

| Field | Description |
| --- | --- |
| `mandatorName` |  |
| `password` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `username` |  |

Operations: create.

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

Operations: create.

API path: `/registerUser`

#### OutputRemoveRole

| Field | Description |
| --- | --- |
| `consumerUUID` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `roles` |  |

Operations: create.

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

Operations: create.

API path: `/resendLink`

#### OutputResetPassword

| Field | Description |
| --- | --- |
| `consumerUuid` |  |
| `phoneNumber` |  |
| `responseCode` |  |
| `responseMessage` |  |

Operations: create.

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

Operations: create.

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

Operations: create.

API path: `/updateProfile`

#### Version

| Field | Description |
| --- | --- |
| `appName` |  |
| `buildDate` |  |
| `version` |  |

Operations: load.

API path: `/version`



## Entities


### OutputActivateDigitalModule

Create an instance: `val outputActivateDigitalModule = client.outputActivateDigitalModule(null)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `responseCode` | `Long?` |  |
| `responseMessage` | `String?` |  |

#### Example: Create

```kotlin
val outputActivateDigitalModule = client.outputActivateDigitalModule(null).create(mutableMapOf<String, Any?>(
), null)
```


### OutputActivatePortalModule

Create an instance: `val outputActivatePortalModule = client.outputActivatePortalModule(null)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clientSecret` | `String?` |  |
| `notificationEmail` | `String?` |  |
| `responseCode` | `Long?` |  |
| `responseMessage` | `String?` |  |

#### Example: Create

```kotlin
val outputActivatePortalModule = client.outputActivatePortalModule(null).create(mutableMapOf<String, Any?>(
    "clientSecret" to "example_clientSecret",  // String?
    "notificationEmail" to "example_notificationEmail"  // String?
), null)
```


### OutputActivateStoreModule

Create an instance: `val outputActivateStoreModule = client.outputActivateStoreModule(null)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `responseCode` | `Long?` |  |
| `responseMessage` | `String?` |  |

#### Example: Create

```kotlin
val outputActivateStoreModule = client.outputActivateStoreModule(null).create(mutableMapOf<String, Any?>(
), null)
```


### OutputActivateUser

Create an instance: `val outputActivateUser = client.outputActivateUser(null)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumerUUID` | `String?` |  |
| `responseCode` | `Long?` |  |
| `responseMessage` | `String?` |  |

#### Example: Create

```kotlin
val outputActivateUser = client.outputActivateUser(null).create(mutableMapOf<String, Any?>(
), null)
```


### OutputAssignRole

Create an instance: `val outputAssignRole = client.outputAssignRole(null)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumerUUID` | `String?` | Unique identifier of the consumer (user) to whom the role(s) will be assigned. |
| `responseCode` | `Long?` | Response code: 0 indicates success; any non-zero value indicates an error. |
| `responseMessage` | `String?` | A human-readable message providing additional details about the outcome. |
| `roles` | `List<Any?>?` | List of roles to assign to the consumer. |

#### Example: Create

```kotlin
val outputAssignRole = client.outputAssignRole(null).create(mutableMapOf<String, Any?>(
    "consumerUUID" to "example_consumerUUID",  // String?
    "roles" to listOf<Any?>()  // List<Any?>?
), null)
```


### OutputChangeLogo

Create an instance: `val outputChangeLogo = client.outputChangeLogo(null)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `contentAsBase64` | `String?` | The content of the image as base64 encoded string |
| `mimeType` | `String?` | The MIME type of the image |
| `responseCode` | `Long?` |  |
| `responseMessage` | `String?` |  |

#### Example: Create

```kotlin
val outputChangeLogo = client.outputChangeLogo(null).create(mutableMapOf<String, Any?>(
    "contentAsBase64" to "example_contentAsBase64",  // String?
    "mimeType" to "example_mimeType"  // String?
), null)
```


### OutputCreateMandator

Create an instance: `val outputCreateMandator = client.outputCreateMandator(null)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `city` | `String?` |  |
| `country` | `String?` |  |
| `dateOfBirth` | `String?` |  |
| `description` | `String?` |  |
| `driversLicenseNumber` | `String?` |  |
| `email` | `String?` |  |
| `firstName` | `String?` |  |
| `identificationNumber` | `String?` |  |
| `lastName` | `String?` |  |
| `login` | `String?` |  |
| `name` | `String?` |  |
| `passportNumber` | `String?` |  |
| `phone` | `String?` |  |
| `salutation` | `String?` |  |
| `state` | `String?` |  |
| `street1` | `String?` |  |
| `street2` | `String?` |  |
| `zipCode` | `String?` |  |

#### Example: Create

```kotlin
val outputCreateMandator = client.outputCreateMandator(null).create(mutableMapOf<String, Any?>(
    "email" to "example_email",  // String?
    "login" to "example_login",  // String?
    "phone" to "example_phone"  // String?
), null)
```


### OutputCreateServiceUser

Create an instance: `val outputCreateServiceUser = client.outputCreateServiceUser(null)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `mandatorName` | `String?` |  |
| `responseCode` | `Long?` |  |
| `responseMessage` | `String?` |  |

#### Example: Create

```kotlin
val outputCreateServiceUser = client.outputCreateServiceUser(null).create(mutableMapOf<String, Any?>(
    "mandatorName" to "example_mandatorName"  // String?
), null)
```


### OutputDeactivateUser

Create an instance: `val outputDeactivateUser = client.outputDeactivateUser(null)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumerUUID` | `String?` |  |
| `responseCode` | `Long?` |  |
| `responseMessage` | `String?` |  |

#### Example: Create

```kotlin
val outputDeactivateUser = client.outputDeactivateUser(null).create(mutableMapOf<String, Any?>(
), null)
```


### OutputGetKycDocument

Create an instance: `val outputGetKycDocument = client.outputGetKycDocument(null)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `caseID` | `String?` |  |
| `encodedDataBase64` | `String?` |  |
| `responseCode` | `Long?` |  |
| `responseMessage` | `String?` |  |

#### Example: Create

```kotlin
val outputGetKycDocument = client.outputGetKycDocument(null).create(mutableMapOf<String, Any?>(
), null)
```


### OutputGetLogo

Create an instance: `val outputGetLogo = client.outputGetLogo(null)`

#### Operations

| Method | Description |
| --- | --- |
| `load(match, null)` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `contentAsBase64` | `String?` | The content of the image as base64 encoded string |
| `mimeType` | `String?` | The MIME type of the image |
| `responseCode` | `Long?` |  |
| `responseMessage` | `String?` |  |

#### Example: Load

```kotlin
val outputGetLogo = client.outputGetLogo(null).load(null, null)
```


### OutputListOfAvailableRole

Create an instance: `val outputListOfAvailableRole = client.outputListOfAvailableRole(null)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `availableRoles` | `List<Any?>?` |  |
| `responseCode` | `Long?` |  |
| `responseMessage` | `String?` |  |

#### Example: Create

```kotlin
val outputListOfAvailableRole = client.outputListOfAvailableRole(null).create(mutableMapOf<String, Any?>(
), null)
```


### OutputListOfMandator

Create an instance: `val outputListOfMandator = client.outputListOfMandator(null)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `filter` | `Map<String, Any?>?` |  |
| `list` | `List<Any?>?` |  |
| `pagination` | `Map<String, Any?>?` |  |
| `responseCode` | `Long?` |  |
| `responseMessage` | `String?` |  |
| `sorting` | `Map<String, Any?>?` |  |

#### Example: Create

```kotlin
val outputListOfMandator = client.outputListOfMandator(null).create(mutableMapOf<String, Any?>(
), null)
```


### OutputListOfModule

Create an instance: `val outputListOfModule = client.outputListOfModule(null)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `list` | `List<Any?>?` |  |
| `pagination` | `Map<String, Any?>?` |  |
| `responseCode` | `Long?` |  |
| `responseMessage` | `String?` |  |

#### Example: Create

```kotlin
val outputListOfModule = client.outputListOfModule(null).create(mutableMapOf<String, Any?>(
), null)
```


### OutputListOfRoleGroup

Create an instance: `val outputListOfRoleGroup = client.outputListOfRoleGroup(null)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `filter` | `Map<String, Any?>?` |  |
| `groupRoles` | `List<Any?>?` |  |
| `pagination` | `Map<String, Any?>?` |  |
| `responseCode` | `Long?` |  |
| `responseMessage` | `String?` |  |
| `sorting` | `Map<String, Any?>?` |  |

#### Example: Create

```kotlin
val outputListOfRoleGroup = client.outputListOfRoleGroup(null).create(mutableMapOf<String, Any?>(
), null)
```


### OutputListOfTransactionsHistory

Create an instance: `val outputListOfTransactionsHistory = client.outputListOfTransactionsHistory(null)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `filter` | `Map<String, Any?>?` |  |
| `list` | `List<Any?>?` |  |
| `pagination` | `Map<String, Any?>?` |  |
| `responseCode` | `Long?` |  |
| `responseMessage` | `String?` |  |
| `sorting` | `Map<String, Any?>?` |  |

#### Example: Create

```kotlin
val outputListOfTransactionsHistory = client.outputListOfTransactionsHistory(null).create(mutableMapOf<String, Any?>(
), null)
```


### OutputListOfUser

Create an instance: `val outputListOfUser = client.outputListOfUser(null)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `filter` | `Map<String, Any?>?` |  |
| `list` | `List<Any?>?` |  |
| `pagination` | `Map<String, Any?>?` |  |
| `responseCode` | `Long?` |  |
| `responseMessage` | `String?` |  |
| `sorting` | `Map<String, Any?>?` |  |

#### Example: Create

```kotlin
val outputListOfUser = client.outputListOfUser(null).create(mutableMapOf<String, Any?>(
), null)
```


### OutputProvideCredential

Create an instance: `val outputProvideCredential = client.outputProvideCredential(null)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `mandatorName` | `String?` |  |
| `password` | `String?` |  |
| `responseCode` | `Long?` |  |
| `responseMessage` | `String?` |  |
| `username` | `String?` |  |

#### Example: Create

```kotlin
val outputProvideCredential = client.outputProvideCredential(null).create(mutableMapOf<String, Any?>(
    "mandatorName" to "example_mandatorName"  // String?
), null)
```


### OutputRegisterUser

Create an instance: `val outputRegisterUser = client.outputRegisterUser(null)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `city` | `String?` | City where the user resides. |
| `consumerId` | `String?` | User login or unique user identifier. |
| `consumerLanguage` | `String?` | Preferred language for the user (e.g., 'en'). |
| `country` | `String?` | User's country. |
| `dateOfBirth` | `String?` | User's date of birth (expected format: dd.MM.yyyy). |
| `driverLicenceNumber` | `String?` | User's driver's license number. |
| `email` | `String?` | User's email address (must be unique). |
| `firstName` | `String?` | User's first name. |
| `identificationNumber` | `String?` | User's identification number. |
| `lastName` | `String?` | User's last name. |
| `login` | `String?` | User login identifier (should be unique). |
| `module` | `String?` | Module identifier (if applicable). |
| `passportNumber` | `String?` | User's passport number. |
| `phone` | `String?` | User's phone number. |
| `responseCode` | `Long?` | Response code (0 indicates success; non-zero indicates an error). |
| `responseMessage` | `String?` | Human-readable response message. |
| `salutation` | `String?` | User's salutation (e.g., Mr., Ms.). |
| `state` | `String?` | User's state or region. |
| `street1` | `String?` | Primary address line. |
| `street2` | `String?` | Secondary address line. |
| `zip` | `String?` | Postal code. |

#### Example: Create

```kotlin
val outputRegisterUser = client.outputRegisterUser(null).create(mutableMapOf<String, Any?>(
    "email" to "example_email"  // String?
), null)
```


### OutputRemoveRole

Create an instance: `val outputRemoveRole = client.outputRemoveRole(null)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumerUUID` | `String?` |  |
| `responseCode` | `Long?` |  |
| `responseMessage` | `String?` |  |
| `roles` | `List<Any?>?` |  |

#### Example: Create

```kotlin
val outputRemoveRole = client.outputRemoveRole(null).create(mutableMapOf<String, Any?>(
), null)
```


### OutputResendLink

Create an instance: `val outputResendLink = client.outputResendLink(null)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `businessRegistrationNumber` | `String?` |  |
| `consumerUUID` | `String?` |  |
| `emailConfirmationCode` | `String?` |  |
| `phoneNumber` | `String?` |  |
| `responseCode` | `Long?` |  |
| `responseMessage` | `String?` |  |

#### Example: Create

```kotlin
val outputResendLink = client.outputResendLink(null).create(mutableMapOf<String, Any?>(
    "consumerUUID" to "example_consumerUUID"  // String?
), null)
```


### OutputResetPassword

Create an instance: `val outputResetPassword = client.outputResetPassword(null)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumerUuid` | `String?` |  |
| `phoneNumber` | `String?` |  |
| `responseCode` | `Long?` |  |
| `responseMessage` | `String?` |  |

#### Example: Create

```kotlin
val outputResetPassword = client.outputResetPassword(null).create(mutableMapOf<String, Any?>(
), null)
```


### OutputUpdateConsumer

Create an instance: `val outputUpdateConsumer = client.outputUpdateConsumer(null)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `city` | `String?` |  |
| `consumerUuid` | `String?` |  |
| `consumerlanguage` | `String?` |  |
| `country` | `String?` |  |
| `dateOfBirth` | `String?` |  |
| `datetime_created` | `String?` |  |
| `driverLicenceNumber` | `String?` |  |
| `email` | `String?` |  |
| `firstName` | `String?` |  |
| `identificationNumber` | `String?` |  |
| `kycPassed` | `Boolean?` |  |
| `lastName` | `String?` |  |
| `nationality` | `String?` |  |
| `passportNumber` | `String?` |  |
| `phoneNumber` | `String?` |  |
| `placeOfBirth` | `String?` |  |
| `responseCode` | `Long?` |  |
| `responseMessage` | `String?` |  |
| `state` | `String?` |  |
| `street1` | `String?` |  |
| `street2` | `String?` |  |
| `transactionhistory_id` | `String?` |  |
| `zip` | `String?` |  |

#### Example: Create

```kotlin
val outputUpdateConsumer = client.outputUpdateConsumer(null).create(mutableMapOf<String, Any?>(
    "consumerUuid" to "example_consumerUuid"  // String?
), null)
```


### OutputUpdateProfile

Create an instance: `val outputUpdateProfile = client.outputUpdateProfile(null)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, null)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumerLanguage` | `String?` |  |
| `email` | `String?` |  |
| `firstName` | `String?` |  |
| `lastName` | `String?` |  |
| `phoneNumber` | `String?` |  |
| `responseCode` | `Long?` |  |
| `responseMessage` | `String?` |  |

#### Example: Create

```kotlin
val outputUpdateProfile = client.outputUpdateProfile(null).create(mutableMapOf<String, Any?>(
), null)
```


### Version

Create an instance: `val version = client.version(null)`

#### Operations

| Method | Description |
| --- | --- |
| `load(match, null)` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `appName` | `String?` |  |
| `buildDate` | `String?` |  |
| `version` | `String?` |  |

#### Example: Load

```kotlin
val version = client.version(null).load(null, null)
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

### Data as maps

The Kotlin SDK uses a loose object model — `MutableMap<String, Any?>`
throughout — rather than a bespoke typed class per endpoint. This mirrors the
dynamic nature of the API and keeps the SDK flexible: no regeneration is
needed when the API schema changes.

Use `Helpers.toMapAny(value)` to safely coerce a value to a
`MutableMap<String, Any?>`. A `BluefinTecsUserBackofficeTypes.kt` module of
reference `data class` types is also generated for editor documentation.

### Project structure

```
kotlin/
├── build.gradle.kts            -- Gradle build (compiles core/, utility/, feature/, entity/)
├── settings.gradle.kts         -- Gradle project settings
├── core/                       -- Main SDK client, config, entity base, error type
├── entity/                     -- Entity implementations
├── feature/                    -- Built-in features (Base, Test, Log, ...)
├── utility/                    -- Utility functions and the vendored struct library
└── test/                       -- JUnit test suites
```

The main client class (`BluefinTecsUserBackofficeSDK`, package `voxgig.bluefintecsuserbackofficesdk.core`)
exposes the entity accessors. Reference entity or utility types directly only
when needed.

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

# BluefinTecsUserBackoffice Scala SDK



The Scala SDK for the BluefinTecsUserBackoffice API — an entity-oriented client following idiomatic Scala conventions.

The SDK exposes the API as capitalised, semantic **Entities** — for example `client.outputActivateDigitalModule(null)` — each
carrying a small, uniform set of operations (`load`, `create`) instead of raw URL
paths and query strings. You work with named resources and verbs, which
keeps the cognitive load low.

> Other languages, the CLI, and MCP server live alongside this one — see
> the [top-level README](../README.md).


## Install
This package is not yet published to Maven Central. The generated SDK is a
plain-source scala-cli project (no build tool, no third-party runtime
dependencies). Install it from the GitHub release tag
(`scala/vX.Y.Z`, see [Releases](https://github.com/voxgig-sdk/bluefin-tecs-user-backoffice-sdk/releases)) or from a source
checkout — compile it with scala-cli:

```bash
cd scala && scala-cli compile .
```


## Tutorial: your first API call

This tutorial walks through creating a client, listing entities, and
loading a specific record.

### 1. Create a client

```scala
import voxgig.bluefintecsuserbackofficesdk.core.BluefinTecsUserBackofficeSDK

val options = new java.util.LinkedHashMap[String, Object]()
options.put("apikey", System.getenv("BLUEFIN_TECS_USER_BACKOFFICE_APIKEY"))
val client = new BluefinTecsUserBackofficeSDK(options)
```

### 4. Create, update, and remove

```scala
// Create — returns the bare created record (as Object)
val created = client.outputActivateDigitalModule(null).create(java.util.Map.of("response_code", 1L, "response_message", "example_response_message"), null)

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

```scala
val result = client.direct(java.util.Map.of(
    "path", "/api/resource/{id}",
    "method", "GET",
    "params", java.util.Map.of("id", "example")))

if (java.lang.Boolean.TRUE == result.get("ok")) {
    println(result.get("status"))  // 200
    println(result.get("data"))    // response body
}
else {
    // A non-2xx response carries status + data (the error body); a
    // transport-level failure carries err instead. Only one is present, so
    // read both — an absent key simply reads as null.
    println("status=" + result.get("status") + " err=" + result.get("err"))
}
```

### Prepare a request without sending it

```scala
// prepare() returns the fetch definition and raises on error.
val fetchdef = client.prepare(java.util.Map.of(
    "path", "/api/resource/{id}",
    "method", "DELETE",
    "params", java.util.Map.of("id", "example")))

println(fetchdef.get("url"))
println(fetchdef.get("method"))
println(fetchdef.get("headers"))
```

### Use test mode

Create a mock client for unit testing — no server required:

```scala
val client = BluefinTecsUserBackofficeSDK.testSDK(null, null)

// Entity ops return the bare record and raise on error.
val outputGetLogo = client.outputGetLogo(null).load(null, null)
// outputGetLogo holds the mock response record
println(outputGetLogo)
```

### Use a custom fetch function

Replace the HTTP transport with your own `BiFunction`:

```scala
val mockFetch: java.util.function.BiFunction[String, java.util.Map[String, Object], Object] =
    (url, init) => {
        val res = new java.util.LinkedHashMap[String, Object]()
        res.put("status", java.lang.Integer.valueOf(200))
        res.put("statusText", "OK")
        res.put("headers", new java.util.LinkedHashMap[String, Object]())
        res.put("json", (() => java.util.Map.of("id", "mock01")): java.util.function.Supplier[Object])
        res
    }

val options = new java.util.LinkedHashMap[String, Object]()
options.put("base", "http://localhost:8080")
options.put("system", java.util.Map.of("fetch", mockFetch))
val client = new BluefinTecsUserBackofficeSDK(options)
```

### Run live tests

Create a `.env.local` file at the project root:

```
BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE=TRUE
BLUEFIN_TECS_USER_BACKOFFICE_APIKEY=<your-key>
```

Then run:

```bash
cd scala && make test
```


## Reference

### BluefinTecsUserBackofficeSDK

```scala
val client = new BluefinTecsUserBackofficeSDK(options)
```

Creates a new SDK client. `options` is a `java.util.Map[String, Object]`.

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

```scala
val client = BluefinTecsUserBackofficeSDK.testSDK(testopts, sdkopts)
```

Creates a test-mode client with mock transport. Both arguments may be `null`.

### BluefinTecsUserBackofficeSDK methods

| Method | Signature | Description |
| --- | --- | --- |
| `optionsMap` | `() -> Map` | Deep copy of current SDK options. |
| `getUtility` | `() -> Utility` | Copy of the SDK utility object. |
| `prepare` | `(fetchargs) -> Map` | Build an HTTP request definition without sending. Raises on error. |
| `direct` | `(fetchargs) -> Map` | Build and send an HTTP request. Returns a result map (branch on `ok`). |
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
| `load` | `(reqmatch, ctrl) -> Object` | Load a single entity by match criteria. Raises on error. |
| `create` | `(reqdata, ctrl) -> Object` | Create a new entity. Raises on error. |
| `data` | `(newdata*) -> Object` | Get or set entity data. |
| `matchArgs` | `(newmatch*) -> Object` | Get or set entity match criteria. |
| `make` | `() -> Entity` | Create a new instance with the same options. |
| `getName` | `() -> String` | Return the entity name. |

### Result shape

Entity operations return the bare result data (a `Map` for single-entity
ops, an aggregate `List` for `list`) as `Object` and raise on error. Wrap
calls in `try`/`catch` to handle failures.

The `direct()` escape hatch never raises — it returns a result
`java.util.Map[String, Object]` you branch on via `result.get("ok")`:

| Key | Type | Description |
| --- | --- | --- |
| `ok` | `Boolean` | `true` if the HTTP status is 2xx. |
| `status` | `Int` | HTTP status code. |
| `headers` | `Map` | Response headers. |
| `data` | `Object` | Parsed JSON response body. |

On error, `ok` is `false` and `err` contains the error value.

### Entities

#### OutputActivateDigitalModule

| Field | Description |
| --- | --- |
| `response_code` |  |
| `response_message` |  |

Operations: create.

API path: `/activateDigitalModule`

#### OutputActivatePortalModule

| Field | Description |
| --- | --- |
| `client_secret` |  |
| `notification_email` |  |
| `response_code` |  |
| `response_message` |  |

Operations: create.

API path: `/activateMerchantPortalModule`

#### OutputActivateStoreModule

| Field | Description |
| --- | --- |
| `response_code` |  |
| `response_message` |  |

Operations: create.

API path: `/activateAppStoreModule`

#### OutputActivateUser

| Field | Description |
| --- | --- |
| `consumer_uuid` |  |
| `response_code` |  |
| `response_message` |  |

Operations: create.

API path: `/activateUser`

#### OutputAssignRole

| Field | Description |
| --- | --- |
| `consumer_uuid` |  |
| `response_code` |  |
| `response_message` |  |
| `role` |  |

Operations: create.

API path: `/assignRoles`

#### OutputChangeLogo

| Field | Description |
| --- | --- |
| `content_as_base64` |  |
| `mime_type` |  |
| `response_code` |  |
| `response_message` |  |

Operations: create.

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

Operations: create.

API path: `/createMandator`

#### OutputCreateServiceUser

| Field | Description |
| --- | --- |
| `mandator_name` |  |
| `response_code` |  |
| `response_message` |  |

Operations: create.

API path: `/createServiceUser`

#### OutputDeactivateUser

| Field | Description |
| --- | --- |
| `consumer_uuid` |  |
| `response_code` |  |
| `response_message` |  |

Operations: create.

API path: `/deactivateUser`

#### OutputGetKycDocument

| Field | Description |
| --- | --- |
| `case_id` |  |
| `encoded_data_base64` |  |
| `response_code` |  |
| `response_message` |  |

Operations: create.

API path: `/getKycDocument`

#### OutputGetLogo

| Field | Description |
| --- | --- |
| `content_as_base64` |  |
| `mime_type` |  |
| `response_code` |  |
| `response_message` |  |

Operations: load.

API path: `/getLogo`

#### OutputListOfAvailableRole

| Field | Description |
| --- | --- |
| `available_role` |  |
| `response_code` |  |
| `response_message` |  |

Operations: create.

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

Operations: create.

API path: `/listOfMandators`

#### OutputListOfModule

| Field | Description |
| --- | --- |
| `list` |  |
| `pagination` |  |
| `response_code` |  |
| `response_message` |  |

Operations: create.

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

Operations: create.

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

Operations: create.

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

Operations: create.

API path: `/listOfUsers`

#### OutputProvideCredential

| Field | Description |
| --- | --- |
| `mandator_name` |  |
| `password` |  |
| `response_code` |  |
| `response_message` |  |
| `username` |  |

Operations: create.

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

Operations: create.

API path: `/registerUser`

#### OutputRemoveRole

| Field | Description |
| --- | --- |
| `consumer_uuid` |  |
| `response_code` |  |
| `response_message` |  |
| `role` |  |

Operations: create.

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

Operations: create.

API path: `/resendLink`

#### OutputResetPassword

| Field | Description |
| --- | --- |
| `consumer_uuid` |  |
| `phone_number` |  |
| `response_code` |  |
| `response_message` |  |

Operations: create.

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

Operations: create.

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

Operations: create.

API path: `/updateProfile`

#### Version

| Field | Description |
| --- | --- |
| `app_name` |  |
| `build_date` |  |
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
| `response_code` | `java.lang.Long` |  |
| `response_message` | `String` |  |

#### Example: Create

```scala
val outputActivateDigitalModule = client.outputActivateDigitalModule(null).create(java.util.Map.of(
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
| `client_secret` | `String` |  |
| `notification_email` | `String` |  |
| `response_code` | `java.lang.Long` |  |
| `response_message` | `String` |  |

#### Example: Create

```scala
val outputActivatePortalModule = client.outputActivatePortalModule(null).create(java.util.Map.of(
    "client_secret", "example_client_secret",  // String
    "notification_email", "example_notification_email"  // String
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
| `response_code` | `java.lang.Long` |  |
| `response_message` | `String` |  |

#### Example: Create

```scala
val outputActivateStoreModule = client.outputActivateStoreModule(null).create(java.util.Map.of(
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
| `consumer_uuid` | `String` |  |
| `response_code` | `java.lang.Long` |  |
| `response_message` | `String` |  |

#### Example: Create

```scala
val outputActivateUser = client.outputActivateUser(null).create(java.util.Map.of(
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
| `consumer_uuid` | `String` |  |
| `response_code` | `java.lang.Long` |  |
| `response_message` | `String` |  |
| `role` | `java.util.List[Object]` |  |

#### Example: Create

```scala
val outputAssignRole = client.outputAssignRole(null).create(java.util.Map.of(
    "consumer_uuid", "example_consumer_uuid",  // String
    "role", java.util.List.of()  // java.util.List[Object]
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
| `content_as_base64` | `String` |  |
| `mime_type` | `String` |  |
| `response_code` | `java.lang.Long` |  |
| `response_message` | `String` |  |

#### Example: Create

```scala
val outputChangeLogo = client.outputChangeLogo(null).create(java.util.Map.of(
    "content_as_base64", "example_content_as_base64",  // String
    "mime_type", "example_mime_type"  // String
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
| `mandator` | `java.util.Map[String, Object]` |  |
| `name` | `String` |  |
| `passport_number` | `String` |  |
| `phone` | `String` |  |
| `response_code` | `java.lang.Long` |  |
| `response_message` | `String` |  |
| `salutation` | `String` |  |
| `state` | `String` |  |
| `street1` | `String` |  |
| `street2` | `String` |  |
| `zip_code` | `String` |  |

#### Example: Create

```scala
val outputCreateMandator = client.outputCreateMandator(null).create(java.util.Map.of(
    "description", "example_description",  // String
    "email", "example_email",  // String
    "login", "example_login",  // String
    "name", "example_name",  // String
    "phone", "example_phone"  // String
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
| `mandator_name` | `String` |  |
| `response_code` | `java.lang.Long` |  |
| `response_message` | `String` |  |

#### Example: Create

```scala
val outputCreateServiceUser = client.outputCreateServiceUser(null).create(java.util.Map.of(
    "mandator_name", "example_mandator_name"  // String
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
| `consumer_uuid` | `String` |  |
| `response_code` | `java.lang.Long` |  |
| `response_message` | `String` |  |

#### Example: Create

```scala
val outputDeactivateUser = client.outputDeactivateUser(null).create(java.util.Map.of(
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
| `case_id` | `String` |  |
| `encoded_data_base64` | `String` |  |
| `response_code` | `java.lang.Long` |  |
| `response_message` | `String` |  |

#### Example: Create

```scala
val outputGetKycDocument = client.outputGetKycDocument(null).create(java.util.Map.of(
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
| `content_as_base64` | `String` |  |
| `mime_type` | `String` |  |
| `response_code` | `java.lang.Long` |  |
| `response_message` | `String` |  |

#### Example: Load

```scala
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
| `available_role` | `java.util.List[Object]` |  |
| `response_code` | `java.lang.Long` |  |
| `response_message` | `String` |  |

#### Example: Create

```scala
val outputListOfAvailableRole = client.outputListOfAvailableRole(null).create(java.util.Map.of(
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
| `filter` | `java.util.Map[String, Object]` |  |
| `list` | `java.util.List[Object]` |  |
| `pagination` | `java.util.Map[String, Object]` |  |
| `response_code` | `java.lang.Long` |  |
| `response_message` | `String` |  |
| `sorting` | `java.util.Map[String, Object]` |  |

#### Example: Create

```scala
val outputListOfMandator = client.outputListOfMandator(null).create(java.util.Map.of(
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
| `list` | `java.util.List[Object]` |  |
| `pagination` | `java.util.Map[String, Object]` |  |
| `response_code` | `java.lang.Long` |  |
| `response_message` | `String` |  |

#### Example: Create

```scala
val outputListOfModule = client.outputListOfModule(null).create(java.util.Map.of(
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
| `filter` | `java.util.Map[String, Object]` |  |
| `group_role` | `java.util.List[Object]` |  |
| `pagination` | `java.util.Map[String, Object]` |  |
| `response_code` | `java.lang.Long` |  |
| `response_message` | `String` |  |
| `sorting` | `java.util.Map[String, Object]` |  |

#### Example: Create

```scala
val outputListOfRoleGroup = client.outputListOfRoleGroup(null).create(java.util.Map.of(
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
| `filter` | `java.util.Map[String, Object]` |  |
| `list` | `java.util.List[Object]` |  |
| `pagination` | `java.util.Map[String, Object]` |  |
| `response_code` | `java.lang.Long` |  |
| `response_message` | `String` |  |
| `sorting` | `java.util.Map[String, Object]` |  |

#### Example: Create

```scala
val outputListOfTransactionsHistory = client.outputListOfTransactionsHistory(null).create(java.util.Map.of(
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
| `filter` | `java.util.Map[String, Object]` |  |
| `list` | `java.util.List[Object]` |  |
| `pagination` | `java.util.Map[String, Object]` |  |
| `response_code` | `java.lang.Long` |  |
| `response_message` | `String` |  |
| `sorting` | `java.util.Map[String, Object]` |  |

#### Example: Create

```scala
val outputListOfUser = client.outputListOfUser(null).create(java.util.Map.of(
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
| `mandator_name` | `String` |  |
| `password` | `String` |  |
| `response_code` | `java.lang.Long` |  |
| `response_message` | `String` |  |
| `username` | `String` |  |

#### Example: Create

```scala
val outputProvideCredential = client.outputProvideCredential(null).create(java.util.Map.of(
    "mandator_name", "example_mandator_name"  // String
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
| `response_code` | `java.lang.Long` |  |
| `response_message` | `String` |  |
| `salutation` | `String` |  |
| `state` | `String` |  |
| `street1` | `String` |  |
| `street2` | `String` |  |
| `zip` | `String` |  |

#### Example: Create

```scala
val outputRegisterUser = client.outputRegisterUser(null).create(java.util.Map.of(
    "email", "example_email"  // String
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
| `consumer_uuid` | `String` |  |
| `response_code` | `java.lang.Long` |  |
| `response_message` | `String` |  |
| `role` | `java.util.List[Object]` |  |

#### Example: Create

```scala
val outputRemoveRole = client.outputRemoveRole(null).create(java.util.Map.of(
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
| `business_registration_number` | `String` |  |
| `consumer_uuid` | `String` |  |
| `email_confirmation_code` | `String` |  |
| `phone_number` | `String` |  |
| `response_code` | `java.lang.Long` |  |
| `response_message` | `String` |  |

#### Example: Create

```scala
val outputResendLink = client.outputResendLink(null).create(java.util.Map.of(
    "consumer_uuid", "example_consumer_uuid"  // String
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
| `consumer_uuid` | `String` |  |
| `phone_number` | `String` |  |
| `response_code` | `java.lang.Long` |  |
| `response_message` | `String` |  |

#### Example: Create

```scala
val outputResetPassword = client.outputResetPassword(null).create(java.util.Map.of(
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
| `kyc_passed` | `java.lang.Boolean` |  |
| `last_name` | `String` |  |
| `nationality` | `String` |  |
| `passport_number` | `String` |  |
| `phone_number` | `String` |  |
| `place_of_birth` | `String` |  |
| `response_code` | `java.lang.Long` |  |
| `response_message` | `String` |  |
| `state` | `String` |  |
| `street1` | `String` |  |
| `street2` | `String` |  |
| `transactionhistory_id` | `String` |  |
| `zip` | `String` |  |

#### Example: Create

```scala
val outputUpdateConsumer = client.outputUpdateConsumer(null).create(java.util.Map.of(
    "consumer_uuid", "example_consumer_uuid"  // String
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
| `consumer_language` | `String` |  |
| `email` | `String` |  |
| `first_name` | `String` |  |
| `last_name` | `String` |  |
| `phone_number` | `String` |  |
| `response_code` | `java.lang.Long` |  |
| `response_message` | `String` |  |

#### Example: Create

```scala
val outputUpdateProfile = client.outputUpdateProfile(null).create(java.util.Map.of(
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
| `app_name` | `String` |  |
| `build_date` | `String` |  |
| `version` | `String` |  |

#### Example: Load

```scala
val version = client.version(null).load(null, null)
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

### Data as maps

The Scala SDK uses a loose object model — `java.util.Map[String, Object]`
throughout — rather than a bespoke typed class per endpoint. This mirrors the
dynamic nature of the API and keeps the SDK flexible: no regeneration is
needed when the API schema changes.

Use `Helpers.toMapAny(value)` to safely coerce a value to a
`java.util.Map[String, Object]`. A `BluefinTecsUserBackofficeTypes.scala` module of
reference `case class` types is also generated for editor documentation.

### Project structure

```
scala/
├── project.scala               -- scala-cli project config (Scala 3, no deps)
├── core/                        -- Main SDK client, config, entity base, error type
├── entity/                      -- Entity implementations
├── feature/                     -- Built-in features (Base, Test, Log, ...)
├── utility/                     -- Utility functions and the vendored struct library
└── sdktest/                     -- Generated per-entity tests (scala-cli mains)
```

The main client class (`BluefinTecsUserBackofficeSDK`, package `voxgig.bluefintecsuserbackofficesdk.core`)
exposes the entity accessors. Reference entity or utility types directly only
when needed. The SDK is a dependency-free scala-cli project: JSON parsing is
the vendored `utility/Json.java`, HTTP transport is the JDK
`java.net.http.HttpClient`, and the struct library is inlined under
`utility/struct`.

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

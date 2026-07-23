# BluefinTecsUserBackoffice Kotlin SDK Reference

Complete API reference for the BluefinTecsUserBackoffice Kotlin SDK.


## BluefinTecsUserBackofficeSDK

### Constructor

```kotlin
val client = BluefinTecsUserBackofficeSDK(options)
```

Create a new SDK client instance. `options` is a `MutableMap<String, Any?>`.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `options` | `Map` | SDK configuration options. |
| `options["apikey"]` | `String` | API key for authentication. |
| `options["base"]` | `String` | Base URL for API requests. |
| `options["prefix"]` | `String` | URL prefix appended after base. |
| `options["suffix"]` | `String` | URL suffix appended after path. |
| `options["headers"]` | `Map` | Custom headers for all requests. |
| `options["feature"]` | `Map` | Feature configuration. |
| `options["system"]` | `Map` | System overrides (e.g. custom fetch). |


### Static Methods

#### `BluefinTecsUserBackofficeSDK.testSDK(testopts, sdkopts)`

Create a test client with mock features active. Both arguments may be `null`.

```kotlin
val client = BluefinTecsUserBackofficeSDK.testSDK(null, null)
```


### Instance Methods

#### `outputActivateDigitalModule(entopts)`

Create a new `OutputActivateDigitalModule` entity instance (returns `SdkEntity`). Pass
`null` for no initial options.

#### `outputActivatePortalModule(entopts)`

Create a new `OutputActivatePortalModule` entity instance (returns `SdkEntity`). Pass
`null` for no initial options.

#### `outputActivateStoreModule(entopts)`

Create a new `OutputActivateStoreModule` entity instance (returns `SdkEntity`). Pass
`null` for no initial options.

#### `outputActivateUser(entopts)`

Create a new `OutputActivateUser` entity instance (returns `SdkEntity`). Pass
`null` for no initial options.

#### `outputAssignRole(entopts)`

Create a new `OutputAssignRole` entity instance (returns `SdkEntity`). Pass
`null` for no initial options.

#### `outputChangeLogo(entopts)`

Create a new `OutputChangeLogo` entity instance (returns `SdkEntity`). Pass
`null` for no initial options.

#### `outputCreateMandator(entopts)`

Create a new `OutputCreateMandator` entity instance (returns `SdkEntity`). Pass
`null` for no initial options.

#### `outputCreateServiceUser(entopts)`

Create a new `OutputCreateServiceUser` entity instance (returns `SdkEntity`). Pass
`null` for no initial options.

#### `outputDeactivateUser(entopts)`

Create a new `OutputDeactivateUser` entity instance (returns `SdkEntity`). Pass
`null` for no initial options.

#### `outputGetKycDocument(entopts)`

Create a new `OutputGetKycDocument` entity instance (returns `SdkEntity`). Pass
`null` for no initial options.

#### `outputGetLogo(entopts)`

Create a new `OutputGetLogo` entity instance (returns `SdkEntity`). Pass
`null` for no initial options.

#### `outputListOfAvailableRole(entopts)`

Create a new `OutputListOfAvailableRole` entity instance (returns `SdkEntity`). Pass
`null` for no initial options.

#### `outputListOfMandator(entopts)`

Create a new `OutputListOfMandator` entity instance (returns `SdkEntity`). Pass
`null` for no initial options.

#### `outputListOfModule(entopts)`

Create a new `OutputListOfModule` entity instance (returns `SdkEntity`). Pass
`null` for no initial options.

#### `outputListOfRoleGroup(entopts)`

Create a new `OutputListOfRoleGroup` entity instance (returns `SdkEntity`). Pass
`null` for no initial options.

#### `outputListOfTransactionsHistory(entopts)`

Create a new `OutputListOfTransactionsHistory` entity instance (returns `SdkEntity`). Pass
`null` for no initial options.

#### `outputListOfUser(entopts)`

Create a new `OutputListOfUser` entity instance (returns `SdkEntity`). Pass
`null` for no initial options.

#### `outputProvideCredential(entopts)`

Create a new `OutputProvideCredential` entity instance (returns `SdkEntity`). Pass
`null` for no initial options.

#### `outputRegisterUser(entopts)`

Create a new `OutputRegisterUser` entity instance (returns `SdkEntity`). Pass
`null` for no initial options.

#### `outputRemoveRole(entopts)`

Create a new `OutputRemoveRole` entity instance (returns `SdkEntity`). Pass
`null` for no initial options.

#### `outputResendLink(entopts)`

Create a new `OutputResendLink` entity instance (returns `SdkEntity`). Pass
`null` for no initial options.

#### `outputResetPassword(entopts)`

Create a new `OutputResetPassword` entity instance (returns `SdkEntity`). Pass
`null` for no initial options.

#### `outputUpdateConsumer(entopts)`

Create a new `OutputUpdateConsumer` entity instance (returns `SdkEntity`). Pass
`null` for no initial options.

#### `outputUpdateProfile(entopts)`

Create a new `OutputUpdateProfile` entity instance (returns `SdkEntity`). Pass
`null` for no initial options.

#### `version(entopts)`

Create a new `Version` entity instance (returns `SdkEntity`). Pass
`null` for no initial options.

#### `optionsMap() -> MutableMap`

Return a deep copy of the current SDK options.

#### `getUtility() -> Utility`

Return a copy of the SDK utility object.

#### `direct(fetchargs) -> MutableMap`

Make a direct HTTP request to any API endpoint. Returns a result
`MutableMap<String, Any?>` with `ok`, `status`, `headers`, and `data`
(or `err` on failure). This escape hatch never raises — branch on
`result["ok"]`.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `fetchargs["path"]` | `String` | URL path with optional `{param}` placeholders. |
| `fetchargs["method"]` | `String` | HTTP method (default: `"GET"`). |
| `fetchargs["params"]` | `Map` | Path parameter values. |
| `fetchargs["query"]` | `Map` | Query string parameters. |
| `fetchargs["headers"]` | `Map` | Request headers (merged with defaults). |
| `fetchargs["body"]` | `Any?` | Request body (maps are JSON-serialized). |

**Returns:** `MutableMap<String, Any?>`

#### `prepare(fetchargs) -> MutableMap`

Prepare a fetch definition without sending. Returns the `fetchdef` and raises on error.


---

## OutputActivateDigitalModule

```kotlin
val outputActivateDigitalModule = client.outputActivateDigitalModule(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `response_code` | `Long?` | No |  |
| `response_message` | `String?` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Any?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```kotlin
val result = client.outputActivateDigitalModule(null).create(mutableMapOf<String, Any?>(
), null)
```

### Common Methods

#### `data(vararg newdata) -> Any?`

Get or set the entity data.

#### `match(vararg newmatch) -> Any?`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputActivateDigitalModule` entity instance with the same options.

#### `name -> String`

The entity name (read-only property).


---

## OutputActivatePortalModule

```kotlin
val outputActivatePortalModule = client.outputActivatePortalModule(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `client_secret` | `String?` | Yes |  |
| `notification_email` | `String?` | Yes |  |
| `response_code` | `Long?` | No |  |
| `response_message` | `String?` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Any?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```kotlin
val result = client.outputActivatePortalModule(null).create(mutableMapOf<String, Any?>(
    "client_secret" to "example_client_secret",  // String?
    "notification_email" to "example_notification_email"  // String?
), null)
```

### Common Methods

#### `data(vararg newdata) -> Any?`

Get or set the entity data.

#### `match(vararg newmatch) -> Any?`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputActivatePortalModule` entity instance with the same options.

#### `name -> String`

The entity name (read-only property).


---

## OutputActivateStoreModule

```kotlin
val outputActivateStoreModule = client.outputActivateStoreModule(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `response_code` | `Long?` | No |  |
| `response_message` | `String?` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Any?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```kotlin
val result = client.outputActivateStoreModule(null).create(mutableMapOf<String, Any?>(
), null)
```

### Common Methods

#### `data(vararg newdata) -> Any?`

Get or set the entity data.

#### `match(vararg newmatch) -> Any?`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputActivateStoreModule` entity instance with the same options.

#### `name -> String`

The entity name (read-only property).


---

## OutputActivateUser

```kotlin
val outputActivateUser = client.outputActivateUser(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumer_uuid` | `String?` | No |  |
| `response_code` | `Long?` | No |  |
| `response_message` | `String?` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Any?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```kotlin
val result = client.outputActivateUser(null).create(mutableMapOf<String, Any?>(
), null)
```

### Common Methods

#### `data(vararg newdata) -> Any?`

Get or set the entity data.

#### `match(vararg newmatch) -> Any?`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputActivateUser` entity instance with the same options.

#### `name -> String`

The entity name (read-only property).


---

## OutputAssignRole

```kotlin
val outputAssignRole = client.outputAssignRole(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumer_uuid` | `String?` | Yes |  |
| `response_code` | `Long?` | No |  |
| `response_message` | `String?` | No |  |
| `role` | `List<Any?>?` | Yes |  |

### Operations

#### `create(reqdata, ctrl) -> Any?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```kotlin
val result = client.outputAssignRole(null).create(mutableMapOf<String, Any?>(
    "consumer_uuid" to "example_consumer_uuid",  // String?
    "role" to listOf<Any?>()  // List<Any?>?
), null)
```

### Common Methods

#### `data(vararg newdata) -> Any?`

Get or set the entity data.

#### `match(vararg newmatch) -> Any?`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputAssignRole` entity instance with the same options.

#### `name -> String`

The entity name (read-only property).


---

## OutputChangeLogo

```kotlin
val outputChangeLogo = client.outputChangeLogo(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `content_as_base64` | `String?` | Yes |  |
| `mime_type` | `String?` | Yes |  |
| `response_code` | `Long?` | No |  |
| `response_message` | `String?` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Any?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```kotlin
val result = client.outputChangeLogo(null).create(mutableMapOf<String, Any?>(
    "content_as_base64" to "example_content_as_base64",  // String?
    "mime_type" to "example_mime_type"  // String?
), null)
```

### Common Methods

#### `data(vararg newdata) -> Any?`

Get or set the entity data.

#### `match(vararg newmatch) -> Any?`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputChangeLogo` entity instance with the same options.

#### `name -> String`

The entity name (read-only property).


---

## OutputCreateMandator

```kotlin
val outputCreateMandator = client.outputCreateMandator(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `city` | `String?` | No |  |
| `country` | `String?` | No |  |
| `date_of_birth` | `String?` | No |  |
| `description` | `String?` | Yes |  |
| `drivers_license_number` | `String?` | No |  |
| `email` | `String?` | Yes |  |
| `first_name` | `String?` | No |  |
| `identification_number` | `String?` | No |  |
| `last_name` | `String?` | No |  |
| `login` | `String?` | Yes |  |
| `mandator` | `Map<String, Any?>?` | No |  |
| `name` | `String?` | Yes |  |
| `passport_number` | `String?` | No |  |
| `phone` | `String?` | Yes |  |
| `response_code` | `Long?` | No |  |
| `response_message` | `String?` | No |  |
| `salutation` | `String?` | No |  |
| `state` | `String?` | No |  |
| `street1` | `String?` | No |  |
| `street2` | `String?` | No |  |
| `zip_code` | `String?` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Any?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```kotlin
val result = client.outputCreateMandator(null).create(mutableMapOf<String, Any?>(
    "description" to "example_description",  // String?
    "email" to "example_email",  // String?
    "login" to "example_login",  // String?
    "name" to "example_name",  // String?
    "phone" to "example_phone"  // String?
), null)
```

### Common Methods

#### `data(vararg newdata) -> Any?`

Get or set the entity data.

#### `match(vararg newmatch) -> Any?`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputCreateMandator` entity instance with the same options.

#### `name -> String`

The entity name (read-only property).


---

## OutputCreateServiceUser

```kotlin
val outputCreateServiceUser = client.outputCreateServiceUser(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `mandator_name` | `String?` | Yes |  |
| `response_code` | `Long?` | No |  |
| `response_message` | `String?` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Any?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```kotlin
val result = client.outputCreateServiceUser(null).create(mutableMapOf<String, Any?>(
    "mandator_name" to "example_mandator_name"  // String?
), null)
```

### Common Methods

#### `data(vararg newdata) -> Any?`

Get or set the entity data.

#### `match(vararg newmatch) -> Any?`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputCreateServiceUser` entity instance with the same options.

#### `name -> String`

The entity name (read-only property).


---

## OutputDeactivateUser

```kotlin
val outputDeactivateUser = client.outputDeactivateUser(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumer_uuid` | `String?` | No |  |
| `response_code` | `Long?` | No |  |
| `response_message` | `String?` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Any?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```kotlin
val result = client.outputDeactivateUser(null).create(mutableMapOf<String, Any?>(
), null)
```

### Common Methods

#### `data(vararg newdata) -> Any?`

Get or set the entity data.

#### `match(vararg newmatch) -> Any?`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputDeactivateUser` entity instance with the same options.

#### `name -> String`

The entity name (read-only property).


---

## OutputGetKycDocument

```kotlin
val outputGetKycDocument = client.outputGetKycDocument(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `case_id` | `String?` | No |  |
| `encoded_data_base64` | `String?` | No |  |
| `response_code` | `Long?` | No |  |
| `response_message` | `String?` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Any?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```kotlin
val result = client.outputGetKycDocument(null).create(mutableMapOf<String, Any?>(
), null)
```

### Common Methods

#### `data(vararg newdata) -> Any?`

Get or set the entity data.

#### `match(vararg newmatch) -> Any?`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputGetKycDocument` entity instance with the same options.

#### `name -> String`

The entity name (read-only property).


---

## OutputGetLogo

```kotlin
val outputGetLogo = client.outputGetLogo(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `content_as_base64` | `String?` | Yes |  |
| `mime_type` | `String?` | Yes |  |
| `response_code` | `Long?` | No |  |
| `response_message` | `String?` | No |  |

### Operations

#### `load(reqmatch, ctrl) -> Any?`

Load a single entity matching the given criteria. Returns the entity data and raises on error.

```kotlin
val result = client.outputGetLogo(null).load(null, null)
```

### Common Methods

#### `data(vararg newdata) -> Any?`

Get or set the entity data.

#### `match(vararg newmatch) -> Any?`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputGetLogo` entity instance with the same options.

#### `name -> String`

The entity name (read-only property).


---

## OutputListOfAvailableRole

```kotlin
val outputListOfAvailableRole = client.outputListOfAvailableRole(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `available_role` | `List<Any?>?` | No |  |
| `response_code` | `Long?` | No |  |
| `response_message` | `String?` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Any?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```kotlin
val result = client.outputListOfAvailableRole(null).create(mutableMapOf<String, Any?>(
), null)
```

### Common Methods

#### `data(vararg newdata) -> Any?`

Get or set the entity data.

#### `match(vararg newmatch) -> Any?`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputListOfAvailableRole` entity instance with the same options.

#### `name -> String`

The entity name (read-only property).


---

## OutputListOfMandator

```kotlin
val outputListOfMandator = client.outputListOfMandator(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `filter` | `Map<String, Any?>?` | No |  |
| `list` | `List<Any?>?` | No |  |
| `pagination` | `Map<String, Any?>?` | No |  |
| `response_code` | `Long?` | No |  |
| `response_message` | `String?` | No |  |
| `sorting` | `Map<String, Any?>?` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Any?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```kotlin
val result = client.outputListOfMandator(null).create(mutableMapOf<String, Any?>(
), null)
```

### Common Methods

#### `data(vararg newdata) -> Any?`

Get or set the entity data.

#### `match(vararg newmatch) -> Any?`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputListOfMandator` entity instance with the same options.

#### `name -> String`

The entity name (read-only property).


---

## OutputListOfModule

```kotlin
val outputListOfModule = client.outputListOfModule(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `list` | `List<Any?>?` | No |  |
| `pagination` | `Map<String, Any?>?` | No |  |
| `response_code` | `Long?` | No |  |
| `response_message` | `String?` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Any?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```kotlin
val result = client.outputListOfModule(null).create(mutableMapOf<String, Any?>(
), null)
```

### Common Methods

#### `data(vararg newdata) -> Any?`

Get or set the entity data.

#### `match(vararg newmatch) -> Any?`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputListOfModule` entity instance with the same options.

#### `name -> String`

The entity name (read-only property).


---

## OutputListOfRoleGroup

```kotlin
val outputListOfRoleGroup = client.outputListOfRoleGroup(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `filter` | `Map<String, Any?>?` | No |  |
| `group_role` | `List<Any?>?` | No |  |
| `pagination` | `Map<String, Any?>?` | No |  |
| `response_code` | `Long?` | No |  |
| `response_message` | `String?` | No |  |
| `sorting` | `Map<String, Any?>?` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Any?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```kotlin
val result = client.outputListOfRoleGroup(null).create(mutableMapOf<String, Any?>(
), null)
```

### Common Methods

#### `data(vararg newdata) -> Any?`

Get or set the entity data.

#### `match(vararg newmatch) -> Any?`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputListOfRoleGroup` entity instance with the same options.

#### `name -> String`

The entity name (read-only property).


---

## OutputListOfTransactionsHistory

```kotlin
val outputListOfTransactionsHistory = client.outputListOfTransactionsHistory(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `filter` | `Map<String, Any?>?` | No |  |
| `list` | `List<Any?>?` | No |  |
| `pagination` | `Map<String, Any?>?` | No |  |
| `response_code` | `Long?` | No |  |
| `response_message` | `String?` | No |  |
| `sorting` | `Map<String, Any?>?` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Any?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```kotlin
val result = client.outputListOfTransactionsHistory(null).create(mutableMapOf<String, Any?>(
), null)
```

### Common Methods

#### `data(vararg newdata) -> Any?`

Get or set the entity data.

#### `match(vararg newmatch) -> Any?`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputListOfTransactionsHistory` entity instance with the same options.

#### `name -> String`

The entity name (read-only property).


---

## OutputListOfUser

```kotlin
val outputListOfUser = client.outputListOfUser(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `filter` | `Map<String, Any?>?` | No |  |
| `list` | `List<Any?>?` | No |  |
| `pagination` | `Map<String, Any?>?` | No |  |
| `response_code` | `Long?` | No |  |
| `response_message` | `String?` | No |  |
| `sorting` | `Map<String, Any?>?` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Any?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```kotlin
val result = client.outputListOfUser(null).create(mutableMapOf<String, Any?>(
), null)
```

### Common Methods

#### `data(vararg newdata) -> Any?`

Get or set the entity data.

#### `match(vararg newmatch) -> Any?`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputListOfUser` entity instance with the same options.

#### `name -> String`

The entity name (read-only property).


---

## OutputProvideCredential

```kotlin
val outputProvideCredential = client.outputProvideCredential(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `mandator_name` | `String?` | Yes |  |
| `password` | `String?` | No |  |
| `response_code` | `Long?` | No |  |
| `response_message` | `String?` | No |  |
| `username` | `String?` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Any?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```kotlin
val result = client.outputProvideCredential(null).create(mutableMapOf<String, Any?>(
    "mandator_name" to "example_mandator_name"  // String?
), null)
```

### Common Methods

#### `data(vararg newdata) -> Any?`

Get or set the entity data.

#### `match(vararg newmatch) -> Any?`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputProvideCredential` entity instance with the same options.

#### `name -> String`

The entity name (read-only property).


---

## OutputRegisterUser

```kotlin
val outputRegisterUser = client.outputRegisterUser(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `city` | `String?` | No |  |
| `consumer_id` | `String?` | No |  |
| `consumer_language` | `String?` | No |  |
| `country` | `String?` | No |  |
| `date_of_birth` | `String?` | No |  |
| `driver_licence_number` | `String?` | No |  |
| `email` | `String?` | Yes |  |
| `first_name` | `String?` | No |  |
| `identification_number` | `String?` | No |  |
| `last_name` | `String?` | No |  |
| `login` | `String?` | No |  |
| `module` | `String?` | No |  |
| `passport_number` | `String?` | No |  |
| `phone` | `String?` | No |  |
| `response_code` | `Long?` | No |  |
| `response_message` | `String?` | No |  |
| `salutation` | `String?` | No |  |
| `state` | `String?` | No |  |
| `street1` | `String?` | No |  |
| `street2` | `String?` | No |  |
| `zip` | `String?` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Any?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```kotlin
val result = client.outputRegisterUser(null).create(mutableMapOf<String, Any?>(
    "email" to "example_email"  // String?
), null)
```

### Common Methods

#### `data(vararg newdata) -> Any?`

Get or set the entity data.

#### `match(vararg newmatch) -> Any?`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputRegisterUser` entity instance with the same options.

#### `name -> String`

The entity name (read-only property).


---

## OutputRemoveRole

```kotlin
val outputRemoveRole = client.outputRemoveRole(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumer_uuid` | `String?` | No |  |
| `response_code` | `Long?` | No |  |
| `response_message` | `String?` | No |  |
| `role` | `List<Any?>?` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Any?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```kotlin
val result = client.outputRemoveRole(null).create(mutableMapOf<String, Any?>(
), null)
```

### Common Methods

#### `data(vararg newdata) -> Any?`

Get or set the entity data.

#### `match(vararg newmatch) -> Any?`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputRemoveRole` entity instance with the same options.

#### `name -> String`

The entity name (read-only property).


---

## OutputResendLink

```kotlin
val outputResendLink = client.outputResendLink(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `business_registration_number` | `String?` | No |  |
| `consumer_uuid` | `String?` | Yes |  |
| `email_confirmation_code` | `String?` | No |  |
| `phone_number` | `String?` | No |  |
| `response_code` | `Long?` | No |  |
| `response_message` | `String?` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Any?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```kotlin
val result = client.outputResendLink(null).create(mutableMapOf<String, Any?>(
    "consumer_uuid" to "example_consumer_uuid"  // String?
), null)
```

### Common Methods

#### `data(vararg newdata) -> Any?`

Get or set the entity data.

#### `match(vararg newmatch) -> Any?`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputResendLink` entity instance with the same options.

#### `name -> String`

The entity name (read-only property).


---

## OutputResetPassword

```kotlin
val outputResetPassword = client.outputResetPassword(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumer_uuid` | `String?` | No |  |
| `phone_number` | `String?` | No |  |
| `response_code` | `Long?` | No |  |
| `response_message` | `String?` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Any?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```kotlin
val result = client.outputResetPassword(null).create(mutableMapOf<String, Any?>(
), null)
```

### Common Methods

#### `data(vararg newdata) -> Any?`

Get or set the entity data.

#### `match(vararg newmatch) -> Any?`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputResetPassword` entity instance with the same options.

#### `name -> String`

The entity name (read-only property).


---

## OutputUpdateConsumer

```kotlin
val outputUpdateConsumer = client.outputUpdateConsumer(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `city` | `String?` | No |  |
| `consumer_uuid` | `String?` | Yes |  |
| `consumerlanguage` | `String?` | No |  |
| `country` | `String?` | No |  |
| `date_of_birth` | `String?` | No |  |
| `datetime_created` | `String?` | No |  |
| `driver_licence_number` | `String?` | No |  |
| `email` | `String?` | No |  |
| `first_name` | `String?` | No |  |
| `identification_number` | `String?` | No |  |
| `kyc_passed` | `Boolean?` | No |  |
| `last_name` | `String?` | No |  |
| `nationality` | `String?` | No |  |
| `passport_number` | `String?` | No |  |
| `phone_number` | `String?` | No |  |
| `place_of_birth` | `String?` | No |  |
| `response_code` | `Long?` | No |  |
| `response_message` | `String?` | No |  |
| `state` | `String?` | No |  |
| `street1` | `String?` | No |  |
| `street2` | `String?` | No |  |
| `transactionhistory_id` | `String?` | No |  |
| `zip` | `String?` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Any?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```kotlin
val result = client.outputUpdateConsumer(null).create(mutableMapOf<String, Any?>(
    "consumer_uuid" to "example_consumer_uuid"  // String?
), null)
```

### Common Methods

#### `data(vararg newdata) -> Any?`

Get or set the entity data.

#### `match(vararg newmatch) -> Any?`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputUpdateConsumer` entity instance with the same options.

#### `name -> String`

The entity name (read-only property).


---

## OutputUpdateProfile

```kotlin
val outputUpdateProfile = client.outputUpdateProfile(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumer_language` | `String?` | No |  |
| `email` | `String?` | No |  |
| `first_name` | `String?` | No |  |
| `last_name` | `String?` | No |  |
| `phone_number` | `String?` | No |  |
| `response_code` | `Long?` | No |  |
| `response_message` | `String?` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Any?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```kotlin
val result = client.outputUpdateProfile(null).create(mutableMapOf<String, Any?>(
), null)
```

### Common Methods

#### `data(vararg newdata) -> Any?`

Get or set the entity data.

#### `match(vararg newmatch) -> Any?`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputUpdateProfile` entity instance with the same options.

#### `name -> String`

The entity name (read-only property).


---

## Version

```kotlin
val version = client.version(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `app_name` | `String?` | No |  |
| `build_date` | `String?` | No |  |
| `version` | `String?` | No |  |

### Operations

#### `load(reqmatch, ctrl) -> Any?`

Load a single entity matching the given criteria. Returns the entity data and raises on error.

```kotlin
val result = client.version(null).load(null, null)
```

### Common Methods

#### `data(vararg newdata) -> Any?`

Get or set the entity data.

#### `match(vararg newmatch) -> Any?`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `Version` entity instance with the same options.

#### `name -> String`

The entity name (read-only property).


---

## Features

| Feature | Version | Description |
| --- | --- | --- |
| `test` | 0.0.1 | In-memory mock transport for testing without a live server |


Features are activated via the `feature` option:

```kotlin
val feature = mutableMapOf<String, Any?>(
    "test" to mapOf("active" to true),
)
val client = BluefinTecsUserBackofficeSDK(mutableMapOf<String, Any?>("feature" to feature))
```


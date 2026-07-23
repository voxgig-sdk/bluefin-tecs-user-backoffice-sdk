# BluefinTecsUserBackoffice Java SDK Reference

Complete API reference for the BluefinTecsUserBackoffice Java SDK.


## BluefinTecsUserBackofficeSDK

### Constructor

```java
BluefinTecsUserBackofficeSDK client = new BluefinTecsUserBackofficeSDK(options);
```

Create a new SDK client instance. `options` is a `Map<String, Object>`.

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

```java
BluefinTecsUserBackofficeSDK client = BluefinTecsUserBackofficeSDK.testSDK(null, null);
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

#### `optionsMap() -> Map`

Return a deep copy of the current SDK options.

#### `getUtility() -> Utility`

Return a copy of the SDK utility object.

#### `direct(fetchargs) -> Map`

Make a direct HTTP request to any API endpoint. Returns a result
`Map<String, Object>` with `ok`, `status`, `headers`, and `data` (or
`err` on failure). This escape hatch never raises — branch on
`result.get("ok")`.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `fetchargs["path"]` | `String` | URL path with optional `{param}` placeholders. |
| `fetchargs["method"]` | `String` | HTTP method (default: `"GET"`). |
| `fetchargs["params"]` | `Map` | Path parameter values. |
| `fetchargs["query"]` | `Map` | Query string parameters. |
| `fetchargs["headers"]` | `Map` | Request headers (merged with defaults). |
| `fetchargs["body"]` | `Object` | Request body (maps are JSON-serialized). |

**Returns:** `Map<String, Object>`

#### `prepare(fetchargs) -> Map`

Prepare a fetch definition without sending. Returns the `fetchdef` and raises on error.


---

## OutputActivateDigitalModule

```java
SdkEntity outputActivateDigitalModule = client.outputActivateDigitalModule(null);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `response_code` | `Long` | No |  |
| `response_message` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```java
Object result = client.outputActivateDigitalModule(null).create(Map.of(
), null);
```

### Common Methods

#### `data(newdata...) -> Object`

Get or set the entity data.

#### `match(newmatch...) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputActivateDigitalModule` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## OutputActivatePortalModule

```java
SdkEntity outputActivatePortalModule = client.outputActivatePortalModule(null);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `client_secret` | `String` | Yes |  |
| `notification_email` | `String` | Yes |  |
| `response_code` | `Long` | No |  |
| `response_message` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```java
Object result = client.outputActivatePortalModule(null).create(Map.of(
    "client_secret", "example_client_secret",  // String
    "notification_email", "example_notification_email"  // String
), null);
```

### Common Methods

#### `data(newdata...) -> Object`

Get or set the entity data.

#### `match(newmatch...) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputActivatePortalModule` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## OutputActivateStoreModule

```java
SdkEntity outputActivateStoreModule = client.outputActivateStoreModule(null);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `response_code` | `Long` | No |  |
| `response_message` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```java
Object result = client.outputActivateStoreModule(null).create(Map.of(
), null);
```

### Common Methods

#### `data(newdata...) -> Object`

Get or set the entity data.

#### `match(newmatch...) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputActivateStoreModule` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## OutputActivateUser

```java
SdkEntity outputActivateUser = client.outputActivateUser(null);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumer_uuid` | `String` | No |  |
| `response_code` | `Long` | No |  |
| `response_message` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```java
Object result = client.outputActivateUser(null).create(Map.of(
), null);
```

### Common Methods

#### `data(newdata...) -> Object`

Get or set the entity data.

#### `match(newmatch...) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputActivateUser` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## OutputAssignRole

```java
SdkEntity outputAssignRole = client.outputAssignRole(null);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumer_uuid` | `String` | Yes |  |
| `response_code` | `Long` | No |  |
| `response_message` | `String` | No |  |
| `role` | `List<Object>` | Yes |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```java
Object result = client.outputAssignRole(null).create(Map.of(
    "consumer_uuid", "example_consumer_uuid",  // String
    "role", List.of()  // List<Object>
), null);
```

### Common Methods

#### `data(newdata...) -> Object`

Get or set the entity data.

#### `match(newmatch...) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputAssignRole` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## OutputChangeLogo

```java
SdkEntity outputChangeLogo = client.outputChangeLogo(null);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `content_as_base64` | `String` | Yes |  |
| `mime_type` | `String` | Yes |  |
| `response_code` | `Long` | No |  |
| `response_message` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```java
Object result = client.outputChangeLogo(null).create(Map.of(
    "content_as_base64", "example_content_as_base64",  // String
    "mime_type", "example_mime_type"  // String
), null);
```

### Common Methods

#### `data(newdata...) -> Object`

Get or set the entity data.

#### `match(newmatch...) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputChangeLogo` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## OutputCreateMandator

```java
SdkEntity outputCreateMandator = client.outputCreateMandator(null);
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
| `mandator` | `Map<String, Object>` | No |  |
| `name` | `String` | Yes |  |
| `passport_number` | `String` | No |  |
| `phone` | `String` | Yes |  |
| `response_code` | `Long` | No |  |
| `response_message` | `String` | No |  |
| `salutation` | `String` | No |  |
| `state` | `String` | No |  |
| `street1` | `String` | No |  |
| `street2` | `String` | No |  |
| `zip_code` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```java
Object result = client.outputCreateMandator(null).create(Map.of(
    "description", "example_description",  // String
    "email", "example_email",  // String
    "login", "example_login",  // String
    "name", "example_name",  // String
    "phone", "example_phone"  // String
), null);
```

### Common Methods

#### `data(newdata...) -> Object`

Get or set the entity data.

#### `match(newmatch...) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputCreateMandator` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## OutputCreateServiceUser

```java
SdkEntity outputCreateServiceUser = client.outputCreateServiceUser(null);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `mandator_name` | `String` | Yes |  |
| `response_code` | `Long` | No |  |
| `response_message` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```java
Object result = client.outputCreateServiceUser(null).create(Map.of(
    "mandator_name", "example_mandator_name"  // String
), null);
```

### Common Methods

#### `data(newdata...) -> Object`

Get or set the entity data.

#### `match(newmatch...) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputCreateServiceUser` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## OutputDeactivateUser

```java
SdkEntity outputDeactivateUser = client.outputDeactivateUser(null);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumer_uuid` | `String` | No |  |
| `response_code` | `Long` | No |  |
| `response_message` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```java
Object result = client.outputDeactivateUser(null).create(Map.of(
), null);
```

### Common Methods

#### `data(newdata...) -> Object`

Get or set the entity data.

#### `match(newmatch...) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputDeactivateUser` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## OutputGetKycDocument

```java
SdkEntity outputGetKycDocument = client.outputGetKycDocument(null);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `case_id` | `String` | No |  |
| `encoded_data_base64` | `String` | No |  |
| `response_code` | `Long` | No |  |
| `response_message` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```java
Object result = client.outputGetKycDocument(null).create(Map.of(
), null);
```

### Common Methods

#### `data(newdata...) -> Object`

Get or set the entity data.

#### `match(newmatch...) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputGetKycDocument` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## OutputGetLogo

```java
SdkEntity outputGetLogo = client.outputGetLogo(null);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `content_as_base64` | `String` | Yes |  |
| `mime_type` | `String` | Yes |  |
| `response_code` | `Long` | No |  |
| `response_message` | `String` | No |  |

### Operations

#### `load(reqmatch, ctrl) -> Object`

Load a single entity matching the given criteria. Returns the entity data and raises on error.

```java
Object result = client.outputGetLogo(null).load(null, null);
```

### Common Methods

#### `data(newdata...) -> Object`

Get or set the entity data.

#### `match(newmatch...) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputGetLogo` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## OutputListOfAvailableRole

```java
SdkEntity outputListOfAvailableRole = client.outputListOfAvailableRole(null);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `available_role` | `List<Object>` | No |  |
| `response_code` | `Long` | No |  |
| `response_message` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```java
Object result = client.outputListOfAvailableRole(null).create(Map.of(
), null);
```

### Common Methods

#### `data(newdata...) -> Object`

Get or set the entity data.

#### `match(newmatch...) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputListOfAvailableRole` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## OutputListOfMandator

```java
SdkEntity outputListOfMandator = client.outputListOfMandator(null);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `filter` | `Map<String, Object>` | No |  |
| `list` | `List<Object>` | No |  |
| `pagination` | `Map<String, Object>` | No |  |
| `response_code` | `Long` | No |  |
| `response_message` | `String` | No |  |
| `sorting` | `Map<String, Object>` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```java
Object result = client.outputListOfMandator(null).create(Map.of(
), null);
```

### Common Methods

#### `data(newdata...) -> Object`

Get or set the entity data.

#### `match(newmatch...) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputListOfMandator` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## OutputListOfModule

```java
SdkEntity outputListOfModule = client.outputListOfModule(null);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `list` | `List<Object>` | No |  |
| `pagination` | `Map<String, Object>` | No |  |
| `response_code` | `Long` | No |  |
| `response_message` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```java
Object result = client.outputListOfModule(null).create(Map.of(
), null);
```

### Common Methods

#### `data(newdata...) -> Object`

Get or set the entity data.

#### `match(newmatch...) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputListOfModule` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## OutputListOfRoleGroup

```java
SdkEntity outputListOfRoleGroup = client.outputListOfRoleGroup(null);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `filter` | `Map<String, Object>` | No |  |
| `group_role` | `List<Object>` | No |  |
| `pagination` | `Map<String, Object>` | No |  |
| `response_code` | `Long` | No |  |
| `response_message` | `String` | No |  |
| `sorting` | `Map<String, Object>` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```java
Object result = client.outputListOfRoleGroup(null).create(Map.of(
), null);
```

### Common Methods

#### `data(newdata...) -> Object`

Get or set the entity data.

#### `match(newmatch...) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputListOfRoleGroup` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## OutputListOfTransactionsHistory

```java
SdkEntity outputListOfTransactionsHistory = client.outputListOfTransactionsHistory(null);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `filter` | `Map<String, Object>` | No |  |
| `list` | `List<Object>` | No |  |
| `pagination` | `Map<String, Object>` | No |  |
| `response_code` | `Long` | No |  |
| `response_message` | `String` | No |  |
| `sorting` | `Map<String, Object>` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```java
Object result = client.outputListOfTransactionsHistory(null).create(Map.of(
), null);
```

### Common Methods

#### `data(newdata...) -> Object`

Get or set the entity data.

#### `match(newmatch...) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputListOfTransactionsHistory` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## OutputListOfUser

```java
SdkEntity outputListOfUser = client.outputListOfUser(null);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `filter` | `Map<String, Object>` | No |  |
| `list` | `List<Object>` | No |  |
| `pagination` | `Map<String, Object>` | No |  |
| `response_code` | `Long` | No |  |
| `response_message` | `String` | No |  |
| `sorting` | `Map<String, Object>` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```java
Object result = client.outputListOfUser(null).create(Map.of(
), null);
```

### Common Methods

#### `data(newdata...) -> Object`

Get or set the entity data.

#### `match(newmatch...) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputListOfUser` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## OutputProvideCredential

```java
SdkEntity outputProvideCredential = client.outputProvideCredential(null);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `mandator_name` | `String` | Yes |  |
| `password` | `String` | No |  |
| `response_code` | `Long` | No |  |
| `response_message` | `String` | No |  |
| `username` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```java
Object result = client.outputProvideCredential(null).create(Map.of(
    "mandator_name", "example_mandator_name"  // String
), null);
```

### Common Methods

#### `data(newdata...) -> Object`

Get or set the entity data.

#### `match(newmatch...) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputProvideCredential` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## OutputRegisterUser

```java
SdkEntity outputRegisterUser = client.outputRegisterUser(null);
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
| `response_code` | `Long` | No |  |
| `response_message` | `String` | No |  |
| `salutation` | `String` | No |  |
| `state` | `String` | No |  |
| `street1` | `String` | No |  |
| `street2` | `String` | No |  |
| `zip` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```java
Object result = client.outputRegisterUser(null).create(Map.of(
    "email", "example_email"  // String
), null);
```

### Common Methods

#### `data(newdata...) -> Object`

Get or set the entity data.

#### `match(newmatch...) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputRegisterUser` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## OutputRemoveRole

```java
SdkEntity outputRemoveRole = client.outputRemoveRole(null);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumer_uuid` | `String` | No |  |
| `response_code` | `Long` | No |  |
| `response_message` | `String` | No |  |
| `role` | `List<Object>` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```java
Object result = client.outputRemoveRole(null).create(Map.of(
), null);
```

### Common Methods

#### `data(newdata...) -> Object`

Get or set the entity data.

#### `match(newmatch...) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputRemoveRole` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## OutputResendLink

```java
SdkEntity outputResendLink = client.outputResendLink(null);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `business_registration_number` | `String` | No |  |
| `consumer_uuid` | `String` | Yes |  |
| `email_confirmation_code` | `String` | No |  |
| `phone_number` | `String` | No |  |
| `response_code` | `Long` | No |  |
| `response_message` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```java
Object result = client.outputResendLink(null).create(Map.of(
    "consumer_uuid", "example_consumer_uuid"  // String
), null);
```

### Common Methods

#### `data(newdata...) -> Object`

Get or set the entity data.

#### `match(newmatch...) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputResendLink` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## OutputResetPassword

```java
SdkEntity outputResetPassword = client.outputResetPassword(null);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumer_uuid` | `String` | No |  |
| `phone_number` | `String` | No |  |
| `response_code` | `Long` | No |  |
| `response_message` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```java
Object result = client.outputResetPassword(null).create(Map.of(
), null);
```

### Common Methods

#### `data(newdata...) -> Object`

Get or set the entity data.

#### `match(newmatch...) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputResetPassword` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## OutputUpdateConsumer

```java
SdkEntity outputUpdateConsumer = client.outputUpdateConsumer(null);
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
| `kyc_passed` | `Boolean` | No |  |
| `last_name` | `String` | No |  |
| `nationality` | `String` | No |  |
| `passport_number` | `String` | No |  |
| `phone_number` | `String` | No |  |
| `place_of_birth` | `String` | No |  |
| `response_code` | `Long` | No |  |
| `response_message` | `String` | No |  |
| `state` | `String` | No |  |
| `street1` | `String` | No |  |
| `street2` | `String` | No |  |
| `transactionhistory_id` | `String` | No |  |
| `zip` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```java
Object result = client.outputUpdateConsumer(null).create(Map.of(
    "consumer_uuid", "example_consumer_uuid"  // String
), null);
```

### Common Methods

#### `data(newdata...) -> Object`

Get or set the entity data.

#### `match(newmatch...) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputUpdateConsumer` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## OutputUpdateProfile

```java
SdkEntity outputUpdateProfile = client.outputUpdateProfile(null);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumer_language` | `String` | No |  |
| `email` | `String` | No |  |
| `first_name` | `String` | No |  |
| `last_name` | `String` | No |  |
| `phone_number` | `String` | No |  |
| `response_code` | `Long` | No |  |
| `response_message` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```java
Object result = client.outputUpdateProfile(null).create(Map.of(
), null);
```

### Common Methods

#### `data(newdata...) -> Object`

Get or set the entity data.

#### `match(newmatch...) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputUpdateProfile` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## Version

```java
SdkEntity version = client.version(null);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `app_name` | `String` | No |  |
| `build_date` | `String` | No |  |
| `version` | `String` | No |  |

### Operations

#### `load(reqmatch, ctrl) -> Object`

Load a single entity matching the given criteria. Returns the entity data and raises on error.

```java
Object result = client.version(null).load(null, null);
```

### Common Methods

#### `data(newdata...) -> Object`

Get or set the entity data.

#### `match(newmatch...) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `Version` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## Features

| Feature | Version | Description |
| --- | --- | --- |
| `test` | 0.0.1 | In-memory mock transport for testing without a live server |


Features are activated via the `feature` option:

```java
Map<String, Object> feature = new java.util.LinkedHashMap<>();
feature.put("test", Map.of("active", true));
Map<String, Object> options = new java.util.LinkedHashMap<>();
options.put("feature", feature);
BluefinTecsUserBackofficeSDK client = new BluefinTecsUserBackofficeSDK(options);
```


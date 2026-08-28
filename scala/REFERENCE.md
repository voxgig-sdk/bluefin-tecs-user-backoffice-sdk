# BluefinTecsUserBackoffice Scala SDK Reference

Complete API reference for the BluefinTecsUserBackoffice Scala SDK.


## BluefinTecsUserBackofficeSDK

### Constructor

```scala
val client = new BluefinTecsUserBackofficeSDK(options)
```

Create a new SDK client instance. `options` is a `java.util.Map[String, Object]`.

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

```scala
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

#### `optionsMap() -> Map`

Return a deep copy of the current SDK options.

#### `getUtility() -> Utility`

Return a copy of the SDK utility object.

#### `direct(fetchargs) -> Map`

Make a direct HTTP request to any API endpoint. Returns a result
`java.util.Map[String, Object]` with `ok`, `status`, `headers`, and
`data` (or `err` on failure). This escape hatch never raises — branch on
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

**Returns:** `java.util.Map[String, Object]`

#### `prepare(fetchargs) -> Map`

Prepare a fetch definition without sending. Returns the `fetchdef` and raises on error.


---

## OutputActivateDigitalModule

```scala
val outputActivateDigitalModule = client.outputActivateDigitalModule(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `responseCode` | `java.lang.Long` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```scala
val result = client.outputActivateDigitalModule(null).create(java.util.Map.of(
), null)
```

### Common Methods

#### `data(newdata*) -> Object`

Get or set the entity data.

#### `matchArgs(newmatch*) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputActivateDigitalModule` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## OutputActivatePortalModule

```scala
val outputActivatePortalModule = client.outputActivatePortalModule(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clientSecret` | `String` | Yes |  |
| `notificationEmail` | `String` | Yes |  |
| `responseCode` | `java.lang.Long` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```scala
val result = client.outputActivatePortalModule(null).create(java.util.Map.of(
    "clientSecret", "example_clientSecret",  // String
    "notificationEmail", "example_notificationEmail"  // String
), null)
```

### Common Methods

#### `data(newdata*) -> Object`

Get or set the entity data.

#### `matchArgs(newmatch*) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputActivatePortalModule` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## OutputActivateStoreModule

```scala
val outputActivateStoreModule = client.outputActivateStoreModule(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `responseCode` | `java.lang.Long` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```scala
val result = client.outputActivateStoreModule(null).create(java.util.Map.of(
), null)
```

### Common Methods

#### `data(newdata*) -> Object`

Get or set the entity data.

#### `matchArgs(newmatch*) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputActivateStoreModule` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## OutputActivateUser

```scala
val outputActivateUser = client.outputActivateUser(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumerUUID` | `String` | No |  |
| `responseCode` | `java.lang.Long` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```scala
val result = client.outputActivateUser(null).create(java.util.Map.of(
), null)
```

### Common Methods

#### `data(newdata*) -> Object`

Get or set the entity data.

#### `matchArgs(newmatch*) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputActivateUser` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## OutputAssignRole

```scala
val outputAssignRole = client.outputAssignRole(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumerUUID` | `String` | Yes | Unique identifier of the consumer (user) to whom the role(s) will be assigned. |
| `responseCode` | `java.lang.Long` | No | Response code: 0 indicates success; any non-zero value indicates an error. |
| `responseMessage` | `String` | No | A human-readable message providing additional details about the outcome. |
| `roles` | `java.util.List[Object]` | Yes | List of roles to assign to the consumer. |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```scala
val result = client.outputAssignRole(null).create(java.util.Map.of(
    "consumerUUID", "example_consumerUUID",  // String
    "roles", java.util.List.of()  // java.util.List[Object]
), null)
```

### Common Methods

#### `data(newdata*) -> Object`

Get or set the entity data.

#### `matchArgs(newmatch*) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputAssignRole` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## OutputChangeLogo

```scala
val outputChangeLogo = client.outputChangeLogo(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `contentAsBase64` | `String` | Yes | The content of the image as base64 encoded string |
| `mimeType` | `String` | Yes | The MIME type of the image |
| `responseCode` | `java.lang.Long` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```scala
val result = client.outputChangeLogo(null).create(java.util.Map.of(
    "contentAsBase64", "example_contentAsBase64",  // String
    "mimeType", "example_mimeType"  // String
), null)
```

### Common Methods

#### `data(newdata*) -> Object`

Get or set the entity data.

#### `matchArgs(newmatch*) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputChangeLogo` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## OutputCreateMandator

```scala
val outputCreateMandator = client.outputCreateMandator(null)
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

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```scala
val result = client.outputCreateMandator(null).create(java.util.Map.of(
    "email", "example_email",  // String
    "login", "example_login",  // String
    "phone", "example_phone"  // String
), null)
```

### Common Methods

#### `data(newdata*) -> Object`

Get or set the entity data.

#### `matchArgs(newmatch*) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputCreateMandator` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## OutputCreateServiceUser

```scala
val outputCreateServiceUser = client.outputCreateServiceUser(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `mandatorName` | `String` | Yes |  |
| `responseCode` | `java.lang.Long` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```scala
val result = client.outputCreateServiceUser(null).create(java.util.Map.of(
    "mandatorName", "example_mandatorName"  // String
), null)
```

### Common Methods

#### `data(newdata*) -> Object`

Get or set the entity data.

#### `matchArgs(newmatch*) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputCreateServiceUser` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## OutputDeactivateUser

```scala
val outputDeactivateUser = client.outputDeactivateUser(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumerUUID` | `String` | No |  |
| `responseCode` | `java.lang.Long` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```scala
val result = client.outputDeactivateUser(null).create(java.util.Map.of(
), null)
```

### Common Methods

#### `data(newdata*) -> Object`

Get or set the entity data.

#### `matchArgs(newmatch*) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputDeactivateUser` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## OutputGetKycDocument

```scala
val outputGetKycDocument = client.outputGetKycDocument(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `caseID` | `String` | No |  |
| `encodedDataBase64` | `String` | No |  |
| `responseCode` | `java.lang.Long` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```scala
val result = client.outputGetKycDocument(null).create(java.util.Map.of(
), null)
```

### Common Methods

#### `data(newdata*) -> Object`

Get or set the entity data.

#### `matchArgs(newmatch*) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputGetKycDocument` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## OutputGetLogo

```scala
val outputGetLogo = client.outputGetLogo(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `contentAsBase64` | `String` | Yes | The content of the image as base64 encoded string |
| `mimeType` | `String` | Yes | The MIME type of the image |
| `responseCode` | `java.lang.Long` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `load(reqmatch, ctrl) -> Object`

Load a single entity matching the given criteria. Returns the entity data and raises on error.

```scala
val result = client.outputGetLogo(null).load(null, null)
```

### Common Methods

#### `data(newdata*) -> Object`

Get or set the entity data.

#### `matchArgs(newmatch*) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputGetLogo` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## OutputListOfAvailableRole

```scala
val outputListOfAvailableRole = client.outputListOfAvailableRole(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `availableRoles` | `java.util.List[Object]` | No |  |
| `responseCode` | `java.lang.Long` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```scala
val result = client.outputListOfAvailableRole(null).create(java.util.Map.of(
), null)
```

### Common Methods

#### `data(newdata*) -> Object`

Get or set the entity data.

#### `matchArgs(newmatch*) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputListOfAvailableRole` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## OutputListOfMandator

```scala
val outputListOfMandator = client.outputListOfMandator(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `filter` | `java.util.Map[String, Object]` | No |  |
| `list` | `java.util.List[Object]` | No |  |
| `pagination` | `java.util.Map[String, Object]` | No |  |
| `responseCode` | `java.lang.Long` | No |  |
| `responseMessage` | `String` | No |  |
| `sorting` | `java.util.Map[String, Object]` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```scala
val result = client.outputListOfMandator(null).create(java.util.Map.of(
), null)
```

### Common Methods

#### `data(newdata*) -> Object`

Get or set the entity data.

#### `matchArgs(newmatch*) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputListOfMandator` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## OutputListOfModule

```scala
val outputListOfModule = client.outputListOfModule(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `list` | `java.util.List[Object]` | No |  |
| `pagination` | `java.util.Map[String, Object]` | No |  |
| `responseCode` | `java.lang.Long` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```scala
val result = client.outputListOfModule(null).create(java.util.Map.of(
), null)
```

### Common Methods

#### `data(newdata*) -> Object`

Get or set the entity data.

#### `matchArgs(newmatch*) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputListOfModule` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## OutputListOfRoleGroup

```scala
val outputListOfRoleGroup = client.outputListOfRoleGroup(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `filter` | `java.util.Map[String, Object]` | No |  |
| `groupRoles` | `java.util.List[Object]` | No |  |
| `pagination` | `java.util.Map[String, Object]` | No |  |
| `responseCode` | `java.lang.Long` | No |  |
| `responseMessage` | `String` | No |  |
| `sorting` | `java.util.Map[String, Object]` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```scala
val result = client.outputListOfRoleGroup(null).create(java.util.Map.of(
), null)
```

### Common Methods

#### `data(newdata*) -> Object`

Get or set the entity data.

#### `matchArgs(newmatch*) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputListOfRoleGroup` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## OutputListOfTransactionsHistory

```scala
val outputListOfTransactionsHistory = client.outputListOfTransactionsHistory(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `filter` | `java.util.Map[String, Object]` | No |  |
| `list` | `java.util.List[Object]` | No |  |
| `pagination` | `java.util.Map[String, Object]` | No |  |
| `responseCode` | `java.lang.Long` | No |  |
| `responseMessage` | `String` | No |  |
| `sorting` | `java.util.Map[String, Object]` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```scala
val result = client.outputListOfTransactionsHistory(null).create(java.util.Map.of(
), null)
```

### Common Methods

#### `data(newdata*) -> Object`

Get or set the entity data.

#### `matchArgs(newmatch*) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputListOfTransactionsHistory` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## OutputListOfUser

```scala
val outputListOfUser = client.outputListOfUser(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `filter` | `java.util.Map[String, Object]` | No |  |
| `list` | `java.util.List[Object]` | No |  |
| `pagination` | `java.util.Map[String, Object]` | No |  |
| `responseCode` | `java.lang.Long` | No |  |
| `responseMessage` | `String` | No |  |
| `sorting` | `java.util.Map[String, Object]` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```scala
val result = client.outputListOfUser(null).create(java.util.Map.of(
), null)
```

### Common Methods

#### `data(newdata*) -> Object`

Get or set the entity data.

#### `matchArgs(newmatch*) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputListOfUser` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## OutputProvideCredential

```scala
val outputProvideCredential = client.outputProvideCredential(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `mandatorName` | `String` | Yes |  |
| `password` | `String` | No |  |
| `responseCode` | `java.lang.Long` | No |  |
| `responseMessage` | `String` | No |  |
| `username` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```scala
val result = client.outputProvideCredential(null).create(java.util.Map.of(
    "mandatorName", "example_mandatorName"  // String
), null)
```

### Common Methods

#### `data(newdata*) -> Object`

Get or set the entity data.

#### `matchArgs(newmatch*) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputProvideCredential` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## OutputRegisterUser

```scala
val outputRegisterUser = client.outputRegisterUser(null)
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
| `responseCode` | `java.lang.Long` | No | Response code (0 indicates success; non-zero indicates an error). |
| `responseMessage` | `String` | No | Human-readable response message. |
| `salutation` | `String` | No | User's salutation (e.g., Mr., Ms.). |
| `state` | `String` | No | User's state or region. |
| `street1` | `String` | No | Primary address line. |
| `street2` | `String` | No | Secondary address line. |
| `zip` | `String` | No | Postal code. |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```scala
val result = client.outputRegisterUser(null).create(java.util.Map.of(
    "email", "example_email"  // String
), null)
```

### Common Methods

#### `data(newdata*) -> Object`

Get or set the entity data.

#### `matchArgs(newmatch*) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputRegisterUser` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## OutputRemoveRole

```scala
val outputRemoveRole = client.outputRemoveRole(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumerUUID` | `String` | No |  |
| `responseCode` | `java.lang.Long` | No |  |
| `responseMessage` | `String` | No |  |
| `roles` | `java.util.List[Object]` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```scala
val result = client.outputRemoveRole(null).create(java.util.Map.of(
), null)
```

### Common Methods

#### `data(newdata*) -> Object`

Get or set the entity data.

#### `matchArgs(newmatch*) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputRemoveRole` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## OutputResendLink

```scala
val outputResendLink = client.outputResendLink(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `businessRegistrationNumber` | `String` | No |  |
| `consumerUUID` | `String` | Yes |  |
| `emailConfirmationCode` | `String` | No |  |
| `phoneNumber` | `String` | No |  |
| `responseCode` | `java.lang.Long` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```scala
val result = client.outputResendLink(null).create(java.util.Map.of(
    "consumerUUID", "example_consumerUUID"  // String
), null)
```

### Common Methods

#### `data(newdata*) -> Object`

Get or set the entity data.

#### `matchArgs(newmatch*) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputResendLink` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## OutputResetPassword

```scala
val outputResetPassword = client.outputResetPassword(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumerUuid` | `String` | No |  |
| `phoneNumber` | `String` | No |  |
| `responseCode` | `java.lang.Long` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```scala
val result = client.outputResetPassword(null).create(java.util.Map.of(
), null)
```

### Common Methods

#### `data(newdata*) -> Object`

Get or set the entity data.

#### `matchArgs(newmatch*) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputResetPassword` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## OutputUpdateConsumer

```scala
val outputUpdateConsumer = client.outputUpdateConsumer(null)
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
| `kycPassed` | `java.lang.Boolean` | No |  |
| `lastName` | `String` | No |  |
| `nationality` | `String` | No |  |
| `passportNumber` | `String` | No |  |
| `phoneNumber` | `String` | No |  |
| `placeOfBirth` | `String` | No |  |
| `responseCode` | `java.lang.Long` | No |  |
| `responseMessage` | `String` | No |  |
| `state` | `String` | No |  |
| `street1` | `String` | No |  |
| `street2` | `String` | No |  |
| `transactionhistory_id` | `String` | No |  |
| `zip` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```scala
val result = client.outputUpdateConsumer(null).create(java.util.Map.of(
    "consumerUuid", "example_consumerUuid"  // String
), null)
```

### Common Methods

#### `data(newdata*) -> Object`

Get or set the entity data.

#### `matchArgs(newmatch*) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputUpdateConsumer` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## OutputUpdateProfile

```scala
val outputUpdateProfile = client.outputUpdateProfile(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumerLanguage` | `String` | No |  |
| `email` | `String` | No |  |
| `firstName` | `String` | No |  |
| `lastName` | `String` | No |  |
| `phoneNumber` | `String` | No |  |
| `responseCode` | `java.lang.Long` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Object`

Create a new entity with the given data. Returns the created entity data and raises on error.

```scala
val result = client.outputUpdateProfile(null).create(java.util.Map.of(
), null)
```

### Common Methods

#### `data(newdata*) -> Object`

Get or set the entity data.

#### `matchArgs(newmatch*) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputUpdateProfile` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## Version

```scala
val version = client.version(null)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `appName` | `String` | No |  |
| `buildDate` | `String` | No |  |
| `version` | `String` | No |  |

### Operations

#### `load(reqmatch, ctrl) -> Object`

Load a single entity matching the given criteria. Returns the entity data and raises on error.

```scala
val result = client.version(null).load(null, null)
```

### Common Methods

#### `data(newdata*) -> Object`

Get or set the entity data.

#### `matchArgs(newmatch*) -> Object`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `Version` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## Features

| Feature | Version | Description |
| --- | --- | --- |
| `audit` | 0.0.1 | Structured audit trail of operations |
| `clienttrack` | 0.0.1 | Client identity and per-request correlation headers |
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

```scala
val feature = new java.util.LinkedHashMap[String, Object]()
feature.put("audit", java.util.Map.of("active", true))
feature.put("clienttrack", java.util.Map.of("active", true))
feature.put("idempotency", java.util.Map.of("active", true))
feature.put("log", java.util.Map.of("active", true))
feature.put("metrics", java.util.Map.of("active", true))
feature.put("paging", java.util.Map.of("active", true))
feature.put("ratelimit", java.util.Map.of("active", true))
feature.put("retry", java.util.Map.of("active", true))
feature.put("telemetry", java.util.Map.of("active", true))
feature.put("test", java.util.Map.of("active", true))
feature.put("timeout", java.util.Map.of("active", true))
val options = new java.util.LinkedHashMap[String, Object]()
options.put("feature", feature)
val client = new BluefinTecsUserBackofficeSDK(options)
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

`audit`, `clienttrack`, `idempotency`, `log`, `metrics`, `paging`, `telemetry`, `test` attach to pipeline hooks
rather than the transport, so their order does not affect what they observe.

#### `audit`

Structured audit trail of operations.

**Configuration**

| Option | Default |
|---|---|
| `active` | `false` |
| `actor` | `'anonymous'` |
| `max` | `1000` |

Options above are those the model carries a default for. A feature may
also accept callback options — a `sink` to receive each record, for
instance — which have no default and are covered in the full feature
reference.

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

Options above are those the model carries a default for. A feature may
also accept callback options — a `sink` to receive each record, for
instance — which have no default and are covered in the full feature
reference.

**Usage**

Set `feature.clienttrack.active` to true in the client options, and override any option above in the same entry. Every option keeps
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

Options above are those the model carries a default for. A feature may
also accept callback options — a `sink` to receive each record, for
instance — which have no default and are covered in the full feature
reference.

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

Options above are those the model carries a default for. A feature may
also accept callback options — a `sink` to receive each record, for
instance — which have no default and are covered in the full feature
reference.

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

Options above are those the model carries a default for. A feature may
also accept callback options — a `sink` to receive each record, for
instance — which have no default and are covered in the full feature
reference.

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

Options above are those the model carries a default for. A feature may
also accept callback options — a `sink` to receive each record, for
instance — which have no default and are covered in the full feature
reference.

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

Options above are those the model carries a default for. A feature may
also accept callback options — a `sink` to receive each record, for
instance — which have no default and are covered in the full feature
reference.

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

Options above are those the model carries a default for. A feature may
also accept callback options — a `sink` to receive each record, for
instance — which have no default and are covered in the full feature
reference.

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

Options above are those the model carries a default for. A feature may
also accept callback options — a `sink` to receive each record, for
instance — which have no default and are covered in the full feature
reference.

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

Options above are those the model carries a default for. A feature may
also accept callback options — a `sink` to receive each record, for
instance — which have no default and are covered in the full feature
reference.

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

Options above are those the model carries a default for. A feature may
also accept callback options — a `sink` to receive each record, for
instance — which have no default and are covered in the full feature
reference.

**Usage**

Set `feature.timeout.active` to true in the client options, and override any option above in the same entry. Every option keeps
its default unless you name it.

**Considerations**

- Wraps the transport: its place in the activation order decides what it
  sees. See [Ordering](#ordering) above.
- Inactive by default: leaving it out costs nothing at runtime.


# BluefinTecsUserBackoffice Swift SDK Reference

Complete API reference for the BluefinTecsUserBackoffice Swift SDK.


## BluefinTecsUserBackofficeSDK

### Constructor

```swift
let client = BluefinTecsUserBackofficeSDK(options)
```

Create a new SDK client instance. `options` is a `VMap` of `Value`.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `options` | `VMap` | SDK configuration options. |
| `options["apikey"]` | `String` | API key for authentication. |
| `options["base"]` | `String` | Base URL for API requests. |
| `options["prefix"]` | `String` | URL prefix appended after base. |
| `options["suffix"]` | `String` | URL suffix appended after path. |
| `options["headers"]` | `VMap` | Custom headers for all requests. |
| `options["feature"]` | `VMap` | Feature configuration. |
| `options["system"]` | `VMap` | System overrides (e.g. custom fetch). |


### Static Methods

#### `BluefinTecsUserBackofficeSDK.testSDK(testopts, sdkopts)`

Create a test client with mock features active. Both arguments may be `nil`.

```swift
let client = BluefinTecsUserBackofficeSDK.testSDK(nil, nil)
```


### Instance Methods

#### `OutputActivateDigitalModule(entopts)`

Create a new `OutputActivateDigitalModule` entity instance. Pass `nil` for no initial
options.

#### `OutputActivatePortalModule(entopts)`

Create a new `OutputActivatePortalModule` entity instance. Pass `nil` for no initial
options.

#### `OutputActivateStoreModule(entopts)`

Create a new `OutputActivateStoreModule` entity instance. Pass `nil` for no initial
options.

#### `OutputActivateUser(entopts)`

Create a new `OutputActivateUser` entity instance. Pass `nil` for no initial
options.

#### `OutputAssignRole(entopts)`

Create a new `OutputAssignRole` entity instance. Pass `nil` for no initial
options.

#### `OutputChangeLogo(entopts)`

Create a new `OutputChangeLogo` entity instance. Pass `nil` for no initial
options.

#### `OutputCreateMandator(entopts)`

Create a new `OutputCreateMandator` entity instance. Pass `nil` for no initial
options.

#### `OutputCreateServiceUser(entopts)`

Create a new `OutputCreateServiceUser` entity instance. Pass `nil` for no initial
options.

#### `OutputDeactivateUser(entopts)`

Create a new `OutputDeactivateUser` entity instance. Pass `nil` for no initial
options.

#### `OutputGetKycDocument(entopts)`

Create a new `OutputGetKycDocument` entity instance. Pass `nil` for no initial
options.

#### `OutputGetLogo(entopts)`

Create a new `OutputGetLogo` entity instance. Pass `nil` for no initial
options.

#### `OutputListOfAvailableRole(entopts)`

Create a new `OutputListOfAvailableRole` entity instance. Pass `nil` for no initial
options.

#### `OutputListOfMandator(entopts)`

Create a new `OutputListOfMandator` entity instance. Pass `nil` for no initial
options.

#### `OutputListOfModule(entopts)`

Create a new `OutputListOfModule` entity instance. Pass `nil` for no initial
options.

#### `OutputListOfRoleGroup(entopts)`

Create a new `OutputListOfRoleGroup` entity instance. Pass `nil` for no initial
options.

#### `OutputListOfTransactionsHistory(entopts)`

Create a new `OutputListOfTransactionsHistory` entity instance. Pass `nil` for no initial
options.

#### `OutputListOfUser(entopts)`

Create a new `OutputListOfUser` entity instance. Pass `nil` for no initial
options.

#### `OutputProvideCredential(entopts)`

Create a new `OutputProvideCredential` entity instance. Pass `nil` for no initial
options.

#### `OutputRegisterUser(entopts)`

Create a new `OutputRegisterUser` entity instance. Pass `nil` for no initial
options.

#### `OutputRemoveRole(entopts)`

Create a new `OutputRemoveRole` entity instance. Pass `nil` for no initial
options.

#### `OutputResendLink(entopts)`

Create a new `OutputResendLink` entity instance. Pass `nil` for no initial
options.

#### `OutputResetPassword(entopts)`

Create a new `OutputResetPassword` entity instance. Pass `nil` for no initial
options.

#### `OutputUpdateConsumer(entopts)`

Create a new `OutputUpdateConsumer` entity instance. Pass `nil` for no initial
options.

#### `OutputUpdateProfile(entopts)`

Create a new `OutputUpdateProfile` entity instance. Pass `nil` for no initial
options.

#### `Version(entopts)`

Create a new `Version` entity instance. Pass `nil` for no initial
options.

#### `optionsMap() -> VMap`

Return a deep copy of the current SDK options.

#### `getUtility() -> Utility`

Return a copy of the SDK utility object.

#### `direct(fetchargs) -> VMap`

Make a direct HTTP request to any API endpoint. Returns a result `VMap`
with `ok`, `status`, `headers`, and `data` (or `err` on failure).
This escape hatch never throws — branch on `result.entries["ok"]`.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `fetchargs["path"]` | `String` | URL path with optional `{param}` placeholders. |
| `fetchargs["method"]` | `String` | HTTP method (default: `"GET"`). |
| `fetchargs["params"]` | `VMap` | Path parameter values. |
| `fetchargs["query"]` | `VMap` | Query string parameters. |
| `fetchargs["headers"]` | `VMap` | Request headers (merged with defaults). |
| `fetchargs["body"]` | `Value` | Request body (maps are JSON-serialized). |

**Returns:** `VMap`

#### `prepare(fetchargs) throws -> VMap`

Prepare a fetch definition without sending. Returns the `fetchdef` and throws on error.


---

## OutputActivateDigitalModule

```swift
let outputActivateDigitalModule = client.OutputActivateDigitalModule()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.OutputActivateDigitalModule().create(VMap([
]), nil)
```

### Common Methods

#### `data(newdata?) -> Value`

Get or set the entity data.

#### `matchv(newmatch?) -> Value`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputActivateDigitalModule` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## OutputActivatePortalModule

```swift
let outputActivatePortalModule = client.OutputActivatePortalModule()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clientSecret` | `String` | Yes |  |
| `notificationEmail` | `String` | Yes |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.OutputActivatePortalModule().create(VMap([
    ("clientSecret", .string("example_clientSecret")),  // String
    ("notificationEmail", .string("example_notificationEmail"))  // String
]), nil)
```

### Common Methods

#### `data(newdata?) -> Value`

Get or set the entity data.

#### `matchv(newmatch?) -> Value`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputActivatePortalModule` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## OutputActivateStoreModule

```swift
let outputActivateStoreModule = client.OutputActivateStoreModule()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.OutputActivateStoreModule().create(VMap([
]), nil)
```

### Common Methods

#### `data(newdata?) -> Value`

Get or set the entity data.

#### `matchv(newmatch?) -> Value`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputActivateStoreModule` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## OutputActivateUser

```swift
let outputActivateUser = client.OutputActivateUser()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumerUUID` | `String` | No |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.OutputActivateUser().create(VMap([
]), nil)
```

### Common Methods

#### `data(newdata?) -> Value`

Get or set the entity data.

#### `matchv(newmatch?) -> Value`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputActivateUser` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## OutputAssignRole

```swift
let outputAssignRole = client.OutputAssignRole()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumerUUID` | `String` | Yes | Unique identifier of the consumer (user) to whom the role(s) will be assigned. |
| `responseCode` | `Int` | No | Response code: 0 indicates success; any non-zero value indicates an error. |
| `responseMessage` | `String` | No | A human-readable message providing additional details about the outcome. |
| `roles` | `[Value]` | Yes | List of roles to assign to the consumer. |

### Operations

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.OutputAssignRole().create(VMap([
    ("consumerUUID", .string("example_consumerUUID")),  // String
    ("roles", .list([]))  // [Value]
]), nil)
```

### Common Methods

#### `data(newdata?) -> Value`

Get or set the entity data.

#### `matchv(newmatch?) -> Value`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputAssignRole` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## OutputChangeLogo

```swift
let outputChangeLogo = client.OutputChangeLogo()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `contentAsBase64` | `String` | Yes | The content of the image as base64 encoded string |
| `mimeType` | `String` | Yes | The MIME type of the image |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.OutputChangeLogo().create(VMap([
    ("contentAsBase64", .string("example_contentAsBase64")),  // String
    ("mimeType", .string("example_mimeType"))  // String
]), nil)
```

### Common Methods

#### `data(newdata?) -> Value`

Get or set the entity data.

#### `matchv(newmatch?) -> Value`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputChangeLogo` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## OutputCreateMandator

```swift
let outputCreateMandator = client.OutputCreateMandator()
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

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.OutputCreateMandator().create(VMap([
    ("email", .string("example_email")),  // String
    ("login", .string("example_login")),  // String
    ("phone", .string("example_phone"))  // String
]), nil)
```

### Common Methods

#### `data(newdata?) -> Value`

Get or set the entity data.

#### `matchv(newmatch?) -> Value`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputCreateMandator` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## OutputCreateServiceUser

```swift
let outputCreateServiceUser = client.OutputCreateServiceUser()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `mandatorName` | `String` | Yes |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.OutputCreateServiceUser().create(VMap([
    ("mandatorName", .string("example_mandatorName"))  // String
]), nil)
```

### Common Methods

#### `data(newdata?) -> Value`

Get or set the entity data.

#### `matchv(newmatch?) -> Value`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputCreateServiceUser` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## OutputDeactivateUser

```swift
let outputDeactivateUser = client.OutputDeactivateUser()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumerUUID` | `String` | No |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.OutputDeactivateUser().create(VMap([
]), nil)
```

### Common Methods

#### `data(newdata?) -> Value`

Get or set the entity data.

#### `matchv(newmatch?) -> Value`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputDeactivateUser` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## OutputGetKycDocument

```swift
let outputGetKycDocument = client.OutputGetKycDocument()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `caseID` | `String` | No |  |
| `encodedDataBase64` | `String` | No |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.OutputGetKycDocument().create(VMap([
]), nil)
```

### Common Methods

#### `data(newdata?) -> Value`

Get or set the entity data.

#### `matchv(newmatch?) -> Value`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputGetKycDocument` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## OutputGetLogo

```swift
let outputGetLogo = client.OutputGetLogo()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `contentAsBase64` | `String` | Yes | The content of the image as base64 encoded string |
| `mimeType` | `String` | Yes | The MIME type of the image |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `load(reqmatch, ctrl) throws -> Value`

Load a single entity matching the given criteria. Returns the entity data and throws on error.

```swift
let result = try client.OutputGetLogo().load(nil, nil)
```

### Common Methods

#### `data(newdata?) -> Value`

Get or set the entity data.

#### `matchv(newmatch?) -> Value`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputGetLogo` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## OutputListOfAvailableRole

```swift
let outputListOfAvailableRole = client.OutputListOfAvailableRole()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `availableRoles` | `[Value]` | No |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.OutputListOfAvailableRole().create(VMap([
]), nil)
```

### Common Methods

#### `data(newdata?) -> Value`

Get or set the entity data.

#### `matchv(newmatch?) -> Value`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputListOfAvailableRole` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## OutputListOfMandator

```swift
let outputListOfMandator = client.OutputListOfMandator()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `filter` | `VMap` | No |  |
| `list` | `[Value]` | No |  |
| `pagination` | `VMap` | No |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |
| `sorting` | `VMap` | No |  |

### Operations

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.OutputListOfMandator().create(VMap([
]), nil)
```

### Common Methods

#### `data(newdata?) -> Value`

Get or set the entity data.

#### `matchv(newmatch?) -> Value`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputListOfMandator` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## OutputListOfModule

```swift
let outputListOfModule = client.OutputListOfModule()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `list` | `[Value]` | No |  |
| `pagination` | `VMap` | No |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.OutputListOfModule().create(VMap([
]), nil)
```

### Common Methods

#### `data(newdata?) -> Value`

Get or set the entity data.

#### `matchv(newmatch?) -> Value`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputListOfModule` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## OutputListOfRoleGroup

```swift
let outputListOfRoleGroup = client.OutputListOfRoleGroup()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `filter` | `VMap` | No |  |
| `groupRoles` | `[Value]` | No |  |
| `pagination` | `VMap` | No |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |
| `sorting` | `VMap` | No |  |

### Operations

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.OutputListOfRoleGroup().create(VMap([
]), nil)
```

### Common Methods

#### `data(newdata?) -> Value`

Get or set the entity data.

#### `matchv(newmatch?) -> Value`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputListOfRoleGroup` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## OutputListOfTransactionsHistory

```swift
let outputListOfTransactionsHistory = client.OutputListOfTransactionsHistory()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `filter` | `VMap` | No |  |
| `list` | `[Value]` | No |  |
| `pagination` | `VMap` | No |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |
| `sorting` | `VMap` | No |  |

### Operations

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.OutputListOfTransactionsHistory().create(VMap([
]), nil)
```

### Common Methods

#### `data(newdata?) -> Value`

Get or set the entity data.

#### `matchv(newmatch?) -> Value`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputListOfTransactionsHistory` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## OutputListOfUser

```swift
let outputListOfUser = client.OutputListOfUser()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `filter` | `VMap` | No |  |
| `list` | `[Value]` | No |  |
| `pagination` | `VMap` | No |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |
| `sorting` | `VMap` | No |  |

### Operations

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.OutputListOfUser().create(VMap([
]), nil)
```

### Common Methods

#### `data(newdata?) -> Value`

Get or set the entity data.

#### `matchv(newmatch?) -> Value`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputListOfUser` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## OutputProvideCredential

```swift
let outputProvideCredential = client.OutputProvideCredential()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `mandatorName` | `String` | Yes |  |
| `password` | `String` | No |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |
| `username` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.OutputProvideCredential().create(VMap([
    ("mandatorName", .string("example_mandatorName"))  // String
]), nil)
```

### Common Methods

#### `data(newdata?) -> Value`

Get or set the entity data.

#### `matchv(newmatch?) -> Value`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputProvideCredential` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## OutputRegisterUser

```swift
let outputRegisterUser = client.OutputRegisterUser()
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
| `responseCode` | `Int` | No | Response code (0 indicates success; non-zero indicates an error). |
| `responseMessage` | `String` | No | Human-readable response message. |
| `salutation` | `String` | No | User's salutation (e.g., Mr., Ms.). |
| `state` | `String` | No | User's state or region. |
| `street1` | `String` | No | Primary address line. |
| `street2` | `String` | No | Secondary address line. |
| `zip` | `String` | No | Postal code. |

### Operations

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.OutputRegisterUser().create(VMap([
    ("email", .string("example_email"))  // String
]), nil)
```

### Common Methods

#### `data(newdata?) -> Value`

Get or set the entity data.

#### `matchv(newmatch?) -> Value`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputRegisterUser` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## OutputRemoveRole

```swift
let outputRemoveRole = client.OutputRemoveRole()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumerUUID` | `String` | No |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |
| `roles` | `[Value]` | No |  |

### Operations

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.OutputRemoveRole().create(VMap([
]), nil)
```

### Common Methods

#### `data(newdata?) -> Value`

Get or set the entity data.

#### `matchv(newmatch?) -> Value`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputRemoveRole` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## OutputResendLink

```swift
let outputResendLink = client.OutputResendLink()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `businessRegistrationNumber` | `String` | No |  |
| `consumerUUID` | `String` | Yes |  |
| `emailConfirmationCode` | `String` | No |  |
| `phoneNumber` | `String` | No |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.OutputResendLink().create(VMap([
    ("consumerUUID", .string("example_consumerUUID"))  // String
]), nil)
```

### Common Methods

#### `data(newdata?) -> Value`

Get or set the entity data.

#### `matchv(newmatch?) -> Value`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputResendLink` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## OutputResetPassword

```swift
let outputResetPassword = client.OutputResetPassword()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumerUuid` | `String` | No |  |
| `phoneNumber` | `String` | No |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.OutputResetPassword().create(VMap([
]), nil)
```

### Common Methods

#### `data(newdata?) -> Value`

Get or set the entity data.

#### `matchv(newmatch?) -> Value`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputResetPassword` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## OutputUpdateConsumer

```swift
let outputUpdateConsumer = client.OutputUpdateConsumer()
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
| `kycPassed` | `Bool` | No |  |
| `lastName` | `String` | No |  |
| `nationality` | `String` | No |  |
| `passportNumber` | `String` | No |  |
| `phoneNumber` | `String` | No |  |
| `placeOfBirth` | `String` | No |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |
| `state` | `String` | No |  |
| `street1` | `String` | No |  |
| `street2` | `String` | No |  |
| `transactionhistory_id` | `String` | No |  |
| `zip` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.OutputUpdateConsumer().create(VMap([
    ("consumerUuid", .string("example_consumerUuid"))  // String
]), nil)
```

### Common Methods

#### `data(newdata?) -> Value`

Get or set the entity data.

#### `matchv(newmatch?) -> Value`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputUpdateConsumer` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## OutputUpdateProfile

```swift
let outputUpdateProfile = client.OutputUpdateProfile()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumerLanguage` | `String` | No |  |
| `email` | `String` | No |  |
| `firstName` | `String` | No |  |
| `lastName` | `String` | No |  |
| `phoneNumber` | `String` | No |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.OutputUpdateProfile().create(VMap([
]), nil)
```

### Common Methods

#### `data(newdata?) -> Value`

Get or set the entity data.

#### `matchv(newmatch?) -> Value`

Get or set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputUpdateProfile` entity instance with the same options.

#### `getName() -> String`

Return the entity name.


---

## Version

```swift
let version = client.Version()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `appName` | `String` | No |  |
| `buildDate` | `String` | No |  |
| `version` | `String` | No |  |

### Operations

#### `load(reqmatch, ctrl) throws -> Value`

Load a single entity matching the given criteria. Returns the entity data and throws on error.

```swift
let result = try client.Version().load(nil, nil)
```

### Common Methods

#### `data(newdata?) -> Value`

Get or set the entity data.

#### `matchv(newmatch?) -> Value`

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

```swift
let feature = VMap()
feature.entries["audit"] = .map([("active", .bool(true))])
feature.entries["clienttrack"] = .map([("active", .bool(true))])
feature.entries["idempotency"] = .map([("active", .bool(true))])
feature.entries["log"] = .map([("active", .bool(true))])
feature.entries["metrics"] = .map([("active", .bool(true))])
feature.entries["paging"] = .map([("active", .bool(true))])
feature.entries["ratelimit"] = .map([("active", .bool(true))])
feature.entries["retry"] = .map([("active", .bool(true))])
feature.entries["telemetry"] = .map([("active", .bool(true))])
feature.entries["test"] = .map([("active", .bool(true))])
feature.entries["timeout"] = .map([("active", .bool(true))])
let options = VMap()
options.entries["feature"] = .map(feature)
let client = BluefinTecsUserBackofficeSDK(options)
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


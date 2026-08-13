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
| `consumerUUID` | `String` | Yes |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |
| `roles` | `[Value]` | Yes |  |

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
| `contentAsBase64` | `String` | Yes |  |
| `mimeType` | `String` | Yes |  |
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
| `contentAsBase64` | `String` | Yes |  |
| `mimeType` | `String` | Yes |  |
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
| `city` | `String` | No |  |
| `consumerId` | `String` | No |  |
| `consumerLanguage` | `String` | No |  |
| `country` | `String` | No |  |
| `dateOfBirth` | `String` | No |  |
| `driverLicenceNumber` | `String` | No |  |
| `email` | `String` | Yes |  |
| `firstName` | `String` | No |  |
| `identificationNumber` | `String` | No |  |
| `lastName` | `String` | No |  |
| `login` | `String` | No |  |
| `module` | `String` | No |  |
| `passportNumber` | `String` | No |  |
| `phone` | `String` | No |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |
| `salutation` | `String` | No |  |
| `state` | `String` | No |  |
| `street1` | `String` | No |  |
| `street2` | `String` | No |  |
| `zip` | `String` | No |  |

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
| `test` | 0.0.1 | In-memory mock transport for testing without a live server |


Features are activated via the `feature` option:

```swift
let feature = VMap()
feature.entries["test"] = .map([("active", .bool(true))])
let options = VMap()
options.entries["feature"] = .map(feature)
let client = BluefinTecsUserBackofficeSDK(options)
```


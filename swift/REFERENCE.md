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
| `response_code` | `Int` | No |  |
| `response_message` | `String` | No |  |

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
| `client_secret` | `String` | Yes |  |
| `notification_email` | `String` | Yes |  |
| `response_code` | `Int` | No |  |
| `response_message` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.OutputActivatePortalModule().create(VMap([
    ("client_secret", .string("example_client_secret")),  // String
    ("notification_email", .string("example_notification_email"))  // String
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
| `response_code` | `Int` | No |  |
| `response_message` | `String` | No |  |

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
| `consumer_uuid` | `String` | No |  |
| `response_code` | `Int` | No |  |
| `response_message` | `String` | No |  |

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
| `consumer_uuid` | `String` | Yes |  |
| `response_code` | `Int` | No |  |
| `response_message` | `String` | No |  |
| `role` | `[Value]` | Yes |  |

### Operations

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.OutputAssignRole().create(VMap([
    ("consumer_uuid", .string("example_consumer_uuid")),  // String
    ("role", .list([]))  // [Value]
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
| `content_as_base64` | `String` | Yes |  |
| `mime_type` | `String` | Yes |  |
| `response_code` | `Int` | No |  |
| `response_message` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.OutputChangeLogo().create(VMap([
    ("content_as_base64", .string("example_content_as_base64")),  // String
    ("mime_type", .string("example_mime_type"))  // String
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
| `date_of_birth` | `String` | No |  |
| `description` | `String` | Yes |  |
| `drivers_license_number` | `String` | No |  |
| `email` | `String` | Yes |  |
| `first_name` | `String` | No |  |
| `identification_number` | `String` | No |  |
| `last_name` | `String` | No |  |
| `login` | `String` | Yes |  |
| `mandator` | `VMap` | No |  |
| `name` | `String` | Yes |  |
| `passport_number` | `String` | No |  |
| `phone` | `String` | Yes |  |
| `response_code` | `Int` | No |  |
| `response_message` | `String` | No |  |
| `salutation` | `String` | No |  |
| `state` | `String` | No |  |
| `street1` | `String` | No |  |
| `street2` | `String` | No |  |
| `zip_code` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.OutputCreateMandator().create(VMap([
    ("description", .string("example_description")),  // String
    ("email", .string("example_email")),  // String
    ("login", .string("example_login")),  // String
    ("name", .string("example_name")),  // String
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
| `mandator_name` | `String` | Yes |  |
| `response_code` | `Int` | No |  |
| `response_message` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.OutputCreateServiceUser().create(VMap([
    ("mandator_name", .string("example_mandator_name"))  // String
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
| `consumer_uuid` | `String` | No |  |
| `response_code` | `Int` | No |  |
| `response_message` | `String` | No |  |

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
| `case_id` | `String` | No |  |
| `encoded_data_base64` | `String` | No |  |
| `response_code` | `Int` | No |  |
| `response_message` | `String` | No |  |

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
| `content_as_base64` | `String` | Yes |  |
| `mime_type` | `String` | Yes |  |
| `response_code` | `Int` | No |  |
| `response_message` | `String` | No |  |

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
| `available_role` | `[Value]` | No |  |
| `response_code` | `Int` | No |  |
| `response_message` | `String` | No |  |

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
| `response_code` | `Int` | No |  |
| `response_message` | `String` | No |  |
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
| `response_code` | `Int` | No |  |
| `response_message` | `String` | No |  |

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
| `group_role` | `[Value]` | No |  |
| `pagination` | `VMap` | No |  |
| `response_code` | `Int` | No |  |
| `response_message` | `String` | No |  |
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
| `response_code` | `Int` | No |  |
| `response_message` | `String` | No |  |
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
| `response_code` | `Int` | No |  |
| `response_message` | `String` | No |  |
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
| `mandator_name` | `String` | Yes |  |
| `password` | `String` | No |  |
| `response_code` | `Int` | No |  |
| `response_message` | `String` | No |  |
| `username` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.OutputProvideCredential().create(VMap([
    ("mandator_name", .string("example_mandator_name"))  // String
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
| `response_code` | `Int` | No |  |
| `response_message` | `String` | No |  |
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
| `consumer_uuid` | `String` | No |  |
| `response_code` | `Int` | No |  |
| `response_message` | `String` | No |  |
| `role` | `[Value]` | No |  |

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
| `business_registration_number` | `String` | No |  |
| `consumer_uuid` | `String` | Yes |  |
| `email_confirmation_code` | `String` | No |  |
| `phone_number` | `String` | No |  |
| `response_code` | `Int` | No |  |
| `response_message` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl) throws -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```swift
let result = try client.OutputResendLink().create(VMap([
    ("consumer_uuid", .string("example_consumer_uuid"))  // String
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
| `consumer_uuid` | `String` | No |  |
| `phone_number` | `String` | No |  |
| `response_code` | `Int` | No |  |
| `response_message` | `String` | No |  |

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
| `consumer_uuid` | `String` | Yes |  |
| `consumerlanguage` | `String` | No |  |
| `country` | `String` | No |  |
| `date_of_birth` | `String` | No |  |
| `datetime_created` | `String` | No |  |
| `driver_licence_number` | `String` | No |  |
| `email` | `String` | No |  |
| `first_name` | `String` | No |  |
| `identification_number` | `String` | No |  |
| `kyc_passed` | `Bool` | No |  |
| `last_name` | `String` | No |  |
| `nationality` | `String` | No |  |
| `passport_number` | `String` | No |  |
| `phone_number` | `String` | No |  |
| `place_of_birth` | `String` | No |  |
| `response_code` | `Int` | No |  |
| `response_message` | `String` | No |  |
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
    ("consumer_uuid", .string("example_consumer_uuid"))  // String
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
| `consumer_language` | `String` | No |  |
| `email` | `String` | No |  |
| `first_name` | `String` | No |  |
| `last_name` | `String` | No |  |
| `phone_number` | `String` | No |  |
| `response_code` | `Int` | No |  |
| `response_message` | `String` | No |  |

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
| `app_name` | `String` | No |  |
| `build_date` | `String` | No |  |
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


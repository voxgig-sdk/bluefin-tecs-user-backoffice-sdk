# BluefinTecsUserBackoffice Lua SDK Reference

Complete API reference for the BluefinTecsUserBackoffice Lua SDK.


## BluefinTecsUserBackofficeSDK

### Constructor

```lua
local sdk = require("bluefin-tecs-user-backoffice_sdk")
local client = sdk.new(options)
```

Create a new SDK client instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `options` | `table` | SDK configuration options. |
| `options.apikey` | `string` | API key for authentication. |
| `options.base` | `string` | Base URL for API requests. |
| `options.prefix` | `string` | URL prefix appended after base. |
| `options.suffix` | `string` | URL suffix appended after path. |
| `options.headers` | `table` | Custom headers for all requests. |
| `options.feature` | `table` | Feature configuration. |
| `options.system` | `table` | System overrides (e.g. custom fetch). |


### Static Methods

#### `sdk.test(testopts?, sdkopts?)`

Create a test client with mock features active. Both arguments are optional.

```lua
local client = sdk.test()
```


### Instance Methods

#### `OutputActivateDigitalModule(data)`

Create a new `OutputActivateDigitalModule` entity instance. Pass `nil` for no initial data.

#### `OutputActivatePortalModule(data)`

Create a new `OutputActivatePortalModule` entity instance. Pass `nil` for no initial data.

#### `OutputActivateStoreModule(data)`

Create a new `OutputActivateStoreModule` entity instance. Pass `nil` for no initial data.

#### `OutputActivateUser(data)`

Create a new `OutputActivateUser` entity instance. Pass `nil` for no initial data.

#### `OutputAssignRole(data)`

Create a new `OutputAssignRole` entity instance. Pass `nil` for no initial data.

#### `OutputChangeLogo(data)`

Create a new `OutputChangeLogo` entity instance. Pass `nil` for no initial data.

#### `OutputCreateMandator(data)`

Create a new `OutputCreateMandator` entity instance. Pass `nil` for no initial data.

#### `OutputCreateServiceUser(data)`

Create a new `OutputCreateServiceUser` entity instance. Pass `nil` for no initial data.

#### `OutputDeactivateUser(data)`

Create a new `OutputDeactivateUser` entity instance. Pass `nil` for no initial data.

#### `OutputGetKycDocument(data)`

Create a new `OutputGetKycDocument` entity instance. Pass `nil` for no initial data.

#### `OutputGetLogo(data)`

Create a new `OutputGetLogo` entity instance. Pass `nil` for no initial data.

#### `OutputListOfAvailableRole(data)`

Create a new `OutputListOfAvailableRole` entity instance. Pass `nil` for no initial data.

#### `OutputListOfMandator(data)`

Create a new `OutputListOfMandator` entity instance. Pass `nil` for no initial data.

#### `OutputListOfModule(data)`

Create a new `OutputListOfModule` entity instance. Pass `nil` for no initial data.

#### `OutputListOfRoleGroup(data)`

Create a new `OutputListOfRoleGroup` entity instance. Pass `nil` for no initial data.

#### `OutputListOfTransactionsHistory(data)`

Create a new `OutputListOfTransactionsHistory` entity instance. Pass `nil` for no initial data.

#### `OutputListOfUser(data)`

Create a new `OutputListOfUser` entity instance. Pass `nil` for no initial data.

#### `OutputProvideCredential(data)`

Create a new `OutputProvideCredential` entity instance. Pass `nil` for no initial data.

#### `OutputRegisterUser(data)`

Create a new `OutputRegisterUser` entity instance. Pass `nil` for no initial data.

#### `OutputRemoveRole(data)`

Create a new `OutputRemoveRole` entity instance. Pass `nil` for no initial data.

#### `OutputResendLink(data)`

Create a new `OutputResendLink` entity instance. Pass `nil` for no initial data.

#### `OutputResetPassword(data)`

Create a new `OutputResetPassword` entity instance. Pass `nil` for no initial data.

#### `OutputUpdateConsumer(data)`

Create a new `OutputUpdateConsumer` entity instance. Pass `nil` for no initial data.

#### `OutputUpdateProfile(data)`

Create a new `OutputUpdateProfile` entity instance. Pass `nil` for no initial data.

#### `Version(data)`

Create a new `Version` entity instance. Pass `nil` for no initial data.

#### `options_map() -> table`

Return a deep copy of the current SDK options.

#### `get_utility() -> Utility`

Return a copy of the SDK utility object.

#### `direct(fetchargs) -> table, err`

Make a direct HTTP request to any API endpoint.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `fetchargs.path` | `string` | URL path with optional `{param}` placeholders. |
| `fetchargs.method` | `string` | HTTP method (default: `"GET"`). |
| `fetchargs.params` | `table` | Path parameter values for `{param}` substitution. |
| `fetchargs.query` | `table` | Query string parameters. |
| `fetchargs.headers` | `table` | Request headers (merged with defaults). |
| `fetchargs.body` | `any` | Request body (tables are JSON-serialized). |
| `fetchargs.ctrl` | `table` | Control options (e.g. `{ explain = true }`). |

**Returns:** `table, err`

#### `prepare(fetchargs) -> table, err`

Prepare a fetch definition without sending the request. Accepts the
same parameters as `direct()`.

**Returns:** `table, err`


---

## OutputActivateDigitalModuleEntity

```lua
local output_activate_digital_module = client:OutputActivateDigitalModule(nil)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `create(reqdata, ctrl) -> any, err`

Create a new entity with the given data.

```lua
local result, err = client:OutputActivateDigitalModule():create({
})
```

### Common Methods

#### `data_get() -> table`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> table`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputActivateDigitalModuleEntity` instance with the same client and
options.

#### `get_name() -> string`

Return the entity name.


---

## OutputActivatePortalModuleEntity

```lua
local output_activate_portal_module = client:OutputActivatePortalModule(nil)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clientSecret` | `string` | Yes |  |
| `notificationEmail` | `string` | Yes |  |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `create(reqdata, ctrl) -> any, err`

Create a new entity with the given data.

```lua
local result, err = client:OutputActivatePortalModule():create({
  clientSecret = --[[ string ]],
  notificationEmail = --[[ string ]],
})
```

### Common Methods

#### `data_get() -> table`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> table`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputActivatePortalModuleEntity` instance with the same client and
options.

#### `get_name() -> string`

Return the entity name.


---

## OutputActivateStoreModuleEntity

```lua
local output_activate_store_module = client:OutputActivateStoreModule(nil)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `create(reqdata, ctrl) -> any, err`

Create a new entity with the given data.

```lua
local result, err = client:OutputActivateStoreModule():create({
})
```

### Common Methods

#### `data_get() -> table`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> table`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputActivateStoreModuleEntity` instance with the same client and
options.

#### `get_name() -> string`

Return the entity name.


---

## OutputActivateUserEntity

```lua
local output_activate_user = client:OutputActivateUser(nil)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumerUUID` | `string` | No |  |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `create(reqdata, ctrl) -> any, err`

Create a new entity with the given data.

```lua
local result, err = client:OutputActivateUser():create({
})
```

### Common Methods

#### `data_get() -> table`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> table`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputActivateUserEntity` instance with the same client and
options.

#### `get_name() -> string`

Return the entity name.


---

## OutputAssignRoleEntity

```lua
local output_assign_role = client:OutputAssignRole(nil)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumerUUID` | `string` | Yes | Unique identifier of the consumer (user) to whom the role(s) will be assigned. |
| `responseCode` | `number` | No | Response code: 0 indicates success; any non-zero value indicates an error. |
| `responseMessage` | `string` | No | A human-readable message providing additional details about the outcome. |
| `roles` | `table` | Yes | List of roles to assign to the consumer. |

### Operations

#### `create(reqdata, ctrl) -> any, err`

Create a new entity with the given data.

```lua
local result, err = client:OutputAssignRole():create({
  consumerUUID = --[[ string ]],
  roles = --[[ table ]],
})
```

### Common Methods

#### `data_get() -> table`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> table`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputAssignRoleEntity` instance with the same client and
options.

#### `get_name() -> string`

Return the entity name.


---

## OutputChangeLogoEntity

```lua
local output_change_logo = client:OutputChangeLogo(nil)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `contentAsBase64` | `string` | Yes | The content of the image as base64 encoded string |
| `mimeType` | `string` | Yes | The MIME type of the image |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `create(reqdata, ctrl) -> any, err`

Create a new entity with the given data.

```lua
local result, err = client:OutputChangeLogo():create({
  contentAsBase64 = --[[ string ]],
  mimeType = --[[ string ]],
})
```

### Common Methods

#### `data_get() -> table`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> table`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputChangeLogoEntity` instance with the same client and
options.

#### `get_name() -> string`

Return the entity name.


---

## OutputCreateMandatorEntity

```lua
local output_create_mandator = client:OutputCreateMandator(nil)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `city` | `string` | No |  |
| `country` | `string` | No |  |
| `dateOfBirth` | `string` | No |  |
| `description` | `string` | No |  |
| `driversLicenseNumber` | `string` | No |  |
| `email` | `string` | Yes |  |
| `firstName` | `string` | No |  |
| `identificationNumber` | `string` | No |  |
| `lastName` | `string` | No |  |
| `login` | `string` | Yes |  |
| `name` | `string` | No |  |
| `passportNumber` | `string` | No |  |
| `phone` | `string` | Yes |  |
| `salutation` | `string` | No |  |
| `state` | `string` | No |  |
| `street1` | `string` | No |  |
| `street2` | `string` | No |  |
| `zipCode` | `string` | No |  |

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

#### `create(reqdata, ctrl) -> any, err`

Create a new entity with the given data.

```lua
local result, err = client:OutputCreateMandator():create({
  email = --[[ string ]],
  login = --[[ string ]],
  phone = --[[ string ]],
})
```

### Common Methods

#### `data_get() -> table`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> table`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputCreateMandatorEntity` instance with the same client and
options.

#### `get_name() -> string`

Return the entity name.


---

## OutputCreateServiceUserEntity

```lua
local output_create_service_user = client:OutputCreateServiceUser(nil)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `mandatorName` | `string` | Yes |  |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `create(reqdata, ctrl) -> any, err`

Create a new entity with the given data.

```lua
local result, err = client:OutputCreateServiceUser():create({
  mandatorName = --[[ string ]],
})
```

### Common Methods

#### `data_get() -> table`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> table`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputCreateServiceUserEntity` instance with the same client and
options.

#### `get_name() -> string`

Return the entity name.


---

## OutputDeactivateUserEntity

```lua
local output_deactivate_user = client:OutputDeactivateUser(nil)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumerUUID` | `string` | No |  |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `create(reqdata, ctrl) -> any, err`

Create a new entity with the given data.

```lua
local result, err = client:OutputDeactivateUser():create({
})
```

### Common Methods

#### `data_get() -> table`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> table`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputDeactivateUserEntity` instance with the same client and
options.

#### `get_name() -> string`

Return the entity name.


---

## OutputGetKycDocumentEntity

```lua
local output_get_kyc_document = client:OutputGetKycDocument(nil)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `caseID` | `string` | No |  |
| `encodedDataBase64` | `string` | No |  |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `create(reqdata, ctrl) -> any, err`

Create a new entity with the given data.

```lua
local result, err = client:OutputGetKycDocument():create({
})
```

### Common Methods

#### `data_get() -> table`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> table`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputGetKycDocumentEntity` instance with the same client and
options.

#### `get_name() -> string`

Return the entity name.


---

## OutputGetLogoEntity

```lua
local output_get_logo = client:OutputGetLogo(nil)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `contentAsBase64` | `string` | Yes | The content of the image as base64 encoded string |
| `mimeType` | `string` | Yes | The MIME type of the image |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `load(reqmatch, ctrl) -> any, err`

Load a single entity matching the given criteria.

```lua
local result, err = client:OutputGetLogo():load()
```

### Common Methods

#### `data_get() -> table`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> table`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputGetLogoEntity` instance with the same client and
options.

#### `get_name() -> string`

Return the entity name.


---

## OutputListOfAvailableRoleEntity

```lua
local output_list_of_available_role = client:OutputListOfAvailableRole(nil)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `availableRoles` | `table` | No |  |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `create(reqdata, ctrl) -> any, err`

Create a new entity with the given data.

```lua
local result, err = client:OutputListOfAvailableRole():create({
})
```

### Common Methods

#### `data_get() -> table`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> table`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputListOfAvailableRoleEntity` instance with the same client and
options.

#### `get_name() -> string`

Return the entity name.


---

## OutputListOfMandatorEntity

```lua
local output_list_of_mandator = client:OutputListOfMandator(nil)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `filter` | `table` | No |  |
| `list` | `table` | No |  |
| `pagination` | `table` | No |  |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |
| `sorting` | `table` | No |  |

### Operations

#### `create(reqdata, ctrl) -> any, err`

Create a new entity with the given data.

```lua
local result, err = client:OutputListOfMandator():create({
})
```

### Common Methods

#### `data_get() -> table`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> table`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputListOfMandatorEntity` instance with the same client and
options.

#### `get_name() -> string`

Return the entity name.


---

## OutputListOfModuleEntity

```lua
local output_list_of_module = client:OutputListOfModule(nil)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `list` | `table` | No |  |
| `pagination` | `table` | No |  |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `create(reqdata, ctrl) -> any, err`

Create a new entity with the given data.

```lua
local result, err = client:OutputListOfModule():create({
})
```

### Common Methods

#### `data_get() -> table`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> table`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputListOfModuleEntity` instance with the same client and
options.

#### `get_name() -> string`

Return the entity name.


---

## OutputListOfRoleGroupEntity

```lua
local output_list_of_role_group = client:OutputListOfRoleGroup(nil)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `filter` | `table` | No |  |
| `groupRoles` | `table` | No |  |
| `pagination` | `table` | No |  |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |
| `sorting` | `table` | No |  |

### Operations

#### `create(reqdata, ctrl) -> any, err`

Create a new entity with the given data.

```lua
local result, err = client:OutputListOfRoleGroup():create({
})
```

### Common Methods

#### `data_get() -> table`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> table`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputListOfRoleGroupEntity` instance with the same client and
options.

#### `get_name() -> string`

Return the entity name.


---

## OutputListOfTransactionsHistoryEntity

```lua
local output_list_of_transactions_history = client:OutputListOfTransactionsHistory(nil)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `filter` | `table` | No |  |
| `list` | `table` | No |  |
| `pagination` | `table` | No |  |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |
| `sorting` | `table` | No |  |

### Operations

#### `create(reqdata, ctrl) -> any, err`

Create a new entity with the given data.

```lua
local result, err = client:OutputListOfTransactionsHistory():create({
})
```

### Common Methods

#### `data_get() -> table`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> table`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputListOfTransactionsHistoryEntity` instance with the same client and
options.

#### `get_name() -> string`

Return the entity name.


---

## OutputListOfUserEntity

```lua
local output_list_of_user = client:OutputListOfUser(nil)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `filter` | `table` | No |  |
| `list` | `table` | No |  |
| `pagination` | `table` | No |  |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |
| `sorting` | `table` | No |  |

### Operations

#### `create(reqdata, ctrl) -> any, err`

Create a new entity with the given data.

```lua
local result, err = client:OutputListOfUser():create({
})
```

### Common Methods

#### `data_get() -> table`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> table`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputListOfUserEntity` instance with the same client and
options.

#### `get_name() -> string`

Return the entity name.


---

## OutputProvideCredentialEntity

```lua
local output_provide_credential = client:OutputProvideCredential(nil)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `mandatorName` | `string` | Yes |  |
| `password` | `string` | No |  |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |
| `username` | `string` | No |  |

### Operations

#### `create(reqdata, ctrl) -> any, err`

Create a new entity with the given data.

```lua
local result, err = client:OutputProvideCredential():create({
  mandatorName = --[[ string ]],
})
```

### Common Methods

#### `data_get() -> table`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> table`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputProvideCredentialEntity` instance with the same client and
options.

#### `get_name() -> string`

Return the entity name.


---

## OutputRegisterUserEntity

```lua
local output_register_user = client:OutputRegisterUser(nil)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `city` | `string` | No | City where the user resides. |
| `consumerId` | `string` | No | User login or unique user identifier. |
| `consumerLanguage` | `string` | No | Preferred language for the user (e.g., 'en'). |
| `country` | `string` | No | User's country. |
| `dateOfBirth` | `string` | No | User's date of birth (expected format: dd.MM.yyyy). |
| `driverLicenceNumber` | `string` | No | User's driver's license number. |
| `email` | `string` | Yes | User's email address (must be unique). |
| `firstName` | `string` | No | User's first name. |
| `identificationNumber` | `string` | No | User's identification number. |
| `lastName` | `string` | No | User's last name. |
| `login` | `string` | No | User login identifier (should be unique). |
| `module` | `string` | No | Module identifier (if applicable). |
| `passportNumber` | `string` | No | User's passport number. |
| `phone` | `string` | No | User's phone number. |
| `responseCode` | `number` | No | Response code (0 indicates success; non-zero indicates an error). |
| `responseMessage` | `string` | No | Human-readable response message. |
| `salutation` | `string` | No | User's salutation (e.g., Mr., Ms.). |
| `state` | `string` | No | User's state or region. |
| `street1` | `string` | No | Primary address line. |
| `street2` | `string` | No | Secondary address line. |
| `zip` | `string` | No | Postal code. |

### Operations

#### `create(reqdata, ctrl) -> any, err`

Create a new entity with the given data.

```lua
local result, err = client:OutputRegisterUser():create({
  email = --[[ string ]],
})
```

### Common Methods

#### `data_get() -> table`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> table`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputRegisterUserEntity` instance with the same client and
options.

#### `get_name() -> string`

Return the entity name.


---

## OutputRemoveRoleEntity

```lua
local output_remove_role = client:OutputRemoveRole(nil)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumerUUID` | `string` | No |  |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |
| `roles` | `table` | No |  |

### Operations

#### `create(reqdata, ctrl) -> any, err`

Create a new entity with the given data.

```lua
local result, err = client:OutputRemoveRole():create({
})
```

### Common Methods

#### `data_get() -> table`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> table`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputRemoveRoleEntity` instance with the same client and
options.

#### `get_name() -> string`

Return the entity name.


---

## OutputResendLinkEntity

```lua
local output_resend_link = client:OutputResendLink(nil)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `businessRegistrationNumber` | `string` | No |  |
| `consumerUUID` | `string` | Yes |  |
| `emailConfirmationCode` | `string` | No |  |
| `phoneNumber` | `string` | No |  |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `create(reqdata, ctrl) -> any, err`

Create a new entity with the given data.

```lua
local result, err = client:OutputResendLink():create({
  consumerUUID = --[[ string ]],
})
```

### Common Methods

#### `data_get() -> table`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> table`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputResendLinkEntity` instance with the same client and
options.

#### `get_name() -> string`

Return the entity name.


---

## OutputResetPasswordEntity

```lua
local output_reset_password = client:OutputResetPassword(nil)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumerUuid` | `string` | No |  |
| `phoneNumber` | `string` | No |  |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `create(reqdata, ctrl) -> any, err`

Create a new entity with the given data.

```lua
local result, err = client:OutputResetPassword():create({
})
```

### Common Methods

#### `data_get() -> table`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> table`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputResetPasswordEntity` instance with the same client and
options.

#### `get_name() -> string`

Return the entity name.


---

## OutputUpdateConsumerEntity

```lua
local output_update_consumer = client:OutputUpdateConsumer(nil)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `city` | `string` | No |  |
| `consumerUuid` | `string` | Yes |  |
| `consumerlanguage` | `string` | No |  |
| `country` | `string` | No |  |
| `dateOfBirth` | `string` | No |  |
| `datetime_created` | `string` | No |  |
| `driverLicenceNumber` | `string` | No |  |
| `email` | `string` | No |  |
| `firstName` | `string` | No |  |
| `identificationNumber` | `string` | No |  |
| `kycPassed` | `boolean` | No |  |
| `lastName` | `string` | No |  |
| `nationality` | `string` | No |  |
| `passportNumber` | `string` | No |  |
| `phoneNumber` | `string` | No |  |
| `placeOfBirth` | `string` | No |  |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |
| `state` | `string` | No |  |
| `street1` | `string` | No |  |
| `street2` | `string` | No |  |
| `transactionhistory_id` | `string` | No |  |
| `zip` | `string` | No |  |

### Operations

#### `create(reqdata, ctrl) -> any, err`

Create a new entity with the given data.

```lua
local result, err = client:OutputUpdateConsumer():create({
  consumerUuid = --[[ string ]],
})
```

### Common Methods

#### `data_get() -> table`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> table`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputUpdateConsumerEntity` instance with the same client and
options.

#### `get_name() -> string`

Return the entity name.


---

## OutputUpdateProfileEntity

```lua
local output_update_profile = client:OutputUpdateProfile(nil)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumerLanguage` | `string` | No |  |
| `email` | `string` | No |  |
| `firstName` | `string` | No |  |
| `lastName` | `string` | No |  |
| `phoneNumber` | `string` | No |  |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `create(reqdata, ctrl) -> any, err`

Create a new entity with the given data.

```lua
local result, err = client:OutputUpdateProfile():create({
})
```

### Common Methods

#### `data_get() -> table`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> table`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputUpdateProfileEntity` instance with the same client and
options.

#### `get_name() -> string`

Return the entity name.


---

## VersionEntity

```lua
local version = client:Version(nil)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `appName` | `string` | No |  |
| `buildDate` | `string` | No |  |
| `version` | `string` | No |  |

### Operations

#### `load(reqmatch, ctrl) -> any, err`

Load a single entity matching the given criteria.

```lua
local result, err = client:Version():load()
```

### Common Methods

#### `data_get() -> table`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> table`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `VersionEntity` instance with the same client and
options.

#### `get_name() -> string`

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

```lua
local client = sdk.new({
  feature = {
    audit = { active = true },
    clienttrack = { active = true },
    idempotency = { active = true },
    log = { active = true },
    metrics = { active = true },
    paging = { active = true },
    ratelimit = { active = true },
    retry = { active = true },
    telemetry = { active = true },
    test = { active = true },
    timeout = { active = true },
  },
})
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


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
| `response_code` | `number` | No |  |
| `response_message` | `string` | No |  |

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
| `client_secret` | `string` | Yes |  |
| `notification_email` | `string` | Yes |  |
| `response_code` | `number` | No |  |
| `response_message` | `string` | No |  |

### Operations

#### `create(reqdata, ctrl) -> any, err`

Create a new entity with the given data.

```lua
local result, err = client:OutputActivatePortalModule():create({
  client_secret = --[[ string ]],
  notification_email = --[[ string ]],
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
| `response_code` | `number` | No |  |
| `response_message` | `string` | No |  |

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
| `consumer_uuid` | `string` | No |  |
| `response_code` | `number` | No |  |
| `response_message` | `string` | No |  |

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
| `consumer_uuid` | `string` | Yes |  |
| `response_code` | `number` | No |  |
| `response_message` | `string` | No |  |
| `role` | `table` | Yes |  |

### Operations

#### `create(reqdata, ctrl) -> any, err`

Create a new entity with the given data.

```lua
local result, err = client:OutputAssignRole():create({
  consumer_uuid = --[[ string ]],
  role = --[[ table ]],
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
| `content_as_base64` | `string` | Yes |  |
| `mime_type` | `string` | Yes |  |
| `response_code` | `number` | No |  |
| `response_message` | `string` | No |  |

### Operations

#### `create(reqdata, ctrl) -> any, err`

Create a new entity with the given data.

```lua
local result, err = client:OutputChangeLogo():create({
  content_as_base64 = --[[ string ]],
  mime_type = --[[ string ]],
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
| `date_of_birth` | `string` | No |  |
| `description` | `string` | Yes |  |
| `drivers_license_number` | `string` | No |  |
| `email` | `string` | Yes |  |
| `first_name` | `string` | No |  |
| `identification_number` | `string` | No |  |
| `last_name` | `string` | No |  |
| `login` | `string` | Yes |  |
| `mandator` | `table` | No |  |
| `name` | `string` | Yes |  |
| `passport_number` | `string` | No |  |
| `phone` | `string` | Yes |  |
| `response_code` | `number` | No |  |
| `response_message` | `string` | No |  |
| `salutation` | `string` | No |  |
| `state` | `string` | No |  |
| `street1` | `string` | No |  |
| `street2` | `string` | No |  |
| `zip_code` | `string` | No |  |

### Operations

#### `create(reqdata, ctrl) -> any, err`

Create a new entity with the given data.

```lua
local result, err = client:OutputCreateMandator():create({
  description = --[[ string ]],
  email = --[[ string ]],
  login = --[[ string ]],
  name = --[[ string ]],
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
| `mandator_name` | `string` | Yes |  |
| `response_code` | `number` | No |  |
| `response_message` | `string` | No |  |

### Operations

#### `create(reqdata, ctrl) -> any, err`

Create a new entity with the given data.

```lua
local result, err = client:OutputCreateServiceUser():create({
  mandator_name = --[[ string ]],
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
| `consumer_uuid` | `string` | No |  |
| `response_code` | `number` | No |  |
| `response_message` | `string` | No |  |

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
| `case_id` | `string` | No |  |
| `encoded_data_base64` | `string` | No |  |
| `response_code` | `number` | No |  |
| `response_message` | `string` | No |  |

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
| `content_as_base64` | `string` | Yes |  |
| `mime_type` | `string` | Yes |  |
| `response_code` | `number` | No |  |
| `response_message` | `string` | No |  |

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
| `available_role` | `table` | No |  |
| `response_code` | `number` | No |  |
| `response_message` | `string` | No |  |

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
| `response_code` | `number` | No |  |
| `response_message` | `string` | No |  |
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
| `response_code` | `number` | No |  |
| `response_message` | `string` | No |  |

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
| `group_role` | `table` | No |  |
| `pagination` | `table` | No |  |
| `response_code` | `number` | No |  |
| `response_message` | `string` | No |  |
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
| `response_code` | `number` | No |  |
| `response_message` | `string` | No |  |
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
| `response_code` | `number` | No |  |
| `response_message` | `string` | No |  |
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
| `mandator_name` | `string` | Yes |  |
| `password` | `string` | No |  |
| `response_code` | `number` | No |  |
| `response_message` | `string` | No |  |
| `username` | `string` | No |  |

### Operations

#### `create(reqdata, ctrl) -> any, err`

Create a new entity with the given data.

```lua
local result, err = client:OutputProvideCredential():create({
  mandator_name = --[[ string ]],
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
| `city` | `string` | No |  |
| `consumer_id` | `string` | No |  |
| `consumer_language` | `string` | No |  |
| `country` | `string` | No |  |
| `date_of_birth` | `string` | No |  |
| `driver_licence_number` | `string` | No |  |
| `email` | `string` | Yes |  |
| `first_name` | `string` | No |  |
| `identification_number` | `string` | No |  |
| `last_name` | `string` | No |  |
| `login` | `string` | No |  |
| `module` | `string` | No |  |
| `passport_number` | `string` | No |  |
| `phone` | `string` | No |  |
| `response_code` | `number` | No |  |
| `response_message` | `string` | No |  |
| `salutation` | `string` | No |  |
| `state` | `string` | No |  |
| `street1` | `string` | No |  |
| `street2` | `string` | No |  |
| `zip` | `string` | No |  |

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
| `consumer_uuid` | `string` | No |  |
| `response_code` | `number` | No |  |
| `response_message` | `string` | No |  |
| `role` | `table` | No |  |

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
| `business_registration_number` | `string` | No |  |
| `consumer_uuid` | `string` | Yes |  |
| `email_confirmation_code` | `string` | No |  |
| `phone_number` | `string` | No |  |
| `response_code` | `number` | No |  |
| `response_message` | `string` | No |  |

### Operations

#### `create(reqdata, ctrl) -> any, err`

Create a new entity with the given data.

```lua
local result, err = client:OutputResendLink():create({
  consumer_uuid = --[[ string ]],
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
| `consumer_uuid` | `string` | No |  |
| `phone_number` | `string` | No |  |
| `response_code` | `number` | No |  |
| `response_message` | `string` | No |  |

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
| `consumer_uuid` | `string` | Yes |  |
| `consumerlanguage` | `string` | No |  |
| `country` | `string` | No |  |
| `date_of_birth` | `string` | No |  |
| `datetime_created` | `string` | No |  |
| `driver_licence_number` | `string` | No |  |
| `email` | `string` | No |  |
| `first_name` | `string` | No |  |
| `identification_number` | `string` | No |  |
| `kyc_passed` | `boolean` | No |  |
| `last_name` | `string` | No |  |
| `nationality` | `string` | No |  |
| `passport_number` | `string` | No |  |
| `phone_number` | `string` | No |  |
| `place_of_birth` | `string` | No |  |
| `response_code` | `number` | No |  |
| `response_message` | `string` | No |  |
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
  consumer_uuid = --[[ string ]],
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
| `consumer_language` | `string` | No |  |
| `email` | `string` | No |  |
| `first_name` | `string` | No |  |
| `last_name` | `string` | No |  |
| `phone_number` | `string` | No |  |
| `response_code` | `number` | No |  |
| `response_message` | `string` | No |  |

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
| `app_name` | `string` | No |  |
| `build_date` | `string` | No |  |
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
| `test` | 0.0.1 | In-memory mock transport for testing without a live server |


Features are activated via the `feature` option:

```lua
local client = sdk.new({
  feature = {
    test = { active = true },
  },
})
```


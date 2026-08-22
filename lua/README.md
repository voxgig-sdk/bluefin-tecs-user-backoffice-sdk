# BluefinTecsUserBackoffice Lua SDK



The Lua SDK for the BluefinTecsUserBackoffice API — an entity-oriented client using Lua conventions.

It exposes the API as capitalised, semantic **Entities** — e.g. `client:OutputActivateDigitalModule()` — each with the same small set of operations (`load`, `create`) instead of raw URL paths and query strings. You call meaning, not endpoints, which keeps the cognitive load low.

> Other languages, the CLI, and MCP server live alongside this one — see
> the [top-level README](../README.md).


## Install
This package is not yet published to LuaRocks. Install it from the
GitHub release tag (`lua/vX.Y.Z`, see [Releases](https://github.com/voxgig-sdk/bluefin-tecs-user-backoffice-sdk/releases)),
or add the source directory to your `LUA_PATH`:

```bash
export LUA_PATH="path/to/lua/?.lua;path/to/lua/?/init.lua;;"
```


## Tutorial: your first API call

This tutorial walks through creating a client, listing entities, and
loading a specific record.

### 1. Create a client

```lua
local sdk = require("bluefin-tecs-user-backoffice_sdk")

local client = sdk.new({
  apikey = os.getenv("BLUEFIN_TECS_USER_BACKOFFICE_APIKEY"),
})
```

### 4. Create, update, and remove

```lua
-- Create
local created, err = client:OutputActivateDigitalModule():create({ responseCode = 1, responseMessage = "example_responseMessage" })
if err then error(err) end

```


## Error handling

Entity operations return `(value, err)`. Check `err` before using
the value:

```lua
local outputgetlogo, err = client:OutputGetLogo():load()
if err then error(err) end
```

`direct` follows the same `(value, err)` convention:

```lua
local result, err = client:direct({
  path = "/api/resource/{id}",
  method = "GET",
  params = { id = "example_id" },
})
if err then error(err) end
```


## How-to guides

### Make a direct HTTP request

For endpoints not covered by entity methods:

```lua
local result, err = client:direct({
  path = "/api/resource/{id}",
  method = "GET",
  params = { id = "example" },
})
if err then error(err) end

if result["ok"] then
  print(result["status"])  -- 200
  print(result["data"])    -- response body
end
```

### Prepare a request without sending it

```lua
local fetchdef, err = client:prepare({
  path = "/api/resource/{id}",
  method = "DELETE",
  params = { id = "example" },
})
if err then error(err) end

print(fetchdef["url"])
print(fetchdef["method"])
print(fetchdef["headers"])
```

### Use test mode

Create a mock client for unit testing — no server required:

```lua
local client = sdk.test()

local result, err = client:OutputGetLogo():load()
-- result is the returned data; err is set on failure
```

### Use a custom fetch function

Replace the HTTP transport with your own function:

```lua
local function mock_fetch(url, init)
  return {
    status = 200,
    statusText = "OK",
    headers = {},
    json = function()
      return { id = "mock01" }
    end,
  }, nil
end

local client = sdk.new({
  base = "http://localhost:8080",
  system = {
    fetch = mock_fetch,
  },
})
```

### Run live tests

Create a `.env.local` file at the project root:

```
BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE=TRUE
BLUEFIN_TECS_USER_BACKOFFICE_APIKEY=<your-key>
```

Then run:

```bash
cd lua && busted test/
```


## Reference

### BluefinTecsUserBackofficeSDK

```lua
local sdk = require("bluefin-tecs-user-backoffice_sdk")
local client = sdk.new(options)
```

Creates a new SDK client.

| Option | Type | Description |
| --- | --- | --- |
| `apikey` | `string` | API key for authentication. |
| `base` | `string` | Base URL of the API server. |
| `prefix` | `string` | URL path prefix prepended to all requests. |
| `suffix` | `string` | URL path suffix appended to all requests. |
| `feature` | `table` | Feature activation flags. |
| `extend` | `table` | Additional Feature instances to load. |
| `system` | `table` | System overrides (e.g. custom `fetch` function). |

### test

```lua
local client = sdk.test(testopts, sdkopts)
```

Creates a test-mode client with mock transport. Both arguments may be `nil`.

### BluefinTecsUserBackofficeSDK methods

| Method | Signature | Description |
| --- | --- | --- |
| `options_map` | `() -> table` | Deep copy of current SDK options. |
| `get_utility` | `() -> Utility` | Copy of the SDK utility object. |
| `prepare` | `(fetchargs) -> table, err` | Build an HTTP request definition without sending. |
| `direct` | `(fetchargs) -> table, err` | Build and send an HTTP request. |
| `OutputActivateDigitalModule` | `(data) -> OutputActivateDigitalModuleEntity` | Create an OutputActivateDigitalModule entity instance. |
| `OutputActivatePortalModule` | `(data) -> OutputActivatePortalModuleEntity` | Create an OutputActivatePortalModule entity instance. |
| `OutputActivateStoreModule` | `(data) -> OutputActivateStoreModuleEntity` | Create an OutputActivateStoreModule entity instance. |
| `OutputActivateUser` | `(data) -> OutputActivateUserEntity` | Create an OutputActivateUser entity instance. |
| `OutputAssignRole` | `(data) -> OutputAssignRoleEntity` | Create an OutputAssignRole entity instance. |
| `OutputChangeLogo` | `(data) -> OutputChangeLogoEntity` | Create an OutputChangeLogo entity instance. |
| `OutputCreateMandator` | `(data) -> OutputCreateMandatorEntity` | Create an OutputCreateMandator entity instance. |
| `OutputCreateServiceUser` | `(data) -> OutputCreateServiceUserEntity` | Create an OutputCreateServiceUser entity instance. |
| `OutputDeactivateUser` | `(data) -> OutputDeactivateUserEntity` | Create an OutputDeactivateUser entity instance. |
| `OutputGetKycDocument` | `(data) -> OutputGetKycDocumentEntity` | Create an OutputGetKycDocument entity instance. |
| `OutputGetLogo` | `(data) -> OutputGetLogoEntity` | Create an OutputGetLogo entity instance. |
| `OutputListOfAvailableRole` | `(data) -> OutputListOfAvailableRoleEntity` | Create an OutputListOfAvailableRole entity instance. |
| `OutputListOfMandator` | `(data) -> OutputListOfMandatorEntity` | Create an OutputListOfMandator entity instance. |
| `OutputListOfModule` | `(data) -> OutputListOfModuleEntity` | Create an OutputListOfModule entity instance. |
| `OutputListOfRoleGroup` | `(data) -> OutputListOfRoleGroupEntity` | Create an OutputListOfRoleGroup entity instance. |
| `OutputListOfTransactionsHistory` | `(data) -> OutputListOfTransactionsHistoryEntity` | Create an OutputListOfTransactionsHistory entity instance. |
| `OutputListOfUser` | `(data) -> OutputListOfUserEntity` | Create an OutputListOfUser entity instance. |
| `OutputProvideCredential` | `(data) -> OutputProvideCredentialEntity` | Create an OutputProvideCredential entity instance. |
| `OutputRegisterUser` | `(data) -> OutputRegisterUserEntity` | Create an OutputRegisterUser entity instance. |
| `OutputRemoveRole` | `(data) -> OutputRemoveRoleEntity` | Create an OutputRemoveRole entity instance. |
| `OutputResendLink` | `(data) -> OutputResendLinkEntity` | Create an OutputResendLink entity instance. |
| `OutputResetPassword` | `(data) -> OutputResetPasswordEntity` | Create an OutputResetPassword entity instance. |
| `OutputUpdateConsumer` | `(data) -> OutputUpdateConsumerEntity` | Create an OutputUpdateConsumer entity instance. |
| `OutputUpdateProfile` | `(data) -> OutputUpdateProfileEntity` | Create an OutputUpdateProfile entity instance. |
| `Version` | `(data) -> VersionEntity` | Create a Version entity instance. |

### Entity interface

All entities share the same interface.

| Method | Signature | Description |
| --- | --- | --- |
| `load` | `(reqmatch, ctrl) -> any, err` | Load a single entity by match criteria. |
| `create` | `(reqdata, ctrl) -> any, err` | Create a new entity. |
| `data_get` | `() -> table` | Get entity data. |
| `data_set` | `(data)` | Set entity data. |
| `match_get` | `() -> table` | Get entity match criteria. |
| `match_set` | `(match)` | Set entity match criteria. |
| `make` | `() -> Entity` | Create a new instance with the same options. |
| `get_name` | `() -> string` | Return the entity name. |

### Result shape

Entity operations return `(value, err)`. The `value` is the operation's
data **directly** — there is no wrapper:

| Operation | `value` |
| --- | --- |
| `load` / `create` | the entity record (a `table`) |

Check `err` first (it is non-`nil` on failure), then use `value`:

    local output_get_logo, err = client:OutputGetLogo():load()
    if err then error(err) end
    -- output_get_logo is the loaded record

Only `direct()` returns a response envelope — a `table` with `ok`,
`status`, `headers`, and `data` keys.

### Entities

#### OutputActivateDigitalModule

| Field | Description |
| --- | --- |
| `responseCode` |  |
| `responseMessage` |  |

Operations: Create.

API path: `/activateDigitalModule`

#### OutputActivatePortalModule

| Field | Description |
| --- | --- |
| `clientSecret` |  |
| `notificationEmail` |  |
| `responseCode` |  |
| `responseMessage` |  |

Operations: Create.

API path: `/activateMerchantPortalModule`

#### OutputActivateStoreModule

| Field | Description |
| --- | --- |
| `responseCode` |  |
| `responseMessage` |  |

Operations: Create.

API path: `/activateAppStoreModule`

#### OutputActivateUser

| Field | Description |
| --- | --- |
| `consumerUUID` |  |
| `responseCode` |  |
| `responseMessage` |  |

Operations: Create.

API path: `/activateUser`

#### OutputAssignRole

| Field | Description |
| --- | --- |
| `consumerUUID` | Unique identifier of the consumer (user) to whom the role(s) will be assigned. |
| `responseCode` | Response code: 0 indicates success; any non-zero value indicates an error. |
| `responseMessage` | A human-readable message providing additional details about the outcome. |
| `roles` | List of roles to assign to the consumer. |

Operations: Create.

API path: `/assignRoles`

#### OutputChangeLogo

| Field | Description |
| --- | --- |
| `contentAsBase64` | The content of the image as base64 encoded string |
| `mimeType` | The MIME type of the image |
| `responseCode` |  |
| `responseMessage` |  |

Operations: Create.

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

Operations: Create.

API path: `/createMandator`

#### OutputCreateServiceUser

| Field | Description |
| --- | --- |
| `mandatorName` |  |
| `responseCode` |  |
| `responseMessage` |  |

Operations: Create.

API path: `/createServiceUser`

#### OutputDeactivateUser

| Field | Description |
| --- | --- |
| `consumerUUID` |  |
| `responseCode` |  |
| `responseMessage` |  |

Operations: Create.

API path: `/deactivateUser`

#### OutputGetKycDocument

| Field | Description |
| --- | --- |
| `caseID` |  |
| `encodedDataBase64` |  |
| `responseCode` |  |
| `responseMessage` |  |

Operations: Create.

API path: `/getKycDocument`

#### OutputGetLogo

| Field | Description |
| --- | --- |
| `contentAsBase64` | The content of the image as base64 encoded string |
| `mimeType` | The MIME type of the image |
| `responseCode` |  |
| `responseMessage` |  |

Operations: Load.

API path: `/getLogo`

#### OutputListOfAvailableRole

| Field | Description |
| --- | --- |
| `availableRoles` |  |
| `responseCode` |  |
| `responseMessage` |  |

Operations: Create.

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

Operations: Create.

API path: `/listOfMandators`

#### OutputListOfModule

| Field | Description |
| --- | --- |
| `list` |  |
| `pagination` |  |
| `responseCode` |  |
| `responseMessage` |  |

Operations: Create.

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

Operations: Create.

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

Operations: Create.

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

Operations: Create.

API path: `/listOfUsers`

#### OutputProvideCredential

| Field | Description |
| --- | --- |
| `mandatorName` |  |
| `password` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `username` |  |

Operations: Create.

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

Operations: Create.

API path: `/registerUser`

#### OutputRemoveRole

| Field | Description |
| --- | --- |
| `consumerUUID` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `roles` |  |

Operations: Create.

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

Operations: Create.

API path: `/resendLink`

#### OutputResetPassword

| Field | Description |
| --- | --- |
| `consumerUuid` |  |
| `phoneNumber` |  |
| `responseCode` |  |
| `responseMessage` |  |

Operations: Create.

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

Operations: Create.

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

Operations: Create.

API path: `/updateProfile`

#### Version

| Field | Description |
| --- | --- |
| `appName` |  |
| `buildDate` |  |
| `version` |  |

Operations: Load.

API path: `/version`



## Entities


### OutputActivateDigitalModule

Create an instance: `local output_activate_digital_module = client:OutputActivateDigitalModule(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `responseCode` | `number` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```lua
local output_activate_digital_module, err = client:OutputActivateDigitalModule():create({
})
```


### OutputActivatePortalModule

Create an instance: `local output_activate_portal_module = client:OutputActivatePortalModule(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clientSecret` | `string` |  |
| `notificationEmail` | `string` |  |
| `responseCode` | `number` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```lua
local output_activate_portal_module, err = client:OutputActivatePortalModule():create({
  clientSecret = "example_clientSecret", -- string
  notificationEmail = "example_notificationEmail", -- string
})
```


### OutputActivateStoreModule

Create an instance: `local output_activate_store_module = client:OutputActivateStoreModule(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `responseCode` | `number` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```lua
local output_activate_store_module, err = client:OutputActivateStoreModule():create({
})
```


### OutputActivateUser

Create an instance: `local output_activate_user = client:OutputActivateUser(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumerUUID` | `string` |  |
| `responseCode` | `number` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```lua
local output_activate_user, err = client:OutputActivateUser():create({
})
```


### OutputAssignRole

Create an instance: `local output_assign_role = client:OutputAssignRole(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumerUUID` | `string` | Unique identifier of the consumer (user) to whom the role(s) will be assigned. |
| `responseCode` | `number` | Response code: 0 indicates success; any non-zero value indicates an error. |
| `responseMessage` | `string` | A human-readable message providing additional details about the outcome. |
| `roles` | `table` | List of roles to assign to the consumer. |

#### Example: Create

```lua
local output_assign_role, err = client:OutputAssignRole():create({
  consumerUUID = "example_consumerUUID", -- string
  roles = {}, -- table
})
```


### OutputChangeLogo

Create an instance: `local output_change_logo = client:OutputChangeLogo(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `contentAsBase64` | `string` | The content of the image as base64 encoded string |
| `mimeType` | `string` | The MIME type of the image |
| `responseCode` | `number` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```lua
local output_change_logo, err = client:OutputChangeLogo():create({
  contentAsBase64 = "example_contentAsBase64", -- string
  mimeType = "example_mimeType", -- string
})
```


### OutputCreateMandator

Create an instance: `local output_create_mandator = client:OutputCreateMandator(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `city` | `string` |  |
| `country` | `string` |  |
| `dateOfBirth` | `string` |  |
| `description` | `string` |  |
| `driversLicenseNumber` | `string` |  |
| `email` | `string` |  |
| `firstName` | `string` |  |
| `identificationNumber` | `string` |  |
| `lastName` | `string` |  |
| `login` | `string` |  |
| `name` | `string` |  |
| `passportNumber` | `string` |  |
| `phone` | `string` |  |
| `salutation` | `string` |  |
| `state` | `string` |  |
| `street1` | `string` |  |
| `street2` | `string` |  |
| `zipCode` | `string` |  |

#### Example: Create

```lua
local output_create_mandator, err = client:OutputCreateMandator():create({
  email = "example_email", -- string
  login = "example_login", -- string
  phone = "example_phone", -- string
})
```


### OutputCreateServiceUser

Create an instance: `local output_create_service_user = client:OutputCreateServiceUser(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `mandatorName` | `string` |  |
| `responseCode` | `number` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```lua
local output_create_service_user, err = client:OutputCreateServiceUser():create({
  mandatorName = "example_mandatorName", -- string
})
```


### OutputDeactivateUser

Create an instance: `local output_deactivate_user = client:OutputDeactivateUser(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumerUUID` | `string` |  |
| `responseCode` | `number` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```lua
local output_deactivate_user, err = client:OutputDeactivateUser():create({
})
```


### OutputGetKycDocument

Create an instance: `local output_get_kyc_document = client:OutputGetKycDocument(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `caseID` | `string` |  |
| `encodedDataBase64` | `string` |  |
| `responseCode` | `number` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```lua
local output_get_kyc_document, err = client:OutputGetKycDocument():create({
})
```


### OutputGetLogo

Create an instance: `local output_get_logo = client:OutputGetLogo(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `load(match)` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `contentAsBase64` | `string` | The content of the image as base64 encoded string |
| `mimeType` | `string` | The MIME type of the image |
| `responseCode` | `number` |  |
| `responseMessage` | `string` |  |

#### Example: Load

```lua
local output_get_logo, err = client:OutputGetLogo():load()
```


### OutputListOfAvailableRole

Create an instance: `local output_list_of_available_role = client:OutputListOfAvailableRole(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `availableRoles` | `table` |  |
| `responseCode` | `number` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```lua
local output_list_of_available_role, err = client:OutputListOfAvailableRole():create({
})
```


### OutputListOfMandator

Create an instance: `local output_list_of_mandator = client:OutputListOfMandator(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `filter` | `table` |  |
| `list` | `table` |  |
| `pagination` | `table` |  |
| `responseCode` | `number` |  |
| `responseMessage` | `string` |  |
| `sorting` | `table` |  |

#### Example: Create

```lua
local output_list_of_mandator, err = client:OutputListOfMandator():create({
})
```


### OutputListOfModule

Create an instance: `local output_list_of_module = client:OutputListOfModule(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `list` | `table` |  |
| `pagination` | `table` |  |
| `responseCode` | `number` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```lua
local output_list_of_module, err = client:OutputListOfModule():create({
})
```


### OutputListOfRoleGroup

Create an instance: `local output_list_of_role_group = client:OutputListOfRoleGroup(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `filter` | `table` |  |
| `groupRoles` | `table` |  |
| `pagination` | `table` |  |
| `responseCode` | `number` |  |
| `responseMessage` | `string` |  |
| `sorting` | `table` |  |

#### Example: Create

```lua
local output_list_of_role_group, err = client:OutputListOfRoleGroup():create({
})
```


### OutputListOfTransactionsHistory

Create an instance: `local output_list_of_transactions_history = client:OutputListOfTransactionsHistory(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `filter` | `table` |  |
| `list` | `table` |  |
| `pagination` | `table` |  |
| `responseCode` | `number` |  |
| `responseMessage` | `string` |  |
| `sorting` | `table` |  |

#### Example: Create

```lua
local output_list_of_transactions_history, err = client:OutputListOfTransactionsHistory():create({
})
```


### OutputListOfUser

Create an instance: `local output_list_of_user = client:OutputListOfUser(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `filter` | `table` |  |
| `list` | `table` |  |
| `pagination` | `table` |  |
| `responseCode` | `number` |  |
| `responseMessage` | `string` |  |
| `sorting` | `table` |  |

#### Example: Create

```lua
local output_list_of_user, err = client:OutputListOfUser():create({
})
```


### OutputProvideCredential

Create an instance: `local output_provide_credential = client:OutputProvideCredential(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `mandatorName` | `string` |  |
| `password` | `string` |  |
| `responseCode` | `number` |  |
| `responseMessage` | `string` |  |
| `username` | `string` |  |

#### Example: Create

```lua
local output_provide_credential, err = client:OutputProvideCredential():create({
  mandatorName = "example_mandatorName", -- string
})
```


### OutputRegisterUser

Create an instance: `local output_register_user = client:OutputRegisterUser(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `city` | `string` | City where the user resides. |
| `consumerId` | `string` | User login or unique user identifier. |
| `consumerLanguage` | `string` | Preferred language for the user (e.g., 'en'). |
| `country` | `string` | User's country. |
| `dateOfBirth` | `string` | User's date of birth (expected format: dd.MM.yyyy). |
| `driverLicenceNumber` | `string` | User's driver's license number. |
| `email` | `string` | User's email address (must be unique). |
| `firstName` | `string` | User's first name. |
| `identificationNumber` | `string` | User's identification number. |
| `lastName` | `string` | User's last name. |
| `login` | `string` | User login identifier (should be unique). |
| `module` | `string` | Module identifier (if applicable). |
| `passportNumber` | `string` | User's passport number. |
| `phone` | `string` | User's phone number. |
| `responseCode` | `number` | Response code (0 indicates success; non-zero indicates an error). |
| `responseMessage` | `string` | Human-readable response message. |
| `salutation` | `string` | User's salutation (e.g., Mr., Ms.). |
| `state` | `string` | User's state or region. |
| `street1` | `string` | Primary address line. |
| `street2` | `string` | Secondary address line. |
| `zip` | `string` | Postal code. |

#### Example: Create

```lua
local output_register_user, err = client:OutputRegisterUser():create({
  email = "example_email", -- string
})
```


### OutputRemoveRole

Create an instance: `local output_remove_role = client:OutputRemoveRole(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumerUUID` | `string` |  |
| `responseCode` | `number` |  |
| `responseMessage` | `string` |  |
| `roles` | `table` |  |

#### Example: Create

```lua
local output_remove_role, err = client:OutputRemoveRole():create({
})
```


### OutputResendLink

Create an instance: `local output_resend_link = client:OutputResendLink(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `businessRegistrationNumber` | `string` |  |
| `consumerUUID` | `string` |  |
| `emailConfirmationCode` | `string` |  |
| `phoneNumber` | `string` |  |
| `responseCode` | `number` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```lua
local output_resend_link, err = client:OutputResendLink():create({
  consumerUUID = "example_consumerUUID", -- string
})
```


### OutputResetPassword

Create an instance: `local output_reset_password = client:OutputResetPassword(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumerUuid` | `string` |  |
| `phoneNumber` | `string` |  |
| `responseCode` | `number` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```lua
local output_reset_password, err = client:OutputResetPassword():create({
})
```


### OutputUpdateConsumer

Create an instance: `local output_update_consumer = client:OutputUpdateConsumer(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `city` | `string` |  |
| `consumerUuid` | `string` |  |
| `consumerlanguage` | `string` |  |
| `country` | `string` |  |
| `dateOfBirth` | `string` |  |
| `datetime_created` | `string` |  |
| `driverLicenceNumber` | `string` |  |
| `email` | `string` |  |
| `firstName` | `string` |  |
| `identificationNumber` | `string` |  |
| `kycPassed` | `boolean` |  |
| `lastName` | `string` |  |
| `nationality` | `string` |  |
| `passportNumber` | `string` |  |
| `phoneNumber` | `string` |  |
| `placeOfBirth` | `string` |  |
| `responseCode` | `number` |  |
| `responseMessage` | `string` |  |
| `state` | `string` |  |
| `street1` | `string` |  |
| `street2` | `string` |  |
| `transactionhistory_id` | `string` |  |
| `zip` | `string` |  |

#### Example: Create

```lua
local output_update_consumer, err = client:OutputUpdateConsumer():create({
  consumerUuid = "example_consumerUuid", -- string
})
```


### OutputUpdateProfile

Create an instance: `local output_update_profile = client:OutputUpdateProfile(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumerLanguage` | `string` |  |
| `email` | `string` |  |
| `firstName` | `string` |  |
| `lastName` | `string` |  |
| `phoneNumber` | `string` |  |
| `responseCode` | `number` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```lua
local output_update_profile, err = client:OutputUpdateProfile():create({
})
```


### Version

Create an instance: `local version = client:Version(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `load(match)` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `appName` | `string` |  |
| `buildDate` | `string` |  |
| `version` | `string` |  |

#### Example: Load

```lua
local version, err = client:Version():load()
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

Features are the extension mechanism. A feature is a Lua table
with hook methods named after pipeline stages (e.g. `PrePoint`,
`PreSpec`). Each method receives the context.

The SDK ships with built-in features:

- **TestFeature**: In-memory mock transport for testing without a live server

Features are initialized in order. Hooks fire in the order features
were added, so later features can override earlier ones.

### Data as tables

The Lua SDK uses plain Lua tables throughout rather than typed
objects. This mirrors the dynamic nature of the API and keeps the
SDK flexible — no code generation is needed when the API schema
changes.

Use `helpers.to_map()` to safely validate that a value is a table.

### Module structure

```
lua/
├── bluefin-tecs-user-backoffice_sdk.lua    -- Main SDK module
├── config.lua               -- Configuration
├── features.lua             -- Feature factory
├── core/                    -- Core types and context
├── entity/                  -- Entity implementations
├── feature/                 -- Built-in features (Base, Test, Log)
├── utility/                 -- Utility functions and struct library
└── test/                    -- Test suites
```

The main module (`bluefin-tecs-user-backoffice_sdk`) exports the SDK constructor
and test helper. Import entity or utility modules directly only
when needed.

### Entity state

Entity instances are stateful. After a successful `load`, the entity
stores the returned data and match criteria internally.

```lua
local outputgetlogo = client:OutputGetLogo()
outputgetlogo:load()

-- outputgetlogo:data_get() now returns the outputgetlogo data from the last load
-- outputgetlogo:match_get() returns the last match criteria
```

Call `make()` to create a fresh instance with the same configuration
but no stored state.

### Direct vs entity access

The entity interface handles URL construction, parameter placement,
and response parsing automatically. Use it for standard CRUD operations.

`direct()` gives full control over the HTTP request. Use it for
non-standard endpoints, bulk operations, or any path not modelled as
an entity. `prepare()` builds the request without sending it — useful
for debugging or custom transport.


## Full Reference

See [REFERENCE.md](REFERENCE.md) for complete API reference
documentation including all method signatures, entity field schemas,
and detailed usage examples.

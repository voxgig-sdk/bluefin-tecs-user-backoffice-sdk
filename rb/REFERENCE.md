# BluefinTecsUserBackoffice Ruby SDK Reference

Complete API reference for the BluefinTecsUserBackoffice Ruby SDK.


## BluefinTecsUserBackofficeSDK

### Constructor

```ruby
require_relative 'BluefinTecsUserBackoffice_sdk'

client = BluefinTecsUserBackofficeSDK.new(options)
```

Create a new SDK client instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `options` | `Hash` | SDK configuration options. |
| `options["apikey"]` | `String` | API key for authentication. |
| `options["base"]` | `String` | Base URL for API requests. |
| `options["prefix"]` | `String` | URL prefix appended after base. |
| `options["suffix"]` | `String` | URL suffix appended after path. |
| `options["headers"]` | `Hash` | Custom headers for all requests. |
| `options["feature"]` | `Hash` | Feature configuration. |
| `options["system"]` | `Hash` | System overrides (e.g. custom fetch). |


### Static Methods

#### `BluefinTecsUserBackofficeSDK.test(testopts = nil, sdkopts = nil)`

Create a test client with mock features active. Both arguments may be `nil`.

```ruby
client = BluefinTecsUserBackofficeSDK.test
```


### Instance Methods

#### `OutputActivateDigitalModule(data = nil)`

Create a new `OutputActivateDigitalModule` entity instance. Pass `nil` for no initial data.

#### `OutputActivatePortalModule(data = nil)`

Create a new `OutputActivatePortalModule` entity instance. Pass `nil` for no initial data.

#### `OutputActivateStoreModule(data = nil)`

Create a new `OutputActivateStoreModule` entity instance. Pass `nil` for no initial data.

#### `OutputActivateUser(data = nil)`

Create a new `OutputActivateUser` entity instance. Pass `nil` for no initial data.

#### `OutputAssignRole(data = nil)`

Create a new `OutputAssignRole` entity instance. Pass `nil` for no initial data.

#### `OutputChangeLogo(data = nil)`

Create a new `OutputChangeLogo` entity instance. Pass `nil` for no initial data.

#### `OutputCreateMandator(data = nil)`

Create a new `OutputCreateMandator` entity instance. Pass `nil` for no initial data.

#### `OutputCreateServiceUser(data = nil)`

Create a new `OutputCreateServiceUser` entity instance. Pass `nil` for no initial data.

#### `OutputDeactivateUser(data = nil)`

Create a new `OutputDeactivateUser` entity instance. Pass `nil` for no initial data.

#### `OutputGetKycDocument(data = nil)`

Create a new `OutputGetKycDocument` entity instance. Pass `nil` for no initial data.

#### `OutputGetLogo(data = nil)`

Create a new `OutputGetLogo` entity instance. Pass `nil` for no initial data.

#### `OutputListOfAvailableRole(data = nil)`

Create a new `OutputListOfAvailableRole` entity instance. Pass `nil` for no initial data.

#### `OutputListOfMandator(data = nil)`

Create a new `OutputListOfMandator` entity instance. Pass `nil` for no initial data.

#### `OutputListOfModule(data = nil)`

Create a new `OutputListOfModule` entity instance. Pass `nil` for no initial data.

#### `OutputListOfRoleGroup(data = nil)`

Create a new `OutputListOfRoleGroup` entity instance. Pass `nil` for no initial data.

#### `OutputListOfTransactionsHistory(data = nil)`

Create a new `OutputListOfTransactionsHistory` entity instance. Pass `nil` for no initial data.

#### `OutputListOfUser(data = nil)`

Create a new `OutputListOfUser` entity instance. Pass `nil` for no initial data.

#### `OutputProvideCredential(data = nil)`

Create a new `OutputProvideCredential` entity instance. Pass `nil` for no initial data.

#### `OutputRegisterUser(data = nil)`

Create a new `OutputRegisterUser` entity instance. Pass `nil` for no initial data.

#### `OutputRemoveRole(data = nil)`

Create a new `OutputRemoveRole` entity instance. Pass `nil` for no initial data.

#### `OutputResendLink(data = nil)`

Create a new `OutputResendLink` entity instance. Pass `nil` for no initial data.

#### `OutputResetPassword(data = nil)`

Create a new `OutputResetPassword` entity instance. Pass `nil` for no initial data.

#### `OutputUpdateConsumer(data = nil)`

Create a new `OutputUpdateConsumer` entity instance. Pass `nil` for no initial data.

#### `OutputUpdateProfile(data = nil)`

Create a new `OutputUpdateProfile` entity instance. Pass `nil` for no initial data.

#### `Version(data = nil)`

Create a new `Version` entity instance. Pass `nil` for no initial data.

#### `options_map -> Hash`

Return a deep copy of the current SDK options.

#### `get_utility -> Utility`

Return a copy of the SDK utility object.

#### `direct(fetchargs = {}) -> Hash`

Make a direct HTTP request to any API endpoint. Returns a result hash
(`{ "ok" => ..., "status" => ..., "data" => ..., "err" => ... }`); it
does not raise — inspect `result["ok"]`.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `fetchargs["path"]` | `String` | URL path with optional `{param}` placeholders. |
| `fetchargs["method"]` | `String` | HTTP method (default: `"GET"`). |
| `fetchargs["params"]` | `Hash` | Path parameter values for `{param}` substitution. |
| `fetchargs["query"]` | `Hash` | Query string parameters. |
| `fetchargs["headers"]` | `Hash` | Request headers (merged with defaults). |
| `fetchargs["body"]` | `any` | Request body (hashes are JSON-serialized). |
| `fetchargs["ctrl"]` | `Hash` | Control options (e.g. `{ "explain" => true }`). |

**Returns:** `Hash`

#### `prepare(fetchargs = {}) -> Hash`

Prepare a fetch definition without sending the request. Accepts the
same parameters as `direct()`. Raises on error.

**Returns:** `Hash` (the fetch definition; raises on error)


---

## OutputActivateDigitalModuleEntity

```ruby
output_activate_digital_module = client.OutputActivateDigitalModule
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `responseCode` | `Integer` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl = nil) -> result`

Create a new entity with the given data. Raises on error.

```ruby
result = client.OutputActivateDigitalModule.create({
})
```

### Common Methods

#### `data_get -> Hash`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get -> Hash`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make -> Entity`

Create a new `OutputActivateDigitalModuleEntity` instance with the same client and
options.

#### `get_name -> String`

Return the entity name.


---

## OutputActivatePortalModuleEntity

```ruby
output_activate_portal_module = client.OutputActivatePortalModule
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clientSecret` | `String` | Yes |  |
| `notificationEmail` | `String` | Yes |  |
| `responseCode` | `Integer` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl = nil) -> result`

Create a new entity with the given data. Raises on error.

```ruby
result = client.OutputActivatePortalModule.create({
  "clientSecret" => "example_clientSecret", # String
  "notificationEmail" => "example_notificationEmail", # String
})
```

### Common Methods

#### `data_get -> Hash`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get -> Hash`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make -> Entity`

Create a new `OutputActivatePortalModuleEntity` instance with the same client and
options.

#### `get_name -> String`

Return the entity name.


---

## OutputActivateStoreModuleEntity

```ruby
output_activate_store_module = client.OutputActivateStoreModule
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `responseCode` | `Integer` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl = nil) -> result`

Create a new entity with the given data. Raises on error.

```ruby
result = client.OutputActivateStoreModule.create({
})
```

### Common Methods

#### `data_get -> Hash`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get -> Hash`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make -> Entity`

Create a new `OutputActivateStoreModuleEntity` instance with the same client and
options.

#### `get_name -> String`

Return the entity name.


---

## OutputActivateUserEntity

```ruby
output_activate_user = client.OutputActivateUser
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumerUUID` | `String` | No |  |
| `responseCode` | `Integer` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl = nil) -> result`

Create a new entity with the given data. Raises on error.

```ruby
result = client.OutputActivateUser.create({
})
```

### Common Methods

#### `data_get -> Hash`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get -> Hash`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make -> Entity`

Create a new `OutputActivateUserEntity` instance with the same client and
options.

#### `get_name -> String`

Return the entity name.


---

## OutputAssignRoleEntity

```ruby
output_assign_role = client.OutputAssignRole
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumerUUID` | `String` | Yes | Unique identifier of the consumer (user) to whom the role(s) will be assigned. |
| `responseCode` | `Integer` | No | Response code: 0 indicates success; any non-zero value indicates an error. |
| `responseMessage` | `String` | No | A human-readable message providing additional details about the outcome. |
| `roles` | `Array` | Yes | List of roles to assign to the consumer. |

### Operations

#### `create(reqdata, ctrl = nil) -> result`

Create a new entity with the given data. Raises on error.

```ruby
result = client.OutputAssignRole.create({
  "consumerUUID" => "example_consumerUUID", # String
  "roles" => [], # Array
})
```

### Common Methods

#### `data_get -> Hash`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get -> Hash`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make -> Entity`

Create a new `OutputAssignRoleEntity` instance with the same client and
options.

#### `get_name -> String`

Return the entity name.


---

## OutputChangeLogoEntity

```ruby
output_change_logo = client.OutputChangeLogo
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `contentAsBase64` | `String` | Yes | The content of the image as base64 encoded string |
| `mimeType` | `String` | Yes | The MIME type of the image |
| `responseCode` | `Integer` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl = nil) -> result`

Create a new entity with the given data. Raises on error.

```ruby
result = client.OutputChangeLogo.create({
  "contentAsBase64" => "example_contentAsBase64", # String
  "mimeType" => "example_mimeType", # String
})
```

### Common Methods

#### `data_get -> Hash`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get -> Hash`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make -> Entity`

Create a new `OutputChangeLogoEntity` instance with the same client and
options.

#### `get_name -> String`

Return the entity name.


---

## OutputCreateMandatorEntity

```ruby
output_create_mandator = client.OutputCreateMandator
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

#### `create(reqdata, ctrl = nil) -> result`

Create a new entity with the given data. Raises on error.

```ruby
result = client.OutputCreateMandator.create({
  "email" => "example_email", # String
  "login" => "example_login", # String
  "phone" => "example_phone", # String
})
```

### Common Methods

#### `data_get -> Hash`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get -> Hash`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make -> Entity`

Create a new `OutputCreateMandatorEntity` instance with the same client and
options.

#### `get_name -> String`

Return the entity name.


---

## OutputCreateServiceUserEntity

```ruby
output_create_service_user = client.OutputCreateServiceUser
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `mandatorName` | `String` | Yes |  |
| `responseCode` | `Integer` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl = nil) -> result`

Create a new entity with the given data. Raises on error.

```ruby
result = client.OutputCreateServiceUser.create({
  "mandatorName" => "example_mandatorName", # String
})
```

### Common Methods

#### `data_get -> Hash`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get -> Hash`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make -> Entity`

Create a new `OutputCreateServiceUserEntity` instance with the same client and
options.

#### `get_name -> String`

Return the entity name.


---

## OutputDeactivateUserEntity

```ruby
output_deactivate_user = client.OutputDeactivateUser
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumerUUID` | `String` | No |  |
| `responseCode` | `Integer` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl = nil) -> result`

Create a new entity with the given data. Raises on error.

```ruby
result = client.OutputDeactivateUser.create({
})
```

### Common Methods

#### `data_get -> Hash`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get -> Hash`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make -> Entity`

Create a new `OutputDeactivateUserEntity` instance with the same client and
options.

#### `get_name -> String`

Return the entity name.


---

## OutputGetKycDocumentEntity

```ruby
output_get_kyc_document = client.OutputGetKycDocument
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `caseID` | `String` | No |  |
| `encodedDataBase64` | `String` | No |  |
| `responseCode` | `Integer` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl = nil) -> result`

Create a new entity with the given data. Raises on error.

```ruby
result = client.OutputGetKycDocument.create({
})
```

### Common Methods

#### `data_get -> Hash`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get -> Hash`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make -> Entity`

Create a new `OutputGetKycDocumentEntity` instance with the same client and
options.

#### `get_name -> String`

Return the entity name.


---

## OutputGetLogoEntity

```ruby
output_get_logo = client.OutputGetLogo
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `contentAsBase64` | `String` | Yes | The content of the image as base64 encoded string |
| `mimeType` | `String` | Yes | The MIME type of the image |
| `responseCode` | `Integer` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `load(reqmatch, ctrl = nil) -> result`

Load a single entity matching the given criteria. Raises on error.

```ruby
result = client.OutputGetLogo.load()
```

### Common Methods

#### `data_get -> Hash`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get -> Hash`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make -> Entity`

Create a new `OutputGetLogoEntity` instance with the same client and
options.

#### `get_name -> String`

Return the entity name.


---

## OutputListOfAvailableRoleEntity

```ruby
output_list_of_available_role = client.OutputListOfAvailableRole
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `availableRoles` | `Array` | No |  |
| `responseCode` | `Integer` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl = nil) -> result`

Create a new entity with the given data. Raises on error.

```ruby
result = client.OutputListOfAvailableRole.create({
})
```

### Common Methods

#### `data_get -> Hash`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get -> Hash`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make -> Entity`

Create a new `OutputListOfAvailableRoleEntity` instance with the same client and
options.

#### `get_name -> String`

Return the entity name.


---

## OutputListOfMandatorEntity

```ruby
output_list_of_mandator = client.OutputListOfMandator
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `filter` | `Hash` | No |  |
| `list` | `Array` | No |  |
| `pagination` | `Hash` | No |  |
| `responseCode` | `Integer` | No |  |
| `responseMessage` | `String` | No |  |
| `sorting` | `Hash` | No |  |

### Operations

#### `create(reqdata, ctrl = nil) -> result`

Create a new entity with the given data. Raises on error.

```ruby
result = client.OutputListOfMandator.create({
})
```

### Common Methods

#### `data_get -> Hash`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get -> Hash`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make -> Entity`

Create a new `OutputListOfMandatorEntity` instance with the same client and
options.

#### `get_name -> String`

Return the entity name.


---

## OutputListOfModuleEntity

```ruby
output_list_of_module = client.OutputListOfModule
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `list` | `Array` | No |  |
| `pagination` | `Hash` | No |  |
| `responseCode` | `Integer` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl = nil) -> result`

Create a new entity with the given data. Raises on error.

```ruby
result = client.OutputListOfModule.create({
})
```

### Common Methods

#### `data_get -> Hash`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get -> Hash`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make -> Entity`

Create a new `OutputListOfModuleEntity` instance with the same client and
options.

#### `get_name -> String`

Return the entity name.


---

## OutputListOfRoleGroupEntity

```ruby
output_list_of_role_group = client.OutputListOfRoleGroup
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `filter` | `Hash` | No |  |
| `groupRoles` | `Array` | No |  |
| `pagination` | `Hash` | No |  |
| `responseCode` | `Integer` | No |  |
| `responseMessage` | `String` | No |  |
| `sorting` | `Hash` | No |  |

### Operations

#### `create(reqdata, ctrl = nil) -> result`

Create a new entity with the given data. Raises on error.

```ruby
result = client.OutputListOfRoleGroup.create({
})
```

### Common Methods

#### `data_get -> Hash`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get -> Hash`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make -> Entity`

Create a new `OutputListOfRoleGroupEntity` instance with the same client and
options.

#### `get_name -> String`

Return the entity name.


---

## OutputListOfTransactionsHistoryEntity

```ruby
output_list_of_transactions_history = client.OutputListOfTransactionsHistory
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `filter` | `Hash` | No |  |
| `list` | `Array` | No |  |
| `pagination` | `Hash` | No |  |
| `responseCode` | `Integer` | No |  |
| `responseMessage` | `String` | No |  |
| `sorting` | `Hash` | No |  |

### Operations

#### `create(reqdata, ctrl = nil) -> result`

Create a new entity with the given data. Raises on error.

```ruby
result = client.OutputListOfTransactionsHistory.create({
})
```

### Common Methods

#### `data_get -> Hash`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get -> Hash`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make -> Entity`

Create a new `OutputListOfTransactionsHistoryEntity` instance with the same client and
options.

#### `get_name -> String`

Return the entity name.


---

## OutputListOfUserEntity

```ruby
output_list_of_user = client.OutputListOfUser
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `filter` | `Hash` | No |  |
| `list` | `Array` | No |  |
| `pagination` | `Hash` | No |  |
| `responseCode` | `Integer` | No |  |
| `responseMessage` | `String` | No |  |
| `sorting` | `Hash` | No |  |

### Operations

#### `create(reqdata, ctrl = nil) -> result`

Create a new entity with the given data. Raises on error.

```ruby
result = client.OutputListOfUser.create({
})
```

### Common Methods

#### `data_get -> Hash`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get -> Hash`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make -> Entity`

Create a new `OutputListOfUserEntity` instance with the same client and
options.

#### `get_name -> String`

Return the entity name.


---

## OutputProvideCredentialEntity

```ruby
output_provide_credential = client.OutputProvideCredential
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `mandatorName` | `String` | Yes |  |
| `password` | `String` | No |  |
| `responseCode` | `Integer` | No |  |
| `responseMessage` | `String` | No |  |
| `username` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl = nil) -> result`

Create a new entity with the given data. Raises on error.

```ruby
result = client.OutputProvideCredential.create({
  "mandatorName" => "example_mandatorName", # String
})
```

### Common Methods

#### `data_get -> Hash`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get -> Hash`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make -> Entity`

Create a new `OutputProvideCredentialEntity` instance with the same client and
options.

#### `get_name -> String`

Return the entity name.


---

## OutputRegisterUserEntity

```ruby
output_register_user = client.OutputRegisterUser
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
| `responseCode` | `Integer` | No | Response code (0 indicates success; non-zero indicates an error). |
| `responseMessage` | `String` | No | Human-readable response message. |
| `salutation` | `String` | No | User's salutation (e.g., Mr., Ms.). |
| `state` | `String` | No | User's state or region. |
| `street1` | `String` | No | Primary address line. |
| `street2` | `String` | No | Secondary address line. |
| `zip` | `String` | No | Postal code. |

### Operations

#### `create(reqdata, ctrl = nil) -> result`

Create a new entity with the given data. Raises on error.

```ruby
result = client.OutputRegisterUser.create({
  "email" => "example_email", # String
})
```

### Common Methods

#### `data_get -> Hash`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get -> Hash`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make -> Entity`

Create a new `OutputRegisterUserEntity` instance with the same client and
options.

#### `get_name -> String`

Return the entity name.


---

## OutputRemoveRoleEntity

```ruby
output_remove_role = client.OutputRemoveRole
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumerUUID` | `String` | No |  |
| `responseCode` | `Integer` | No |  |
| `responseMessage` | `String` | No |  |
| `roles` | `Array` | No |  |

### Operations

#### `create(reqdata, ctrl = nil) -> result`

Create a new entity with the given data. Raises on error.

```ruby
result = client.OutputRemoveRole.create({
})
```

### Common Methods

#### `data_get -> Hash`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get -> Hash`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make -> Entity`

Create a new `OutputRemoveRoleEntity` instance with the same client and
options.

#### `get_name -> String`

Return the entity name.


---

## OutputResendLinkEntity

```ruby
output_resend_link = client.OutputResendLink
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `businessRegistrationNumber` | `String` | No |  |
| `consumerUUID` | `String` | Yes |  |
| `emailConfirmationCode` | `String` | No |  |
| `phoneNumber` | `String` | No |  |
| `responseCode` | `Integer` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl = nil) -> result`

Create a new entity with the given data. Raises on error.

```ruby
result = client.OutputResendLink.create({
  "consumerUUID" => "example_consumerUUID", # String
})
```

### Common Methods

#### `data_get -> Hash`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get -> Hash`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make -> Entity`

Create a new `OutputResendLinkEntity` instance with the same client and
options.

#### `get_name -> String`

Return the entity name.


---

## OutputResetPasswordEntity

```ruby
output_reset_password = client.OutputResetPassword
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumerUuid` | `String` | No |  |
| `phoneNumber` | `String` | No |  |
| `responseCode` | `Integer` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl = nil) -> result`

Create a new entity with the given data. Raises on error.

```ruby
result = client.OutputResetPassword.create({
})
```

### Common Methods

#### `data_get -> Hash`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get -> Hash`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make -> Entity`

Create a new `OutputResetPasswordEntity` instance with the same client and
options.

#### `get_name -> String`

Return the entity name.


---

## OutputUpdateConsumerEntity

```ruby
output_update_consumer = client.OutputUpdateConsumer
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
| `kycPassed` | `Boolean` | No |  |
| `lastName` | `String` | No |  |
| `nationality` | `String` | No |  |
| `passportNumber` | `String` | No |  |
| `phoneNumber` | `String` | No |  |
| `placeOfBirth` | `String` | No |  |
| `responseCode` | `Integer` | No |  |
| `responseMessage` | `String` | No |  |
| `state` | `String` | No |  |
| `street1` | `String` | No |  |
| `street2` | `String` | No |  |
| `transactionhistory_id` | `String` | No |  |
| `zip` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl = nil) -> result`

Create a new entity with the given data. Raises on error.

```ruby
result = client.OutputUpdateConsumer.create({
  "consumerUuid" => "example_consumerUuid", # String
})
```

### Common Methods

#### `data_get -> Hash`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get -> Hash`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make -> Entity`

Create a new `OutputUpdateConsumerEntity` instance with the same client and
options.

#### `get_name -> String`

Return the entity name.


---

## OutputUpdateProfileEntity

```ruby
output_update_profile = client.OutputUpdateProfile
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumerLanguage` | `String` | No |  |
| `email` | `String` | No |  |
| `firstName` | `String` | No |  |
| `lastName` | `String` | No |  |
| `phoneNumber` | `String` | No |  |
| `responseCode` | `Integer` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `create(reqdata, ctrl = nil) -> result`

Create a new entity with the given data. Raises on error.

```ruby
result = client.OutputUpdateProfile.create({
})
```

### Common Methods

#### `data_get -> Hash`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get -> Hash`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make -> Entity`

Create a new `OutputUpdateProfileEntity` instance with the same client and
options.

#### `get_name -> String`

Return the entity name.


---

## VersionEntity

```ruby
version = client.Version
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `appName` | `String` | No |  |
| `buildDate` | `String` | No |  |
| `version` | `String` | No |  |

### Operations

#### `load(reqmatch, ctrl = nil) -> result`

Load a single entity matching the given criteria. Raises on error.

```ruby
result = client.Version.load()
```

### Common Methods

#### `data_get -> Hash`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get -> Hash`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make -> Entity`

Create a new `VersionEntity` instance with the same client and
options.

#### `get_name -> String`

Return the entity name.


---

## Features

| Feature | Version | Description |
| --- | --- | --- |
| `test` | 0.0.1 | In-memory mock transport for testing without a live server |


Features are activated via the `feature` option:

```ruby
client = BluefinTecsUserBackofficeSDK.new({
  "feature" => {
    "test" => { "active" => true },
  },
})
```


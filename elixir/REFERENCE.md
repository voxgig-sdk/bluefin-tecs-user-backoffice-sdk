# BluefinTecsUserBackoffice Elixir SDK Reference

Complete API reference for the BluefinTecsUserBackoffice Elixir SDK.


## BluefinTecsUserBackoffice

### Constructor

```elixir
sdk = BluefinTecsUserBackoffice.new(options)
```

Create a new SDK client. `options` is a struct value node — build one from a
native map with `BluefinTecsUserBackoffice.Helpers.deep/1`.

**Options:**

| Name | Type | Description |
| --- | --- | --- |
| `apikey` | `String.t()` | API key for authentication. |
| `base` | `String.t()` | Base URL for API requests. |
| `prefix` | `String.t()` | URL prefix appended after base. |
| `suffix` | `String.t()` | URL suffix appended after path. |
| `headers` | `map()` | Custom headers for all requests. |
| `feature` | `map()` | Feature configuration. |
| `system` | `map()` | System overrides (e.g. custom fetch). |


### Constructors

#### `BluefinTecsUserBackoffice.test(testopts \\ nil, sdkopts \\ nil)`

Create a test client with mock features active. Both arguments may be `nil`.

```elixir
sdk = BluefinTecsUserBackoffice.test()
```


### Functions

#### `BluefinTecsUserBackoffice.output_activate_digital_module(client, entopts \\ nil)`

Create a `BluefinTecsUserBackoffice.Entity.OutputActivateDigitalModule` handle.

#### `BluefinTecsUserBackoffice.output_activate_portal_module(client, entopts \\ nil)`

Create a `BluefinTecsUserBackoffice.Entity.OutputActivatePortalModule` handle.

#### `BluefinTecsUserBackoffice.output_activate_store_module(client, entopts \\ nil)`

Create a `BluefinTecsUserBackoffice.Entity.OutputActivateStoreModule` handle.

#### `BluefinTecsUserBackoffice.output_activate_user(client, entopts \\ nil)`

Create a `BluefinTecsUserBackoffice.Entity.OutputActivateUser` handle.

#### `BluefinTecsUserBackoffice.output_assign_role(client, entopts \\ nil)`

Create a `BluefinTecsUserBackoffice.Entity.OutputAssignRole` handle.

#### `BluefinTecsUserBackoffice.output_change_logo(client, entopts \\ nil)`

Create a `BluefinTecsUserBackoffice.Entity.OutputChangeLogo` handle.

#### `BluefinTecsUserBackoffice.output_create_mandator(client, entopts \\ nil)`

Create a `BluefinTecsUserBackoffice.Entity.OutputCreateMandator` handle.

#### `BluefinTecsUserBackoffice.output_create_service_user(client, entopts \\ nil)`

Create a `BluefinTecsUserBackoffice.Entity.OutputCreateServiceUser` handle.

#### `BluefinTecsUserBackoffice.output_deactivate_user(client, entopts \\ nil)`

Create a `BluefinTecsUserBackoffice.Entity.OutputDeactivateUser` handle.

#### `BluefinTecsUserBackoffice.output_get_kyc_document(client, entopts \\ nil)`

Create a `BluefinTecsUserBackoffice.Entity.OutputGetKycDocument` handle.

#### `BluefinTecsUserBackoffice.output_get_logo(client, entopts \\ nil)`

Create a `BluefinTecsUserBackoffice.Entity.OutputGetLogo` handle.

#### `BluefinTecsUserBackoffice.output_list_of_available_role(client, entopts \\ nil)`

Create a `BluefinTecsUserBackoffice.Entity.OutputListOfAvailableRole` handle.

#### `BluefinTecsUserBackoffice.output_list_of_mandator(client, entopts \\ nil)`

Create a `BluefinTecsUserBackoffice.Entity.OutputListOfMandator` handle.

#### `BluefinTecsUserBackoffice.output_list_of_module(client, entopts \\ nil)`

Create a `BluefinTecsUserBackoffice.Entity.OutputListOfModule` handle.

#### `BluefinTecsUserBackoffice.output_list_of_role_group(client, entopts \\ nil)`

Create a `BluefinTecsUserBackoffice.Entity.OutputListOfRoleGroup` handle.

#### `BluefinTecsUserBackoffice.output_list_of_transactions_history(client, entopts \\ nil)`

Create a `BluefinTecsUserBackoffice.Entity.OutputListOfTransactionsHistory` handle.

#### `BluefinTecsUserBackoffice.output_list_of_user(client, entopts \\ nil)`

Create a `BluefinTecsUserBackoffice.Entity.OutputListOfUser` handle.

#### `BluefinTecsUserBackoffice.output_provide_credential(client, entopts \\ nil)`

Create a `BluefinTecsUserBackoffice.Entity.OutputProvideCredential` handle.

#### `BluefinTecsUserBackoffice.output_register_user(client, entopts \\ nil)`

Create a `BluefinTecsUserBackoffice.Entity.OutputRegisterUser` handle.

#### `BluefinTecsUserBackoffice.output_remove_role(client, entopts \\ nil)`

Create a `BluefinTecsUserBackoffice.Entity.OutputRemoveRole` handle.

#### `BluefinTecsUserBackoffice.output_resend_link(client, entopts \\ nil)`

Create a `BluefinTecsUserBackoffice.Entity.OutputResendLink` handle.

#### `BluefinTecsUserBackoffice.output_reset_password(client, entopts \\ nil)`

Create a `BluefinTecsUserBackoffice.Entity.OutputResetPassword` handle.

#### `BluefinTecsUserBackoffice.output_update_consumer(client, entopts \\ nil)`

Create a `BluefinTecsUserBackoffice.Entity.OutputUpdateConsumer` handle.

#### `BluefinTecsUserBackoffice.output_update_profile(client, entopts \\ nil)`

Create a `BluefinTecsUserBackoffice.Entity.OutputUpdateProfile` handle.

#### `BluefinTecsUserBackoffice.version(client, entopts \\ nil)`

Create a `BluefinTecsUserBackoffice.Entity.Version` handle.

#### `options_map(client) :: map()`

Return a deep copy of the current SDK options.

#### `get_utility(client) :: map()`

Return the SDK utility node.

#### `direct(client, fetchargs) :: map()`

Make a direct HTTP request to any API endpoint. Returns a result node with
`ok`, `status`, `headers`, and `data` (or `err` on failure). This escape
hatch never raises — branch on `Voxgig.Struct.getprop(result, "ok")`.

**fetchargs keys:**

| Key | Type | Description |
| --- | --- | --- |
| `path` | `String.t()` | URL path with optional `{param}` placeholders. |
| `method` | `String.t()` | HTTP method (default: `"GET"`). |
| `params` | `map()` | Path parameter values. |
| `query` | `map()` | Query string parameters. |
| `headers` | `map()` | Request headers (merged with defaults). |
| `body` | `any()` | Request body (maps are JSON-serialized). |

#### `prepare(client, fetchargs) :: map()`

Prepare a fetch definition without sending. Returns the `fetchdef` and raises
on error.


---

## BluefinTecsUserBackoffice.Entity.OutputActivateDigitalModule

```elixir
output_activate_digital_module = BluefinTecsUserBackoffice.output_activate_digital_module(sdk)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `responseCode` | `integer()` | No |  |
| `responseMessage` | `String.t()` | No |  |

### Operations

#### `create(entity, reqdata, ctrl \\ nil) :: map()`

Create a new entity with the given data. Returns the created entity data and raises on error.

```elixir
record = BluefinTecsUserBackoffice.Entity.OutputActivateDigitalModule.create(output_activate_digital_module, BluefinTecsUserBackoffice.Helpers.deep(%{
}))
```

### Common Functions

#### `data_get(entity) :: map()`

Get the entity data.

#### `data_set(entity, data)`

Set the entity data.

#### `match_get(entity) :: map()`

Get the entity match criteria.

#### `match_set(entity, match)`

Set the entity match criteria.

#### `make(entity) :: entity`

Create a new `BluefinTecsUserBackoffice.Entity.OutputActivateDigitalModule` handle with the same options.

#### `get_name(entity) :: String.t()`

Return the entity name.


---

## BluefinTecsUserBackoffice.Entity.OutputActivatePortalModule

```elixir
output_activate_portal_module = BluefinTecsUserBackoffice.output_activate_portal_module(sdk)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clientSecret` | `String.t()` | Yes |  |
| `notificationEmail` | `String.t()` | Yes |  |
| `responseCode` | `integer()` | No |  |
| `responseMessage` | `String.t()` | No |  |

### Operations

#### `create(entity, reqdata, ctrl \\ nil) :: map()`

Create a new entity with the given data. Returns the created entity data and raises on error.

```elixir
record = BluefinTecsUserBackoffice.Entity.OutputActivatePortalModule.create(output_activate_portal_module, BluefinTecsUserBackoffice.Helpers.deep(%{
  "clientSecret" => "example_clientSecret",  # String.t()
  "notificationEmail" => "example_notificationEmail",  # String.t()
}))
```

### Common Functions

#### `data_get(entity) :: map()`

Get the entity data.

#### `data_set(entity, data)`

Set the entity data.

#### `match_get(entity) :: map()`

Get the entity match criteria.

#### `match_set(entity, match)`

Set the entity match criteria.

#### `make(entity) :: entity`

Create a new `BluefinTecsUserBackoffice.Entity.OutputActivatePortalModule` handle with the same options.

#### `get_name(entity) :: String.t()`

Return the entity name.


---

## BluefinTecsUserBackoffice.Entity.OutputActivateStoreModule

```elixir
output_activate_store_module = BluefinTecsUserBackoffice.output_activate_store_module(sdk)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `responseCode` | `integer()` | No |  |
| `responseMessage` | `String.t()` | No |  |

### Operations

#### `create(entity, reqdata, ctrl \\ nil) :: map()`

Create a new entity with the given data. Returns the created entity data and raises on error.

```elixir
record = BluefinTecsUserBackoffice.Entity.OutputActivateStoreModule.create(output_activate_store_module, BluefinTecsUserBackoffice.Helpers.deep(%{
}))
```

### Common Functions

#### `data_get(entity) :: map()`

Get the entity data.

#### `data_set(entity, data)`

Set the entity data.

#### `match_get(entity) :: map()`

Get the entity match criteria.

#### `match_set(entity, match)`

Set the entity match criteria.

#### `make(entity) :: entity`

Create a new `BluefinTecsUserBackoffice.Entity.OutputActivateStoreModule` handle with the same options.

#### `get_name(entity) :: String.t()`

Return the entity name.


---

## BluefinTecsUserBackoffice.Entity.OutputActivateUser

```elixir
output_activate_user = BluefinTecsUserBackoffice.output_activate_user(sdk)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumerUUID` | `String.t()` | No |  |
| `responseCode` | `integer()` | No |  |
| `responseMessage` | `String.t()` | No |  |

### Operations

#### `create(entity, reqdata, ctrl \\ nil) :: map()`

Create a new entity with the given data. Returns the created entity data and raises on error.

```elixir
record = BluefinTecsUserBackoffice.Entity.OutputActivateUser.create(output_activate_user, BluefinTecsUserBackoffice.Helpers.deep(%{
}))
```

### Common Functions

#### `data_get(entity) :: map()`

Get the entity data.

#### `data_set(entity, data)`

Set the entity data.

#### `match_get(entity) :: map()`

Get the entity match criteria.

#### `match_set(entity, match)`

Set the entity match criteria.

#### `make(entity) :: entity`

Create a new `BluefinTecsUserBackoffice.Entity.OutputActivateUser` handle with the same options.

#### `get_name(entity) :: String.t()`

Return the entity name.


---

## BluefinTecsUserBackoffice.Entity.OutputAssignRole

```elixir
output_assign_role = BluefinTecsUserBackoffice.output_assign_role(sdk)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumerUUID` | `String.t()` | Yes | Unique identifier of the consumer (user) to whom the role(s) will be assigned. |
| `responseCode` | `integer()` | No | Response code: 0 indicates success; any non-zero value indicates an error. |
| `responseMessage` | `String.t()` | No | A human-readable message providing additional details about the outcome. |
| `roles` | `list()` | Yes | List of roles to assign to the consumer. |

### Operations

#### `create(entity, reqdata, ctrl \\ nil) :: map()`

Create a new entity with the given data. Returns the created entity data and raises on error.

```elixir
record = BluefinTecsUserBackoffice.Entity.OutputAssignRole.create(output_assign_role, BluefinTecsUserBackoffice.Helpers.deep(%{
  "consumerUUID" => "example_consumerUUID",  # String.t()
  "roles" => [],  # list()
}))
```

### Common Functions

#### `data_get(entity) :: map()`

Get the entity data.

#### `data_set(entity, data)`

Set the entity data.

#### `match_get(entity) :: map()`

Get the entity match criteria.

#### `match_set(entity, match)`

Set the entity match criteria.

#### `make(entity) :: entity`

Create a new `BluefinTecsUserBackoffice.Entity.OutputAssignRole` handle with the same options.

#### `get_name(entity) :: String.t()`

Return the entity name.


---

## BluefinTecsUserBackoffice.Entity.OutputChangeLogo

```elixir
output_change_logo = BluefinTecsUserBackoffice.output_change_logo(sdk)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `contentAsBase64` | `String.t()` | Yes | The content of the image as base64 encoded string |
| `mimeType` | `String.t()` | Yes | The MIME type of the image |
| `responseCode` | `integer()` | No |  |
| `responseMessage` | `String.t()` | No |  |

### Operations

#### `create(entity, reqdata, ctrl \\ nil) :: map()`

Create a new entity with the given data. Returns the created entity data and raises on error.

```elixir
record = BluefinTecsUserBackoffice.Entity.OutputChangeLogo.create(output_change_logo, BluefinTecsUserBackoffice.Helpers.deep(%{
  "contentAsBase64" => "example_contentAsBase64",  # String.t()
  "mimeType" => "example_mimeType",  # String.t()
}))
```

### Common Functions

#### `data_get(entity) :: map()`

Get the entity data.

#### `data_set(entity, data)`

Set the entity data.

#### `match_get(entity) :: map()`

Get the entity match criteria.

#### `match_set(entity, match)`

Set the entity match criteria.

#### `make(entity) :: entity`

Create a new `BluefinTecsUserBackoffice.Entity.OutputChangeLogo` handle with the same options.

#### `get_name(entity) :: String.t()`

Return the entity name.


---

## BluefinTecsUserBackoffice.Entity.OutputCreateMandator

```elixir
output_create_mandator = BluefinTecsUserBackoffice.output_create_mandator(sdk)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `city` | `String.t()` | No |  |
| `country` | `String.t()` | No |  |
| `dateOfBirth` | `String.t()` | No |  |
| `description` | `String.t()` | No |  |
| `driversLicenseNumber` | `String.t()` | No |  |
| `email` | `String.t()` | Yes |  |
| `firstName` | `String.t()` | No |  |
| `identificationNumber` | `String.t()` | No |  |
| `lastName` | `String.t()` | No |  |
| `login` | `String.t()` | Yes |  |
| `name` | `String.t()` | No |  |
| `passportNumber` | `String.t()` | No |  |
| `phone` | `String.t()` | Yes |  |
| `salutation` | `String.t()` | No |  |
| `state` | `String.t()` | No |  |
| `street1` | `String.t()` | No |  |
| `street2` | `String.t()` | No |  |
| `zipCode` | `String.t()` | No |  |

### Operations

#### `create(entity, reqdata, ctrl \\ nil) :: map()`

Create a new entity with the given data. Returns the created entity data and raises on error.

```elixir
record = BluefinTecsUserBackoffice.Entity.OutputCreateMandator.create(output_create_mandator, BluefinTecsUserBackoffice.Helpers.deep(%{
  "email" => "example_email",  # String.t()
  "login" => "example_login",  # String.t()
  "phone" => "example_phone",  # String.t()
}))
```

### Common Functions

#### `data_get(entity) :: map()`

Get the entity data.

#### `data_set(entity, data)`

Set the entity data.

#### `match_get(entity) :: map()`

Get the entity match criteria.

#### `match_set(entity, match)`

Set the entity match criteria.

#### `make(entity) :: entity`

Create a new `BluefinTecsUserBackoffice.Entity.OutputCreateMandator` handle with the same options.

#### `get_name(entity) :: String.t()`

Return the entity name.


---

## BluefinTecsUserBackoffice.Entity.OutputCreateServiceUser

```elixir
output_create_service_user = BluefinTecsUserBackoffice.output_create_service_user(sdk)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `mandatorName` | `String.t()` | Yes |  |
| `responseCode` | `integer()` | No |  |
| `responseMessage` | `String.t()` | No |  |

### Operations

#### `create(entity, reqdata, ctrl \\ nil) :: map()`

Create a new entity with the given data. Returns the created entity data and raises on error.

```elixir
record = BluefinTecsUserBackoffice.Entity.OutputCreateServiceUser.create(output_create_service_user, BluefinTecsUserBackoffice.Helpers.deep(%{
  "mandatorName" => "example_mandatorName",  # String.t()
}))
```

### Common Functions

#### `data_get(entity) :: map()`

Get the entity data.

#### `data_set(entity, data)`

Set the entity data.

#### `match_get(entity) :: map()`

Get the entity match criteria.

#### `match_set(entity, match)`

Set the entity match criteria.

#### `make(entity) :: entity`

Create a new `BluefinTecsUserBackoffice.Entity.OutputCreateServiceUser` handle with the same options.

#### `get_name(entity) :: String.t()`

Return the entity name.


---

## BluefinTecsUserBackoffice.Entity.OutputDeactivateUser

```elixir
output_deactivate_user = BluefinTecsUserBackoffice.output_deactivate_user(sdk)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumerUUID` | `String.t()` | No |  |
| `responseCode` | `integer()` | No |  |
| `responseMessage` | `String.t()` | No |  |

### Operations

#### `create(entity, reqdata, ctrl \\ nil) :: map()`

Create a new entity with the given data. Returns the created entity data and raises on error.

```elixir
record = BluefinTecsUserBackoffice.Entity.OutputDeactivateUser.create(output_deactivate_user, BluefinTecsUserBackoffice.Helpers.deep(%{
}))
```

### Common Functions

#### `data_get(entity) :: map()`

Get the entity data.

#### `data_set(entity, data)`

Set the entity data.

#### `match_get(entity) :: map()`

Get the entity match criteria.

#### `match_set(entity, match)`

Set the entity match criteria.

#### `make(entity) :: entity`

Create a new `BluefinTecsUserBackoffice.Entity.OutputDeactivateUser` handle with the same options.

#### `get_name(entity) :: String.t()`

Return the entity name.


---

## BluefinTecsUserBackoffice.Entity.OutputGetKycDocument

```elixir
output_get_kyc_document = BluefinTecsUserBackoffice.output_get_kyc_document(sdk)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `caseID` | `String.t()` | No |  |
| `encodedDataBase64` | `String.t()` | No |  |
| `responseCode` | `integer()` | No |  |
| `responseMessage` | `String.t()` | No |  |

### Operations

#### `create(entity, reqdata, ctrl \\ nil) :: map()`

Create a new entity with the given data. Returns the created entity data and raises on error.

```elixir
record = BluefinTecsUserBackoffice.Entity.OutputGetKycDocument.create(output_get_kyc_document, BluefinTecsUserBackoffice.Helpers.deep(%{
}))
```

### Common Functions

#### `data_get(entity) :: map()`

Get the entity data.

#### `data_set(entity, data)`

Set the entity data.

#### `match_get(entity) :: map()`

Get the entity match criteria.

#### `match_set(entity, match)`

Set the entity match criteria.

#### `make(entity) :: entity`

Create a new `BluefinTecsUserBackoffice.Entity.OutputGetKycDocument` handle with the same options.

#### `get_name(entity) :: String.t()`

Return the entity name.


---

## BluefinTecsUserBackoffice.Entity.OutputGetLogo

```elixir
output_get_logo = BluefinTecsUserBackoffice.output_get_logo(sdk)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `contentAsBase64` | `String.t()` | Yes | The content of the image as base64 encoded string |
| `mimeType` | `String.t()` | Yes | The MIME type of the image |
| `responseCode` | `integer()` | No |  |
| `responseMessage` | `String.t()` | No |  |

### Operations

#### `load(entity, reqmatch, ctrl \\ nil) :: map()`

Load a single entity matching the given criteria. Returns the entity data and raises on error.

```elixir
record = BluefinTecsUserBackoffice.Entity.OutputGetLogo.load(output_get_logo, BluefinTecsUserBackoffice.Helpers.deep(%{}))
```

### Common Functions

#### `data_get(entity) :: map()`

Get the entity data.

#### `data_set(entity, data)`

Set the entity data.

#### `match_get(entity) :: map()`

Get the entity match criteria.

#### `match_set(entity, match)`

Set the entity match criteria.

#### `make(entity) :: entity`

Create a new `BluefinTecsUserBackoffice.Entity.OutputGetLogo` handle with the same options.

#### `get_name(entity) :: String.t()`

Return the entity name.


---

## BluefinTecsUserBackoffice.Entity.OutputListOfAvailableRole

```elixir
output_list_of_available_role = BluefinTecsUserBackoffice.output_list_of_available_role(sdk)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `availableRoles` | `list()` | No |  |
| `responseCode` | `integer()` | No |  |
| `responseMessage` | `String.t()` | No |  |

### Operations

#### `create(entity, reqdata, ctrl \\ nil) :: map()`

Create a new entity with the given data. Returns the created entity data and raises on error.

```elixir
record = BluefinTecsUserBackoffice.Entity.OutputListOfAvailableRole.create(output_list_of_available_role, BluefinTecsUserBackoffice.Helpers.deep(%{
}))
```

### Common Functions

#### `data_get(entity) :: map()`

Get the entity data.

#### `data_set(entity, data)`

Set the entity data.

#### `match_get(entity) :: map()`

Get the entity match criteria.

#### `match_set(entity, match)`

Set the entity match criteria.

#### `make(entity) :: entity`

Create a new `BluefinTecsUserBackoffice.Entity.OutputListOfAvailableRole` handle with the same options.

#### `get_name(entity) :: String.t()`

Return the entity name.


---

## BluefinTecsUserBackoffice.Entity.OutputListOfMandator

```elixir
output_list_of_mandator = BluefinTecsUserBackoffice.output_list_of_mandator(sdk)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `filter` | `map()` | No |  |
| `list` | `list()` | No |  |
| `pagination` | `map()` | No |  |
| `responseCode` | `integer()` | No |  |
| `responseMessage` | `String.t()` | No |  |
| `sorting` | `map()` | No |  |

### Operations

#### `create(entity, reqdata, ctrl \\ nil) :: map()`

Create a new entity with the given data. Returns the created entity data and raises on error.

```elixir
record = BluefinTecsUserBackoffice.Entity.OutputListOfMandator.create(output_list_of_mandator, BluefinTecsUserBackoffice.Helpers.deep(%{
}))
```

### Common Functions

#### `data_get(entity) :: map()`

Get the entity data.

#### `data_set(entity, data)`

Set the entity data.

#### `match_get(entity) :: map()`

Get the entity match criteria.

#### `match_set(entity, match)`

Set the entity match criteria.

#### `make(entity) :: entity`

Create a new `BluefinTecsUserBackoffice.Entity.OutputListOfMandator` handle with the same options.

#### `get_name(entity) :: String.t()`

Return the entity name.


---

## BluefinTecsUserBackoffice.Entity.OutputListOfModule

```elixir
output_list_of_module = BluefinTecsUserBackoffice.output_list_of_module(sdk)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `list` | `list()` | No |  |
| `pagination` | `map()` | No |  |
| `responseCode` | `integer()` | No |  |
| `responseMessage` | `String.t()` | No |  |

### Operations

#### `create(entity, reqdata, ctrl \\ nil) :: map()`

Create a new entity with the given data. Returns the created entity data and raises on error.

```elixir
record = BluefinTecsUserBackoffice.Entity.OutputListOfModule.create(output_list_of_module, BluefinTecsUserBackoffice.Helpers.deep(%{
}))
```

### Common Functions

#### `data_get(entity) :: map()`

Get the entity data.

#### `data_set(entity, data)`

Set the entity data.

#### `match_get(entity) :: map()`

Get the entity match criteria.

#### `match_set(entity, match)`

Set the entity match criteria.

#### `make(entity) :: entity`

Create a new `BluefinTecsUserBackoffice.Entity.OutputListOfModule` handle with the same options.

#### `get_name(entity) :: String.t()`

Return the entity name.


---

## BluefinTecsUserBackoffice.Entity.OutputListOfRoleGroup

```elixir
output_list_of_role_group = BluefinTecsUserBackoffice.output_list_of_role_group(sdk)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `filter` | `map()` | No |  |
| `groupRoles` | `list()` | No |  |
| `pagination` | `map()` | No |  |
| `responseCode` | `integer()` | No |  |
| `responseMessage` | `String.t()` | No |  |
| `sorting` | `map()` | No |  |

### Operations

#### `create(entity, reqdata, ctrl \\ nil) :: map()`

Create a new entity with the given data. Returns the created entity data and raises on error.

```elixir
record = BluefinTecsUserBackoffice.Entity.OutputListOfRoleGroup.create(output_list_of_role_group, BluefinTecsUserBackoffice.Helpers.deep(%{
}))
```

### Common Functions

#### `data_get(entity) :: map()`

Get the entity data.

#### `data_set(entity, data)`

Set the entity data.

#### `match_get(entity) :: map()`

Get the entity match criteria.

#### `match_set(entity, match)`

Set the entity match criteria.

#### `make(entity) :: entity`

Create a new `BluefinTecsUserBackoffice.Entity.OutputListOfRoleGroup` handle with the same options.

#### `get_name(entity) :: String.t()`

Return the entity name.


---

## BluefinTecsUserBackoffice.Entity.OutputListOfTransactionsHistory

```elixir
output_list_of_transactions_history = BluefinTecsUserBackoffice.output_list_of_transactions_history(sdk)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `filter` | `map()` | No |  |
| `list` | `list()` | No |  |
| `pagination` | `map()` | No |  |
| `responseCode` | `integer()` | No |  |
| `responseMessage` | `String.t()` | No |  |
| `sorting` | `map()` | No |  |

### Operations

#### `create(entity, reqdata, ctrl \\ nil) :: map()`

Create a new entity with the given data. Returns the created entity data and raises on error.

```elixir
record = BluefinTecsUserBackoffice.Entity.OutputListOfTransactionsHistory.create(output_list_of_transactions_history, BluefinTecsUserBackoffice.Helpers.deep(%{
}))
```

### Common Functions

#### `data_get(entity) :: map()`

Get the entity data.

#### `data_set(entity, data)`

Set the entity data.

#### `match_get(entity) :: map()`

Get the entity match criteria.

#### `match_set(entity, match)`

Set the entity match criteria.

#### `make(entity) :: entity`

Create a new `BluefinTecsUserBackoffice.Entity.OutputListOfTransactionsHistory` handle with the same options.

#### `get_name(entity) :: String.t()`

Return the entity name.


---

## BluefinTecsUserBackoffice.Entity.OutputListOfUser

```elixir
output_list_of_user = BluefinTecsUserBackoffice.output_list_of_user(sdk)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `filter` | `map()` | No |  |
| `list` | `list()` | No |  |
| `pagination` | `map()` | No |  |
| `responseCode` | `integer()` | No |  |
| `responseMessage` | `String.t()` | No |  |
| `sorting` | `map()` | No |  |

### Operations

#### `create(entity, reqdata, ctrl \\ nil) :: map()`

Create a new entity with the given data. Returns the created entity data and raises on error.

```elixir
record = BluefinTecsUserBackoffice.Entity.OutputListOfUser.create(output_list_of_user, BluefinTecsUserBackoffice.Helpers.deep(%{
}))
```

### Common Functions

#### `data_get(entity) :: map()`

Get the entity data.

#### `data_set(entity, data)`

Set the entity data.

#### `match_get(entity) :: map()`

Get the entity match criteria.

#### `match_set(entity, match)`

Set the entity match criteria.

#### `make(entity) :: entity`

Create a new `BluefinTecsUserBackoffice.Entity.OutputListOfUser` handle with the same options.

#### `get_name(entity) :: String.t()`

Return the entity name.


---

## BluefinTecsUserBackoffice.Entity.OutputProvideCredential

```elixir
output_provide_credential = BluefinTecsUserBackoffice.output_provide_credential(sdk)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `mandatorName` | `String.t()` | Yes |  |
| `password` | `String.t()` | No |  |
| `responseCode` | `integer()` | No |  |
| `responseMessage` | `String.t()` | No |  |
| `username` | `String.t()` | No |  |

### Operations

#### `create(entity, reqdata, ctrl \\ nil) :: map()`

Create a new entity with the given data. Returns the created entity data and raises on error.

```elixir
record = BluefinTecsUserBackoffice.Entity.OutputProvideCredential.create(output_provide_credential, BluefinTecsUserBackoffice.Helpers.deep(%{
  "mandatorName" => "example_mandatorName",  # String.t()
}))
```

### Common Functions

#### `data_get(entity) :: map()`

Get the entity data.

#### `data_set(entity, data)`

Set the entity data.

#### `match_get(entity) :: map()`

Get the entity match criteria.

#### `match_set(entity, match)`

Set the entity match criteria.

#### `make(entity) :: entity`

Create a new `BluefinTecsUserBackoffice.Entity.OutputProvideCredential` handle with the same options.

#### `get_name(entity) :: String.t()`

Return the entity name.


---

## BluefinTecsUserBackoffice.Entity.OutputRegisterUser

```elixir
output_register_user = BluefinTecsUserBackoffice.output_register_user(sdk)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `city` | `String.t()` | No | City where the user resides. |
| `consumerId` | `String.t()` | No | User login or unique user identifier. |
| `consumerLanguage` | `String.t()` | No | Preferred language for the user (e.g., 'en'). |
| `country` | `String.t()` | No | User's country. |
| `dateOfBirth` | `String.t()` | No | User's date of birth (expected format: dd.MM.yyyy). |
| `driverLicenceNumber` | `String.t()` | No | User's driver's license number. |
| `email` | `String.t()` | Yes | User's email address (must be unique). |
| `firstName` | `String.t()` | No | User's first name. |
| `identificationNumber` | `String.t()` | No | User's identification number. |
| `lastName` | `String.t()` | No | User's last name. |
| `login` | `String.t()` | No | User login identifier (should be unique). |
| `module` | `String.t()` | No | Module identifier (if applicable). |
| `passportNumber` | `String.t()` | No | User's passport number. |
| `phone` | `String.t()` | No | User's phone number. |
| `responseCode` | `integer()` | No | Response code (0 indicates success; non-zero indicates an error). |
| `responseMessage` | `String.t()` | No | Human-readable response message. |
| `salutation` | `String.t()` | No | User's salutation (e.g., Mr., Ms.). |
| `state` | `String.t()` | No | User's state or region. |
| `street1` | `String.t()` | No | Primary address line. |
| `street2` | `String.t()` | No | Secondary address line. |
| `zip` | `String.t()` | No | Postal code. |

### Operations

#### `create(entity, reqdata, ctrl \\ nil) :: map()`

Create a new entity with the given data. Returns the created entity data and raises on error.

```elixir
record = BluefinTecsUserBackoffice.Entity.OutputRegisterUser.create(output_register_user, BluefinTecsUserBackoffice.Helpers.deep(%{
  "email" => "example_email",  # String.t()
}))
```

### Common Functions

#### `data_get(entity) :: map()`

Get the entity data.

#### `data_set(entity, data)`

Set the entity data.

#### `match_get(entity) :: map()`

Get the entity match criteria.

#### `match_set(entity, match)`

Set the entity match criteria.

#### `make(entity) :: entity`

Create a new `BluefinTecsUserBackoffice.Entity.OutputRegisterUser` handle with the same options.

#### `get_name(entity) :: String.t()`

Return the entity name.


---

## BluefinTecsUserBackoffice.Entity.OutputRemoveRole

```elixir
output_remove_role = BluefinTecsUserBackoffice.output_remove_role(sdk)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumerUUID` | `String.t()` | No |  |
| `responseCode` | `integer()` | No |  |
| `responseMessage` | `String.t()` | No |  |
| `roles` | `list()` | No |  |

### Operations

#### `create(entity, reqdata, ctrl \\ nil) :: map()`

Create a new entity with the given data. Returns the created entity data and raises on error.

```elixir
record = BluefinTecsUserBackoffice.Entity.OutputRemoveRole.create(output_remove_role, BluefinTecsUserBackoffice.Helpers.deep(%{
}))
```

### Common Functions

#### `data_get(entity) :: map()`

Get the entity data.

#### `data_set(entity, data)`

Set the entity data.

#### `match_get(entity) :: map()`

Get the entity match criteria.

#### `match_set(entity, match)`

Set the entity match criteria.

#### `make(entity) :: entity`

Create a new `BluefinTecsUserBackoffice.Entity.OutputRemoveRole` handle with the same options.

#### `get_name(entity) :: String.t()`

Return the entity name.


---

## BluefinTecsUserBackoffice.Entity.OutputResendLink

```elixir
output_resend_link = BluefinTecsUserBackoffice.output_resend_link(sdk)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `businessRegistrationNumber` | `String.t()` | No |  |
| `consumerUUID` | `String.t()` | Yes |  |
| `emailConfirmationCode` | `String.t()` | No |  |
| `phoneNumber` | `String.t()` | No |  |
| `responseCode` | `integer()` | No |  |
| `responseMessage` | `String.t()` | No |  |

### Operations

#### `create(entity, reqdata, ctrl \\ nil) :: map()`

Create a new entity with the given data. Returns the created entity data and raises on error.

```elixir
record = BluefinTecsUserBackoffice.Entity.OutputResendLink.create(output_resend_link, BluefinTecsUserBackoffice.Helpers.deep(%{
  "consumerUUID" => "example_consumerUUID",  # String.t()
}))
```

### Common Functions

#### `data_get(entity) :: map()`

Get the entity data.

#### `data_set(entity, data)`

Set the entity data.

#### `match_get(entity) :: map()`

Get the entity match criteria.

#### `match_set(entity, match)`

Set the entity match criteria.

#### `make(entity) :: entity`

Create a new `BluefinTecsUserBackoffice.Entity.OutputResendLink` handle with the same options.

#### `get_name(entity) :: String.t()`

Return the entity name.


---

## BluefinTecsUserBackoffice.Entity.OutputResetPassword

```elixir
output_reset_password = BluefinTecsUserBackoffice.output_reset_password(sdk)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumerUuid` | `String.t()` | No |  |
| `phoneNumber` | `String.t()` | No |  |
| `responseCode` | `integer()` | No |  |
| `responseMessage` | `String.t()` | No |  |

### Operations

#### `create(entity, reqdata, ctrl \\ nil) :: map()`

Create a new entity with the given data. Returns the created entity data and raises on error.

```elixir
record = BluefinTecsUserBackoffice.Entity.OutputResetPassword.create(output_reset_password, BluefinTecsUserBackoffice.Helpers.deep(%{
}))
```

### Common Functions

#### `data_get(entity) :: map()`

Get the entity data.

#### `data_set(entity, data)`

Set the entity data.

#### `match_get(entity) :: map()`

Get the entity match criteria.

#### `match_set(entity, match)`

Set the entity match criteria.

#### `make(entity) :: entity`

Create a new `BluefinTecsUserBackoffice.Entity.OutputResetPassword` handle with the same options.

#### `get_name(entity) :: String.t()`

Return the entity name.


---

## BluefinTecsUserBackoffice.Entity.OutputUpdateConsumer

```elixir
output_update_consumer = BluefinTecsUserBackoffice.output_update_consumer(sdk)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `city` | `String.t()` | No |  |
| `consumerUuid` | `String.t()` | Yes |  |
| `consumerlanguage` | `String.t()` | No |  |
| `country` | `String.t()` | No |  |
| `dateOfBirth` | `String.t()` | No |  |
| `datetime_created` | `String.t()` | No |  |
| `driverLicenceNumber` | `String.t()` | No |  |
| `email` | `String.t()` | No |  |
| `firstName` | `String.t()` | No |  |
| `identificationNumber` | `String.t()` | No |  |
| `kycPassed` | `boolean()` | No |  |
| `lastName` | `String.t()` | No |  |
| `nationality` | `String.t()` | No |  |
| `passportNumber` | `String.t()` | No |  |
| `phoneNumber` | `String.t()` | No |  |
| `placeOfBirth` | `String.t()` | No |  |
| `responseCode` | `integer()` | No |  |
| `responseMessage` | `String.t()` | No |  |
| `state` | `String.t()` | No |  |
| `street1` | `String.t()` | No |  |
| `street2` | `String.t()` | No |  |
| `transactionhistory_id` | `String.t()` | No |  |
| `zip` | `String.t()` | No |  |

### Operations

#### `create(entity, reqdata, ctrl \\ nil) :: map()`

Create a new entity with the given data. Returns the created entity data and raises on error.

```elixir
record = BluefinTecsUserBackoffice.Entity.OutputUpdateConsumer.create(output_update_consumer, BluefinTecsUserBackoffice.Helpers.deep(%{
  "consumerUuid" => "example_consumerUuid",  # String.t()
}))
```

### Common Functions

#### `data_get(entity) :: map()`

Get the entity data.

#### `data_set(entity, data)`

Set the entity data.

#### `match_get(entity) :: map()`

Get the entity match criteria.

#### `match_set(entity, match)`

Set the entity match criteria.

#### `make(entity) :: entity`

Create a new `BluefinTecsUserBackoffice.Entity.OutputUpdateConsumer` handle with the same options.

#### `get_name(entity) :: String.t()`

Return the entity name.


---

## BluefinTecsUserBackoffice.Entity.OutputUpdateProfile

```elixir
output_update_profile = BluefinTecsUserBackoffice.output_update_profile(sdk)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumerLanguage` | `String.t()` | No |  |
| `email` | `String.t()` | No |  |
| `firstName` | `String.t()` | No |  |
| `lastName` | `String.t()` | No |  |
| `phoneNumber` | `String.t()` | No |  |
| `responseCode` | `integer()` | No |  |
| `responseMessage` | `String.t()` | No |  |

### Operations

#### `create(entity, reqdata, ctrl \\ nil) :: map()`

Create a new entity with the given data. Returns the created entity data and raises on error.

```elixir
record = BluefinTecsUserBackoffice.Entity.OutputUpdateProfile.create(output_update_profile, BluefinTecsUserBackoffice.Helpers.deep(%{
}))
```

### Common Functions

#### `data_get(entity) :: map()`

Get the entity data.

#### `data_set(entity, data)`

Set the entity data.

#### `match_get(entity) :: map()`

Get the entity match criteria.

#### `match_set(entity, match)`

Set the entity match criteria.

#### `make(entity) :: entity`

Create a new `BluefinTecsUserBackoffice.Entity.OutputUpdateProfile` handle with the same options.

#### `get_name(entity) :: String.t()`

Return the entity name.


---

## BluefinTecsUserBackoffice.Entity.Version

```elixir
version = BluefinTecsUserBackoffice.version(sdk)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `appName` | `String.t()` | No |  |
| `buildDate` | `String.t()` | No |  |
| `version` | `String.t()` | No |  |

### Operations

#### `load(entity, reqmatch, ctrl \\ nil) :: map()`

Load a single entity matching the given criteria. Returns the entity data and raises on error.

```elixir
record = BluefinTecsUserBackoffice.Entity.Version.load(version, BluefinTecsUserBackoffice.Helpers.deep(%{}))
```

### Common Functions

#### `data_get(entity) :: map()`

Get the entity data.

#### `data_set(entity, data)`

Set the entity data.

#### `match_get(entity) :: map()`

Get the entity match criteria.

#### `match_set(entity, match)`

Set the entity match criteria.

#### `make(entity) :: entity`

Create a new `BluefinTecsUserBackoffice.Entity.Version` handle with the same options.

#### `get_name(entity) :: String.t()`

Return the entity name.


---

## Features

| Feature | Version | Description |
| --- | --- | --- |
| `audit` | 0.0.1 | Structured audit trail of operations |
| `clienttrack` | 0.0.1 | Client identity and per-request correlation headers |
| `debug` | 0.0.1 | Request/response capture ring buffer for debugging |
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

```elixir
sdk = BluefinTecsUserBackoffice.new(BluefinTecsUserBackoffice.Helpers.deep(%{
  "feature" => %{
    "audit" => %{"active" => true},
    "clienttrack" => %{"active" => true},
    "debug" => %{"active" => true},
    "idempotency" => %{"active" => true},
    "log" => %{"active" => true},
    "metrics" => %{"active" => true},
    "paging" => %{"active" => true},
    "ratelimit" => %{"active" => true},
    "retry" => %{"active" => true},
    "telemetry" => %{"active" => true},
    "test" => %{"active" => true},
    "timeout" => %{"active" => true},
  }
}))
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

`audit`, `clienttrack`, `debug`, `idempotency`, `log`, `metrics`, `paging`, `telemetry`, `test` attach to pipeline hooks
rather than the transport, so their order does not affect what they observe.

#### `audit`

Structured audit trail of operations.

**Configuration**

| Option | Default |
|---|---|
| `active` | `false` |
| `actor` | `'anonymous'` |
| `max` | `1000` |

| Option | Type |
|---|---|
| `now` | function |
| `sink` | function |

These take no default: the feature behaves one way when you supply them and
another when you do not.

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

| Option | Type |
|---|---|
| `clientName` | string |
| `headers` | map |
| `idgen` | function |
| `sessionId` | string |

These take no default: the feature behaves one way when you supply them and
another when you do not.

**Usage**

Set `feature.clienttrack.active` to true in the client options, and override any option above in the same entry. Every option keeps
its default unless you name it.

**Considerations**

- Attaches to pipeline hooks, not the transport, so activation order does
  not change what it observes.
- Inactive by default: leaving it out costs nothing at runtime.

#### `debug`

Request/response capture ring buffer for debugging.

**Configuration**

| Option | Default |
|---|---|
| `active` | `false` |
| `max` | `100` |
| `redact` | `['authorization', 'cookie', 'set-cookie', 'api-key', 'apikey', 'x-api-key', 'idempotency-key']` |

| Option | Type |
|---|---|
| `now` | function |
| `onEntry` | function |

These take no default: the feature behaves one way when you supply them and
another when you do not.

**Usage**

Set `feature.debug.active` to true in the client options, and override any option above in the same entry. Every option keeps
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

| Option | Type |
|---|---|
| `keygen` | function |

These take no default: the feature behaves one way when you supply them and
another when you do not.

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

| Option | Type |
|---|---|
| `level` | string |
| `logger` | any |

These take no default: the feature behaves one way when you supply them and
another when you do not.

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

| Option | Type |
|---|---|
| `now` | function |

These take no default: the feature behaves one way when you supply them and
another when you do not.

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

| Option | Type |
|---|---|
| `limit` | number |
| `ops` | list |

These take no default: the feature behaves one way when you supply them and
another when you do not.

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

| Option | Type |
|---|---|
| `now` | function |
| `sleep` | function |

These take no default: the feature behaves one way when you supply them and
another when you do not.

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

| Option | Type |
|---|---|
| `jitter` | boolean |
| `sleep` | function |

These take no default: the feature behaves one way when you supply them and
another when you do not.

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

| Option | Type |
|---|---|
| `exporter` | function |
| `headers` | map |
| `idgen` | function |
| `now` | function |

These take no default: the feature behaves one way when you supply them and
another when you do not.

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

| Option | Type |
|---|---|
| `entity` | map |
| `net` | map |

These take no default: the feature behaves one way when you supply them and
another when you do not.

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

| Option | Type |
|---|---|
| `clearTimer` | function |
| `setTimer` | function |

These take no default: the feature behaves one way when you supply them and
another when you do not.

**Usage**

Set `feature.timeout.active` to true in the client options, and override any option above in the same entry. Every option keeps
its default unless you name it.

**Considerations**

- Wraps the transport: its place in the activation order decides what it
  sees. See [Ordering](#ordering) above.
- Inactive by default: leaving it out costs nothing at runtime.


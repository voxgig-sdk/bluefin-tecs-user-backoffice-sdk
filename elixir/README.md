# BluefinTecsUserBackoffice Elixir SDK



The Elixir SDK for the BluefinTecsUserBackoffice API — an entity-oriented client
following idiomatic, functional Elixir conventions.

The SDK exposes the API as capitalised, semantic **Entities** — for example `BluefinTecsUserBackoffice.output_activate_digital_module(sdk)` — each
carrying a small, uniform set of operations (`load`, `create`) instead of raw URL
paths and query strings. You work with named resources and verbs, which
keeps the cognitive load low.

> Other languages, the CLI, and MCP server live alongside this one — see
> the [top-level README](../README.md).


## Install
This package is not yet published to [Hex](https://hex.pm). Install it from
the GitHub release tag (`elixir/vX.Y.Z`, see [Releases](https://github.com/voxgig-sdk/bluefin-tecs-user-backoffice-sdk/releases))
by adding a git dependency to your `mix.exs`:

```elixir
def deps do
  [
    {:bluefin_tecs_user_backoffice, git: "https://github.com/voxgig-sdk/bluefin-tecs-user-backoffice-sdk.git", tag: "elixir/vX.Y.Z"}
  ]
end
```

Or from a local source checkout:

```elixir
def deps do
  [
    {:bluefin_tecs_user_backoffice, path: "../bluefin-tecs-user-backoffice-sdk/elixir"}
  ]
end
```

Then run `mix deps.get`.


## Tutorial: your first API call

This tutorial walks through creating a client, listing entities, and
loading a specific record.

### 1. Create a client

```elixir
alias BluefinTecsUserBackoffice.Helpers, as: H

sdk = BluefinTecsUserBackoffice.new(H.deep(%{"apikey" => System.get_env("BLUEFIN_TECS_USER_BACKOFFICE_APIKEY")}))
```

### 4. Create, update, and remove

```elixir
output_activate_digital_module = BluefinTecsUserBackoffice.output_activate_digital_module(sdk)

# Create — returns the bare created record
created = BluefinTecsUserBackoffice.Entity.OutputActivateDigitalModule.create(output_activate_digital_module, H.deep(%{"responseCode" => 1, "responseMessage" => "example_responseMessage"}))

```


## Error handling

Entity operations reject on failure, so wrap them in `try` / `catch`:

```ts
try {
  const outputgetlogo = await client.OutputGetLogo().load()
  console.log(outputgetlogo)
} catch (err) {
  console.error('load failed:', err)
}
```

The low-level `direct()` method does **not** throw — it returns the
value or an `Error`, so check the result before using it:

```ts
const result = await client.direct({
  path: '/api/resource/{id}',
  method: 'GET',
  params: { id: 'example_id' },
})

if (result instanceof Error) {
  throw result
}
```


## How-to guides

### Make a direct HTTP request

For endpoints not covered by entity operations. `direct/2` never raises —
it returns a result node you branch on with `Voxgig.Struct.getprop/2`:

```elixir
alias Voxgig.Struct, as: S
alias BluefinTecsUserBackoffice.Helpers, as: H

result = BluefinTecsUserBackoffice.direct(sdk, H.deep(%{
  "path" => "/api/resource/{id}",
  "method" => "GET",
  "params" => %{"id" => "example"}
}))

if S.getprop(result, "ok") do
  IO.inspect(S.getprop(result, "status"))  # 200
  IO.inspect(S.getprop(result, "data"))    # response body
else
  # A non-2xx response carries status + data (the error body); a
  # transport-level failure carries err instead.
  IO.inspect(S.getprop(result, "err"))
end
```

### Prepare a request without sending it

```elixir
alias BluefinTecsUserBackoffice.Helpers, as: H

# prepare/2 returns the fetch definition and raises on error.
fetchdef = BluefinTecsUserBackoffice.prepare(sdk, H.deep(%{
  "path" => "/api/resource/{id}",
  "method" => "DELETE",
  "params" => %{"id" => "example"}
}))

IO.inspect(Voxgig.Struct.getprop(fetchdef, "url"))
IO.inspect(Voxgig.Struct.getprop(fetchdef, "method"))
```

### Use test mode

Create a mock client for unit testing — no server required:

```elixir
alias BluefinTecsUserBackoffice.Helpers, as: H

sdk = BluefinTecsUserBackoffice.test()

# Entity ops return the bare record (raise on error).
output_get_logo = BluefinTecsUserBackoffice.output_get_logo(sdk)
record = BluefinTecsUserBackoffice.Entity.OutputGetLogo.load(output_get_logo, H.deep(%{}))
IO.inspect(record)
```

### Use a custom fetch function

Replace the HTTP transport with your own function. It receives `(url,
fetchdef)` and returns a `{response, error}` tuple:

```elixir
alias Voxgig.Struct, as: S
alias BluefinTecsUserBackoffice.Helpers, as: H

mock_fetch = fn _url, _fetchdef ->
  response = H.deep(%{
    "status" => 200,
    "statusText" => "OK",
    "headers" => %{},
    "json" => fn -> %{"id" => "mock01"} end
  })
  {response, nil}
end

sdk = BluefinTecsUserBackoffice.new(H.deep(%{
  "base" => "http://localhost:8080",
  "system" => %{"fetch" => mock_fetch}
}))
```

### Run live tests

Create a `.env.local` file at the project root:

```
BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE=TRUE
BLUEFIN_TECS_USER_BACKOFFICE_APIKEY=<your-key>
```

Then run:

```bash
cd elixir && mix test
```


## Reference

### BluefinTecsUserBackoffice

```elixir
sdk = BluefinTecsUserBackoffice.new(options)
```

Creates a new SDK client. `options` is a struct value node — build one from a
native map with `BluefinTecsUserBackoffice.Helpers.deep/1`.

| Option | Type | Description |
| --- | --- | --- |
| `apikey` | `String.t()` | API key for authentication. |
| `base` | `String.t()` | Base URL of the API server. |
| `prefix` | `String.t()` | URL path prefix prepended to all requests. |
| `suffix` | `String.t()` | URL path suffix appended to all requests. |
| `feature` | `map()` | Feature activation flags. |
| `extend` | `list()` | Additional feature instances to load. |
| `system` | `map()` | System overrides (e.g. custom `fetch` function). |

### test

```elixir
sdk = BluefinTecsUserBackoffice.test(testopts, sdkopts)
```

Creates a test-mode client with mock transport. Both arguments may be `nil`.

### BluefinTecsUserBackoffice functions

| Function | Signature | Description |
| --- | --- | --- |
| `options_map` | `(client) :: map()` | Deep copy of current SDK options. |
| `get_utility` | `(client) :: map()` | The SDK utility node. |
| `prepare` | `(client, fetchargs) :: map()` | Build an HTTP request definition without sending. Raises on error. |
| `direct` | `(client, fetchargs) :: map()` | Build and send an HTTP request. Returns a result node (branch on `ok`). |
| `output_activate_digital_module` | `(client, entopts \\ nil) :: entity` | Create an OutputActivateDigitalModule entity handle. |
| `output_activate_portal_module` | `(client, entopts \\ nil) :: entity` | Create an OutputActivatePortalModule entity handle. |
| `output_activate_store_module` | `(client, entopts \\ nil) :: entity` | Create an OutputActivateStoreModule entity handle. |
| `output_activate_user` | `(client, entopts \\ nil) :: entity` | Create an OutputActivateUser entity handle. |
| `output_assign_role` | `(client, entopts \\ nil) :: entity` | Create an OutputAssignRole entity handle. |
| `output_change_logo` | `(client, entopts \\ nil) :: entity` | Create an OutputChangeLogo entity handle. |
| `output_create_mandator` | `(client, entopts \\ nil) :: entity` | Create an OutputCreateMandator entity handle. |
| `output_create_service_user` | `(client, entopts \\ nil) :: entity` | Create an OutputCreateServiceUser entity handle. |
| `output_deactivate_user` | `(client, entopts \\ nil) :: entity` | Create an OutputDeactivateUser entity handle. |
| `output_get_kyc_document` | `(client, entopts \\ nil) :: entity` | Create an OutputGetKycDocument entity handle. |
| `output_get_logo` | `(client, entopts \\ nil) :: entity` | Create an OutputGetLogo entity handle. |
| `output_list_of_available_role` | `(client, entopts \\ nil) :: entity` | Create an OutputListOfAvailableRole entity handle. |
| `output_list_of_mandator` | `(client, entopts \\ nil) :: entity` | Create an OutputListOfMandator entity handle. |
| `output_list_of_module` | `(client, entopts \\ nil) :: entity` | Create an OutputListOfModule entity handle. |
| `output_list_of_role_group` | `(client, entopts \\ nil) :: entity` | Create an OutputListOfRoleGroup entity handle. |
| `output_list_of_transactions_history` | `(client, entopts \\ nil) :: entity` | Create an OutputListOfTransactionsHistory entity handle. |
| `output_list_of_user` | `(client, entopts \\ nil) :: entity` | Create an OutputListOfUser entity handle. |
| `output_provide_credential` | `(client, entopts \\ nil) :: entity` | Create an OutputProvideCredential entity handle. |
| `output_register_user` | `(client, entopts \\ nil) :: entity` | Create an OutputRegisterUser entity handle. |
| `output_remove_role` | `(client, entopts \\ nil) :: entity` | Create an OutputRemoveRole entity handle. |
| `output_resend_link` | `(client, entopts \\ nil) :: entity` | Create an OutputResendLink entity handle. |
| `output_reset_password` | `(client, entopts \\ nil) :: entity` | Create an OutputResetPassword entity handle. |
| `output_update_consumer` | `(client, entopts \\ nil) :: entity` | Create an OutputUpdateConsumer entity handle. |
| `output_update_profile` | `(client, entopts \\ nil) :: entity` | Create an OutputUpdateProfile entity handle. |
| `version` | `(client, entopts \\ nil) :: entity` | Create a Version entity handle. |

### Entity interface

Every entity's `BluefinTecsUserBackoffice.Entity.<Name>` module shares the same interface.

| Function | Signature | Description |
| --- | --- | --- |
| `load` | `(entity, reqmatch, ctrl \\ nil) :: map()` | Load a single entity by match criteria. Raises on error. |
| `create` | `(entity, reqdata, ctrl \\ nil) :: map()` | Create a new entity. Raises on error. |
| `data_get` | `(entity) :: map()` | Get entity data. |
| `data_set` | `(entity, data)` | Set entity data. |
| `match_get` | `(entity) :: map()` | Get entity match criteria. |
| `match_set` | `(entity, match)` | Set entity match criteria. |
| `make` | `(entity) :: entity` | Create a new handle with the same options. |
| `get_name` | `(entity) :: String.t()` | Return the entity name. |

### Result shape

Entity operations return the bare result data (a value node — a map for
single-entity ops, a list for `list`) and raise a `BluefinTecsUserBackoffice.Error` on
failure. Wrap calls in `try`/`rescue` to handle errors.

The `direct/2` escape hatch never raises — it returns a result node you
branch on via `Voxgig.Struct.getprop(result, "ok")`:

| Key | Type | Description |
| --- | --- | --- |
| `ok` | `boolean()` | `true` if the HTTP status is 2xx. |
| `status` | `integer()` | HTTP status code. |
| `headers` | `map()` | Response headers. |
| `data` | `any()` | Parsed JSON response body. |

On error, `ok` is `false` and `err` carries the error value.

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

Every operation lives on the entity's `BluefinTecsUserBackoffice.Entity.<Name>` module and
takes an entity handle built from the client:


### OutputActivateDigitalModule

Create a handle: `output_activate_digital_module = BluefinTecsUserBackoffice.output_activate_digital_module(sdk)`

#### Operations

| Method | Description |
| --- | --- |
| `create(entity, data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `responseCode` | `integer()` |  |
| `responseMessage` | `String.t()` |  |

#### Example: Create

```elixir
output_activate_digital_module = BluefinTecsUserBackoffice.output_activate_digital_module(sdk)
record = BluefinTecsUserBackoffice.Entity.OutputActivateDigitalModule.create(output_activate_digital_module, BluefinTecsUserBackoffice.Helpers.deep(%{
}))
```


### OutputActivatePortalModule

Create a handle: `output_activate_portal_module = BluefinTecsUserBackoffice.output_activate_portal_module(sdk)`

#### Operations

| Method | Description |
| --- | --- |
| `create(entity, data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clientSecret` | `String.t()` |  |
| `notificationEmail` | `String.t()` |  |
| `responseCode` | `integer()` |  |
| `responseMessage` | `String.t()` |  |

#### Example: Create

```elixir
output_activate_portal_module = BluefinTecsUserBackoffice.output_activate_portal_module(sdk)
record = BluefinTecsUserBackoffice.Entity.OutputActivatePortalModule.create(output_activate_portal_module, BluefinTecsUserBackoffice.Helpers.deep(%{
  "clientSecret" => "example_clientSecret",  # String.t()
  "notificationEmail" => "example_notificationEmail",  # String.t()
}))
```


### OutputActivateStoreModule

Create a handle: `output_activate_store_module = BluefinTecsUserBackoffice.output_activate_store_module(sdk)`

#### Operations

| Method | Description |
| --- | --- |
| `create(entity, data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `responseCode` | `integer()` |  |
| `responseMessage` | `String.t()` |  |

#### Example: Create

```elixir
output_activate_store_module = BluefinTecsUserBackoffice.output_activate_store_module(sdk)
record = BluefinTecsUserBackoffice.Entity.OutputActivateStoreModule.create(output_activate_store_module, BluefinTecsUserBackoffice.Helpers.deep(%{
}))
```


### OutputActivateUser

Create a handle: `output_activate_user = BluefinTecsUserBackoffice.output_activate_user(sdk)`

#### Operations

| Method | Description |
| --- | --- |
| `create(entity, data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumerUUID` | `String.t()` |  |
| `responseCode` | `integer()` |  |
| `responseMessage` | `String.t()` |  |

#### Example: Create

```elixir
output_activate_user = BluefinTecsUserBackoffice.output_activate_user(sdk)
record = BluefinTecsUserBackoffice.Entity.OutputActivateUser.create(output_activate_user, BluefinTecsUserBackoffice.Helpers.deep(%{
}))
```


### OutputAssignRole

Create a handle: `output_assign_role = BluefinTecsUserBackoffice.output_assign_role(sdk)`

#### Operations

| Method | Description |
| --- | --- |
| `create(entity, data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumerUUID` | `String.t()` | Unique identifier of the consumer (user) to whom the role(s) will be assigned. |
| `responseCode` | `integer()` | Response code: 0 indicates success; any non-zero value indicates an error. |
| `responseMessage` | `String.t()` | A human-readable message providing additional details about the outcome. |
| `roles` | `list()` | List of roles to assign to the consumer. |

#### Example: Create

```elixir
output_assign_role = BluefinTecsUserBackoffice.output_assign_role(sdk)
record = BluefinTecsUserBackoffice.Entity.OutputAssignRole.create(output_assign_role, BluefinTecsUserBackoffice.Helpers.deep(%{
  "consumerUUID" => "example_consumerUUID",  # String.t()
  "roles" => [],  # list()
}))
```


### OutputChangeLogo

Create a handle: `output_change_logo = BluefinTecsUserBackoffice.output_change_logo(sdk)`

#### Operations

| Method | Description |
| --- | --- |
| `create(entity, data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `contentAsBase64` | `String.t()` | The content of the image as base64 encoded string |
| `mimeType` | `String.t()` | The MIME type of the image |
| `responseCode` | `integer()` |  |
| `responseMessage` | `String.t()` |  |

#### Example: Create

```elixir
output_change_logo = BluefinTecsUserBackoffice.output_change_logo(sdk)
record = BluefinTecsUserBackoffice.Entity.OutputChangeLogo.create(output_change_logo, BluefinTecsUserBackoffice.Helpers.deep(%{
  "contentAsBase64" => "example_contentAsBase64",  # String.t()
  "mimeType" => "example_mimeType",  # String.t()
}))
```


### OutputCreateMandator

Create a handle: `output_create_mandator = BluefinTecsUserBackoffice.output_create_mandator(sdk)`

#### Operations

| Method | Description |
| --- | --- |
| `create(entity, data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `city` | `String.t()` |  |
| `country` | `String.t()` |  |
| `dateOfBirth` | `String.t()` |  |
| `description` | `String.t()` |  |
| `driversLicenseNumber` | `String.t()` |  |
| `email` | `String.t()` |  |
| `firstName` | `String.t()` |  |
| `identificationNumber` | `String.t()` |  |
| `lastName` | `String.t()` |  |
| `login` | `String.t()` |  |
| `name` | `String.t()` |  |
| `passportNumber` | `String.t()` |  |
| `phone` | `String.t()` |  |
| `salutation` | `String.t()` |  |
| `state` | `String.t()` |  |
| `street1` | `String.t()` |  |
| `street2` | `String.t()` |  |
| `zipCode` | `String.t()` |  |

#### Example: Create

```elixir
output_create_mandator = BluefinTecsUserBackoffice.output_create_mandator(sdk)
record = BluefinTecsUserBackoffice.Entity.OutputCreateMandator.create(output_create_mandator, BluefinTecsUserBackoffice.Helpers.deep(%{
  "email" => "example_email",  # String.t()
  "login" => "example_login",  # String.t()
  "phone" => "example_phone",  # String.t()
}))
```


### OutputCreateServiceUser

Create a handle: `output_create_service_user = BluefinTecsUserBackoffice.output_create_service_user(sdk)`

#### Operations

| Method | Description |
| --- | --- |
| `create(entity, data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `mandatorName` | `String.t()` |  |
| `responseCode` | `integer()` |  |
| `responseMessage` | `String.t()` |  |

#### Example: Create

```elixir
output_create_service_user = BluefinTecsUserBackoffice.output_create_service_user(sdk)
record = BluefinTecsUserBackoffice.Entity.OutputCreateServiceUser.create(output_create_service_user, BluefinTecsUserBackoffice.Helpers.deep(%{
  "mandatorName" => "example_mandatorName",  # String.t()
}))
```


### OutputDeactivateUser

Create a handle: `output_deactivate_user = BluefinTecsUserBackoffice.output_deactivate_user(sdk)`

#### Operations

| Method | Description |
| --- | --- |
| `create(entity, data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumerUUID` | `String.t()` |  |
| `responseCode` | `integer()` |  |
| `responseMessage` | `String.t()` |  |

#### Example: Create

```elixir
output_deactivate_user = BluefinTecsUserBackoffice.output_deactivate_user(sdk)
record = BluefinTecsUserBackoffice.Entity.OutputDeactivateUser.create(output_deactivate_user, BluefinTecsUserBackoffice.Helpers.deep(%{
}))
```


### OutputGetKycDocument

Create a handle: `output_get_kyc_document = BluefinTecsUserBackoffice.output_get_kyc_document(sdk)`

#### Operations

| Method | Description |
| --- | --- |
| `create(entity, data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `caseID` | `String.t()` |  |
| `encodedDataBase64` | `String.t()` |  |
| `responseCode` | `integer()` |  |
| `responseMessage` | `String.t()` |  |

#### Example: Create

```elixir
output_get_kyc_document = BluefinTecsUserBackoffice.output_get_kyc_document(sdk)
record = BluefinTecsUserBackoffice.Entity.OutputGetKycDocument.create(output_get_kyc_document, BluefinTecsUserBackoffice.Helpers.deep(%{
}))
```


### OutputGetLogo

Create a handle: `output_get_logo = BluefinTecsUserBackoffice.output_get_logo(sdk)`

#### Operations

| Method | Description |
| --- | --- |
| `load(entity, match)` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `contentAsBase64` | `String.t()` | The content of the image as base64 encoded string |
| `mimeType` | `String.t()` | The MIME type of the image |
| `responseCode` | `integer()` |  |
| `responseMessage` | `String.t()` |  |

#### Example: Load

```elixir
output_get_logo = BluefinTecsUserBackoffice.output_get_logo(sdk)
record = BluefinTecsUserBackoffice.Entity.OutputGetLogo.load(output_get_logo, BluefinTecsUserBackoffice.Helpers.deep(%{}))
```


### OutputListOfAvailableRole

Create a handle: `output_list_of_available_role = BluefinTecsUserBackoffice.output_list_of_available_role(sdk)`

#### Operations

| Method | Description |
| --- | --- |
| `create(entity, data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `availableRoles` | `list()` |  |
| `responseCode` | `integer()` |  |
| `responseMessage` | `String.t()` |  |

#### Example: Create

```elixir
output_list_of_available_role = BluefinTecsUserBackoffice.output_list_of_available_role(sdk)
record = BluefinTecsUserBackoffice.Entity.OutputListOfAvailableRole.create(output_list_of_available_role, BluefinTecsUserBackoffice.Helpers.deep(%{
}))
```


### OutputListOfMandator

Create a handle: `output_list_of_mandator = BluefinTecsUserBackoffice.output_list_of_mandator(sdk)`

#### Operations

| Method | Description |
| --- | --- |
| `create(entity, data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `filter` | `map()` |  |
| `list` | `list()` |  |
| `pagination` | `map()` |  |
| `responseCode` | `integer()` |  |
| `responseMessage` | `String.t()` |  |
| `sorting` | `map()` |  |

#### Example: Create

```elixir
output_list_of_mandator = BluefinTecsUserBackoffice.output_list_of_mandator(sdk)
record = BluefinTecsUserBackoffice.Entity.OutputListOfMandator.create(output_list_of_mandator, BluefinTecsUserBackoffice.Helpers.deep(%{
}))
```


### OutputListOfModule

Create a handle: `output_list_of_module = BluefinTecsUserBackoffice.output_list_of_module(sdk)`

#### Operations

| Method | Description |
| --- | --- |
| `create(entity, data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `list` | `list()` |  |
| `pagination` | `map()` |  |
| `responseCode` | `integer()` |  |
| `responseMessage` | `String.t()` |  |

#### Example: Create

```elixir
output_list_of_module = BluefinTecsUserBackoffice.output_list_of_module(sdk)
record = BluefinTecsUserBackoffice.Entity.OutputListOfModule.create(output_list_of_module, BluefinTecsUserBackoffice.Helpers.deep(%{
}))
```


### OutputListOfRoleGroup

Create a handle: `output_list_of_role_group = BluefinTecsUserBackoffice.output_list_of_role_group(sdk)`

#### Operations

| Method | Description |
| --- | --- |
| `create(entity, data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `filter` | `map()` |  |
| `groupRoles` | `list()` |  |
| `pagination` | `map()` |  |
| `responseCode` | `integer()` |  |
| `responseMessage` | `String.t()` |  |
| `sorting` | `map()` |  |

#### Example: Create

```elixir
output_list_of_role_group = BluefinTecsUserBackoffice.output_list_of_role_group(sdk)
record = BluefinTecsUserBackoffice.Entity.OutputListOfRoleGroup.create(output_list_of_role_group, BluefinTecsUserBackoffice.Helpers.deep(%{
}))
```


### OutputListOfTransactionsHistory

Create a handle: `output_list_of_transactions_history = BluefinTecsUserBackoffice.output_list_of_transactions_history(sdk)`

#### Operations

| Method | Description |
| --- | --- |
| `create(entity, data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `filter` | `map()` |  |
| `list` | `list()` |  |
| `pagination` | `map()` |  |
| `responseCode` | `integer()` |  |
| `responseMessage` | `String.t()` |  |
| `sorting` | `map()` |  |

#### Example: Create

```elixir
output_list_of_transactions_history = BluefinTecsUserBackoffice.output_list_of_transactions_history(sdk)
record = BluefinTecsUserBackoffice.Entity.OutputListOfTransactionsHistory.create(output_list_of_transactions_history, BluefinTecsUserBackoffice.Helpers.deep(%{
}))
```


### OutputListOfUser

Create a handle: `output_list_of_user = BluefinTecsUserBackoffice.output_list_of_user(sdk)`

#### Operations

| Method | Description |
| --- | --- |
| `create(entity, data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `filter` | `map()` |  |
| `list` | `list()` |  |
| `pagination` | `map()` |  |
| `responseCode` | `integer()` |  |
| `responseMessage` | `String.t()` |  |
| `sorting` | `map()` |  |

#### Example: Create

```elixir
output_list_of_user = BluefinTecsUserBackoffice.output_list_of_user(sdk)
record = BluefinTecsUserBackoffice.Entity.OutputListOfUser.create(output_list_of_user, BluefinTecsUserBackoffice.Helpers.deep(%{
}))
```


### OutputProvideCredential

Create a handle: `output_provide_credential = BluefinTecsUserBackoffice.output_provide_credential(sdk)`

#### Operations

| Method | Description |
| --- | --- |
| `create(entity, data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `mandatorName` | `String.t()` |  |
| `password` | `String.t()` |  |
| `responseCode` | `integer()` |  |
| `responseMessage` | `String.t()` |  |
| `username` | `String.t()` |  |

#### Example: Create

```elixir
output_provide_credential = BluefinTecsUserBackoffice.output_provide_credential(sdk)
record = BluefinTecsUserBackoffice.Entity.OutputProvideCredential.create(output_provide_credential, BluefinTecsUserBackoffice.Helpers.deep(%{
  "mandatorName" => "example_mandatorName",  # String.t()
}))
```


### OutputRegisterUser

Create a handle: `output_register_user = BluefinTecsUserBackoffice.output_register_user(sdk)`

#### Operations

| Method | Description |
| --- | --- |
| `create(entity, data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `city` | `String.t()` | City where the user resides. |
| `consumerId` | `String.t()` | User login or unique user identifier. |
| `consumerLanguage` | `String.t()` | Preferred language for the user (e.g., 'en'). |
| `country` | `String.t()` | User's country. |
| `dateOfBirth` | `String.t()` | User's date of birth (expected format: dd.MM.yyyy). |
| `driverLicenceNumber` | `String.t()` | User's driver's license number. |
| `email` | `String.t()` | User's email address (must be unique). |
| `firstName` | `String.t()` | User's first name. |
| `identificationNumber` | `String.t()` | User's identification number. |
| `lastName` | `String.t()` | User's last name. |
| `login` | `String.t()` | User login identifier (should be unique). |
| `module` | `String.t()` | Module identifier (if applicable). |
| `passportNumber` | `String.t()` | User's passport number. |
| `phone` | `String.t()` | User's phone number. |
| `responseCode` | `integer()` | Response code (0 indicates success; non-zero indicates an error). |
| `responseMessage` | `String.t()` | Human-readable response message. |
| `salutation` | `String.t()` | User's salutation (e.g., Mr., Ms.). |
| `state` | `String.t()` | User's state or region. |
| `street1` | `String.t()` | Primary address line. |
| `street2` | `String.t()` | Secondary address line. |
| `zip` | `String.t()` | Postal code. |

#### Example: Create

```elixir
output_register_user = BluefinTecsUserBackoffice.output_register_user(sdk)
record = BluefinTecsUserBackoffice.Entity.OutputRegisterUser.create(output_register_user, BluefinTecsUserBackoffice.Helpers.deep(%{
  "email" => "example_email",  # String.t()
}))
```


### OutputRemoveRole

Create a handle: `output_remove_role = BluefinTecsUserBackoffice.output_remove_role(sdk)`

#### Operations

| Method | Description |
| --- | --- |
| `create(entity, data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumerUUID` | `String.t()` |  |
| `responseCode` | `integer()` |  |
| `responseMessage` | `String.t()` |  |
| `roles` | `list()` |  |

#### Example: Create

```elixir
output_remove_role = BluefinTecsUserBackoffice.output_remove_role(sdk)
record = BluefinTecsUserBackoffice.Entity.OutputRemoveRole.create(output_remove_role, BluefinTecsUserBackoffice.Helpers.deep(%{
}))
```


### OutputResendLink

Create a handle: `output_resend_link = BluefinTecsUserBackoffice.output_resend_link(sdk)`

#### Operations

| Method | Description |
| --- | --- |
| `create(entity, data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `businessRegistrationNumber` | `String.t()` |  |
| `consumerUUID` | `String.t()` |  |
| `emailConfirmationCode` | `String.t()` |  |
| `phoneNumber` | `String.t()` |  |
| `responseCode` | `integer()` |  |
| `responseMessage` | `String.t()` |  |

#### Example: Create

```elixir
output_resend_link = BluefinTecsUserBackoffice.output_resend_link(sdk)
record = BluefinTecsUserBackoffice.Entity.OutputResendLink.create(output_resend_link, BluefinTecsUserBackoffice.Helpers.deep(%{
  "consumerUUID" => "example_consumerUUID",  # String.t()
}))
```


### OutputResetPassword

Create a handle: `output_reset_password = BluefinTecsUserBackoffice.output_reset_password(sdk)`

#### Operations

| Method | Description |
| --- | --- |
| `create(entity, data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumerUuid` | `String.t()` |  |
| `phoneNumber` | `String.t()` |  |
| `responseCode` | `integer()` |  |
| `responseMessage` | `String.t()` |  |

#### Example: Create

```elixir
output_reset_password = BluefinTecsUserBackoffice.output_reset_password(sdk)
record = BluefinTecsUserBackoffice.Entity.OutputResetPassword.create(output_reset_password, BluefinTecsUserBackoffice.Helpers.deep(%{
}))
```


### OutputUpdateConsumer

Create a handle: `output_update_consumer = BluefinTecsUserBackoffice.output_update_consumer(sdk)`

#### Operations

| Method | Description |
| --- | --- |
| `create(entity, data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `city` | `String.t()` |  |
| `consumerUuid` | `String.t()` |  |
| `consumerlanguage` | `String.t()` |  |
| `country` | `String.t()` |  |
| `dateOfBirth` | `String.t()` |  |
| `datetime_created` | `String.t()` |  |
| `driverLicenceNumber` | `String.t()` |  |
| `email` | `String.t()` |  |
| `firstName` | `String.t()` |  |
| `identificationNumber` | `String.t()` |  |
| `kycPassed` | `boolean()` |  |
| `lastName` | `String.t()` |  |
| `nationality` | `String.t()` |  |
| `passportNumber` | `String.t()` |  |
| `phoneNumber` | `String.t()` |  |
| `placeOfBirth` | `String.t()` |  |
| `responseCode` | `integer()` |  |
| `responseMessage` | `String.t()` |  |
| `state` | `String.t()` |  |
| `street1` | `String.t()` |  |
| `street2` | `String.t()` |  |
| `transactionhistory_id` | `String.t()` |  |
| `zip` | `String.t()` |  |

#### Example: Create

```elixir
output_update_consumer = BluefinTecsUserBackoffice.output_update_consumer(sdk)
record = BluefinTecsUserBackoffice.Entity.OutputUpdateConsumer.create(output_update_consumer, BluefinTecsUserBackoffice.Helpers.deep(%{
  "consumerUuid" => "example_consumerUuid",  # String.t()
}))
```


### OutputUpdateProfile

Create a handle: `output_update_profile = BluefinTecsUserBackoffice.output_update_profile(sdk)`

#### Operations

| Method | Description |
| --- | --- |
| `create(entity, data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumerLanguage` | `String.t()` |  |
| `email` | `String.t()` |  |
| `firstName` | `String.t()` |  |
| `lastName` | `String.t()` |  |
| `phoneNumber` | `String.t()` |  |
| `responseCode` | `integer()` |  |
| `responseMessage` | `String.t()` |  |

#### Example: Create

```elixir
output_update_profile = BluefinTecsUserBackoffice.output_update_profile(sdk)
record = BluefinTecsUserBackoffice.Entity.OutputUpdateProfile.create(output_update_profile, BluefinTecsUserBackoffice.Helpers.deep(%{
}))
```


### Version

Create a handle: `version = BluefinTecsUserBackoffice.version(sdk)`

#### Operations

| Method | Description |
| --- | --- |
| `load(entity, match)` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `appName` | `String.t()` |  |
| `buildDate` | `String.t()` |  |
| `version` | `String.t()` |  |

#### Example: Load

```elixir
version = BluefinTecsUserBackoffice.version(sdk)
record = BluefinTecsUserBackoffice.Entity.Version.load(version, BluefinTecsUserBackoffice.Helpers.deep(%{}))
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

Features are the extension mechanism. A feature is an object with a
`hooks` map. Each hook key is a pipeline stage name, and the value is
a function that receives the context.

The SDK ships with built-in features:

- **TestFeature**: In-memory mock transport for testing without a live server

Features are initialized in order. Hooks fire in the order features
were added, so later features can override earlier ones.

### Data as struct value nodes

The Elixir SDK models every runtime object — clients, contexts, results and
record data — as reference-stable struct value nodes from the vendored
`Voxgig.Struct` library rather than as compile-time structs. This mirrors
the dynamic nature of the API and lets a feature hook mutate a shared node
that every later pipeline stage observes — the immutable-Elixir way to honour
the shared-mutable hook contract.

Build inputs from native Elixir maps with `BluefinTecsUserBackoffice.Helpers.deep/1`,
and read fields off results with `Voxgig.Struct.getprop/2`.

### Module structure

```
elixir/
├── lib/
│   ├── bluefin-tecs-user-backoffice.ex                 -- Main SDK module (entity factories)
│   ├── config.ex                 -- Resolved configuration
│   ├── features.ex               -- Feature factory
│   ├── pipeline.ex               -- Operation pipeline
│   └── bluefin-tecs-user-backoffice/
│       ├── context.ex            -- Operation context
│       ├── entity_base.ex        -- Shared entity behaviour
│       ├── error.ex              -- SDK error type
│       ├── feature.ex            -- Built-in features
│       ├── helpers.ex            -- Value helpers (deep/1, ...)
│       ├── json.ex               -- JSON encode/decode
│       └── utility.ex            -- Utility functions
│   └── entity/                   -- Per-entity modules
├── mix.exs                       -- Package manifest
└── test/                         -- ExUnit suites
```

The main module `BluefinTecsUserBackoffice` exposes the SDK constructors and one entity
factory function per entity. Call an operation on the matching
`BluefinTecsUserBackoffice.Entity.<Name>` module.

### Entity state

Entity instances are stateful. After a successful `load`, the entity
stores the returned data and match criteria internally. Subsequent
calls on the same instance can rely on this state.

```ts
const outputgetlogo = client.OutputGetLogo()
await outputgetlogo.load()

// outputgetlogo.data() now returns the outputgetlogo data from the last `load`
// outputgetlogo.match() returns the last match criteria
```

Call `make()` to create a fresh instance with the same configuration
but no stored state.

### Direct vs entity access

The entity interface handles URL construction, parameter placement,
and response parsing automatically. Use it for standard CRUD operations.

The `direct` method gives full control over the HTTP request. Use it
for non-standard endpoints, bulk operations, or any path not modelled
as an entity. The `prepare` method is useful for debugging — it
shows exactly what `direct` would send.


## Full Reference

See [REFERENCE.md](REFERENCE.md) for complete API reference
documentation including all method signatures, entity field schemas,
and detailed usage examples.

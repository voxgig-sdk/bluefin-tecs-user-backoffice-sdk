# BluefinTecsUserBackoffice OCaml SDK



The OCaml SDK for the BluefinTecsUserBackoffice API — an entity-oriented client
following idiomatic OCaml conventions (a dependency-free library that compiles
with the stock `ocamlc`).

The SDK exposes the API as capitalised, semantic **Entities** — for example `Sdk_client.output_activate_digital_module client Noval` — each
carrying a small, uniform set of operations (`load`, `create`) instead of raw URL
paths and query strings. You work with named resources and verbs, which
keeps the cognitive load low.

> Other languages, the CLI, and MCP server live alongside this one — see
> the [top-level README](../README.md).


## Install
This package is not yet published to the opam registry. Install it from the
GitHub release tag (`ocaml/vX.Y.Z`, see [Releases](https://github.com/voxgig-sdk/bluefin-tecs-user-backoffice-sdk/releases))
or from a source checkout. The SDK is dependency-free and compiles with the
stock `ocamlc` — no opam packages, no dune:

```bash
cd ocaml && make build
```


## Tutorial: your first API call

This tutorial walks through creating a client, listing entities, and
loading a specific record.

### 1. Create a client

```ocaml
open Voxgig_struct
open Sdk_helpers

let client = Sdk_client.make (jo [("apikey", Str (Sys.getenv "BLUEFIN_TECS_USER_BACKOFFICE_APIKEY"))])
```

### 4. Create, update, and remove

```ocaml
(* Create — resolves to the ENTITY; e_data_get gives the record *)
let created = (Sdk_client.output_activate_digital_module client Noval).e_create (jo [("responseCode", (Num 1.)); ("responseMessage", (Str "example_responseMessage"))]) Noval in
print_endline (stringify (created.e_data_get ()));

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

For endpoints not covered by entity methods:

```ocaml
let result = Sdk_client.direct client (jo [
    ("path", Str "/api/resource/{id}");
    ("method", Str "GET");
    ("params", jo [("id", Str "example")]);
]) in
(match getp result "ok" with
 | Bool true ->
   print_endline (stringify (getp result "status"));  (* 200 *)
   print_endline (stringify (getp result "data"))      (* response body *)
 | _ ->
   (* A non-2xx response carries status + data (the error body); a transport
      failure carries err instead. Read whichever is present. *)
   print_endline (stringify (getp result "status"));
   print_endline (stringify (getp result "err")))
```

### Prepare a request without sending it

```ocaml
(* prepare returns the fetch definition and raises on error. *)
let fetchdef = Sdk_client.prepare client (jo [
    ("path", Str "/api/resource/{id}");
    ("method", Str "DELETE");
    ("params", jo [("id", Str "example")]);
]) in
print_endline (stringify (getp fetchdef "url"));
print_endline (stringify (getp fetchdef "method"));
print_endline (stringify (getp fetchdef "headers"))
```

### Use test mode

Create a mock client for unit testing — no server required:

```ocaml
let () =
  let client = Sdk_client.test () in
  (* Entity ops resolve to the ENTITY and raise on error. *)
  let output_get_logo = (Sdk_client.output_get_logo client Noval).e_load (empty_map ()) Noval in
  print_endline (stringify (output_get_logo.e_data_get ()))  (* the mock response record *)
```

### Use a custom fetch function

Replace the HTTP transport with your own function:

```ocaml
let mock_fetch = Func (fun _ _args _ _ ->
    jo [("status", Num 200.); ("statusText", Str "OK"); ("headers", empty_map ());
        ("json", json_thunk (jo [("id", Str "mock01")]))]) in
let client = Sdk_client.make (jo [
    ("base", Str "http://localhost:8080");
    ("system", jo [("fetch", mock_fetch)]);
]) in
ignore client
```

### Run live tests

Create a `.env.local` file at the project root:

```
BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE=TRUE
BLUEFIN_TECS_USER_BACKOFFICE_APIKEY=<your-key>
```

Then run:

```bash
cd ocaml && make test
```


## Reference

### Sdk_client

```ocaml
open Voxgig_struct
open Sdk_helpers

let client = Sdk_client.make options
```

Creates a new SDK client from a `value` options map. Use `Sdk_client.make0 ()`
for defaults.

| Option | Type | Description |
| --- | --- | --- |
| `apikey` | `string` | API key for authentication. |
| `base` | `string` | Base URL of the API server. |
| `prefix` | `string` | URL path prefix prepended to all requests. |
| `suffix` | `string` | URL path suffix appended to all requests. |
| `feature` | `map` | Feature activation flags. |
| `extend` | `list` | Additional feature instances to load. |
| `system` | `map` | System overrides (e.g. custom `fetch` function). |

### Sdk_client.test

```ocaml
let client = Sdk_client.test_with testopts sdkopts
```

Creates a test-mode client with mock transport. Both arguments may be `Noval`
(`Sdk_client.test ()` uses defaults).

### Sdk_client functions

| Function | Signature | Description |
| --- | --- | --- |
| `make` | `value -> sdk_client` | Construct a client from options. |
| `make0` | `unit -> sdk_client` | Construct a client with defaults. |
| `prepare` | `sdk_client -> value -> value` | Build an HTTP request definition without sending. Raises on error. |
| `direct` | `sdk_client -> value -> value` | Build and send an HTTP request. Returns a result map (branch on `ok`). |
| `output_activate_digital_module` | `sdk_client -> value -> entity_obj` | An OutputActivateDigitalModule entity accessor. |
| `output_activate_portal_module` | `sdk_client -> value -> entity_obj` | An OutputActivatePortalModule entity accessor. |
| `output_activate_store_module` | `sdk_client -> value -> entity_obj` | An OutputActivateStoreModule entity accessor. |
| `output_activate_user` | `sdk_client -> value -> entity_obj` | An OutputActivateUser entity accessor. |
| `output_assign_role` | `sdk_client -> value -> entity_obj` | An OutputAssignRole entity accessor. |
| `output_change_logo` | `sdk_client -> value -> entity_obj` | An OutputChangeLogo entity accessor. |
| `output_create_mandator` | `sdk_client -> value -> entity_obj` | An OutputCreateMandator entity accessor. |
| `output_create_service_user` | `sdk_client -> value -> entity_obj` | An OutputCreateServiceUser entity accessor. |
| `output_deactivate_user` | `sdk_client -> value -> entity_obj` | An OutputDeactivateUser entity accessor. |
| `output_get_kyc_document` | `sdk_client -> value -> entity_obj` | An OutputGetKycDocument entity accessor. |
| `output_get_logo` | `sdk_client -> value -> entity_obj` | An OutputGetLogo entity accessor. |
| `output_list_of_available_role` | `sdk_client -> value -> entity_obj` | An OutputListOfAvailableRole entity accessor. |
| `output_list_of_mandator` | `sdk_client -> value -> entity_obj` | An OutputListOfMandator entity accessor. |
| `output_list_of_module` | `sdk_client -> value -> entity_obj` | An OutputListOfModule entity accessor. |
| `output_list_of_role_group` | `sdk_client -> value -> entity_obj` | An OutputListOfRoleGroup entity accessor. |
| `output_list_of_transactions_history` | `sdk_client -> value -> entity_obj` | An OutputListOfTransactionsHistory entity accessor. |
| `output_list_of_user` | `sdk_client -> value -> entity_obj` | An OutputListOfUser entity accessor. |
| `output_provide_credential` | `sdk_client -> value -> entity_obj` | An OutputProvideCredential entity accessor. |
| `output_register_user` | `sdk_client -> value -> entity_obj` | An OutputRegisterUser entity accessor. |
| `output_remove_role` | `sdk_client -> value -> entity_obj` | An OutputRemoveRole entity accessor. |
| `output_resend_link` | `sdk_client -> value -> entity_obj` | An OutputResendLink entity accessor. |
| `output_reset_password` | `sdk_client -> value -> entity_obj` | An OutputResetPassword entity accessor. |
| `output_update_consumer` | `sdk_client -> value -> entity_obj` | An OutputUpdateConsumer entity accessor. |
| `output_update_profile` | `sdk_client -> value -> entity_obj` | An OutputUpdateProfile entity accessor. |
| `version` | `sdk_client -> value -> entity_obj` | A Version entity accessor. |

### Entity interface

All entities are `entity_obj` records sharing the same fields.

| Field | Signature | Description |
| --- | --- | --- |
| `e_load` | `value -> value -> entity_obj` | Load a single entity by match criteria. Resolves to the entity. Raises on error. |
| `e_create` | `value -> value -> entity_obj` | Create a new entity. Resolves to the entity. Raises on error. |
| `e_data_get` | `unit -> value` | Get entity data. |
| `e_data_set` | `value -> unit` | Set entity data. |
| `e_match_get` | `unit -> value` | Get entity match criteria. |
| `e_match_set` | `value -> unit` | Set entity match criteria. |
| `e_make` | `unit -> entity_obj` | Create a new instance with the same options. |
| `e_name` | `string` | The entity name. |

### Result shape

Entity operations resolve to the ENTITY, not the raw record — `e_list` to
one entity per record — and raise `Sdk_error.E` on error. The record is
reached through `e_data_get`, which returns the entity's data container.
`e_remove` resolves to the entity marked deleted (`e_deleted`); it keeps the
data it held. Wrap calls in `try`/`with` to handle failures.

The `direct` escape hatch never raises — it returns a result `value` map
you branch on via `getp result "ok"`:

| Key | Type | Description |
| --- | --- | --- |
| `ok` | `Bool` | `Bool true` if the HTTP status is 2xx. |
| `status` | `Num` | HTTP status code. |
| `headers` | `Map` | Response headers. |
| `data` | `value` | Parsed JSON response body. |

On error, `ok` is `Bool false` and `err` carries the error value.

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

Create an instance: `let output_activate_digital_module = Sdk_client.output_activate_digital_module client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```ocaml
let output_activate_digital_module = (Sdk_client.output_activate_digital_module client Noval).e_create (jo [
]) Noval
let output_activate_digital_module_data = output_activate_digital_module.e_data_get ()
```


### OutputActivatePortalModule

Create an instance: `let output_activate_portal_module = Sdk_client.output_activate_portal_module client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clientSecret` | `string` |  |
| `notificationEmail` | `string` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```ocaml
let output_activate_portal_module = (Sdk_client.output_activate_portal_module client Noval).e_create (jo [
    ("clientSecret", (Str "example_clientSecret"));  (* string *)
    ("notificationEmail", (Str "example_notificationEmail"));  (* string *)
]) Noval
let output_activate_portal_module_data = output_activate_portal_module.e_data_get ()
```


### OutputActivateStoreModule

Create an instance: `let output_activate_store_module = Sdk_client.output_activate_store_module client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```ocaml
let output_activate_store_module = (Sdk_client.output_activate_store_module client Noval).e_create (jo [
]) Noval
let output_activate_store_module_data = output_activate_store_module.e_data_get ()
```


### OutputActivateUser

Create an instance: `let output_activate_user = Sdk_client.output_activate_user client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumerUUID` | `string` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```ocaml
let output_activate_user = (Sdk_client.output_activate_user client Noval).e_create (jo [
]) Noval
let output_activate_user_data = output_activate_user.e_data_get ()
```


### OutputAssignRole

Create an instance: `let output_assign_role = Sdk_client.output_assign_role client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumerUUID` | `string` | Unique identifier of the consumer (user) to whom the role(s) will be assigned. |
| `responseCode` | `int` | Response code: 0 indicates success; any non-zero value indicates an error. |
| `responseMessage` | `string` | A human-readable message providing additional details about the outcome. |
| `roles` | `value list` | List of roles to assign to the consumer. |

#### Example: Create

```ocaml
let output_assign_role = (Sdk_client.output_assign_role client Noval).e_create (jo [
    ("consumerUUID", (Str "example_consumerUUID"));  (* string *)
    ("roles", (empty_list ()));  (* value list *)
]) Noval
let output_assign_role_data = output_assign_role.e_data_get ()
```


### OutputChangeLogo

Create an instance: `let output_change_logo = Sdk_client.output_change_logo client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `contentAsBase64` | `string` | The content of the image as base64 encoded string |
| `mimeType` | `string` | The MIME type of the image |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```ocaml
let output_change_logo = (Sdk_client.output_change_logo client Noval).e_create (jo [
    ("contentAsBase64", (Str "example_contentAsBase64"));  (* string *)
    ("mimeType", (Str "example_mimeType"));  (* string *)
]) Noval
let output_change_logo_data = output_change_logo.e_data_get ()
```


### OutputCreateMandator

Create an instance: `let output_create_mandator = Sdk_client.output_create_mandator client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. Resolves to the entity. |

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

```ocaml
let output_create_mandator = (Sdk_client.output_create_mandator client Noval).e_create (jo [
    ("email", (Str "example_email"));  (* string *)
    ("login", (Str "example_login"));  (* string *)
    ("phone", (Str "example_phone"));  (* string *)
]) Noval
let output_create_mandator_data = output_create_mandator.e_data_get ()
```


### OutputCreateServiceUser

Create an instance: `let output_create_service_user = Sdk_client.output_create_service_user client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `mandatorName` | `string` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```ocaml
let output_create_service_user = (Sdk_client.output_create_service_user client Noval).e_create (jo [
    ("mandatorName", (Str "example_mandatorName"));  (* string *)
]) Noval
let output_create_service_user_data = output_create_service_user.e_data_get ()
```


### OutputDeactivateUser

Create an instance: `let output_deactivate_user = Sdk_client.output_deactivate_user client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumerUUID` | `string` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```ocaml
let output_deactivate_user = (Sdk_client.output_deactivate_user client Noval).e_create (jo [
]) Noval
let output_deactivate_user_data = output_deactivate_user.e_data_get ()
```


### OutputGetKycDocument

Create an instance: `let output_get_kyc_document = Sdk_client.output_get_kyc_document client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `caseID` | `string` |  |
| `encodedDataBase64` | `string` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```ocaml
let output_get_kyc_document = (Sdk_client.output_get_kyc_document client Noval).e_create (jo [
]) Noval
let output_get_kyc_document_data = output_get_kyc_document.e_data_get ()
```


### OutputGetLogo

Create an instance: `let output_get_logo = Sdk_client.output_get_logo client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_load reqmatch ctrl` | Load a single entity by match criteria. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `contentAsBase64` | `string` | The content of the image as base64 encoded string |
| `mimeType` | `string` | The MIME type of the image |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |

#### Example: Load

```ocaml
(* The op resolves to the ENTITY; the record is inside it. *)
let output_get_logo = (Sdk_client.output_get_logo client Noval).e_load (Noval) Noval
let output_get_logo_data = output_get_logo.e_data_get ()
```


### OutputListOfAvailableRole

Create an instance: `let output_list_of_available_role = Sdk_client.output_list_of_available_role client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `availableRoles` | `value list` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```ocaml
let output_list_of_available_role = (Sdk_client.output_list_of_available_role client Noval).e_create (jo [
]) Noval
let output_list_of_available_role_data = output_list_of_available_role.e_data_get ()
```


### OutputListOfMandator

Create an instance: `let output_list_of_mandator = Sdk_client.output_list_of_mandator client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `filter` | `value map` |  |
| `list` | `value list` |  |
| `pagination` | `value map` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |
| `sorting` | `value map` |  |

#### Example: Create

```ocaml
let output_list_of_mandator = (Sdk_client.output_list_of_mandator client Noval).e_create (jo [
]) Noval
let output_list_of_mandator_data = output_list_of_mandator.e_data_get ()
```


### OutputListOfModule

Create an instance: `let output_list_of_module = Sdk_client.output_list_of_module client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `list` | `value list` |  |
| `pagination` | `value map` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```ocaml
let output_list_of_module = (Sdk_client.output_list_of_module client Noval).e_create (jo [
]) Noval
let output_list_of_module_data = output_list_of_module.e_data_get ()
```


### OutputListOfRoleGroup

Create an instance: `let output_list_of_role_group = Sdk_client.output_list_of_role_group client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `filter` | `value map` |  |
| `groupRoles` | `value list` |  |
| `pagination` | `value map` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |
| `sorting` | `value map` |  |

#### Example: Create

```ocaml
let output_list_of_role_group = (Sdk_client.output_list_of_role_group client Noval).e_create (jo [
]) Noval
let output_list_of_role_group_data = output_list_of_role_group.e_data_get ()
```


### OutputListOfTransactionsHistory

Create an instance: `let output_list_of_transactions_history = Sdk_client.output_list_of_transactions_history client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `filter` | `value map` |  |
| `list` | `value list` |  |
| `pagination` | `value map` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |
| `sorting` | `value map` |  |

#### Example: Create

```ocaml
let output_list_of_transactions_history = (Sdk_client.output_list_of_transactions_history client Noval).e_create (jo [
]) Noval
let output_list_of_transactions_history_data = output_list_of_transactions_history.e_data_get ()
```


### OutputListOfUser

Create an instance: `let output_list_of_user = Sdk_client.output_list_of_user client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `filter` | `value map` |  |
| `list` | `value list` |  |
| `pagination` | `value map` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |
| `sorting` | `value map` |  |

#### Example: Create

```ocaml
let output_list_of_user = (Sdk_client.output_list_of_user client Noval).e_create (jo [
]) Noval
let output_list_of_user_data = output_list_of_user.e_data_get ()
```


### OutputProvideCredential

Create an instance: `let output_provide_credential = Sdk_client.output_provide_credential client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `mandatorName` | `string` |  |
| `password` | `string` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |
| `username` | `string` |  |

#### Example: Create

```ocaml
let output_provide_credential = (Sdk_client.output_provide_credential client Noval).e_create (jo [
    ("mandatorName", (Str "example_mandatorName"));  (* string *)
]) Noval
let output_provide_credential_data = output_provide_credential.e_data_get ()
```


### OutputRegisterUser

Create an instance: `let output_register_user = Sdk_client.output_register_user client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. Resolves to the entity. |

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
| `responseCode` | `int` | Response code (0 indicates success; non-zero indicates an error). |
| `responseMessage` | `string` | Human-readable response message. |
| `salutation` | `string` | User's salutation (e.g., Mr., Ms.). |
| `state` | `string` | User's state or region. |
| `street1` | `string` | Primary address line. |
| `street2` | `string` | Secondary address line. |
| `zip` | `string` | Postal code. |

#### Example: Create

```ocaml
let output_register_user = (Sdk_client.output_register_user client Noval).e_create (jo [
    ("email", (Str "example_email"));  (* string *)
]) Noval
let output_register_user_data = output_register_user.e_data_get ()
```


### OutputRemoveRole

Create an instance: `let output_remove_role = Sdk_client.output_remove_role client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumerUUID` | `string` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |
| `roles` | `value list` |  |

#### Example: Create

```ocaml
let output_remove_role = (Sdk_client.output_remove_role client Noval).e_create (jo [
]) Noval
let output_remove_role_data = output_remove_role.e_data_get ()
```


### OutputResendLink

Create an instance: `let output_resend_link = Sdk_client.output_resend_link client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `businessRegistrationNumber` | `string` |  |
| `consumerUUID` | `string` |  |
| `emailConfirmationCode` | `string` |  |
| `phoneNumber` | `string` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```ocaml
let output_resend_link = (Sdk_client.output_resend_link client Noval).e_create (jo [
    ("consumerUUID", (Str "example_consumerUUID"));  (* string *)
]) Noval
let output_resend_link_data = output_resend_link.e_data_get ()
```


### OutputResetPassword

Create an instance: `let output_reset_password = Sdk_client.output_reset_password client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumerUuid` | `string` |  |
| `phoneNumber` | `string` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```ocaml
let output_reset_password = (Sdk_client.output_reset_password client Noval).e_create (jo [
]) Noval
let output_reset_password_data = output_reset_password.e_data_get ()
```


### OutputUpdateConsumer

Create an instance: `let output_update_consumer = Sdk_client.output_update_consumer client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. Resolves to the entity. |

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
| `kycPassed` | `bool` |  |
| `lastName` | `string` |  |
| `nationality` | `string` |  |
| `passportNumber` | `string` |  |
| `phoneNumber` | `string` |  |
| `placeOfBirth` | `string` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |
| `state` | `string` |  |
| `street1` | `string` |  |
| `street2` | `string` |  |
| `transactionhistory_id` | `string` |  |
| `zip` | `string` |  |

#### Example: Create

```ocaml
let output_update_consumer = (Sdk_client.output_update_consumer client Noval).e_create (jo [
    ("consumerUuid", (Str "example_consumerUuid"));  (* string *)
]) Noval
let output_update_consumer_data = output_update_consumer.e_data_get ()
```


### OutputUpdateProfile

Create an instance: `let output_update_profile = Sdk_client.output_update_profile client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumerLanguage` | `string` |  |
| `email` | `string` |  |
| `firstName` | `string` |  |
| `lastName` | `string` |  |
| `phoneNumber` | `string` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```ocaml
let output_update_profile = (Sdk_client.output_update_profile client Noval).e_create (jo [
]) Noval
let output_update_profile_data = output_update_profile.e_data_get ()
```


### Version

Create an instance: `let version = Sdk_client.version client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_load reqmatch ctrl` | Load a single entity by match criteria. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `appName` | `string` |  |
| `buildDate` | `string` |  |
| `version` | `string` |  |

#### Example: Load

```ocaml
(* The op resolves to the ENTITY; the record is inside it. *)
let version = (Sdk_client.version client Noval).e_load (Noval) Noval
let version_data = version.e_data_get ()
```

## Features

This SDK ships 12 optional features. Each is **inactive until you
switch it on**, so an SDK you have not configured behaves exactly as if none of
them existed — no retries, no cache, no logging, no measurable overhead.

Activate a feature by name in the client options, alongside the options shown
above:

| Feature | What it does |
|---|---|
| [`audit`](#audit) | Structured audit trail of operations |
| [`clienttrack`](#clienttrack) | Client identity and per-request correlation headers |
| [`debug`](#debug) | Request/response capture ring buffer for debugging |
| [`idempotency`](#idempotency) | Idempotency keys for safe retries of mutating operations |
| [`log`](#log) | Structured request and response logging |
| [`metrics`](#metrics) | Statistics capture: per-operation counters and latency |
| [`paging`](#paging) | Pagination signals for list operations |
| [`ratelimit`](#ratelimit) | Client-side rate limiting via a token bucket |
| [`retry`](#retry) | Automatic retry of transient failures with exponential backoff |
| [`telemetry`](#telemetry) | Distributed tracing spans with W3C trace-context propagation |
| [`test`](#test) | In-memory mock transport for testing without a live server |
| [`timeout`](#timeout) | Per-request timeout with transport abort |

> **Order matters for `ratelimit`, `retry`, `timeout`.** These wrap the
> transport, so each one wraps whatever is already installed: the order you
> activate them in IS the nesting order. Activating them as an ordered list
> rather than a map is what fixes that order.

### audit

Structured audit trail of operations.

| Option | Default |
|---|---|
| `active` | `false` |
| `actor` | `'anonymous'` |
| `max` | `1000` |

Set `feature.audit.active` to enable it, then override any of the options above.

### clienttrack

Client identity and per-request correlation headers.

| Option | Default |
|---|---|
| `active` | `false` |
| `clientVersion` | `'0.0.1'` |

Set `feature.clienttrack.active` to enable it, then override any of the options above.

### debug

Request/response capture ring buffer for debugging.

| Option | Default |
|---|---|
| `active` | `false` |
| `max` | `100` |
| `redact` | `['authorization', 'cookie', 'set-cookie', 'api-key', 'apikey', 'x-api-key', 'idempotency-key']` |

Set `feature.debug.active` to enable it, then override any of the options above.

### idempotency

Idempotency keys for safe retries of mutating operations.

| Option | Default |
|---|---|
| `active` | `false` |
| `header` | `'Idempotency-Key'` |
| `methods` | `['POST', 'PUT', 'PATCH', 'DELETE']` |
| `ops` | `['create', 'update', 'remove']` |

Set `feature.idempotency.active` to enable it, then override any of the options above.

### log

Structured request and response logging.

| Option | Default |
|---|---|
| `active` | `true` |

Set `feature.log.active` to enable it, then override any of the options above.

### metrics

Statistics capture: per-operation counters and latency.

| Option | Default |
|---|---|
| `active` | `false` |

Set `feature.metrics.active` to enable it, then override any of the options above.

### paging

Pagination signals for list operations.

| Option | Default |
|---|---|
| `active` | `false` |
| `afterVar` | `'after'` |
| `cursorParam` | `'cursor'` |
| `firstVar` | `'first'` |
| `limitParam` | `'limit'` |
| `pageParam` | `'page'` |
| `startPage` | `1` |

Set `feature.paging.active` to enable it, then override any of the options above.

### ratelimit

Client-side rate limiting via a token bucket.

| Option | Default |
|---|---|
| `active` | `false` |
| `burst` | `5` |
| `rate` | `5` |

Set `feature.ratelimit.active` to enable it, then override any of the options above.

`ratelimit` wraps the transport, so its position among the other
transport features decides what it sees. A feature activated later wraps one
activated earlier.

### retry

Automatic retry of transient failures with exponential backoff.

| Option | Default |
|---|---|
| `active` | `false` |
| `factor` | `2` |
| `maxDelay` | `2000` |
| `minDelay` | `50` |
| `retries` | `2` |
| `statuses` | `[408, 425, 429, 500, 502, 503, 504]` |

Set `feature.retry.active` to enable it, then override any of the options above.

`retry` wraps the transport, so its position among the other
transport features decides what it sees. A feature activated later wraps one
activated earlier.

### telemetry

Distributed tracing spans with W3C trace-context propagation.

| Option | Default |
|---|---|
| `active` | `false` |

Set `feature.telemetry.active` to enable it, then override any of the options above.

### test

In-memory mock transport for testing without a live server.

| Option | Default |
|---|---|
| `active` | `false` |

Set `feature.test.active` to enable it, then override any of the options above.

### timeout

Per-request timeout with transport abort.

| Option | Default |
|---|---|
| `active` | `false` |
| `ms` | `30000` |

Set `feature.timeout.active` to enable it, then override any of the options above.

`timeout` wraps the transport, so its position among the other
transport features decides what it sees. A feature activated later wraps one
activated earlier.


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

- **AuditFeature**: Structured audit trail of operations
- **ClienttrackFeature**: Client identity and per-request correlation headers
- **DebugFeature**: Request/response capture ring buffer for debugging
- **IdempotencyFeature**: Idempotency keys for safe retries of mutating operations
- **LogFeature**: Structured request and response logging
- **MetricsFeature**: Statistics capture: per-operation counters and latency
- **PagingFeature**: Pagination signals for list operations
- **RatelimitFeature**: Client-side rate limiting via a token bucket
- **RetryFeature**: Automatic retry of transient failures with exponential backoff
- **TelemetryFeature**: Distributed tracing spans with W3C trace-context propagation
- **TestFeature**: In-memory mock transport for testing without a live server
- **TimeoutFeature**: Per-request timeout with transport abort

Features are initialized in order. Hooks fire in the order features
were added, so later features can override earlier ones.

### Data as `value`

The OCaml SDK uses a single dynamic `value` type throughout rather than a
typed record per entity. `value` is the vendored voxgig struct port (a
JSON-shaped variant: `Str`, `Num`, `Bool`, `List`, `Map`, `Null`,
`Noval`). This mirrors the dynamic nature of the API and keeps the SDK
flexible — no code generation is needed when the API schema changes.

Build request maps with the `jo` / `ja` helpers and read fields back with
`getp`; use `to_map` to safely coerce a value to a map.

### Module structure

```
ocaml/
├── sdk_client.ml               -- Main SDK client (constructors + accessors)
├── sdk_config.ml               -- Embedded API config + feature factory
├── sdk_error.ml                -- Branded error re-exports
├── sdk_entity_*.ml             -- Per-entity implementations (one each)
├── sdk_types.ml                -- Core pipeline types
├── sdk_helpers.ml              -- jo / ja / getp and friends
├── sdk_runtime.ml              -- Operation pipeline runner
├── sdk_features.ml             -- Built-in features (base, test, log)
├── utility/                    -- Vendored voxgig struct port
└── test/                       -- Test suites
```

The public surface lives in `Sdk_client` (the constructors and per-entity
accessors); `Sdk_helpers` carries the `jo` / `ja` / `getp` value
helpers. Open the runtime modules directly only when needed.

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

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
(* Create — returns the bare created record (a Map) *)
let created = (Sdk_client.output_activate_digital_module client Noval).e_create (jo [("response_code", (Num 1.)); ("response_message", (Str "example_response_message"))]) Noval in
ignore created;

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
  (* Entity ops return the bare record and raise on error. *)
  let output_get_logo = (Sdk_client.output_get_logo client Noval).e_load (empty_map ()) Noval in
  print_endline (stringify output_get_logo)  (* the mock response record *)
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
| `e_load` | `value -> value -> value` | Load a single entity by match criteria. Raises on error. |
| `e_create` | `value -> value -> value` | Create a new entity. Raises on error. |
| `e_data_get` | `unit -> value` | Get entity data. |
| `e_data_set` | `value -> unit` | Set entity data. |
| `e_match_get` | `unit -> value` | Get entity match criteria. |
| `e_match_set` | `value -> unit` | Set entity match criteria. |
| `e_make` | `unit -> entity_obj` | Create a new instance with the same options. |
| `e_name` | `string` | The entity name. |

### Result shape

Entity operations return the bare result value (a `Map` for single-entity
ops, a `List` for `e_list`) and raise `Sdk_error.E` on error. Wrap calls
in `try`/`with` to handle failures.

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
| `response_code` |  |
| `response_message` |  |

Operations: Create.

API path: `/activateDigitalModule`

#### OutputActivatePortalModule

| Field | Description |
| --- | --- |
| `client_secret` |  |
| `notification_email` |  |
| `response_code` |  |
| `response_message` |  |

Operations: Create.

API path: `/activateMerchantPortalModule`

#### OutputActivateStoreModule

| Field | Description |
| --- | --- |
| `response_code` |  |
| `response_message` |  |

Operations: Create.

API path: `/activateAppStoreModule`

#### OutputActivateUser

| Field | Description |
| --- | --- |
| `consumer_uuid` |  |
| `response_code` |  |
| `response_message` |  |

Operations: Create.

API path: `/activateUser`

#### OutputAssignRole

| Field | Description |
| --- | --- |
| `consumer_uuid` |  |
| `response_code` |  |
| `response_message` |  |
| `role` |  |

Operations: Create.

API path: `/assignRoles`

#### OutputChangeLogo

| Field | Description |
| --- | --- |
| `content_as_base64` |  |
| `mime_type` |  |
| `response_code` |  |
| `response_message` |  |

Operations: Create.

API path: `/changeLogo`

#### OutputCreateMandator

| Field | Description |
| --- | --- |
| `city` |  |
| `country` |  |
| `date_of_birth` |  |
| `description` |  |
| `drivers_license_number` |  |
| `email` |  |
| `first_name` |  |
| `identification_number` |  |
| `last_name` |  |
| `login` |  |
| `mandator` |  |
| `name` |  |
| `passport_number` |  |
| `phone` |  |
| `response_code` |  |
| `response_message` |  |
| `salutation` |  |
| `state` |  |
| `street1` |  |
| `street2` |  |
| `zip_code` |  |

Operations: Create.

API path: `/createMandator`

#### OutputCreateServiceUser

| Field | Description |
| --- | --- |
| `mandator_name` |  |
| `response_code` |  |
| `response_message` |  |

Operations: Create.

API path: `/createServiceUser`

#### OutputDeactivateUser

| Field | Description |
| --- | --- |
| `consumer_uuid` |  |
| `response_code` |  |
| `response_message` |  |

Operations: Create.

API path: `/deactivateUser`

#### OutputGetKycDocument

| Field | Description |
| --- | --- |
| `case_id` |  |
| `encoded_data_base64` |  |
| `response_code` |  |
| `response_message` |  |

Operations: Create.

API path: `/getKycDocument`

#### OutputGetLogo

| Field | Description |
| --- | --- |
| `content_as_base64` |  |
| `mime_type` |  |
| `response_code` |  |
| `response_message` |  |

Operations: Load.

API path: `/getLogo`

#### OutputListOfAvailableRole

| Field | Description |
| --- | --- |
| `available_role` |  |
| `response_code` |  |
| `response_message` |  |

Operations: Create.

API path: `/listOfAvailableRoles`

#### OutputListOfMandator

| Field | Description |
| --- | --- |
| `filter` |  |
| `list` |  |
| `pagination` |  |
| `response_code` |  |
| `response_message` |  |
| `sorting` |  |

Operations: Create.

API path: `/listOfMandators`

#### OutputListOfModule

| Field | Description |
| --- | --- |
| `list` |  |
| `pagination` |  |
| `response_code` |  |
| `response_message` |  |

Operations: Create.

API path: `/listOfModules`

#### OutputListOfRoleGroup

| Field | Description |
| --- | --- |
| `filter` |  |
| `group_role` |  |
| `pagination` |  |
| `response_code` |  |
| `response_message` |  |
| `sorting` |  |

Operations: Create.

API path: `/listOfRoleGroups`

#### OutputListOfTransactionsHistory

| Field | Description |
| --- | --- |
| `filter` |  |
| `list` |  |
| `pagination` |  |
| `response_code` |  |
| `response_message` |  |
| `sorting` |  |

Operations: Create.

API path: `/listOfTransactionsHistory`

#### OutputListOfUser

| Field | Description |
| --- | --- |
| `filter` |  |
| `list` |  |
| `pagination` |  |
| `response_code` |  |
| `response_message` |  |
| `sorting` |  |

Operations: Create.

API path: `/listOfUsers`

#### OutputProvideCredential

| Field | Description |
| --- | --- |
| `mandator_name` |  |
| `password` |  |
| `response_code` |  |
| `response_message` |  |
| `username` |  |

Operations: Create.

API path: `/provideCredentials`

#### OutputRegisterUser

| Field | Description |
| --- | --- |
| `city` |  |
| `consumer_id` |  |
| `consumer_language` |  |
| `country` |  |
| `date_of_birth` |  |
| `driver_licence_number` |  |
| `email` |  |
| `first_name` |  |
| `identification_number` |  |
| `last_name` |  |
| `login` |  |
| `module` |  |
| `passport_number` |  |
| `phone` |  |
| `response_code` |  |
| `response_message` |  |
| `salutation` |  |
| `state` |  |
| `street1` |  |
| `street2` |  |
| `zip` |  |

Operations: Create.

API path: `/registerUser`

#### OutputRemoveRole

| Field | Description |
| --- | --- |
| `consumer_uuid` |  |
| `response_code` |  |
| `response_message` |  |
| `role` |  |

Operations: Create.

API path: `/removeRoles`

#### OutputResendLink

| Field | Description |
| --- | --- |
| `business_registration_number` |  |
| `consumer_uuid` |  |
| `email_confirmation_code` |  |
| `phone_number` |  |
| `response_code` |  |
| `response_message` |  |

Operations: Create.

API path: `/resendLink`

#### OutputResetPassword

| Field | Description |
| --- | --- |
| `consumer_uuid` |  |
| `phone_number` |  |
| `response_code` |  |
| `response_message` |  |

Operations: Create.

API path: `/resetPassword`

#### OutputUpdateConsumer

| Field | Description |
| --- | --- |
| `city` |  |
| `consumer_uuid` |  |
| `consumerlanguage` |  |
| `country` |  |
| `date_of_birth` |  |
| `datetime_created` |  |
| `driver_licence_number` |  |
| `email` |  |
| `first_name` |  |
| `identification_number` |  |
| `kyc_passed` |  |
| `last_name` |  |
| `nationality` |  |
| `passport_number` |  |
| `phone_number` |  |
| `place_of_birth` |  |
| `response_code` |  |
| `response_message` |  |
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
| `consumer_language` |  |
| `email` |  |
| `first_name` |  |
| `last_name` |  |
| `phone_number` |  |
| `response_code` |  |
| `response_message` |  |

Operations: Create.

API path: `/updateProfile`

#### Version

| Field | Description |
| --- | --- |
| `app_name` |  |
| `build_date` |  |
| `version` |  |

Operations: Load.

API path: `/version`



## Entities


### OutputActivateDigitalModule

Create an instance: `let output_activate_digital_module = Sdk_client.output_activate_digital_module client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `response_code` | `int` |  |
| `response_message` | `string` |  |

#### Example: Create

```ocaml
let output_activate_digital_module = (Sdk_client.output_activate_digital_module client Noval).e_create (jo [
]) Noval
```


### OutputActivatePortalModule

Create an instance: `let output_activate_portal_module = Sdk_client.output_activate_portal_module client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `client_secret` | `string` |  |
| `notification_email` | `string` |  |
| `response_code` | `int` |  |
| `response_message` | `string` |  |

#### Example: Create

```ocaml
let output_activate_portal_module = (Sdk_client.output_activate_portal_module client Noval).e_create (jo [
    ("client_secret", (Str "example_client_secret"));  (* string *)
    ("notification_email", (Str "example_notification_email"));  (* string *)
]) Noval
```


### OutputActivateStoreModule

Create an instance: `let output_activate_store_module = Sdk_client.output_activate_store_module client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `response_code` | `int` |  |
| `response_message` | `string` |  |

#### Example: Create

```ocaml
let output_activate_store_module = (Sdk_client.output_activate_store_module client Noval).e_create (jo [
]) Noval
```


### OutputActivateUser

Create an instance: `let output_activate_user = Sdk_client.output_activate_user client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumer_uuid` | `string` |  |
| `response_code` | `int` |  |
| `response_message` | `string` |  |

#### Example: Create

```ocaml
let output_activate_user = (Sdk_client.output_activate_user client Noval).e_create (jo [
]) Noval
```


### OutputAssignRole

Create an instance: `let output_assign_role = Sdk_client.output_assign_role client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumer_uuid` | `string` |  |
| `response_code` | `int` |  |
| `response_message` | `string` |  |
| `role` | `value list` |  |

#### Example: Create

```ocaml
let output_assign_role = (Sdk_client.output_assign_role client Noval).e_create (jo [
    ("consumer_uuid", (Str "example_consumer_uuid"));  (* string *)
    ("role", (empty_list ()));  (* value list *)
]) Noval
```


### OutputChangeLogo

Create an instance: `let output_change_logo = Sdk_client.output_change_logo client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `content_as_base64` | `string` |  |
| `mime_type` | `string` |  |
| `response_code` | `int` |  |
| `response_message` | `string` |  |

#### Example: Create

```ocaml
let output_change_logo = (Sdk_client.output_change_logo client Noval).e_create (jo [
    ("content_as_base64", (Str "example_content_as_base64"));  (* string *)
    ("mime_type", (Str "example_mime_type"));  (* string *)
]) Noval
```


### OutputCreateMandator

Create an instance: `let output_create_mandator = Sdk_client.output_create_mandator client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `city` | `string` |  |
| `country` | `string` |  |
| `date_of_birth` | `string` |  |
| `description` | `string` |  |
| `drivers_license_number` | `string` |  |
| `email` | `string` |  |
| `first_name` | `string` |  |
| `identification_number` | `string` |  |
| `last_name` | `string` |  |
| `login` | `string` |  |
| `mandator` | `value map` |  |
| `name` | `string` |  |
| `passport_number` | `string` |  |
| `phone` | `string` |  |
| `response_code` | `int` |  |
| `response_message` | `string` |  |
| `salutation` | `string` |  |
| `state` | `string` |  |
| `street1` | `string` |  |
| `street2` | `string` |  |
| `zip_code` | `string` |  |

#### Example: Create

```ocaml
let output_create_mandator = (Sdk_client.output_create_mandator client Noval).e_create (jo [
    ("description", (Str "example_description"));  (* string *)
    ("email", (Str "example_email"));  (* string *)
    ("login", (Str "example_login"));  (* string *)
    ("name", (Str "example_name"));  (* string *)
    ("phone", (Str "example_phone"));  (* string *)
]) Noval
```


### OutputCreateServiceUser

Create an instance: `let output_create_service_user = Sdk_client.output_create_service_user client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `mandator_name` | `string` |  |
| `response_code` | `int` |  |
| `response_message` | `string` |  |

#### Example: Create

```ocaml
let output_create_service_user = (Sdk_client.output_create_service_user client Noval).e_create (jo [
    ("mandator_name", (Str "example_mandator_name"));  (* string *)
]) Noval
```


### OutputDeactivateUser

Create an instance: `let output_deactivate_user = Sdk_client.output_deactivate_user client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumer_uuid` | `string` |  |
| `response_code` | `int` |  |
| `response_message` | `string` |  |

#### Example: Create

```ocaml
let output_deactivate_user = (Sdk_client.output_deactivate_user client Noval).e_create (jo [
]) Noval
```


### OutputGetKycDocument

Create an instance: `let output_get_kyc_document = Sdk_client.output_get_kyc_document client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `case_id` | `string` |  |
| `encoded_data_base64` | `string` |  |
| `response_code` | `int` |  |
| `response_message` | `string` |  |

#### Example: Create

```ocaml
let output_get_kyc_document = (Sdk_client.output_get_kyc_document client Noval).e_create (jo [
]) Noval
```


### OutputGetLogo

Create an instance: `let output_get_logo = Sdk_client.output_get_logo client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_load reqmatch ctrl` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `content_as_base64` | `string` |  |
| `mime_type` | `string` |  |
| `response_code` | `int` |  |
| `response_message` | `string` |  |

#### Example: Load

```ocaml
let output_get_logo = (Sdk_client.output_get_logo client Noval).e_load (Noval) Noval
```


### OutputListOfAvailableRole

Create an instance: `let output_list_of_available_role = Sdk_client.output_list_of_available_role client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `available_role` | `value list` |  |
| `response_code` | `int` |  |
| `response_message` | `string` |  |

#### Example: Create

```ocaml
let output_list_of_available_role = (Sdk_client.output_list_of_available_role client Noval).e_create (jo [
]) Noval
```


### OutputListOfMandator

Create an instance: `let output_list_of_mandator = Sdk_client.output_list_of_mandator client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `filter` | `value map` |  |
| `list` | `value list` |  |
| `pagination` | `value map` |  |
| `response_code` | `int` |  |
| `response_message` | `string` |  |
| `sorting` | `value map` |  |

#### Example: Create

```ocaml
let output_list_of_mandator = (Sdk_client.output_list_of_mandator client Noval).e_create (jo [
]) Noval
```


### OutputListOfModule

Create an instance: `let output_list_of_module = Sdk_client.output_list_of_module client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `list` | `value list` |  |
| `pagination` | `value map` |  |
| `response_code` | `int` |  |
| `response_message` | `string` |  |

#### Example: Create

```ocaml
let output_list_of_module = (Sdk_client.output_list_of_module client Noval).e_create (jo [
]) Noval
```


### OutputListOfRoleGroup

Create an instance: `let output_list_of_role_group = Sdk_client.output_list_of_role_group client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `filter` | `value map` |  |
| `group_role` | `value list` |  |
| `pagination` | `value map` |  |
| `response_code` | `int` |  |
| `response_message` | `string` |  |
| `sorting` | `value map` |  |

#### Example: Create

```ocaml
let output_list_of_role_group = (Sdk_client.output_list_of_role_group client Noval).e_create (jo [
]) Noval
```


### OutputListOfTransactionsHistory

Create an instance: `let output_list_of_transactions_history = Sdk_client.output_list_of_transactions_history client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `filter` | `value map` |  |
| `list` | `value list` |  |
| `pagination` | `value map` |  |
| `response_code` | `int` |  |
| `response_message` | `string` |  |
| `sorting` | `value map` |  |

#### Example: Create

```ocaml
let output_list_of_transactions_history = (Sdk_client.output_list_of_transactions_history client Noval).e_create (jo [
]) Noval
```


### OutputListOfUser

Create an instance: `let output_list_of_user = Sdk_client.output_list_of_user client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `filter` | `value map` |  |
| `list` | `value list` |  |
| `pagination` | `value map` |  |
| `response_code` | `int` |  |
| `response_message` | `string` |  |
| `sorting` | `value map` |  |

#### Example: Create

```ocaml
let output_list_of_user = (Sdk_client.output_list_of_user client Noval).e_create (jo [
]) Noval
```


### OutputProvideCredential

Create an instance: `let output_provide_credential = Sdk_client.output_provide_credential client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `mandator_name` | `string` |  |
| `password` | `string` |  |
| `response_code` | `int` |  |
| `response_message` | `string` |  |
| `username` | `string` |  |

#### Example: Create

```ocaml
let output_provide_credential = (Sdk_client.output_provide_credential client Noval).e_create (jo [
    ("mandator_name", (Str "example_mandator_name"));  (* string *)
]) Noval
```


### OutputRegisterUser

Create an instance: `let output_register_user = Sdk_client.output_register_user client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `city` | `string` |  |
| `consumer_id` | `string` |  |
| `consumer_language` | `string` |  |
| `country` | `string` |  |
| `date_of_birth` | `string` |  |
| `driver_licence_number` | `string` |  |
| `email` | `string` |  |
| `first_name` | `string` |  |
| `identification_number` | `string` |  |
| `last_name` | `string` |  |
| `login` | `string` |  |
| `module` | `string` |  |
| `passport_number` | `string` |  |
| `phone` | `string` |  |
| `response_code` | `int` |  |
| `response_message` | `string` |  |
| `salutation` | `string` |  |
| `state` | `string` |  |
| `street1` | `string` |  |
| `street2` | `string` |  |
| `zip` | `string` |  |

#### Example: Create

```ocaml
let output_register_user = (Sdk_client.output_register_user client Noval).e_create (jo [
    ("email", (Str "example_email"));  (* string *)
]) Noval
```


### OutputRemoveRole

Create an instance: `let output_remove_role = Sdk_client.output_remove_role client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumer_uuid` | `string` |  |
| `response_code` | `int` |  |
| `response_message` | `string` |  |
| `role` | `value list` |  |

#### Example: Create

```ocaml
let output_remove_role = (Sdk_client.output_remove_role client Noval).e_create (jo [
]) Noval
```


### OutputResendLink

Create an instance: `let output_resend_link = Sdk_client.output_resend_link client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `business_registration_number` | `string` |  |
| `consumer_uuid` | `string` |  |
| `email_confirmation_code` | `string` |  |
| `phone_number` | `string` |  |
| `response_code` | `int` |  |
| `response_message` | `string` |  |

#### Example: Create

```ocaml
let output_resend_link = (Sdk_client.output_resend_link client Noval).e_create (jo [
    ("consumer_uuid", (Str "example_consumer_uuid"));  (* string *)
]) Noval
```


### OutputResetPassword

Create an instance: `let output_reset_password = Sdk_client.output_reset_password client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumer_uuid` | `string` |  |
| `phone_number` | `string` |  |
| `response_code` | `int` |  |
| `response_message` | `string` |  |

#### Example: Create

```ocaml
let output_reset_password = (Sdk_client.output_reset_password client Noval).e_create (jo [
]) Noval
```


### OutputUpdateConsumer

Create an instance: `let output_update_consumer = Sdk_client.output_update_consumer client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `city` | `string` |  |
| `consumer_uuid` | `string` |  |
| `consumerlanguage` | `string` |  |
| `country` | `string` |  |
| `date_of_birth` | `string` |  |
| `datetime_created` | `string` |  |
| `driver_licence_number` | `string` |  |
| `email` | `string` |  |
| `first_name` | `string` |  |
| `identification_number` | `string` |  |
| `kyc_passed` | `bool` |  |
| `last_name` | `string` |  |
| `nationality` | `string` |  |
| `passport_number` | `string` |  |
| `phone_number` | `string` |  |
| `place_of_birth` | `string` |  |
| `response_code` | `int` |  |
| `response_message` | `string` |  |
| `state` | `string` |  |
| `street1` | `string` |  |
| `street2` | `string` |  |
| `transactionhistory_id` | `string` |  |
| `zip` | `string` |  |

#### Example: Create

```ocaml
let output_update_consumer = (Sdk_client.output_update_consumer client Noval).e_create (jo [
    ("consumer_uuid", (Str "example_consumer_uuid"));  (* string *)
]) Noval
```


### OutputUpdateProfile

Create an instance: `let output_update_profile = Sdk_client.output_update_profile client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_create reqdata ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumer_language` | `string` |  |
| `email` | `string` |  |
| `first_name` | `string` |  |
| `last_name` | `string` |  |
| `phone_number` | `string` |  |
| `response_code` | `int` |  |
| `response_message` | `string` |  |

#### Example: Create

```ocaml
let output_update_profile = (Sdk_client.output_update_profile client Noval).e_create (jo [
]) Noval
```


### Version

Create an instance: `let version = Sdk_client.version client Noval`

#### Operations

| Method | Description |
| --- | --- |
| `e_load reqmatch ctrl` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `app_name` | `string` |  |
| `build_date` | `string` |  |
| `version` | `string` |  |

#### Example: Load

```ocaml
let version = (Sdk_client.version client Noval).e_load (Noval) Noval
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

# BluefinTecsUserBackoffice OCaml SDK Reference

Complete API reference for the BluefinTecsUserBackoffice OCaml SDK.


## Sdk_client

### Constructor

```ocaml
open Voxgig_struct
open Sdk_helpers

let client = Sdk_client.make options
```

Create a new SDK client instance from a `value` options map. Use
`Sdk_client.make0 ()` for defaults.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `options` | `value` | SDK configuration options (a Map). |
| `apikey` | `string` | API key for authentication. |
| `base` | `string` | Base URL for API requests. |
| `prefix` | `string` | URL prefix appended after base. |
| `suffix` | `string` | URL suffix appended after path. |
| `headers` | `map` | Custom headers for all requests. |
| `feature` | `map` | Feature configuration. |
| `system` | `map` | System overrides (e.g. custom fetch). |


### Static constructors

#### `Sdk_client.test testopts sdkopts`

Create a test client with mock features active. Both arguments may be `Noval`
(`Sdk_client.test ()` uses defaults, `Sdk_client.test_with` takes explicit
options).

```ocaml
let client = Sdk_client.test ()
```


### Instance functions

#### `Sdk_client.output_activate_digital_module client entopts : entity_obj`

Create a `OutputActivateDigitalModule` entity accessor. Pass `Noval` for no initial options.

#### `Sdk_client.output_activate_portal_module client entopts : entity_obj`

Create a `OutputActivatePortalModule` entity accessor. Pass `Noval` for no initial options.

#### `Sdk_client.output_activate_store_module client entopts : entity_obj`

Create a `OutputActivateStoreModule` entity accessor. Pass `Noval` for no initial options.

#### `Sdk_client.output_activate_user client entopts : entity_obj`

Create a `OutputActivateUser` entity accessor. Pass `Noval` for no initial options.

#### `Sdk_client.output_assign_role client entopts : entity_obj`

Create a `OutputAssignRole` entity accessor. Pass `Noval` for no initial options.

#### `Sdk_client.output_change_logo client entopts : entity_obj`

Create a `OutputChangeLogo` entity accessor. Pass `Noval` for no initial options.

#### `Sdk_client.output_create_mandator client entopts : entity_obj`

Create a `OutputCreateMandator` entity accessor. Pass `Noval` for no initial options.

#### `Sdk_client.output_create_service_user client entopts : entity_obj`

Create a `OutputCreateServiceUser` entity accessor. Pass `Noval` for no initial options.

#### `Sdk_client.output_deactivate_user client entopts : entity_obj`

Create a `OutputDeactivateUser` entity accessor. Pass `Noval` for no initial options.

#### `Sdk_client.output_get_kyc_document client entopts : entity_obj`

Create a `OutputGetKycDocument` entity accessor. Pass `Noval` for no initial options.

#### `Sdk_client.output_get_logo client entopts : entity_obj`

Create a `OutputGetLogo` entity accessor. Pass `Noval` for no initial options.

#### `Sdk_client.output_list_of_available_role client entopts : entity_obj`

Create a `OutputListOfAvailableRole` entity accessor. Pass `Noval` for no initial options.

#### `Sdk_client.output_list_of_mandator client entopts : entity_obj`

Create a `OutputListOfMandator` entity accessor. Pass `Noval` for no initial options.

#### `Sdk_client.output_list_of_module client entopts : entity_obj`

Create a `OutputListOfModule` entity accessor. Pass `Noval` for no initial options.

#### `Sdk_client.output_list_of_role_group client entopts : entity_obj`

Create a `OutputListOfRoleGroup` entity accessor. Pass `Noval` for no initial options.

#### `Sdk_client.output_list_of_transactions_history client entopts : entity_obj`

Create a `OutputListOfTransactionsHistory` entity accessor. Pass `Noval` for no initial options.

#### `Sdk_client.output_list_of_user client entopts : entity_obj`

Create a `OutputListOfUser` entity accessor. Pass `Noval` for no initial options.

#### `Sdk_client.output_provide_credential client entopts : entity_obj`

Create a `OutputProvideCredential` entity accessor. Pass `Noval` for no initial options.

#### `Sdk_client.output_register_user client entopts : entity_obj`

Create a `OutputRegisterUser` entity accessor. Pass `Noval` for no initial options.

#### `Sdk_client.output_remove_role client entopts : entity_obj`

Create a `OutputRemoveRole` entity accessor. Pass `Noval` for no initial options.

#### `Sdk_client.output_resend_link client entopts : entity_obj`

Create a `OutputResendLink` entity accessor. Pass `Noval` for no initial options.

#### `Sdk_client.output_reset_password client entopts : entity_obj`

Create a `OutputResetPassword` entity accessor. Pass `Noval` for no initial options.

#### `Sdk_client.output_update_consumer client entopts : entity_obj`

Create a `OutputUpdateConsumer` entity accessor. Pass `Noval` for no initial options.

#### `Sdk_client.output_update_profile client entopts : entity_obj`

Create a `OutputUpdateProfile` entity accessor. Pass `Noval` for no initial options.

#### `Sdk_client.version client entopts : entity_obj`

Create a `Version` entity accessor. Pass `Noval` for no initial options.

#### `Sdk_client.direct client fetchargs : value`

Make a direct HTTP request to any API endpoint. Returns a result `value` map
with `ok`, `status`, `headers`, and `data` (or `err` on failure). This
escape hatch never raises — branch on `getp result "ok"`.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `path` | `string` | URL path with optional `{param}` placeholders. |
| `method` | `string` | HTTP method (default: `"GET"`). |
| `params` | `map` | Path parameter values. |
| `query` | `map` | Query string parameters. |
| `headers` | `map` | Request headers (merged with defaults). |
| `body` | `value` | Request body (Maps are JSON-serialized). |

**Returns:** a result `value` map.

#### `Sdk_client.prepare client fetchargs : value`

Prepare a fetch definition without sending. Returns the `fetchdef` and raises
on error.


---

## OutputActivateDigitalModule

```ocaml
let output_activate_digital_module = Sdk_client.output_activate_digital_module client Noval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `e_create reqdata ctrl : entity_obj`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `e_data_get`) and raises on error.

```ocaml
let result = (Sdk_client.output_activate_digital_module client Noval).e_create (jo [
]) Noval
let result_data = result.e_data_get ()
```

### Common Fields

#### `e_data_get : unit -> value`

Get the entity data.

#### `e_data_set : value -> unit`

Set the entity data.

#### `e_match_get : unit -> value`

Get the entity match criteria.

#### `e_match_set : value -> unit`

Set the entity match criteria.

#### `e_make : unit -> entity_obj`

Create a new `OutputActivateDigitalModule` entity accessor with the same options.

#### `e_name : string`

The entity name.


---

## OutputActivatePortalModule

```ocaml
let output_activate_portal_module = Sdk_client.output_activate_portal_module client Noval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clientSecret` | `string` | Yes |  |
| `notificationEmail` | `string` | Yes |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `e_create reqdata ctrl : entity_obj`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `e_data_get`) and raises on error.

```ocaml
let result = (Sdk_client.output_activate_portal_module client Noval).e_create (jo [
    ("clientSecret", (Str "example_clientSecret"));  (* string *)
    ("notificationEmail", (Str "example_notificationEmail"));  (* string *)
]) Noval
let result_data = result.e_data_get ()
```

### Common Fields

#### `e_data_get : unit -> value`

Get the entity data.

#### `e_data_set : value -> unit`

Set the entity data.

#### `e_match_get : unit -> value`

Get the entity match criteria.

#### `e_match_set : value -> unit`

Set the entity match criteria.

#### `e_make : unit -> entity_obj`

Create a new `OutputActivatePortalModule` entity accessor with the same options.

#### `e_name : string`

The entity name.


---

## OutputActivateStoreModule

```ocaml
let output_activate_store_module = Sdk_client.output_activate_store_module client Noval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `e_create reqdata ctrl : entity_obj`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `e_data_get`) and raises on error.

```ocaml
let result = (Sdk_client.output_activate_store_module client Noval).e_create (jo [
]) Noval
let result_data = result.e_data_get ()
```

### Common Fields

#### `e_data_get : unit -> value`

Get the entity data.

#### `e_data_set : value -> unit`

Set the entity data.

#### `e_match_get : unit -> value`

Get the entity match criteria.

#### `e_match_set : value -> unit`

Set the entity match criteria.

#### `e_make : unit -> entity_obj`

Create a new `OutputActivateStoreModule` entity accessor with the same options.

#### `e_name : string`

The entity name.


---

## OutputActivateUser

```ocaml
let output_activate_user = Sdk_client.output_activate_user client Noval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumerUUID` | `string` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `e_create reqdata ctrl : entity_obj`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `e_data_get`) and raises on error.

```ocaml
let result = (Sdk_client.output_activate_user client Noval).e_create (jo [
]) Noval
let result_data = result.e_data_get ()
```

### Common Fields

#### `e_data_get : unit -> value`

Get the entity data.

#### `e_data_set : value -> unit`

Set the entity data.

#### `e_match_get : unit -> value`

Get the entity match criteria.

#### `e_match_set : value -> unit`

Set the entity match criteria.

#### `e_make : unit -> entity_obj`

Create a new `OutputActivateUser` entity accessor with the same options.

#### `e_name : string`

The entity name.


---

## OutputAssignRole

```ocaml
let output_assign_role = Sdk_client.output_assign_role client Noval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumerUUID` | `string` | Yes |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |
| `roles` | `value list` | Yes |  |

### Operations

#### `e_create reqdata ctrl : entity_obj`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `e_data_get`) and raises on error.

```ocaml
let result = (Sdk_client.output_assign_role client Noval).e_create (jo [
    ("consumerUUID", (Str "example_consumerUUID"));  (* string *)
    ("roles", (empty_list ()));  (* value list *)
]) Noval
let result_data = result.e_data_get ()
```

### Common Fields

#### `e_data_get : unit -> value`

Get the entity data.

#### `e_data_set : value -> unit`

Set the entity data.

#### `e_match_get : unit -> value`

Get the entity match criteria.

#### `e_match_set : value -> unit`

Set the entity match criteria.

#### `e_make : unit -> entity_obj`

Create a new `OutputAssignRole` entity accessor with the same options.

#### `e_name : string`

The entity name.


---

## OutputChangeLogo

```ocaml
let output_change_logo = Sdk_client.output_change_logo client Noval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `contentAsBase64` | `string` | Yes |  |
| `mimeType` | `string` | Yes |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `e_create reqdata ctrl : entity_obj`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `e_data_get`) and raises on error.

```ocaml
let result = (Sdk_client.output_change_logo client Noval).e_create (jo [
    ("contentAsBase64", (Str "example_contentAsBase64"));  (* string *)
    ("mimeType", (Str "example_mimeType"));  (* string *)
]) Noval
let result_data = result.e_data_get ()
```

### Common Fields

#### `e_data_get : unit -> value`

Get the entity data.

#### `e_data_set : value -> unit`

Set the entity data.

#### `e_match_get : unit -> value`

Get the entity match criteria.

#### `e_match_set : value -> unit`

Set the entity match criteria.

#### `e_make : unit -> entity_obj`

Create a new `OutputChangeLogo` entity accessor with the same options.

#### `e_name : string`

The entity name.


---

## OutputCreateMandator

```ocaml
let output_create_mandator = Sdk_client.output_create_mandator client Noval
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

#### `e_create reqdata ctrl : entity_obj`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `e_data_get`) and raises on error.

```ocaml
let result = (Sdk_client.output_create_mandator client Noval).e_create (jo [
    ("email", (Str "example_email"));  (* string *)
    ("login", (Str "example_login"));  (* string *)
    ("phone", (Str "example_phone"));  (* string *)
]) Noval
let result_data = result.e_data_get ()
```

### Common Fields

#### `e_data_get : unit -> value`

Get the entity data.

#### `e_data_set : value -> unit`

Set the entity data.

#### `e_match_get : unit -> value`

Get the entity match criteria.

#### `e_match_set : value -> unit`

Set the entity match criteria.

#### `e_make : unit -> entity_obj`

Create a new `OutputCreateMandator` entity accessor with the same options.

#### `e_name : string`

The entity name.


---

## OutputCreateServiceUser

```ocaml
let output_create_service_user = Sdk_client.output_create_service_user client Noval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `mandatorName` | `string` | Yes |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `e_create reqdata ctrl : entity_obj`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `e_data_get`) and raises on error.

```ocaml
let result = (Sdk_client.output_create_service_user client Noval).e_create (jo [
    ("mandatorName", (Str "example_mandatorName"));  (* string *)
]) Noval
let result_data = result.e_data_get ()
```

### Common Fields

#### `e_data_get : unit -> value`

Get the entity data.

#### `e_data_set : value -> unit`

Set the entity data.

#### `e_match_get : unit -> value`

Get the entity match criteria.

#### `e_match_set : value -> unit`

Set the entity match criteria.

#### `e_make : unit -> entity_obj`

Create a new `OutputCreateServiceUser` entity accessor with the same options.

#### `e_name : string`

The entity name.


---

## OutputDeactivateUser

```ocaml
let output_deactivate_user = Sdk_client.output_deactivate_user client Noval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumerUUID` | `string` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `e_create reqdata ctrl : entity_obj`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `e_data_get`) and raises on error.

```ocaml
let result = (Sdk_client.output_deactivate_user client Noval).e_create (jo [
]) Noval
let result_data = result.e_data_get ()
```

### Common Fields

#### `e_data_get : unit -> value`

Get the entity data.

#### `e_data_set : value -> unit`

Set the entity data.

#### `e_match_get : unit -> value`

Get the entity match criteria.

#### `e_match_set : value -> unit`

Set the entity match criteria.

#### `e_make : unit -> entity_obj`

Create a new `OutputDeactivateUser` entity accessor with the same options.

#### `e_name : string`

The entity name.


---

## OutputGetKycDocument

```ocaml
let output_get_kyc_document = Sdk_client.output_get_kyc_document client Noval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `caseID` | `string` | No |  |
| `encodedDataBase64` | `string` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `e_create reqdata ctrl : entity_obj`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `e_data_get`) and raises on error.

```ocaml
let result = (Sdk_client.output_get_kyc_document client Noval).e_create (jo [
]) Noval
let result_data = result.e_data_get ()
```

### Common Fields

#### `e_data_get : unit -> value`

Get the entity data.

#### `e_data_set : value -> unit`

Set the entity data.

#### `e_match_get : unit -> value`

Get the entity match criteria.

#### `e_match_set : value -> unit`

Set the entity match criteria.

#### `e_make : unit -> entity_obj`

Create a new `OutputGetKycDocument` entity accessor with the same options.

#### `e_name : string`

The entity name.


---

## OutputGetLogo

```ocaml
let output_get_logo = Sdk_client.output_get_logo client Noval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `contentAsBase64` | `string` | Yes |  |
| `mimeType` | `string` | Yes |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `e_load reqmatch ctrl : entity_obj`

Load a single entity matching the given criteria. Resolves to the ENTITY (read the record with `e_data_get`) and raises on error.

```ocaml
let result = (Sdk_client.output_get_logo client Noval).e_load (Noval) Noval
let result_data = result.e_data_get ()
```

### Common Fields

#### `e_data_get : unit -> value`

Get the entity data.

#### `e_data_set : value -> unit`

Set the entity data.

#### `e_match_get : unit -> value`

Get the entity match criteria.

#### `e_match_set : value -> unit`

Set the entity match criteria.

#### `e_make : unit -> entity_obj`

Create a new `OutputGetLogo` entity accessor with the same options.

#### `e_name : string`

The entity name.


---

## OutputListOfAvailableRole

```ocaml
let output_list_of_available_role = Sdk_client.output_list_of_available_role client Noval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `availableRoles` | `value list` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `e_create reqdata ctrl : entity_obj`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `e_data_get`) and raises on error.

```ocaml
let result = (Sdk_client.output_list_of_available_role client Noval).e_create (jo [
]) Noval
let result_data = result.e_data_get ()
```

### Common Fields

#### `e_data_get : unit -> value`

Get the entity data.

#### `e_data_set : value -> unit`

Set the entity data.

#### `e_match_get : unit -> value`

Get the entity match criteria.

#### `e_match_set : value -> unit`

Set the entity match criteria.

#### `e_make : unit -> entity_obj`

Create a new `OutputListOfAvailableRole` entity accessor with the same options.

#### `e_name : string`

The entity name.


---

## OutputListOfMandator

```ocaml
let output_list_of_mandator = Sdk_client.output_list_of_mandator client Noval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `filter` | `value map` | No |  |
| `list` | `value list` | No |  |
| `pagination` | `value map` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |
| `sorting` | `value map` | No |  |

### Operations

#### `e_create reqdata ctrl : entity_obj`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `e_data_get`) and raises on error.

```ocaml
let result = (Sdk_client.output_list_of_mandator client Noval).e_create (jo [
]) Noval
let result_data = result.e_data_get ()
```

### Common Fields

#### `e_data_get : unit -> value`

Get the entity data.

#### `e_data_set : value -> unit`

Set the entity data.

#### `e_match_get : unit -> value`

Get the entity match criteria.

#### `e_match_set : value -> unit`

Set the entity match criteria.

#### `e_make : unit -> entity_obj`

Create a new `OutputListOfMandator` entity accessor with the same options.

#### `e_name : string`

The entity name.


---

## OutputListOfModule

```ocaml
let output_list_of_module = Sdk_client.output_list_of_module client Noval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `list` | `value list` | No |  |
| `pagination` | `value map` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `e_create reqdata ctrl : entity_obj`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `e_data_get`) and raises on error.

```ocaml
let result = (Sdk_client.output_list_of_module client Noval).e_create (jo [
]) Noval
let result_data = result.e_data_get ()
```

### Common Fields

#### `e_data_get : unit -> value`

Get the entity data.

#### `e_data_set : value -> unit`

Set the entity data.

#### `e_match_get : unit -> value`

Get the entity match criteria.

#### `e_match_set : value -> unit`

Set the entity match criteria.

#### `e_make : unit -> entity_obj`

Create a new `OutputListOfModule` entity accessor with the same options.

#### `e_name : string`

The entity name.


---

## OutputListOfRoleGroup

```ocaml
let output_list_of_role_group = Sdk_client.output_list_of_role_group client Noval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `filter` | `value map` | No |  |
| `groupRoles` | `value list` | No |  |
| `pagination` | `value map` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |
| `sorting` | `value map` | No |  |

### Operations

#### `e_create reqdata ctrl : entity_obj`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `e_data_get`) and raises on error.

```ocaml
let result = (Sdk_client.output_list_of_role_group client Noval).e_create (jo [
]) Noval
let result_data = result.e_data_get ()
```

### Common Fields

#### `e_data_get : unit -> value`

Get the entity data.

#### `e_data_set : value -> unit`

Set the entity data.

#### `e_match_get : unit -> value`

Get the entity match criteria.

#### `e_match_set : value -> unit`

Set the entity match criteria.

#### `e_make : unit -> entity_obj`

Create a new `OutputListOfRoleGroup` entity accessor with the same options.

#### `e_name : string`

The entity name.


---

## OutputListOfTransactionsHistory

```ocaml
let output_list_of_transactions_history = Sdk_client.output_list_of_transactions_history client Noval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `filter` | `value map` | No |  |
| `list` | `value list` | No |  |
| `pagination` | `value map` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |
| `sorting` | `value map` | No |  |

### Operations

#### `e_create reqdata ctrl : entity_obj`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `e_data_get`) and raises on error.

```ocaml
let result = (Sdk_client.output_list_of_transactions_history client Noval).e_create (jo [
]) Noval
let result_data = result.e_data_get ()
```

### Common Fields

#### `e_data_get : unit -> value`

Get the entity data.

#### `e_data_set : value -> unit`

Set the entity data.

#### `e_match_get : unit -> value`

Get the entity match criteria.

#### `e_match_set : value -> unit`

Set the entity match criteria.

#### `e_make : unit -> entity_obj`

Create a new `OutputListOfTransactionsHistory` entity accessor with the same options.

#### `e_name : string`

The entity name.


---

## OutputListOfUser

```ocaml
let output_list_of_user = Sdk_client.output_list_of_user client Noval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `filter` | `value map` | No |  |
| `list` | `value list` | No |  |
| `pagination` | `value map` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |
| `sorting` | `value map` | No |  |

### Operations

#### `e_create reqdata ctrl : entity_obj`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `e_data_get`) and raises on error.

```ocaml
let result = (Sdk_client.output_list_of_user client Noval).e_create (jo [
]) Noval
let result_data = result.e_data_get ()
```

### Common Fields

#### `e_data_get : unit -> value`

Get the entity data.

#### `e_data_set : value -> unit`

Set the entity data.

#### `e_match_get : unit -> value`

Get the entity match criteria.

#### `e_match_set : value -> unit`

Set the entity match criteria.

#### `e_make : unit -> entity_obj`

Create a new `OutputListOfUser` entity accessor with the same options.

#### `e_name : string`

The entity name.


---

## OutputProvideCredential

```ocaml
let output_provide_credential = Sdk_client.output_provide_credential client Noval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `mandatorName` | `string` | Yes |  |
| `password` | `string` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |
| `username` | `string` | No |  |

### Operations

#### `e_create reqdata ctrl : entity_obj`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `e_data_get`) and raises on error.

```ocaml
let result = (Sdk_client.output_provide_credential client Noval).e_create (jo [
    ("mandatorName", (Str "example_mandatorName"));  (* string *)
]) Noval
let result_data = result.e_data_get ()
```

### Common Fields

#### `e_data_get : unit -> value`

Get the entity data.

#### `e_data_set : value -> unit`

Set the entity data.

#### `e_match_get : unit -> value`

Get the entity match criteria.

#### `e_match_set : value -> unit`

Set the entity match criteria.

#### `e_make : unit -> entity_obj`

Create a new `OutputProvideCredential` entity accessor with the same options.

#### `e_name : string`

The entity name.


---

## OutputRegisterUser

```ocaml
let output_register_user = Sdk_client.output_register_user client Noval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `city` | `string` | No |  |
| `consumerId` | `string` | No |  |
| `consumerLanguage` | `string` | No |  |
| `country` | `string` | No |  |
| `dateOfBirth` | `string` | No |  |
| `driverLicenceNumber` | `string` | No |  |
| `email` | `string` | Yes |  |
| `firstName` | `string` | No |  |
| `identificationNumber` | `string` | No |  |
| `lastName` | `string` | No |  |
| `login` | `string` | No |  |
| `module` | `string` | No |  |
| `passportNumber` | `string` | No |  |
| `phone` | `string` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |
| `salutation` | `string` | No |  |
| `state` | `string` | No |  |
| `street1` | `string` | No |  |
| `street2` | `string` | No |  |
| `zip` | `string` | No |  |

### Operations

#### `e_create reqdata ctrl : entity_obj`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `e_data_get`) and raises on error.

```ocaml
let result = (Sdk_client.output_register_user client Noval).e_create (jo [
    ("email", (Str "example_email"));  (* string *)
]) Noval
let result_data = result.e_data_get ()
```

### Common Fields

#### `e_data_get : unit -> value`

Get the entity data.

#### `e_data_set : value -> unit`

Set the entity data.

#### `e_match_get : unit -> value`

Get the entity match criteria.

#### `e_match_set : value -> unit`

Set the entity match criteria.

#### `e_make : unit -> entity_obj`

Create a new `OutputRegisterUser` entity accessor with the same options.

#### `e_name : string`

The entity name.


---

## OutputRemoveRole

```ocaml
let output_remove_role = Sdk_client.output_remove_role client Noval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumerUUID` | `string` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |
| `roles` | `value list` | No |  |

### Operations

#### `e_create reqdata ctrl : entity_obj`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `e_data_get`) and raises on error.

```ocaml
let result = (Sdk_client.output_remove_role client Noval).e_create (jo [
]) Noval
let result_data = result.e_data_get ()
```

### Common Fields

#### `e_data_get : unit -> value`

Get the entity data.

#### `e_data_set : value -> unit`

Set the entity data.

#### `e_match_get : unit -> value`

Get the entity match criteria.

#### `e_match_set : value -> unit`

Set the entity match criteria.

#### `e_make : unit -> entity_obj`

Create a new `OutputRemoveRole` entity accessor with the same options.

#### `e_name : string`

The entity name.


---

## OutputResendLink

```ocaml
let output_resend_link = Sdk_client.output_resend_link client Noval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `businessRegistrationNumber` | `string` | No |  |
| `consumerUUID` | `string` | Yes |  |
| `emailConfirmationCode` | `string` | No |  |
| `phoneNumber` | `string` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `e_create reqdata ctrl : entity_obj`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `e_data_get`) and raises on error.

```ocaml
let result = (Sdk_client.output_resend_link client Noval).e_create (jo [
    ("consumerUUID", (Str "example_consumerUUID"));  (* string *)
]) Noval
let result_data = result.e_data_get ()
```

### Common Fields

#### `e_data_get : unit -> value`

Get the entity data.

#### `e_data_set : value -> unit`

Set the entity data.

#### `e_match_get : unit -> value`

Get the entity match criteria.

#### `e_match_set : value -> unit`

Set the entity match criteria.

#### `e_make : unit -> entity_obj`

Create a new `OutputResendLink` entity accessor with the same options.

#### `e_name : string`

The entity name.


---

## OutputResetPassword

```ocaml
let output_reset_password = Sdk_client.output_reset_password client Noval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumerUuid` | `string` | No |  |
| `phoneNumber` | `string` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `e_create reqdata ctrl : entity_obj`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `e_data_get`) and raises on error.

```ocaml
let result = (Sdk_client.output_reset_password client Noval).e_create (jo [
]) Noval
let result_data = result.e_data_get ()
```

### Common Fields

#### `e_data_get : unit -> value`

Get the entity data.

#### `e_data_set : value -> unit`

Set the entity data.

#### `e_match_get : unit -> value`

Get the entity match criteria.

#### `e_match_set : value -> unit`

Set the entity match criteria.

#### `e_make : unit -> entity_obj`

Create a new `OutputResetPassword` entity accessor with the same options.

#### `e_name : string`

The entity name.


---

## OutputUpdateConsumer

```ocaml
let output_update_consumer = Sdk_client.output_update_consumer client Noval
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
| `kycPassed` | `bool` | No |  |
| `lastName` | `string` | No |  |
| `nationality` | `string` | No |  |
| `passportNumber` | `string` | No |  |
| `phoneNumber` | `string` | No |  |
| `placeOfBirth` | `string` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |
| `state` | `string` | No |  |
| `street1` | `string` | No |  |
| `street2` | `string` | No |  |
| `transactionhistory_id` | `string` | No |  |
| `zip` | `string` | No |  |

### Operations

#### `e_create reqdata ctrl : entity_obj`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `e_data_get`) and raises on error.

```ocaml
let result = (Sdk_client.output_update_consumer client Noval).e_create (jo [
    ("consumerUuid", (Str "example_consumerUuid"));  (* string *)
]) Noval
let result_data = result.e_data_get ()
```

### Common Fields

#### `e_data_get : unit -> value`

Get the entity data.

#### `e_data_set : value -> unit`

Set the entity data.

#### `e_match_get : unit -> value`

Get the entity match criteria.

#### `e_match_set : value -> unit`

Set the entity match criteria.

#### `e_make : unit -> entity_obj`

Create a new `OutputUpdateConsumer` entity accessor with the same options.

#### `e_name : string`

The entity name.


---

## OutputUpdateProfile

```ocaml
let output_update_profile = Sdk_client.output_update_profile client Noval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumerLanguage` | `string` | No |  |
| `email` | `string` | No |  |
| `firstName` | `string` | No |  |
| `lastName` | `string` | No |  |
| `phoneNumber` | `string` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `e_create reqdata ctrl : entity_obj`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `e_data_get`) and raises on error.

```ocaml
let result = (Sdk_client.output_update_profile client Noval).e_create (jo [
]) Noval
let result_data = result.e_data_get ()
```

### Common Fields

#### `e_data_get : unit -> value`

Get the entity data.

#### `e_data_set : value -> unit`

Set the entity data.

#### `e_match_get : unit -> value`

Get the entity match criteria.

#### `e_match_set : value -> unit`

Set the entity match criteria.

#### `e_make : unit -> entity_obj`

Create a new `OutputUpdateProfile` entity accessor with the same options.

#### `e_name : string`

The entity name.


---

## Version

```ocaml
let version = Sdk_client.version client Noval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `appName` | `string` | No |  |
| `buildDate` | `string` | No |  |
| `version` | `string` | No |  |

### Operations

#### `e_load reqmatch ctrl : entity_obj`

Load a single entity matching the given criteria. Resolves to the ENTITY (read the record with `e_data_get`) and raises on error.

```ocaml
let result = (Sdk_client.version client Noval).e_load (Noval) Noval
let result_data = result.e_data_get ()
```

### Common Fields

#### `e_data_get : unit -> value`

Get the entity data.

#### `e_data_set : value -> unit`

Set the entity data.

#### `e_match_get : unit -> value`

Get the entity match criteria.

#### `e_match_set : value -> unit`

Set the entity match criteria.

#### `e_make : unit -> entity_obj`

Create a new `Version` entity accessor with the same options.

#### `e_name : string`

The entity name.


---

## Features

| Feature | Version | Description |
| --- | --- | --- |
| `test` | 0.0.1 | In-memory mock transport for testing without a live server |


Features are activated via the `feature` option:

```ocaml
let client = Sdk_client.make (jo [
    ("feature", jo [
        ("test", jo [("active", Bool true)]);
    ]);
])
```


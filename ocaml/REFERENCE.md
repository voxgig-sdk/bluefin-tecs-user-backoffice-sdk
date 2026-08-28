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
| `consumerUUID` | `string` | Yes | Unique identifier of the consumer (user) to whom the role(s) will be assigned. |
| `responseCode` | `int` | No | Response code: 0 indicates success; any non-zero value indicates an error. |
| `responseMessage` | `string` | No | A human-readable message providing additional details about the outcome. |
| `roles` | `value list` | Yes | List of roles to assign to the consumer. |

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
| `contentAsBase64` | `string` | Yes | The content of the image as base64 encoded string |
| `mimeType` | `string` | Yes | The MIME type of the image |
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
| `contentAsBase64` | `string` | Yes | The content of the image as base64 encoded string |
| `mimeType` | `string` | Yes | The MIME type of the image |
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
| `responseCode` | `int` | No | Response code (0 indicates success; non-zero indicates an error). |
| `responseMessage` | `string` | No | Human-readable response message. |
| `salutation` | `string` | No | User's salutation (e.g., Mr., Ms.). |
| `state` | `string` | No | User's state or region. |
| `street1` | `string` | No | Primary address line. |
| `street2` | `string` | No | Secondary address line. |
| `zip` | `string` | No | Postal code. |

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

```ocaml
let client = Sdk_client.make (jo [
    ("feature", jo [
        ("audit", jo [("active", Bool true)]);
        ("clienttrack", jo [("active", Bool true)]);
        ("idempotency", jo [("active", Bool true)]);
        ("log", jo [("active", Bool true)]);
        ("metrics", jo [("active", Bool true)]);
        ("paging", jo [("active", Bool true)]);
        ("ratelimit", jo [("active", Bool true)]);
        ("retry", jo [("active", Bool true)]);
        ("telemetry", jo [("active", Bool true)]);
        ("test", jo [("active", Bool true)]);
        ("timeout", jo [("active", Bool true)]);
    ]);
])
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


# BluefinTecsUserBackoffice Clojure SDK Reference

Complete API reference for the BluefinTecsUserBackoffice Clojure SDK.


## Client

### make-sdk

```clojure
(require '[sdk.api :as api]
         '[voxgig.struct :as vs])

(def client (api/make-sdk options))
```

Create a new SDK client instance. `options` is a `voxgig.struct` map.

**Options:**

| Key | Type | Description |
| --- | --- | --- |
| `apikey` | `string` | API key for authentication. |
| `base` | `string` | Base URL for API requests. |
| `prefix` | `string` | URL prefix appended after base. |
| `suffix` | `string` | URL suffix appended after path. |
| `headers` | `map` | Custom headers for all requests. |
| `feature` | `map` | Feature configuration. |
| `system` | `map` | System overrides (e.g. custom fetch). |


### Test client

#### `(api/test-sdk testopts sdkopts)`

Create a test client with mock features active. Both arguments may be `nil`.

```clojure
(def client (api/test-sdk nil nil))
```


### Client functions

#### `(api/output_activate_digital_module client data)`

Create a new `OutputActivateDigitalModule` entity instance. Pass `nil` for no initial data.

#### `(api/output_activate_portal_module client data)`

Create a new `OutputActivatePortalModule` entity instance. Pass `nil` for no initial data.

#### `(api/output_activate_store_module client data)`

Create a new `OutputActivateStoreModule` entity instance. Pass `nil` for no initial data.

#### `(api/output_activate_user client data)`

Create a new `OutputActivateUser` entity instance. Pass `nil` for no initial data.

#### `(api/output_assign_role client data)`

Create a new `OutputAssignRole` entity instance. Pass `nil` for no initial data.

#### `(api/output_change_logo client data)`

Create a new `OutputChangeLogo` entity instance. Pass `nil` for no initial data.

#### `(api/output_create_mandator client data)`

Create a new `OutputCreateMandator` entity instance. Pass `nil` for no initial data.

#### `(api/output_create_service_user client data)`

Create a new `OutputCreateServiceUser` entity instance. Pass `nil` for no initial data.

#### `(api/output_deactivate_user client data)`

Create a new `OutputDeactivateUser` entity instance. Pass `nil` for no initial data.

#### `(api/output_get_kyc_document client data)`

Create a new `OutputGetKycDocument` entity instance. Pass `nil` for no initial data.

#### `(api/output_get_logo client data)`

Create a new `OutputGetLogo` entity instance. Pass `nil` for no initial data.

#### `(api/output_list_of_available_role client data)`

Create a new `OutputListOfAvailableRole` entity instance. Pass `nil` for no initial data.

#### `(api/output_list_of_mandator client data)`

Create a new `OutputListOfMandator` entity instance. Pass `nil` for no initial data.

#### `(api/output_list_of_module client data)`

Create a new `OutputListOfModule` entity instance. Pass `nil` for no initial data.

#### `(api/output_list_of_role_group client data)`

Create a new `OutputListOfRoleGroup` entity instance. Pass `nil` for no initial data.

#### `(api/output_list_of_transactions_history client data)`

Create a new `OutputListOfTransactionsHistory` entity instance. Pass `nil` for no initial data.

#### `(api/output_list_of_user client data)`

Create a new `OutputListOfUser` entity instance. Pass `nil` for no initial data.

#### `(api/output_provide_credential client data)`

Create a new `OutputProvideCredential` entity instance. Pass `nil` for no initial data.

#### `(api/output_register_user client data)`

Create a new `OutputRegisterUser` entity instance. Pass `nil` for no initial data.

#### `(api/output_remove_role client data)`

Create a new `OutputRemoveRole` entity instance. Pass `nil` for no initial data.

#### `(api/output_resend_link client data)`

Create a new `OutputResendLink` entity instance. Pass `nil` for no initial data.

#### `(api/output_reset_password client data)`

Create a new `OutputResetPassword` entity instance. Pass `nil` for no initial data.

#### `(api/output_update_consumer client data)`

Create a new `OutputUpdateConsumer` entity instance. Pass `nil` for no initial data.

#### `(api/output_update_profile client data)`

Create a new `OutputUpdateProfile` entity instance. Pass `nil` for no initial data.

#### `(api/version client data)`

Create a new `Version` entity instance. Pass `nil` for no initial data.

#### `(api/options-map client) -> map`

Return a deep copy of the current SDK options.

#### `(api/get-utility client) -> utility`

Return a copy of the SDK utility object.

#### `(api/direct client fetchargs) -> map`

Make a direct HTTP request to any API endpoint. Returns a result `map` with `ok`, `status`, `headers`, and `data` (or `err` on failure). This escape hatch never raises — branch on `(vs/getprop result "ok")`.

**Fetch args:**

| Key | Type | Description |
| --- | --- | --- |
| `path` | `string` | URL path with optional `{param}` placeholders. |
| `method` | `string` | HTTP method (default: `"GET"`). |
| `params` | `map` | Path parameter values. |
| `query` | `map` | Query string parameters. |
| `headers` | `map` | Request headers (merged with defaults). |
| `body` | `any` | Request body (maps are JSON-serialized). |

**Returns:** a result `map`.

#### `(api/prepare client fetchargs) -> map`

Prepare a fetch definition without sending. Returns the `fetchdef` and raises on error.


---

## OutputActivateDigitalModule

```clojure
(require '[sdk.entity.output_activate_digital_module :as e-output_activate_digital_module])

(def output_activate_digital_module (api/output_activate_digital_module client nil))
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-output_activate_digital_module/create (api/output_activate_digital_module client nil)
    (vs/jm
      )
    nil))
```

### Common Members

State accessors are stored on the entity map and called via keyword lookup.

#### `((:data-get ent)) -> map`

Get the entity data.

#### `((:data-set ent) data)`

Set the entity data.

#### `((:match-get ent)) -> map`

Get the entity match criteria.

#### `((:match-set ent) match)`

Set the entity match criteria.

#### `((:make ent)) -> entity`

Create a new `OutputActivateDigitalModule` entity instance with the same options.

#### `((:get-name ent)) -> string`

Return the entity name.


---

## OutputActivatePortalModule

```clojure
(require '[sdk.entity.output_activate_portal_module :as e-output_activate_portal_module])

(def output_activate_portal_module (api/output_activate_portal_module client nil))
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clientSecret` | `string` | Yes |  |
| `notificationEmail` | `string` | Yes |  |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-output_activate_portal_module/create (api/output_activate_portal_module client nil)
    (vs/jm
      "clientSecret" "example_clientSecret"  ;; string
      "notificationEmail" "example_notificationEmail"  ;; string
      )
    nil))
```

### Common Members

State accessors are stored on the entity map and called via keyword lookup.

#### `((:data-get ent)) -> map`

Get the entity data.

#### `((:data-set ent) data)`

Set the entity data.

#### `((:match-get ent)) -> map`

Get the entity match criteria.

#### `((:match-set ent) match)`

Set the entity match criteria.

#### `((:make ent)) -> entity`

Create a new `OutputActivatePortalModule` entity instance with the same options.

#### `((:get-name ent)) -> string`

Return the entity name.


---

## OutputActivateStoreModule

```clojure
(require '[sdk.entity.output_activate_store_module :as e-output_activate_store_module])

(def output_activate_store_module (api/output_activate_store_module client nil))
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-output_activate_store_module/create (api/output_activate_store_module client nil)
    (vs/jm
      )
    nil))
```

### Common Members

State accessors are stored on the entity map and called via keyword lookup.

#### `((:data-get ent)) -> map`

Get the entity data.

#### `((:data-set ent) data)`

Set the entity data.

#### `((:match-get ent)) -> map`

Get the entity match criteria.

#### `((:match-set ent) match)`

Set the entity match criteria.

#### `((:make ent)) -> entity`

Create a new `OutputActivateStoreModule` entity instance with the same options.

#### `((:get-name ent)) -> string`

Return the entity name.


---

## OutputActivateUser

```clojure
(require '[sdk.entity.output_activate_user :as e-output_activate_user])

(def output_activate_user (api/output_activate_user client nil))
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumerUUID` | `string` | No |  |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-output_activate_user/create (api/output_activate_user client nil)
    (vs/jm
      )
    nil))
```

### Common Members

State accessors are stored on the entity map and called via keyword lookup.

#### `((:data-get ent)) -> map`

Get the entity data.

#### `((:data-set ent) data)`

Set the entity data.

#### `((:match-get ent)) -> map`

Get the entity match criteria.

#### `((:match-set ent) match)`

Set the entity match criteria.

#### `((:make ent)) -> entity`

Create a new `OutputActivateUser` entity instance with the same options.

#### `((:get-name ent)) -> string`

Return the entity name.


---

## OutputAssignRole

```clojure
(require '[sdk.entity.output_assign_role :as e-output_assign_role])

(def output_assign_role (api/output_assign_role client nil))
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumerUUID` | `string` | Yes | Unique identifier of the consumer (user) to whom the role(s) will be assigned. |
| `responseCode` | `long` | No | Response code: 0 indicates success; any non-zero value indicates an error. |
| `responseMessage` | `string` | No | A human-readable message providing additional details about the outcome. |
| `roles` | `vector` | Yes | List of roles to assign to the consumer. |

### Operations

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-output_assign_role/create (api/output_assign_role client nil)
    (vs/jm
      "consumerUUID" "example_consumerUUID"  ;; string
      "roles" (vs/jt)  ;; vector
      )
    nil))
```

### Common Members

State accessors are stored on the entity map and called via keyword lookup.

#### `((:data-get ent)) -> map`

Get the entity data.

#### `((:data-set ent) data)`

Set the entity data.

#### `((:match-get ent)) -> map`

Get the entity match criteria.

#### `((:match-set ent) match)`

Set the entity match criteria.

#### `((:make ent)) -> entity`

Create a new `OutputAssignRole` entity instance with the same options.

#### `((:get-name ent)) -> string`

Return the entity name.


---

## OutputChangeLogo

```clojure
(require '[sdk.entity.output_change_logo :as e-output_change_logo])

(def output_change_logo (api/output_change_logo client nil))
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `contentAsBase64` | `string` | Yes | The content of the image as base64 encoded string |
| `mimeType` | `string` | Yes | The MIME type of the image |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-output_change_logo/create (api/output_change_logo client nil)
    (vs/jm
      "contentAsBase64" "example_contentAsBase64"  ;; string
      "mimeType" "example_mimeType"  ;; string
      )
    nil))
```

### Common Members

State accessors are stored on the entity map and called via keyword lookup.

#### `((:data-get ent)) -> map`

Get the entity data.

#### `((:data-set ent) data)`

Set the entity data.

#### `((:match-get ent)) -> map`

Get the entity match criteria.

#### `((:match-set ent) match)`

Set the entity match criteria.

#### `((:make ent)) -> entity`

Create a new `OutputChangeLogo` entity instance with the same options.

#### `((:get-name ent)) -> string`

Return the entity name.


---

## OutputCreateMandator

```clojure
(require '[sdk.entity.output_create_mandator :as e-output_create_mandator])

(def output_create_mandator (api/output_create_mandator client nil))
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

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-output_create_mandator/create (api/output_create_mandator client nil)
    (vs/jm
      "email" "example_email"  ;; string
      "login" "example_login"  ;; string
      "phone" "example_phone"  ;; string
      )
    nil))
```

### Common Members

State accessors are stored on the entity map and called via keyword lookup.

#### `((:data-get ent)) -> map`

Get the entity data.

#### `((:data-set ent) data)`

Set the entity data.

#### `((:match-get ent)) -> map`

Get the entity match criteria.

#### `((:match-set ent) match)`

Set the entity match criteria.

#### `((:make ent)) -> entity`

Create a new `OutputCreateMandator` entity instance with the same options.

#### `((:get-name ent)) -> string`

Return the entity name.


---

## OutputCreateServiceUser

```clojure
(require '[sdk.entity.output_create_service_user :as e-output_create_service_user])

(def output_create_service_user (api/output_create_service_user client nil))
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `mandatorName` | `string` | Yes |  |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-output_create_service_user/create (api/output_create_service_user client nil)
    (vs/jm
      "mandatorName" "example_mandatorName"  ;; string
      )
    nil))
```

### Common Members

State accessors are stored on the entity map and called via keyword lookup.

#### `((:data-get ent)) -> map`

Get the entity data.

#### `((:data-set ent) data)`

Set the entity data.

#### `((:match-get ent)) -> map`

Get the entity match criteria.

#### `((:match-set ent) match)`

Set the entity match criteria.

#### `((:make ent)) -> entity`

Create a new `OutputCreateServiceUser` entity instance with the same options.

#### `((:get-name ent)) -> string`

Return the entity name.


---

## OutputDeactivateUser

```clojure
(require '[sdk.entity.output_deactivate_user :as e-output_deactivate_user])

(def output_deactivate_user (api/output_deactivate_user client nil))
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumerUUID` | `string` | No |  |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-output_deactivate_user/create (api/output_deactivate_user client nil)
    (vs/jm
      )
    nil))
```

### Common Members

State accessors are stored on the entity map and called via keyword lookup.

#### `((:data-get ent)) -> map`

Get the entity data.

#### `((:data-set ent) data)`

Set the entity data.

#### `((:match-get ent)) -> map`

Get the entity match criteria.

#### `((:match-set ent) match)`

Set the entity match criteria.

#### `((:make ent)) -> entity`

Create a new `OutputDeactivateUser` entity instance with the same options.

#### `((:get-name ent)) -> string`

Return the entity name.


---

## OutputGetKycDocument

```clojure
(require '[sdk.entity.output_get_kyc_document :as e-output_get_kyc_document])

(def output_get_kyc_document (api/output_get_kyc_document client nil))
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `caseID` | `string` | No |  |
| `encodedDataBase64` | `string` | No |  |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-output_get_kyc_document/create (api/output_get_kyc_document client nil)
    (vs/jm
      )
    nil))
```

### Common Members

State accessors are stored on the entity map and called via keyword lookup.

#### `((:data-get ent)) -> map`

Get the entity data.

#### `((:data-set ent) data)`

Set the entity data.

#### `((:match-get ent)) -> map`

Get the entity match criteria.

#### `((:match-set ent) match)`

Set the entity match criteria.

#### `((:make ent)) -> entity`

Create a new `OutputGetKycDocument` entity instance with the same options.

#### `((:get-name ent)) -> string`

Return the entity name.


---

## OutputGetLogo

```clojure
(require '[sdk.entity.output_get_logo :as e-output_get_logo])

(def output_get_logo (api/output_get_logo client nil))
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `contentAsBase64` | `string` | Yes | The content of the image as base64 encoded string |
| `mimeType` | `string` | Yes | The MIME type of the image |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `(load ent reqmatch ctrl) -> map`

Load a single entity matching the given criteria. Returns the entity data and raises on error.

```clojure
(def result (e-output_get_logo/load (api/output_get_logo client nil) nil nil))
```

### Common Members

State accessors are stored on the entity map and called via keyword lookup.

#### `((:data-get ent)) -> map`

Get the entity data.

#### `((:data-set ent) data)`

Set the entity data.

#### `((:match-get ent)) -> map`

Get the entity match criteria.

#### `((:match-set ent) match)`

Set the entity match criteria.

#### `((:make ent)) -> entity`

Create a new `OutputGetLogo` entity instance with the same options.

#### `((:get-name ent)) -> string`

Return the entity name.


---

## OutputListOfAvailableRole

```clojure
(require '[sdk.entity.output_list_of_available_role :as e-output_list_of_available_role])

(def output_list_of_available_role (api/output_list_of_available_role client nil))
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `availableRoles` | `vector` | No |  |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-output_list_of_available_role/create (api/output_list_of_available_role client nil)
    (vs/jm
      )
    nil))
```

### Common Members

State accessors are stored on the entity map and called via keyword lookup.

#### `((:data-get ent)) -> map`

Get the entity data.

#### `((:data-set ent) data)`

Set the entity data.

#### `((:match-get ent)) -> map`

Get the entity match criteria.

#### `((:match-set ent) match)`

Set the entity match criteria.

#### `((:make ent)) -> entity`

Create a new `OutputListOfAvailableRole` entity instance with the same options.

#### `((:get-name ent)) -> string`

Return the entity name.


---

## OutputListOfMandator

```clojure
(require '[sdk.entity.output_list_of_mandator :as e-output_list_of_mandator])

(def output_list_of_mandator (api/output_list_of_mandator client nil))
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `filter` | `map` | No |  |
| `list` | `vector` | No |  |
| `pagination` | `map` | No |  |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |
| `sorting` | `map` | No |  |

### Operations

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-output_list_of_mandator/create (api/output_list_of_mandator client nil)
    (vs/jm
      )
    nil))
```

### Common Members

State accessors are stored on the entity map and called via keyword lookup.

#### `((:data-get ent)) -> map`

Get the entity data.

#### `((:data-set ent) data)`

Set the entity data.

#### `((:match-get ent)) -> map`

Get the entity match criteria.

#### `((:match-set ent) match)`

Set the entity match criteria.

#### `((:make ent)) -> entity`

Create a new `OutputListOfMandator` entity instance with the same options.

#### `((:get-name ent)) -> string`

Return the entity name.


---

## OutputListOfModule

```clojure
(require '[sdk.entity.output_list_of_module :as e-output_list_of_module])

(def output_list_of_module (api/output_list_of_module client nil))
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `list` | `vector` | No |  |
| `pagination` | `map` | No |  |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-output_list_of_module/create (api/output_list_of_module client nil)
    (vs/jm
      )
    nil))
```

### Common Members

State accessors are stored on the entity map and called via keyword lookup.

#### `((:data-get ent)) -> map`

Get the entity data.

#### `((:data-set ent) data)`

Set the entity data.

#### `((:match-get ent)) -> map`

Get the entity match criteria.

#### `((:match-set ent) match)`

Set the entity match criteria.

#### `((:make ent)) -> entity`

Create a new `OutputListOfModule` entity instance with the same options.

#### `((:get-name ent)) -> string`

Return the entity name.


---

## OutputListOfRoleGroup

```clojure
(require '[sdk.entity.output_list_of_role_group :as e-output_list_of_role_group])

(def output_list_of_role_group (api/output_list_of_role_group client nil))
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `filter` | `map` | No |  |
| `groupRoles` | `vector` | No |  |
| `pagination` | `map` | No |  |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |
| `sorting` | `map` | No |  |

### Operations

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-output_list_of_role_group/create (api/output_list_of_role_group client nil)
    (vs/jm
      )
    nil))
```

### Common Members

State accessors are stored on the entity map and called via keyword lookup.

#### `((:data-get ent)) -> map`

Get the entity data.

#### `((:data-set ent) data)`

Set the entity data.

#### `((:match-get ent)) -> map`

Get the entity match criteria.

#### `((:match-set ent) match)`

Set the entity match criteria.

#### `((:make ent)) -> entity`

Create a new `OutputListOfRoleGroup` entity instance with the same options.

#### `((:get-name ent)) -> string`

Return the entity name.


---

## OutputListOfTransactionsHistory

```clojure
(require '[sdk.entity.output_list_of_transactions_history :as e-output_list_of_transactions_history])

(def output_list_of_transactions_history (api/output_list_of_transactions_history client nil))
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `filter` | `map` | No |  |
| `list` | `vector` | No |  |
| `pagination` | `map` | No |  |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |
| `sorting` | `map` | No |  |

### Operations

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-output_list_of_transactions_history/create (api/output_list_of_transactions_history client nil)
    (vs/jm
      )
    nil))
```

### Common Members

State accessors are stored on the entity map and called via keyword lookup.

#### `((:data-get ent)) -> map`

Get the entity data.

#### `((:data-set ent) data)`

Set the entity data.

#### `((:match-get ent)) -> map`

Get the entity match criteria.

#### `((:match-set ent) match)`

Set the entity match criteria.

#### `((:make ent)) -> entity`

Create a new `OutputListOfTransactionsHistory` entity instance with the same options.

#### `((:get-name ent)) -> string`

Return the entity name.


---

## OutputListOfUser

```clojure
(require '[sdk.entity.output_list_of_user :as e-output_list_of_user])

(def output_list_of_user (api/output_list_of_user client nil))
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `filter` | `map` | No |  |
| `list` | `vector` | No |  |
| `pagination` | `map` | No |  |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |
| `sorting` | `map` | No |  |

### Operations

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-output_list_of_user/create (api/output_list_of_user client nil)
    (vs/jm
      )
    nil))
```

### Common Members

State accessors are stored on the entity map and called via keyword lookup.

#### `((:data-get ent)) -> map`

Get the entity data.

#### `((:data-set ent) data)`

Set the entity data.

#### `((:match-get ent)) -> map`

Get the entity match criteria.

#### `((:match-set ent) match)`

Set the entity match criteria.

#### `((:make ent)) -> entity`

Create a new `OutputListOfUser` entity instance with the same options.

#### `((:get-name ent)) -> string`

Return the entity name.


---

## OutputProvideCredential

```clojure
(require '[sdk.entity.output_provide_credential :as e-output_provide_credential])

(def output_provide_credential (api/output_provide_credential client nil))
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `mandatorName` | `string` | Yes |  |
| `password` | `string` | No |  |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |
| `username` | `string` | No |  |

### Operations

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-output_provide_credential/create (api/output_provide_credential client nil)
    (vs/jm
      "mandatorName" "example_mandatorName"  ;; string
      )
    nil))
```

### Common Members

State accessors are stored on the entity map and called via keyword lookup.

#### `((:data-get ent)) -> map`

Get the entity data.

#### `((:data-set ent) data)`

Set the entity data.

#### `((:match-get ent)) -> map`

Get the entity match criteria.

#### `((:match-set ent) match)`

Set the entity match criteria.

#### `((:make ent)) -> entity`

Create a new `OutputProvideCredential` entity instance with the same options.

#### `((:get-name ent)) -> string`

Return the entity name.


---

## OutputRegisterUser

```clojure
(require '[sdk.entity.output_register_user :as e-output_register_user])

(def output_register_user (api/output_register_user client nil))
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
| `responseCode` | `long` | No | Response code (0 indicates success; non-zero indicates an error). |
| `responseMessage` | `string` | No | Human-readable response message. |
| `salutation` | `string` | No | User's salutation (e.g., Mr., Ms.). |
| `state` | `string` | No | User's state or region. |
| `street1` | `string` | No | Primary address line. |
| `street2` | `string` | No | Secondary address line. |
| `zip` | `string` | No | Postal code. |

### Operations

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-output_register_user/create (api/output_register_user client nil)
    (vs/jm
      "email" "example_email"  ;; string
      )
    nil))
```

### Common Members

State accessors are stored on the entity map and called via keyword lookup.

#### `((:data-get ent)) -> map`

Get the entity data.

#### `((:data-set ent) data)`

Set the entity data.

#### `((:match-get ent)) -> map`

Get the entity match criteria.

#### `((:match-set ent) match)`

Set the entity match criteria.

#### `((:make ent)) -> entity`

Create a new `OutputRegisterUser` entity instance with the same options.

#### `((:get-name ent)) -> string`

Return the entity name.


---

## OutputRemoveRole

```clojure
(require '[sdk.entity.output_remove_role :as e-output_remove_role])

(def output_remove_role (api/output_remove_role client nil))
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumerUUID` | `string` | No |  |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |
| `roles` | `vector` | No |  |

### Operations

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-output_remove_role/create (api/output_remove_role client nil)
    (vs/jm
      )
    nil))
```

### Common Members

State accessors are stored on the entity map and called via keyword lookup.

#### `((:data-get ent)) -> map`

Get the entity data.

#### `((:data-set ent) data)`

Set the entity data.

#### `((:match-get ent)) -> map`

Get the entity match criteria.

#### `((:match-set ent) match)`

Set the entity match criteria.

#### `((:make ent)) -> entity`

Create a new `OutputRemoveRole` entity instance with the same options.

#### `((:get-name ent)) -> string`

Return the entity name.


---

## OutputResendLink

```clojure
(require '[sdk.entity.output_resend_link :as e-output_resend_link])

(def output_resend_link (api/output_resend_link client nil))
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `businessRegistrationNumber` | `string` | No |  |
| `consumerUUID` | `string` | Yes |  |
| `emailConfirmationCode` | `string` | No |  |
| `phoneNumber` | `string` | No |  |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-output_resend_link/create (api/output_resend_link client nil)
    (vs/jm
      "consumerUUID" "example_consumerUUID"  ;; string
      )
    nil))
```

### Common Members

State accessors are stored on the entity map and called via keyword lookup.

#### `((:data-get ent)) -> map`

Get the entity data.

#### `((:data-set ent) data)`

Set the entity data.

#### `((:match-get ent)) -> map`

Get the entity match criteria.

#### `((:match-set ent) match)`

Set the entity match criteria.

#### `((:make ent)) -> entity`

Create a new `OutputResendLink` entity instance with the same options.

#### `((:get-name ent)) -> string`

Return the entity name.


---

## OutputResetPassword

```clojure
(require '[sdk.entity.output_reset_password :as e-output_reset_password])

(def output_reset_password (api/output_reset_password client nil))
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumerUuid` | `string` | No |  |
| `phoneNumber` | `string` | No |  |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-output_reset_password/create (api/output_reset_password client nil)
    (vs/jm
      )
    nil))
```

### Common Members

State accessors are stored on the entity map and called via keyword lookup.

#### `((:data-get ent)) -> map`

Get the entity data.

#### `((:data-set ent) data)`

Set the entity data.

#### `((:match-get ent)) -> map`

Get the entity match criteria.

#### `((:match-set ent) match)`

Set the entity match criteria.

#### `((:make ent)) -> entity`

Create a new `OutputResetPassword` entity instance with the same options.

#### `((:get-name ent)) -> string`

Return the entity name.


---

## OutputUpdateConsumer

```clojure
(require '[sdk.entity.output_update_consumer :as e-output_update_consumer])

(def output_update_consumer (api/output_update_consumer client nil))
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
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |
| `state` | `string` | No |  |
| `street1` | `string` | No |  |
| `street2` | `string` | No |  |
| `transactionhistory_id` | `string` | No |  |
| `zip` | `string` | No |  |

### Operations

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-output_update_consumer/create (api/output_update_consumer client nil)
    (vs/jm
      "consumerUuid" "example_consumerUuid"  ;; string
      )
    nil))
```

### Common Members

State accessors are stored on the entity map and called via keyword lookup.

#### `((:data-get ent)) -> map`

Get the entity data.

#### `((:data-set ent) data)`

Set the entity data.

#### `((:match-get ent)) -> map`

Get the entity match criteria.

#### `((:match-set ent) match)`

Set the entity match criteria.

#### `((:make ent)) -> entity`

Create a new `OutputUpdateConsumer` entity instance with the same options.

#### `((:get-name ent)) -> string`

Return the entity name.


---

## OutputUpdateProfile

```clojure
(require '[sdk.entity.output_update_profile :as e-output_update_profile])

(def output_update_profile (api/output_update_profile client nil))
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumerLanguage` | `string` | No |  |
| `email` | `string` | No |  |
| `firstName` | `string` | No |  |
| `lastName` | `string` | No |  |
| `phoneNumber` | `string` | No |  |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-output_update_profile/create (api/output_update_profile client nil)
    (vs/jm
      )
    nil))
```

### Common Members

State accessors are stored on the entity map and called via keyword lookup.

#### `((:data-get ent)) -> map`

Get the entity data.

#### `((:data-set ent) data)`

Set the entity data.

#### `((:match-get ent)) -> map`

Get the entity match criteria.

#### `((:match-set ent) match)`

Set the entity match criteria.

#### `((:make ent)) -> entity`

Create a new `OutputUpdateProfile` entity instance with the same options.

#### `((:get-name ent)) -> string`

Return the entity name.


---

## Version

```clojure
(require '[sdk.entity.version :as e-version])

(def version (api/version client nil))
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `appName` | `string` | No |  |
| `buildDate` | `string` | No |  |
| `version` | `string` | No |  |

### Operations

#### `(load ent reqmatch ctrl) -> map`

Load a single entity matching the given criteria. Returns the entity data and raises on error.

```clojure
(def result (e-version/load (api/version client nil) nil nil))
```

### Common Members

State accessors are stored on the entity map and called via keyword lookup.

#### `((:data-get ent)) -> map`

Get the entity data.

#### `((:data-set ent) data)`

Set the entity data.

#### `((:match-get ent)) -> map`

Get the entity match criteria.

#### `((:match-set ent) match)`

Set the entity match criteria.

#### `((:make ent)) -> entity`

Create a new `Version` entity instance with the same options.

#### `((:get-name ent)) -> string`

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

```clojure
(def client
  (api/make-sdk
    (vs/jm "feature"
      (vs/jm
        "audit" (vs/jm "active" true)
        "clienttrack" (vs/jm "active" true)
        "debug" (vs/jm "active" true)
        "idempotency" (vs/jm "active" true)
        "log" (vs/jm "active" true)
        "metrics" (vs/jm "active" true)
        "paging" (vs/jm "active" true)
        "ratelimit" (vs/jm "active" true)
        "retry" (vs/jm "active" true)
        "telemetry" (vs/jm "active" true)
        "test" (vs/jm "active" true)
        "timeout" (vs/jm "active" true)
        ))))
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


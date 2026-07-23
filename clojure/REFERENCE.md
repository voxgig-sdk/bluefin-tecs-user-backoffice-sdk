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
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |

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
| `client_secret` | `string` | Yes |  |
| `notification_email` | `string` | Yes |  |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |

### Operations

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-output_activate_portal_module/create (api/output_activate_portal_module client nil)
    (vs/jm
      "client_secret" "example_client_secret"  ;; string
      "notification_email" "example_notification_email"  ;; string
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
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |

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
| `consumer_uuid` | `string` | No |  |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |

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
| `consumer_uuid` | `string` | Yes |  |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |
| `role` | `vector` | Yes |  |

### Operations

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-output_assign_role/create (api/output_assign_role client nil)
    (vs/jm
      "consumer_uuid" "example_consumer_uuid"  ;; string
      "role" (vs/jt)  ;; vector
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
| `content_as_base64` | `string` | Yes |  |
| `mime_type` | `string` | Yes |  |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |

### Operations

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-output_change_logo/create (api/output_change_logo client nil)
    (vs/jm
      "content_as_base64" "example_content_as_base64"  ;; string
      "mime_type" "example_mime_type"  ;; string
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
| `date_of_birth` | `string` | No |  |
| `description` | `string` | Yes |  |
| `drivers_license_number` | `string` | No |  |
| `email` | `string` | Yes |  |
| `first_name` | `string` | No |  |
| `identification_number` | `string` | No |  |
| `last_name` | `string` | No |  |
| `login` | `string` | Yes |  |
| `mandator` | `map` | No |  |
| `name` | `string` | Yes |  |
| `passport_number` | `string` | No |  |
| `phone` | `string` | Yes |  |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |
| `salutation` | `string` | No |  |
| `state` | `string` | No |  |
| `street1` | `string` | No |  |
| `street2` | `string` | No |  |
| `zip_code` | `string` | No |  |

### Operations

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-output_create_mandator/create (api/output_create_mandator client nil)
    (vs/jm
      "description" "example_description"  ;; string
      "email" "example_email"  ;; string
      "login" "example_login"  ;; string
      "name" "example_name"  ;; string
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
| `mandator_name` | `string` | Yes |  |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |

### Operations

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-output_create_service_user/create (api/output_create_service_user client nil)
    (vs/jm
      "mandator_name" "example_mandator_name"  ;; string
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
| `consumer_uuid` | `string` | No |  |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |

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
| `case_id` | `string` | No |  |
| `encoded_data_base64` | `string` | No |  |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |

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
| `content_as_base64` | `string` | Yes |  |
| `mime_type` | `string` | Yes |  |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |

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
| `available_role` | `vector` | No |  |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |

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
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |
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
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |

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
| `group_role` | `vector` | No |  |
| `pagination` | `map` | No |  |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |
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
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |
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
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |
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
| `mandator_name` | `string` | Yes |  |
| `password` | `string` | No |  |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |
| `username` | `string` | No |  |

### Operations

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-output_provide_credential/create (api/output_provide_credential client nil)
    (vs/jm
      "mandator_name" "example_mandator_name"  ;; string
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
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |
| `salutation` | `string` | No |  |
| `state` | `string` | No |  |
| `street1` | `string` | No |  |
| `street2` | `string` | No |  |
| `zip` | `string` | No |  |

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
| `consumer_uuid` | `string` | No |  |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |
| `role` | `vector` | No |  |

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
| `business_registration_number` | `string` | No |  |
| `consumer_uuid` | `string` | Yes |  |
| `email_confirmation_code` | `string` | No |  |
| `phone_number` | `string` | No |  |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |

### Operations

#### `(create ent reqdata ctrl) -> map`

Create a new entity with the given data. Returns the created entity data and raises on error.

```clojure
(def result
  (e-output_resend_link/create (api/output_resend_link client nil)
    (vs/jm
      "consumer_uuid" "example_consumer_uuid"  ;; string
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
| `consumer_uuid` | `string` | No |  |
| `phone_number` | `string` | No |  |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |

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
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |
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
      "consumer_uuid" "example_consumer_uuid"  ;; string
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
| `consumer_language` | `string` | No |  |
| `email` | `string` | No |  |
| `first_name` | `string` | No |  |
| `last_name` | `string` | No |  |
| `phone_number` | `string` | No |  |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |

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
| `app_name` | `string` | No |  |
| `build_date` | `string` | No |  |
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
| `test` | 0.0.1 | In-memory mock transport for testing without a live server |


Features are activated via the `feature` option:

```clojure
(def client
  (api/make-sdk
    (vs/jm "feature"
      (vs/jm
        "test" (vs/jm "active" true)
        ))))
```


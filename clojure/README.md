# BluefinTecsUserBackoffice Clojure SDK



The Clojure SDK for the BluefinTecsUserBackoffice API — an entity-oriented client
following idiomatic Clojure conventions (plain functions, immutable data, and
the vendored `voxgig.struct` value model).

The SDK exposes the API as capitalised, semantic **Entities** — for example `(api/output_activate_digital_module client nil)` — each
carrying a small, uniform set of operations (`load`, `create`) instead of raw URL
paths and query strings. You work with named resources and verbs, which
keeps the cognitive load low.

> Other languages, the CLI, and MCP server live alongside this one — see
> the [top-level README](../README.md).


## Install
This package is not yet published to Clojars. Depend on it directly from the
GitHub release tag (`clojure/vX.Y.Z`, see [Releases](https://github.com/voxgig-sdk/bluefin-tecs-user-backoffice-sdk/releases)),
using a `tools.deps` git dependency:

```clojure
;; deps.edn
{:deps {bluefintecsuserbackoffice/sdk
        {:git/url "https://github.com/voxgig-sdk/bluefin-tecs-user-backoffice-sdk"
         :git/tag "clojure/vX.Y.Z"
         :git/sha "..."
         :deps/root "clojure"}}}
```

Or from a local source checkout:

```clojure
;; deps.edn
{:deps {bluefintecsuserbackoffice/sdk {:local/root "../clojure"}}}
```


## Tutorial: your first API call

This tutorial walks through creating a client, listing entities, and
loading a specific record.

### 1. Create a client

```clojure
(require '[sdk.api :as api]
         '[sdk.entity.output_activate_digital_module :as e-output_activate_digital_module]
         '[voxgig.struct :as vs])

(def client (api/make-sdk (vs/jm "apikey" (System/getenv "BLUEFIN_TECS_USER_BACKOFFICE_APIKEY"))))
```

### 4. Create, update, and remove

```clojure
;; Create — returns the bare created record (a map)
(def created (e-output_activate_digital_module/create (api/output_activate_digital_module client nil) (vs/jm "response_code" 1 "response_message" "example_response_message") nil))

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

For endpoints not covered by entity operations:

```clojure
(def result
  (api/direct client
    (vs/jm "path" "/api/resource/{id}"
           "method" "GET"
           "params" (vs/jm "id" "example"))))

(if (vs/getprop result "ok")
  (do
    (println (vs/getprop result "status"))  ;; 200
    (println (vs/getprop result "data")))   ;; response body
  ;; A non-2xx response carries status + data (the error body); a
  ;; transport-level failure carries err instead. Only one is present.
  (println (vs/getprop result "status") (vs/getprop result "err")))
```

### Prepare a request without sending it

```clojure
;; prepare returns the fetch definition and raises on error.
(def fetchdef
  (api/prepare client
    (vs/jm "path" "/api/resource/{id}"
           "method" "DELETE"
           "params" (vs/jm "id" "example"))))

(println (vs/getprop fetchdef "url"))
(println (vs/getprop fetchdef "method"))
(println (vs/getprop fetchdef "headers"))
```

### Use test mode

Create a mock client for unit testing — no server required:

```clojure
(require '[sdk.api :as api]
         '[sdk.entity.output_get_logo :as e-output_get_logo]
         '[voxgig.struct :as vs])

(def client (api/test-sdk nil nil))

;; Entity ops return the bare record and raise on error.
(def output_get_logo (e-output_get_logo/load (api/output_get_logo client nil) nil nil))
;; output_get_logo contains the mock response record
(println output_get_logo)
```

### Use a custom fetch function

Replace the HTTP transport with your own function. A fetch fn takes the
URL and fetch definition and returns a `[response err]` pair; `response`
is a struct map carrying `status`, `headers`, and a `json` thunk:

```clojure
(defn mock-fetch [url fetchdef]
  [(vs/jm "status" 200
          "statusText" "OK"
          "headers" (vs/jm)
          "json" (fn [] (vs/jm "id" "mock01")))
   nil])

(def client
  (api/make-sdk
    (vs/jm "base" "http://localhost:8080"
           "system" (vs/jm "fetch" mock-fetch))))
```

### Run the test suite

The generated suite (pipeline, features, netsim, primary utility and the
vendored struct corpus) runs offline through a single `tools.deps` entry
point:

```bash
cd clojure && make test
```

To exercise the SDK against the live API, construct a client with real
credentials and call its operations directly.


## Reference

### make-sdk

```clojure
(require '[sdk.api :as api]
         '[voxgig.struct :as vs])

(def client (api/make-sdk options))
```

Creates a new SDK client. `options` is a `voxgig.struct` map (or `nil`).

| Option | Type | Description |
| --- | --- | --- |
| `apikey` | `string` | API key for authentication. |
| `base` | `string` | Base URL of the API server. |
| `prefix` | `string` | URL path prefix prepended to all requests. |
| `suffix` | `string` | URL path suffix appended to all requests. |
| `feature` | `map` | Feature activation flags. |
| `extend` | `vector` | Additional feature atoms to load. |
| `system` | `map` | System overrides (e.g. custom `fetch` fn). |

### test-sdk

```clojure
(def client (api/test-sdk testopts sdkopts))
```

Creates a test-mode client with mock transport. Both arguments may be `nil`.

### Client functions

| Function | Signature | Description |
| --- | --- | --- |
| `options-map` | `(client) -> map` | Deep copy of current SDK options. |
| `get-utility` | `(client) -> utility` | Copy of the SDK utility object. |
| `prepare` | `(client fetchargs) -> map` | Build an HTTP request definition without sending. Raises on error. |
| `direct` | `(client fetchargs) -> map` | Build and send an HTTP request. Returns a result map (branch on `ok`). |
| `output_activate_digital_module` | `(client data) -> OutputActivateDigitalModule entity` | Create an OutputActivateDigitalModule entity instance. |
| `output_activate_portal_module` | `(client data) -> OutputActivatePortalModule entity` | Create an OutputActivatePortalModule entity instance. |
| `output_activate_store_module` | `(client data) -> OutputActivateStoreModule entity` | Create an OutputActivateStoreModule entity instance. |
| `output_activate_user` | `(client data) -> OutputActivateUser entity` | Create an OutputActivateUser entity instance. |
| `output_assign_role` | `(client data) -> OutputAssignRole entity` | Create an OutputAssignRole entity instance. |
| `output_change_logo` | `(client data) -> OutputChangeLogo entity` | Create an OutputChangeLogo entity instance. |
| `output_create_mandator` | `(client data) -> OutputCreateMandator entity` | Create an OutputCreateMandator entity instance. |
| `output_create_service_user` | `(client data) -> OutputCreateServiceUser entity` | Create an OutputCreateServiceUser entity instance. |
| `output_deactivate_user` | `(client data) -> OutputDeactivateUser entity` | Create an OutputDeactivateUser entity instance. |
| `output_get_kyc_document` | `(client data) -> OutputGetKycDocument entity` | Create an OutputGetKycDocument entity instance. |
| `output_get_logo` | `(client data) -> OutputGetLogo entity` | Create an OutputGetLogo entity instance. |
| `output_list_of_available_role` | `(client data) -> OutputListOfAvailableRole entity` | Create an OutputListOfAvailableRole entity instance. |
| `output_list_of_mandator` | `(client data) -> OutputListOfMandator entity` | Create an OutputListOfMandator entity instance. |
| `output_list_of_module` | `(client data) -> OutputListOfModule entity` | Create an OutputListOfModule entity instance. |
| `output_list_of_role_group` | `(client data) -> OutputListOfRoleGroup entity` | Create an OutputListOfRoleGroup entity instance. |
| `output_list_of_transactions_history` | `(client data) -> OutputListOfTransactionsHistory entity` | Create an OutputListOfTransactionsHistory entity instance. |
| `output_list_of_user` | `(client data) -> OutputListOfUser entity` | Create an OutputListOfUser entity instance. |
| `output_provide_credential` | `(client data) -> OutputProvideCredential entity` | Create an OutputProvideCredential entity instance. |
| `output_register_user` | `(client data) -> OutputRegisterUser entity` | Create an OutputRegisterUser entity instance. |
| `output_remove_role` | `(client data) -> OutputRemoveRole entity` | Create an OutputRemoveRole entity instance. |
| `output_resend_link` | `(client data) -> OutputResendLink entity` | Create an OutputResendLink entity instance. |
| `output_reset_password` | `(client data) -> OutputResetPassword entity` | Create an OutputResetPassword entity instance. |
| `output_update_consumer` | `(client data) -> OutputUpdateConsumer entity` | Create an OutputUpdateConsumer entity instance. |
| `output_update_profile` | `(client data) -> OutputUpdateProfile entity` | Create an OutputUpdateProfile entity instance. |
| `version` | `(client data) -> Version entity` | Create a Version entity instance. |

### Entity interface

All entities share the same interface. Operations are functions in the
entity namespace (`sdk.entity.<name>`); state accessors are stored on the
entity map and are called via keyword lookup.

| Member | Signature | Description |
| --- | --- | --- |
| `load` | `(ent reqmatch ctrl) -> map` | Load a single entity by match criteria. Raises on error. |
| `create` | `(ent reqdata ctrl) -> map` | Create a new entity. Raises on error. |
| `:data-get` | `() -> map` | Get entity data. |
| `:data-set` | `(data)` | Set entity data. |
| `:match-get` | `() -> map` | Get entity match criteria. |
| `:match-set` | `(match)` | Set entity match criteria. |
| `:make` | `() -> entity` | Create a new instance with the same options. |
| `:get-name` | `() -> string` | Return the entity name. |

State accessors are called by looking up the fn and applying it, e.g.
`((:data-get ent))` or `((:data-set ent) (vs/jm "k" "v"))`.

### Result shape

Entity operations return the bare result data (a `map` for single-entity
ops, a `vector` for `list`) and raise (via `ex-info`) on error. Wrap
calls in `try`/`catch` to handle failures.

The `direct` escape hatch never raises — it returns a result `map` you
branch on via `(vs/getprop result "ok")`:

| Key | Type | Description |
| --- | --- | --- |
| `ok` | `boolean` | `true` if the HTTP status is 2xx. |
| `status` | `long` | HTTP status code. |
| `headers` | `map` | Response headers. |
| `data` | `any` | Parsed JSON response body. |

On error, `ok` is `false` and `err` contains the error value.

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

Create an instance: `(def output_activate_digital_module (api/output_activate_digital_module client nil))`

#### Operations

| Method | Description |
| --- | --- |
| `(create ent data ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `response_code` | `long` |  |
| `response_message` | `string` |  |

#### Example: Create

```clojure
(def output_activate_digital_module
  (e-output_activate_digital_module/create (api/output_activate_digital_module client nil)
    (vs/jm
      )
    nil))
```


### OutputActivatePortalModule

Create an instance: `(def output_activate_portal_module (api/output_activate_portal_module client nil))`

#### Operations

| Method | Description |
| --- | --- |
| `(create ent data ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `client_secret` | `string` |  |
| `notification_email` | `string` |  |
| `response_code` | `long` |  |
| `response_message` | `string` |  |

#### Example: Create

```clojure
(def output_activate_portal_module
  (e-output_activate_portal_module/create (api/output_activate_portal_module client nil)
    (vs/jm
      "client_secret" "example_client_secret"  ;; string
      "notification_email" "example_notification_email"  ;; string
      )
    nil))
```


### OutputActivateStoreModule

Create an instance: `(def output_activate_store_module (api/output_activate_store_module client nil))`

#### Operations

| Method | Description |
| --- | --- |
| `(create ent data ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `response_code` | `long` |  |
| `response_message` | `string` |  |

#### Example: Create

```clojure
(def output_activate_store_module
  (e-output_activate_store_module/create (api/output_activate_store_module client nil)
    (vs/jm
      )
    nil))
```


### OutputActivateUser

Create an instance: `(def output_activate_user (api/output_activate_user client nil))`

#### Operations

| Method | Description |
| --- | --- |
| `(create ent data ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumer_uuid` | `string` |  |
| `response_code` | `long` |  |
| `response_message` | `string` |  |

#### Example: Create

```clojure
(def output_activate_user
  (e-output_activate_user/create (api/output_activate_user client nil)
    (vs/jm
      )
    nil))
```


### OutputAssignRole

Create an instance: `(def output_assign_role (api/output_assign_role client nil))`

#### Operations

| Method | Description |
| --- | --- |
| `(create ent data ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumer_uuid` | `string` |  |
| `response_code` | `long` |  |
| `response_message` | `string` |  |
| `role` | `vector` |  |

#### Example: Create

```clojure
(def output_assign_role
  (e-output_assign_role/create (api/output_assign_role client nil)
    (vs/jm
      "consumer_uuid" "example_consumer_uuid"  ;; string
      "role" (vs/jt)  ;; vector
      )
    nil))
```


### OutputChangeLogo

Create an instance: `(def output_change_logo (api/output_change_logo client nil))`

#### Operations

| Method | Description |
| --- | --- |
| `(create ent data ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `content_as_base64` | `string` |  |
| `mime_type` | `string` |  |
| `response_code` | `long` |  |
| `response_message` | `string` |  |

#### Example: Create

```clojure
(def output_change_logo
  (e-output_change_logo/create (api/output_change_logo client nil)
    (vs/jm
      "content_as_base64" "example_content_as_base64"  ;; string
      "mime_type" "example_mime_type"  ;; string
      )
    nil))
```


### OutputCreateMandator

Create an instance: `(def output_create_mandator (api/output_create_mandator client nil))`

#### Operations

| Method | Description |
| --- | --- |
| `(create ent data ctrl)` | Create a new entity with the given data. |

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
| `mandator` | `map` |  |
| `name` | `string` |  |
| `passport_number` | `string` |  |
| `phone` | `string` |  |
| `response_code` | `long` |  |
| `response_message` | `string` |  |
| `salutation` | `string` |  |
| `state` | `string` |  |
| `street1` | `string` |  |
| `street2` | `string` |  |
| `zip_code` | `string` |  |

#### Example: Create

```clojure
(def output_create_mandator
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


### OutputCreateServiceUser

Create an instance: `(def output_create_service_user (api/output_create_service_user client nil))`

#### Operations

| Method | Description |
| --- | --- |
| `(create ent data ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `mandator_name` | `string` |  |
| `response_code` | `long` |  |
| `response_message` | `string` |  |

#### Example: Create

```clojure
(def output_create_service_user
  (e-output_create_service_user/create (api/output_create_service_user client nil)
    (vs/jm
      "mandator_name" "example_mandator_name"  ;; string
      )
    nil))
```


### OutputDeactivateUser

Create an instance: `(def output_deactivate_user (api/output_deactivate_user client nil))`

#### Operations

| Method | Description |
| --- | --- |
| `(create ent data ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumer_uuid` | `string` |  |
| `response_code` | `long` |  |
| `response_message` | `string` |  |

#### Example: Create

```clojure
(def output_deactivate_user
  (e-output_deactivate_user/create (api/output_deactivate_user client nil)
    (vs/jm
      )
    nil))
```


### OutputGetKycDocument

Create an instance: `(def output_get_kyc_document (api/output_get_kyc_document client nil))`

#### Operations

| Method | Description |
| --- | --- |
| `(create ent data ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `case_id` | `string` |  |
| `encoded_data_base64` | `string` |  |
| `response_code` | `long` |  |
| `response_message` | `string` |  |

#### Example: Create

```clojure
(def output_get_kyc_document
  (e-output_get_kyc_document/create (api/output_get_kyc_document client nil)
    (vs/jm
      )
    nil))
```


### OutputGetLogo

Create an instance: `(def output_get_logo (api/output_get_logo client nil))`

#### Operations

| Method | Description |
| --- | --- |
| `(load ent match ctrl)` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `content_as_base64` | `string` |  |
| `mime_type` | `string` |  |
| `response_code` | `long` |  |
| `response_message` | `string` |  |

#### Example: Load

```clojure
(def output_get_logo (e-output_get_logo/load (api/output_get_logo client nil) nil nil))
```


### OutputListOfAvailableRole

Create an instance: `(def output_list_of_available_role (api/output_list_of_available_role client nil))`

#### Operations

| Method | Description |
| --- | --- |
| `(create ent data ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `available_role` | `vector` |  |
| `response_code` | `long` |  |
| `response_message` | `string` |  |

#### Example: Create

```clojure
(def output_list_of_available_role
  (e-output_list_of_available_role/create (api/output_list_of_available_role client nil)
    (vs/jm
      )
    nil))
```


### OutputListOfMandator

Create an instance: `(def output_list_of_mandator (api/output_list_of_mandator client nil))`

#### Operations

| Method | Description |
| --- | --- |
| `(create ent data ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `filter` | `map` |  |
| `list` | `vector` |  |
| `pagination` | `map` |  |
| `response_code` | `long` |  |
| `response_message` | `string` |  |
| `sorting` | `map` |  |

#### Example: Create

```clojure
(def output_list_of_mandator
  (e-output_list_of_mandator/create (api/output_list_of_mandator client nil)
    (vs/jm
      )
    nil))
```


### OutputListOfModule

Create an instance: `(def output_list_of_module (api/output_list_of_module client nil))`

#### Operations

| Method | Description |
| --- | --- |
| `(create ent data ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `list` | `vector` |  |
| `pagination` | `map` |  |
| `response_code` | `long` |  |
| `response_message` | `string` |  |

#### Example: Create

```clojure
(def output_list_of_module
  (e-output_list_of_module/create (api/output_list_of_module client nil)
    (vs/jm
      )
    nil))
```


### OutputListOfRoleGroup

Create an instance: `(def output_list_of_role_group (api/output_list_of_role_group client nil))`

#### Operations

| Method | Description |
| --- | --- |
| `(create ent data ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `filter` | `map` |  |
| `group_role` | `vector` |  |
| `pagination` | `map` |  |
| `response_code` | `long` |  |
| `response_message` | `string` |  |
| `sorting` | `map` |  |

#### Example: Create

```clojure
(def output_list_of_role_group
  (e-output_list_of_role_group/create (api/output_list_of_role_group client nil)
    (vs/jm
      )
    nil))
```


### OutputListOfTransactionsHistory

Create an instance: `(def output_list_of_transactions_history (api/output_list_of_transactions_history client nil))`

#### Operations

| Method | Description |
| --- | --- |
| `(create ent data ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `filter` | `map` |  |
| `list` | `vector` |  |
| `pagination` | `map` |  |
| `response_code` | `long` |  |
| `response_message` | `string` |  |
| `sorting` | `map` |  |

#### Example: Create

```clojure
(def output_list_of_transactions_history
  (e-output_list_of_transactions_history/create (api/output_list_of_transactions_history client nil)
    (vs/jm
      )
    nil))
```


### OutputListOfUser

Create an instance: `(def output_list_of_user (api/output_list_of_user client nil))`

#### Operations

| Method | Description |
| --- | --- |
| `(create ent data ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `filter` | `map` |  |
| `list` | `vector` |  |
| `pagination` | `map` |  |
| `response_code` | `long` |  |
| `response_message` | `string` |  |
| `sorting` | `map` |  |

#### Example: Create

```clojure
(def output_list_of_user
  (e-output_list_of_user/create (api/output_list_of_user client nil)
    (vs/jm
      )
    nil))
```


### OutputProvideCredential

Create an instance: `(def output_provide_credential (api/output_provide_credential client nil))`

#### Operations

| Method | Description |
| --- | --- |
| `(create ent data ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `mandator_name` | `string` |  |
| `password` | `string` |  |
| `response_code` | `long` |  |
| `response_message` | `string` |  |
| `username` | `string` |  |

#### Example: Create

```clojure
(def output_provide_credential
  (e-output_provide_credential/create (api/output_provide_credential client nil)
    (vs/jm
      "mandator_name" "example_mandator_name"  ;; string
      )
    nil))
```


### OutputRegisterUser

Create an instance: `(def output_register_user (api/output_register_user client nil))`

#### Operations

| Method | Description |
| --- | --- |
| `(create ent data ctrl)` | Create a new entity with the given data. |

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
| `response_code` | `long` |  |
| `response_message` | `string` |  |
| `salutation` | `string` |  |
| `state` | `string` |  |
| `street1` | `string` |  |
| `street2` | `string` |  |
| `zip` | `string` |  |

#### Example: Create

```clojure
(def output_register_user
  (e-output_register_user/create (api/output_register_user client nil)
    (vs/jm
      "email" "example_email"  ;; string
      )
    nil))
```


### OutputRemoveRole

Create an instance: `(def output_remove_role (api/output_remove_role client nil))`

#### Operations

| Method | Description |
| --- | --- |
| `(create ent data ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumer_uuid` | `string` |  |
| `response_code` | `long` |  |
| `response_message` | `string` |  |
| `role` | `vector` |  |

#### Example: Create

```clojure
(def output_remove_role
  (e-output_remove_role/create (api/output_remove_role client nil)
    (vs/jm
      )
    nil))
```


### OutputResendLink

Create an instance: `(def output_resend_link (api/output_resend_link client nil))`

#### Operations

| Method | Description |
| --- | --- |
| `(create ent data ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `business_registration_number` | `string` |  |
| `consumer_uuid` | `string` |  |
| `email_confirmation_code` | `string` |  |
| `phone_number` | `string` |  |
| `response_code` | `long` |  |
| `response_message` | `string` |  |

#### Example: Create

```clojure
(def output_resend_link
  (e-output_resend_link/create (api/output_resend_link client nil)
    (vs/jm
      "consumer_uuid" "example_consumer_uuid"  ;; string
      )
    nil))
```


### OutputResetPassword

Create an instance: `(def output_reset_password (api/output_reset_password client nil))`

#### Operations

| Method | Description |
| --- | --- |
| `(create ent data ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumer_uuid` | `string` |  |
| `phone_number` | `string` |  |
| `response_code` | `long` |  |
| `response_message` | `string` |  |

#### Example: Create

```clojure
(def output_reset_password
  (e-output_reset_password/create (api/output_reset_password client nil)
    (vs/jm
      )
    nil))
```


### OutputUpdateConsumer

Create an instance: `(def output_update_consumer (api/output_update_consumer client nil))`

#### Operations

| Method | Description |
| --- | --- |
| `(create ent data ctrl)` | Create a new entity with the given data. |

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
| `kyc_passed` | `boolean` |  |
| `last_name` | `string` |  |
| `nationality` | `string` |  |
| `passport_number` | `string` |  |
| `phone_number` | `string` |  |
| `place_of_birth` | `string` |  |
| `response_code` | `long` |  |
| `response_message` | `string` |  |
| `state` | `string` |  |
| `street1` | `string` |  |
| `street2` | `string` |  |
| `transactionhistory_id` | `string` |  |
| `zip` | `string` |  |

#### Example: Create

```clojure
(def output_update_consumer
  (e-output_update_consumer/create (api/output_update_consumer client nil)
    (vs/jm
      "consumer_uuid" "example_consumer_uuid"  ;; string
      )
    nil))
```


### OutputUpdateProfile

Create an instance: `(def output_update_profile (api/output_update_profile client nil))`

#### Operations

| Method | Description |
| --- | --- |
| `(create ent data ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumer_language` | `string` |  |
| `email` | `string` |  |
| `first_name` | `string` |  |
| `last_name` | `string` |  |
| `phone_number` | `string` |  |
| `response_code` | `long` |  |
| `response_message` | `string` |  |

#### Example: Create

```clojure
(def output_update_profile
  (e-output_update_profile/create (api/output_update_profile client nil)
    (vs/jm
      )
    nil))
```


### Version

Create an instance: `(def version (api/version client nil))`

#### Operations

| Method | Description |
| --- | --- |
| `(load ent match ctrl)` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `app_name` | `string` |  |
| `build_date` | `string` |  |
| `version` | `string` |  |

#### Example: Load

```clojure
(def version (e-version/load (api/version client nil) nil nil))
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

### Data as struct value maps

The Clojure SDK represents API data with the vendored `voxgig.struct`
value model (ordered, Java-backed maps and lists) rather than typed
records. This mirrors the dynamic nature of the API and keeps the SDK
flexible — no code generation is needed when the API schema changes.

Build request maps with `(vs/jm "k" v ...)` and lists with
`(vs/jt v ...)`; read values with `(vs/getprop m "k")`. Use
`(vs/ismap x)` to safely check that a value is a map.

### Namespace structure

```
clojure/
├── src/sdk/api.clj        -- public API namespace (entity accessors)
├── src/sdk/client.clj     -- client constructors (make-sdk, test-sdk)
├── src/sdk/config.clj     -- generated configuration
├── src/sdk/core.clj       -- core types, context and pipeline
├── src/sdk/features.clj   -- feature factory
├── src/sdk/entity/        -- entity namespaces (one per entity)
├── src/voxgig/struct.clj  -- vendored struct value library
└── test/                  -- test suites
```

Require `[sdk.api :as api]` for the public surface, and an entity
namespace (e.g. `[sdk.entity.bluefintecsuserbackoffice :as e-bluefintecsuserbackoffice]`)
only when you call its operations directly.

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

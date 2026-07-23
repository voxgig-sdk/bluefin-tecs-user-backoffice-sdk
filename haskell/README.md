# BluefinTecsUserBackoffice Haskell SDK



The Haskell SDK for the BluefinTecsUserBackoffice API — an entity-oriented client following idiomatic Haskell conventions (pure functions, explicit `IO`, and the dependency-free vendored `Value` struct model).

The SDK exposes the API as capitalised, semantic **Entities** — for example `output_activate_digital_module sdk VNoval` — each
carrying a small, uniform set of operations (`eLoad`, `eCreate`) instead of raw URL
paths and query strings. You work with named resources and verbs, which
keeps the cognitive load low.

> Other languages, the CLI, and MCP server live alongside this one — see
> the [top-level README](../README.md).


## Install
This package is not yet published to Hackage. Install it from the GitHub
release tag (`haskell/vX.Y.Z`, see [Releases](https://github.com/voxgig-sdk/bluefin-tecs-user-backoffice-sdk/releases)) or
from a source checkout. The runtime has no third-party dependencies (only the
GHC boot libraries: `base`, `containers`, `array`, `time`), so the
bundled Makefile drives stock GHC with no cabal solve:

```bash
cd haskell && make test
```

A `.cabal` file is also generated for use with `cabal`/`stack`:

```bash
cd haskell && cabal build
```


## Tutorial: your first API call

This tutorial walks through creating a client, listing entities, and
loading a specific record.

### 1. Create a client

```haskell
import System.Environment (lookupEnv)
import qualified SdkClient as Sdk
import VoxgigStruct (Value (..), emptyMap)
import SdkHelpers (jo)

main :: IO ()
main = do
  mkey <- lookupEnv "BLUEFIN_TECS_USER_BACKOFFICE_APIKEY"
  opts <- jo [("apikey", maybe VNoval VStr mkey)]
  sdk <- Sdk.newSdk opts
```

Entity operations raise on error (via `Control.Exception.throwIO`) and
return the bare result `Value`. Wrap a call in `Control.Exception.try`
to recover from failures.

### 4. Create, update, and remove

```haskell
  createEnt <- Sdk.output_activate_digital_module sdk VNoval
  d <- jo [("response_code", VNum 1), ("response_message", VStr "example_response_message")]
  cctrl <- emptyMap
  created <- Sdk.eCreate createEnt d cctrl
  print created
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

For endpoints not covered by entity accessors, use `direct` — it never
raises and returns a result `Value` you branch on via its `ok` field:

```haskell
import qualified SdkClient as Sdk
import qualified SdkFeatures as F
import VoxgigStruct (Value (..))
import SdkHelpers (jo, getp)

main :: IO ()
main = do
  sdk <- Sdk.newSdk0
  params <- jo [("id", VStr "example")]
  args <- jo [("path", VStr "/api/resource/{id}"), ("method", VStr "GET"), ("params", params)]
  result <- F.direct sdk args
  ok <- getp result "ok"
  case ok of
    VBool True -> do
      status <- getp result "status"   -- e.g. VNum 200
      body <- getp result "data"       -- the response body
      print (status, body)
    _ -> do
      -- A non-2xx response carries status + data (the error body); a
      -- transport-level failure carries err instead.
      status <- getp result "status"
      err <- getp result "err"
      print (status, err)
```

### Prepare a request without sending it

```haskell
import qualified SdkClient as Sdk
import qualified SdkFeatures as F
import VoxgigStruct (Value (..))
import SdkHelpers (jo, getp)

main :: IO ()
main = do
  sdk <- Sdk.newSdk0
  params <- jo [("id", VStr "example")]
  args <- jo [("path", VStr "/api/resource/{id}"), ("method", VStr "DELETE"), ("params", params)]
  -- prepare returns the fetch definition and raises on error.
  fetchdef <- F.prepare sdk args
  url <- getp fetchdef "url"
  method <- getp fetchdef "method"
  print (url, method)
```

### Use test mode

Create a mock client for unit testing — no server required:

```haskell
import qualified SdkClient as Sdk
import qualified SdkFeatures as F
import VoxgigStruct (Value (..), emptyMap)
import SdkHelpers (jo)

main :: IO ()
main = do
  sdk <- Sdk.testSdk0
  ent <- Sdk.output_get_logo sdk VNoval
  arg <- emptyMap
  ctrl <- emptyMap
  -- Entity ops return the bare record and raise on error.
  output_get_logo <- Sdk.eLoad ent arg ctrl
  print output_get_logo
```

### Use a custom fetch function

Replace the HTTP transport with your own `VFunc` under `system.fetch`:

```haskell
import qualified SdkClient as Sdk
import VoxgigStruct (Value (..))
import SdkHelpers (jo, jsonThunk)

customClient :: IO Sdk.Client
customClient = do
  let mockFetch = VFunc (\_ _ _ _ -> do
        body <- jo [("id", VStr "mock01")]
        jo [("status", VNum 200), ("statusText", VStr "OK"), ("json", jsonThunk body)])
  sys <- jo [("fetch", mockFetch)]
  opts <- jo [("base", VStr "http://localhost:8080"), ("system", sys)]
  Sdk.newSdk opts
```

### Run live tests

Create a `.env.local` file at the project root:

```
BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE=TRUE
BLUEFIN_TECS_USER_BACKOFFICE_APIKEY=<your-key>
```

Then run the suite (stock GHC, no third-party dependencies):

```bash
cd haskell && make test
```


## Reference

### Client constructors

```haskell
import qualified SdkClient as Sdk
import VoxgigStruct (Value (..))
import SdkHelpers (jo)

makeClient :: IO Sdk.Client
makeClient = do
  opts <- jo [("base", VStr "https://api.example.com")]
  Sdk.newSdk opts
```

`newSdk :: Value -> IO Client` constructs a client from an options map;
`newSdk0 :: IO Client` is the no-argument convenience form.

| Option (map key) | Type | Description |
| --- | --- | --- |
| `apikey` | `String` | API key for authentication. |
| `base` | `String` | Base URL of the API server. |
| `prefix` | `String` | URL path prefix prepended to all requests. |
| `suffix` | `String` | URL path suffix appended to all requests. |
| `headers` | `Value` | Custom headers for all requests. |
| `feature` | `Value` | Feature activation flags. |
| `system` | `Value` | System overrides (e.g. custom `fetch` function). |

### Test client

```haskell
client <- Sdk.testSdk testopts sdkopts
```

`testSdk :: Value -> Value -> IO Client` constructs a test-mode client with
mock transport (`testSdk0 :: IO Client` for the no-argument form). Pass
`VNoval` for defaults.

### Client functions

| Function | Signature | Description |
| --- | --- | --- |
| `newSdk` | `Value -> IO Client` | Construct a live client from options. |
| `newSdk0` | `IO Client` | Construct a live client with defaults. |
| `testSdk` | `Value -> Value -> IO Client` | Construct a test-mode client. |
| `prepare` | `Client -> Value -> IO Value` | Build an HTTP request definition without sending. Raises on error. |
| `direct` | `Client -> Value -> IO Value` | Build and send an HTTP request. Returns a result `Value` (branch on `ok`). |
| `output_activate_digital_module` | `Client -> Value -> IO Entity` | Create an OutputActivateDigitalModule entity instance. |
| `output_activate_portal_module` | `Client -> Value -> IO Entity` | Create an OutputActivatePortalModule entity instance. |
| `output_activate_store_module` | `Client -> Value -> IO Entity` | Create an OutputActivateStoreModule entity instance. |
| `output_activate_user` | `Client -> Value -> IO Entity` | Create an OutputActivateUser entity instance. |
| `output_assign_role` | `Client -> Value -> IO Entity` | Create an OutputAssignRole entity instance. |
| `output_change_logo` | `Client -> Value -> IO Entity` | Create an OutputChangeLogo entity instance. |
| `output_create_mandator` | `Client -> Value -> IO Entity` | Create an OutputCreateMandator entity instance. |
| `output_create_service_user` | `Client -> Value -> IO Entity` | Create an OutputCreateServiceUser entity instance. |
| `output_deactivate_user` | `Client -> Value -> IO Entity` | Create an OutputDeactivateUser entity instance. |
| `output_get_kyc_document` | `Client -> Value -> IO Entity` | Create an OutputGetKycDocument entity instance. |
| `output_get_logo` | `Client -> Value -> IO Entity` | Create an OutputGetLogo entity instance. |
| `output_list_of_available_role` | `Client -> Value -> IO Entity` | Create an OutputListOfAvailableRole entity instance. |
| `output_list_of_mandator` | `Client -> Value -> IO Entity` | Create an OutputListOfMandator entity instance. |
| `output_list_of_module` | `Client -> Value -> IO Entity` | Create an OutputListOfModule entity instance. |
| `output_list_of_role_group` | `Client -> Value -> IO Entity` | Create an OutputListOfRoleGroup entity instance. |
| `output_list_of_transactions_history` | `Client -> Value -> IO Entity` | Create an OutputListOfTransactionsHistory entity instance. |
| `output_list_of_user` | `Client -> Value -> IO Entity` | Create an OutputListOfUser entity instance. |
| `output_provide_credential` | `Client -> Value -> IO Entity` | Create an OutputProvideCredential entity instance. |
| `output_register_user` | `Client -> Value -> IO Entity` | Create an OutputRegisterUser entity instance. |
| `output_remove_role` | `Client -> Value -> IO Entity` | Create an OutputRemoveRole entity instance. |
| `output_resend_link` | `Client -> Value -> IO Entity` | Create an OutputResendLink entity instance. |
| `output_reset_password` | `Client -> Value -> IO Entity` | Create an OutputResetPassword entity instance. |
| `output_update_consumer` | `Client -> Value -> IO Entity` | Create an OutputUpdateConsumer entity instance. |
| `output_update_profile` | `Client -> Value -> IO Entity` | Create an OutputUpdateProfile entity instance. |
| `version` | `Client -> Value -> IO Entity` | Create a Version entity instance. |

### Entity interface

All entities share the same record interface (fields of the `Entity` type).

| Field | Signature | Description |
| --- | --- | --- |
| `eLoad` | `Value -> Value -> IO Value` | Load a single entity by match criteria. Raises on error. |
| `eCreate` | `Value -> Value -> IO Value` | Create a new entity. Raises on error. |
| `eDataGet` | `IO Value` | Get entity data. |
| `eDataSet` | `Value -> IO ()` | Set entity data. |
| `eStream` | `String -> Value -> Value -> IO [Value]` | Run an op as a lazy stream of items. |
| `eMake` | `IO Entity` | Create a new instance with the same options. |
| `eName` | `String` | The entity name. |

### Result shape

Entity operations return the bare result `Value` (a map for single-entity
ops, a list for `eList`) and raise on error. Wrap calls in
`Control.Exception.try` to handle failures.

The `direct` escape hatch never raises — it returns a result `Value`
you branch on via its `ok` field (read with `getp result "ok"`):

| Key | Type | Description |
| --- | --- | --- |
| `ok` | `Bool` | `True` if the HTTP status is 2xx. |
| `status` | `Int` | HTTP status code. |
| `headers` | `Value` | Response headers. |
| `data` | `Value` | Parsed JSON response body. |

On error, `ok` is `False` and `err` carries the error value.

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

Create an instance: `output_activate_digital_module <- Sdk.output_activate_digital_module sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `response_code` | `Int` |  |
| `response_message` | `String` |  |

#### Example: Create

```haskell
  ent <- Sdk.output_activate_digital_module sdk VNoval
  d <- jo
    []
  ctrl <- emptyMap
  output_activate_digital_module <- Sdk.eCreate ent d ctrl
```


### OutputActivatePortalModule

Create an instance: `output_activate_portal_module <- Sdk.output_activate_portal_module sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `client_secret` | `String` |  |
| `notification_email` | `String` |  |
| `response_code` | `Int` |  |
| `response_message` | `String` |  |

#### Example: Create

```haskell
  ent <- Sdk.output_activate_portal_module sdk VNoval
  d <- jo
    [ ("client_secret", VStr "example_client_secret")   -- String
    , ("notification_email", VStr "example_notification_email")   -- String
    ]
  ctrl <- emptyMap
  output_activate_portal_module <- Sdk.eCreate ent d ctrl
```


### OutputActivateStoreModule

Create an instance: `output_activate_store_module <- Sdk.output_activate_store_module sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `response_code` | `Int` |  |
| `response_message` | `String` |  |

#### Example: Create

```haskell
  ent <- Sdk.output_activate_store_module sdk VNoval
  d <- jo
    []
  ctrl <- emptyMap
  output_activate_store_module <- Sdk.eCreate ent d ctrl
```


### OutputActivateUser

Create an instance: `output_activate_user <- Sdk.output_activate_user sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumer_uuid` | `String` |  |
| `response_code` | `Int` |  |
| `response_message` | `String` |  |

#### Example: Create

```haskell
  ent <- Sdk.output_activate_user sdk VNoval
  d <- jo
    []
  ctrl <- emptyMap
  output_activate_user <- Sdk.eCreate ent d ctrl
```


### OutputAssignRole

Create an instance: `output_assign_role <- Sdk.output_assign_role sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumer_uuid` | `String` |  |
| `response_code` | `Int` |  |
| `response_message` | `String` |  |
| `role` | `[Value]` |  |

#### Example: Create

```haskell
  ent <- Sdk.output_assign_role sdk VNoval
  d <- jo
    [ ("consumer_uuid", VStr "example_consumer_uuid")   -- String
    , ("role", VNoval)   -- [Value]
    ]
  ctrl <- emptyMap
  output_assign_role <- Sdk.eCreate ent d ctrl
```


### OutputChangeLogo

Create an instance: `output_change_logo <- Sdk.output_change_logo sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `content_as_base64` | `String` |  |
| `mime_type` | `String` |  |
| `response_code` | `Int` |  |
| `response_message` | `String` |  |

#### Example: Create

```haskell
  ent <- Sdk.output_change_logo sdk VNoval
  d <- jo
    [ ("content_as_base64", VStr "example_content_as_base64")   -- String
    , ("mime_type", VStr "example_mime_type")   -- String
    ]
  ctrl <- emptyMap
  output_change_logo <- Sdk.eCreate ent d ctrl
```


### OutputCreateMandator

Create an instance: `output_create_mandator <- Sdk.output_create_mandator sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `city` | `String` |  |
| `country` | `String` |  |
| `date_of_birth` | `String` |  |
| `description` | `String` |  |
| `drivers_license_number` | `String` |  |
| `email` | `String` |  |
| `first_name` | `String` |  |
| `identification_number` | `String` |  |
| `last_name` | `String` |  |
| `login` | `String` |  |
| `mandator` | `Value` |  |
| `name` | `String` |  |
| `passport_number` | `String` |  |
| `phone` | `String` |  |
| `response_code` | `Int` |  |
| `response_message` | `String` |  |
| `salutation` | `String` |  |
| `state` | `String` |  |
| `street1` | `String` |  |
| `street2` | `String` |  |
| `zip_code` | `String` |  |

#### Example: Create

```haskell
  ent <- Sdk.output_create_mandator sdk VNoval
  d <- jo
    [ ("description", VStr "example_description")   -- String
    , ("email", VStr "example_email")   -- String
    , ("login", VStr "example_login")   -- String
    , ("name", VStr "example_name")   -- String
    , ("phone", VStr "example_phone")   -- String
    ]
  ctrl <- emptyMap
  output_create_mandator <- Sdk.eCreate ent d ctrl
```


### OutputCreateServiceUser

Create an instance: `output_create_service_user <- Sdk.output_create_service_user sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `mandator_name` | `String` |  |
| `response_code` | `Int` |  |
| `response_message` | `String` |  |

#### Example: Create

```haskell
  ent <- Sdk.output_create_service_user sdk VNoval
  d <- jo
    [ ("mandator_name", VStr "example_mandator_name")   -- String
    ]
  ctrl <- emptyMap
  output_create_service_user <- Sdk.eCreate ent d ctrl
```


### OutputDeactivateUser

Create an instance: `output_deactivate_user <- Sdk.output_deactivate_user sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumer_uuid` | `String` |  |
| `response_code` | `Int` |  |
| `response_message` | `String` |  |

#### Example: Create

```haskell
  ent <- Sdk.output_deactivate_user sdk VNoval
  d <- jo
    []
  ctrl <- emptyMap
  output_deactivate_user <- Sdk.eCreate ent d ctrl
```


### OutputGetKycDocument

Create an instance: `output_get_kyc_document <- Sdk.output_get_kyc_document sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `case_id` | `String` |  |
| `encoded_data_base64` | `String` |  |
| `response_code` | `Int` |  |
| `response_message` | `String` |  |

#### Example: Create

```haskell
  ent <- Sdk.output_get_kyc_document sdk VNoval
  d <- jo
    []
  ctrl <- emptyMap
  output_get_kyc_document <- Sdk.eCreate ent d ctrl
```


### OutputGetLogo

Create an instance: `output_get_logo <- Sdk.output_get_logo sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eLoad ent match ctrl` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `content_as_base64` | `String` |  |
| `mime_type` | `String` |  |
| `response_code` | `Int` |  |
| `response_message` | `String` |  |

#### Example: Load

```haskell
  ent <- Sdk.output_get_logo sdk VNoval
  match <- jo []
  ctrl <- emptyMap
  output_get_logo <- Sdk.eLoad ent match ctrl
```


### OutputListOfAvailableRole

Create an instance: `output_list_of_available_role <- Sdk.output_list_of_available_role sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `available_role` | `[Value]` |  |
| `response_code` | `Int` |  |
| `response_message` | `String` |  |

#### Example: Create

```haskell
  ent <- Sdk.output_list_of_available_role sdk VNoval
  d <- jo
    []
  ctrl <- emptyMap
  output_list_of_available_role <- Sdk.eCreate ent d ctrl
```


### OutputListOfMandator

Create an instance: `output_list_of_mandator <- Sdk.output_list_of_mandator sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `filter` | `Value` |  |
| `list` | `[Value]` |  |
| `pagination` | `Value` |  |
| `response_code` | `Int` |  |
| `response_message` | `String` |  |
| `sorting` | `Value` |  |

#### Example: Create

```haskell
  ent <- Sdk.output_list_of_mandator sdk VNoval
  d <- jo
    []
  ctrl <- emptyMap
  output_list_of_mandator <- Sdk.eCreate ent d ctrl
```


### OutputListOfModule

Create an instance: `output_list_of_module <- Sdk.output_list_of_module sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `list` | `[Value]` |  |
| `pagination` | `Value` |  |
| `response_code` | `Int` |  |
| `response_message` | `String` |  |

#### Example: Create

```haskell
  ent <- Sdk.output_list_of_module sdk VNoval
  d <- jo
    []
  ctrl <- emptyMap
  output_list_of_module <- Sdk.eCreate ent d ctrl
```


### OutputListOfRoleGroup

Create an instance: `output_list_of_role_group <- Sdk.output_list_of_role_group sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `filter` | `Value` |  |
| `group_role` | `[Value]` |  |
| `pagination` | `Value` |  |
| `response_code` | `Int` |  |
| `response_message` | `String` |  |
| `sorting` | `Value` |  |

#### Example: Create

```haskell
  ent <- Sdk.output_list_of_role_group sdk VNoval
  d <- jo
    []
  ctrl <- emptyMap
  output_list_of_role_group <- Sdk.eCreate ent d ctrl
```


### OutputListOfTransactionsHistory

Create an instance: `output_list_of_transactions_history <- Sdk.output_list_of_transactions_history sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `filter` | `Value` |  |
| `list` | `[Value]` |  |
| `pagination` | `Value` |  |
| `response_code` | `Int` |  |
| `response_message` | `String` |  |
| `sorting` | `Value` |  |

#### Example: Create

```haskell
  ent <- Sdk.output_list_of_transactions_history sdk VNoval
  d <- jo
    []
  ctrl <- emptyMap
  output_list_of_transactions_history <- Sdk.eCreate ent d ctrl
```


### OutputListOfUser

Create an instance: `output_list_of_user <- Sdk.output_list_of_user sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `filter` | `Value` |  |
| `list` | `[Value]` |  |
| `pagination` | `Value` |  |
| `response_code` | `Int` |  |
| `response_message` | `String` |  |
| `sorting` | `Value` |  |

#### Example: Create

```haskell
  ent <- Sdk.output_list_of_user sdk VNoval
  d <- jo
    []
  ctrl <- emptyMap
  output_list_of_user <- Sdk.eCreate ent d ctrl
```


### OutputProvideCredential

Create an instance: `output_provide_credential <- Sdk.output_provide_credential sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `mandator_name` | `String` |  |
| `password` | `String` |  |
| `response_code` | `Int` |  |
| `response_message` | `String` |  |
| `username` | `String` |  |

#### Example: Create

```haskell
  ent <- Sdk.output_provide_credential sdk VNoval
  d <- jo
    [ ("mandator_name", VStr "example_mandator_name")   -- String
    ]
  ctrl <- emptyMap
  output_provide_credential <- Sdk.eCreate ent d ctrl
```


### OutputRegisterUser

Create an instance: `output_register_user <- Sdk.output_register_user sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `city` | `String` |  |
| `consumer_id` | `String` |  |
| `consumer_language` | `String` |  |
| `country` | `String` |  |
| `date_of_birth` | `String` |  |
| `driver_licence_number` | `String` |  |
| `email` | `String` |  |
| `first_name` | `String` |  |
| `identification_number` | `String` |  |
| `last_name` | `String` |  |
| `login` | `String` |  |
| `module` | `String` |  |
| `passport_number` | `String` |  |
| `phone` | `String` |  |
| `response_code` | `Int` |  |
| `response_message` | `String` |  |
| `salutation` | `String` |  |
| `state` | `String` |  |
| `street1` | `String` |  |
| `street2` | `String` |  |
| `zip` | `String` |  |

#### Example: Create

```haskell
  ent <- Sdk.output_register_user sdk VNoval
  d <- jo
    [ ("email", VStr "example_email")   -- String
    ]
  ctrl <- emptyMap
  output_register_user <- Sdk.eCreate ent d ctrl
```


### OutputRemoveRole

Create an instance: `output_remove_role <- Sdk.output_remove_role sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumer_uuid` | `String` |  |
| `response_code` | `Int` |  |
| `response_message` | `String` |  |
| `role` | `[Value]` |  |

#### Example: Create

```haskell
  ent <- Sdk.output_remove_role sdk VNoval
  d <- jo
    []
  ctrl <- emptyMap
  output_remove_role <- Sdk.eCreate ent d ctrl
```


### OutputResendLink

Create an instance: `output_resend_link <- Sdk.output_resend_link sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `business_registration_number` | `String` |  |
| `consumer_uuid` | `String` |  |
| `email_confirmation_code` | `String` |  |
| `phone_number` | `String` |  |
| `response_code` | `Int` |  |
| `response_message` | `String` |  |

#### Example: Create

```haskell
  ent <- Sdk.output_resend_link sdk VNoval
  d <- jo
    [ ("consumer_uuid", VStr "example_consumer_uuid")   -- String
    ]
  ctrl <- emptyMap
  output_resend_link <- Sdk.eCreate ent d ctrl
```


### OutputResetPassword

Create an instance: `output_reset_password <- Sdk.output_reset_password sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumer_uuid` | `String` |  |
| `phone_number` | `String` |  |
| `response_code` | `Int` |  |
| `response_message` | `String` |  |

#### Example: Create

```haskell
  ent <- Sdk.output_reset_password sdk VNoval
  d <- jo
    []
  ctrl <- emptyMap
  output_reset_password <- Sdk.eCreate ent d ctrl
```


### OutputUpdateConsumer

Create an instance: `output_update_consumer <- Sdk.output_update_consumer sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `city` | `String` |  |
| `consumer_uuid` | `String` |  |
| `consumerlanguage` | `String` |  |
| `country` | `String` |  |
| `date_of_birth` | `String` |  |
| `datetime_created` | `String` |  |
| `driver_licence_number` | `String` |  |
| `email` | `String` |  |
| `first_name` | `String` |  |
| `identification_number` | `String` |  |
| `kyc_passed` | `Bool` |  |
| `last_name` | `String` |  |
| `nationality` | `String` |  |
| `passport_number` | `String` |  |
| `phone_number` | `String` |  |
| `place_of_birth` | `String` |  |
| `response_code` | `Int` |  |
| `response_message` | `String` |  |
| `state` | `String` |  |
| `street1` | `String` |  |
| `street2` | `String` |  |
| `transactionhistory_id` | `String` |  |
| `zip` | `String` |  |

#### Example: Create

```haskell
  ent <- Sdk.output_update_consumer sdk VNoval
  d <- jo
    [ ("consumer_uuid", VStr "example_consumer_uuid")   -- String
    ]
  ctrl <- emptyMap
  output_update_consumer <- Sdk.eCreate ent d ctrl
```


### OutputUpdateProfile

Create an instance: `output_update_profile <- Sdk.output_update_profile sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumer_language` | `String` |  |
| `email` | `String` |  |
| `first_name` | `String` |  |
| `last_name` | `String` |  |
| `phone_number` | `String` |  |
| `response_code` | `Int` |  |
| `response_message` | `String` |  |

#### Example: Create

```haskell
  ent <- Sdk.output_update_profile sdk VNoval
  d <- jo
    []
  ctrl <- emptyMap
  output_update_profile <- Sdk.eCreate ent d ctrl
```


### Version

Create an instance: `version <- Sdk.version sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eLoad ent match ctrl` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `app_name` | `String` |  |
| `build_date` | `String` |  |
| `version` | `String` |  |

#### Example: Load

```haskell
  ent <- Sdk.version sdk VNoval
  match <- jo []
  ctrl <- emptyMap
  version <- Sdk.eLoad ent match ctrl
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

### Data as struct Values

The Haskell SDK models every API record as the dynamic `Value` type (from
the vendored `VoxgigStruct` module) rather than bespoke Haskell records.
This mirrors the dynamic nature of the API and keeps the SDK flexible — no
new datatypes or code generation are needed when the API schema changes.

Build request maps with `jo [(key, value)]` and read fields back with
`getp value "field"`; scalars are the `VStr` / `VNum` / `VBool`
constructors, and `VNoval` stands for an absent property.

### Module structure

```
haskell/
├── src/
│   ├── VoxgigStruct.hs   -- vendored dependency-free struct library (Value)
│   ├── Vregex.hs         -- vendored regex support
│   ├── SdkTypes.hs       -- core types (Client, Entity, Feature)
│   ├── SdkHelpers.hs     -- helper functions (jo, getp, ...)
│   ├── SdkRuntime.hs     -- the generic operation pipeline
│   ├── SdkFeatures.hs    -- built-in features + makeEntity
│   ├── SdkConfig.hs      -- generated API configuration + feature factory
│   └── SdkClient.hs      -- generated public client (newSdk, entity accessors)
├── test/                 -- test suites
├── Makefile              -- stock-GHC build/test (no third-party deps)
└── bluefintecsuserbackoffice-sdk.cabal      -- package manifest (for Hackage)
```

The public module (`SdkClient`) exports the SDK constructors (`newSdk`,
`testSdk`) and one accessor per entity. Import `VoxgigStruct` for the
`Value` constructors and `SdkHelpers` for `jo` / `getp`.

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

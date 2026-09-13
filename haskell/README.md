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
  d <- jo [("responseCode", VNum 1), ("responseMessage", VStr "example_responseMessage")]
  cctrl <- emptyMap
  created <- Sdk.eCreate createEnt d cctrl
  print =<< Sdk.eDataGet created
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
| `eLoad` | `Value -> Value -> IO Entity` | Load a single entity by match criteria. Resolves to the entity. Raises on error. |
| `eCreate` | `Value -> Value -> IO Entity` | Create a new entity. Resolves to the entity. Raises on error. |
| `eDataGet` | `IO Value` | Get entity data. |
| `eDataSet` | `Value -> IO ()` | Set entity data. |
| `eStream` | `String -> Value -> Value -> IO [Value]` | Run an op as a lazy stream of items. |
| `eMake` | `IO Entity` | Create a new instance with the same options. |
| `eName` | `String` | The entity name. |

### Result shape

Entity operations resolve to the ENTITY, not the raw record — `eList` to
one entity per record — and raise on error. The record is reached through
`eDataGet`, which returns the entity's data container. `eRemove` resolves to
the entity marked deleted (`eDeleted`); it keeps the data it held. Wrap calls
in `Control.Exception.try` to handle failures.

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

Create an instance: `output_activate_digital_module <- Sdk.output_activate_digital_module sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |

#### Example: Create

```haskell
  ent <- Sdk.output_activate_digital_module sdk VNoval
  d <- jo
    []
  ctrl <- emptyMap
  output_activate_digital_module <- Sdk.eCreate ent d ctrl
  output_activate_digital_moduleData <- Sdk.eDataGet output_activate_digital_module
```


### OutputActivatePortalModule

Create an instance: `output_activate_portal_module <- Sdk.output_activate_portal_module sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clientSecret` | `String` |  |
| `notificationEmail` | `String` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |

#### Example: Create

```haskell
  ent <- Sdk.output_activate_portal_module sdk VNoval
  d <- jo
    [ ("clientSecret", VStr "example_clientSecret")   -- String
    , ("notificationEmail", VStr "example_notificationEmail")   -- String
    ]
  ctrl <- emptyMap
  output_activate_portal_module <- Sdk.eCreate ent d ctrl
  output_activate_portal_moduleData <- Sdk.eDataGet output_activate_portal_module
```


### OutputActivateStoreModule

Create an instance: `output_activate_store_module <- Sdk.output_activate_store_module sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |

#### Example: Create

```haskell
  ent <- Sdk.output_activate_store_module sdk VNoval
  d <- jo
    []
  ctrl <- emptyMap
  output_activate_store_module <- Sdk.eCreate ent d ctrl
  output_activate_store_moduleData <- Sdk.eDataGet output_activate_store_module
```


### OutputActivateUser

Create an instance: `output_activate_user <- Sdk.output_activate_user sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumerUUID` | `String` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |

#### Example: Create

```haskell
  ent <- Sdk.output_activate_user sdk VNoval
  d <- jo
    []
  ctrl <- emptyMap
  output_activate_user <- Sdk.eCreate ent d ctrl
  output_activate_userData <- Sdk.eDataGet output_activate_user
```


### OutputAssignRole

Create an instance: `output_assign_role <- Sdk.output_assign_role sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumerUUID` | `String` | Unique identifier of the consumer (user) to whom the role(s) will be assigned. |
| `responseCode` | `Int` | Response code: 0 indicates success; any non-zero value indicates an error. |
| `responseMessage` | `String` | A human-readable message providing additional details about the outcome. |
| `roles` | `[Value]` | List of roles to assign to the consumer. |

#### Example: Create

```haskell
  ent <- Sdk.output_assign_role sdk VNoval
  d <- jo
    [ ("consumerUUID", VStr "example_consumerUUID")   -- String
    , ("roles", VNoval)   -- [Value]
    ]
  ctrl <- emptyMap
  output_assign_role <- Sdk.eCreate ent d ctrl
  output_assign_roleData <- Sdk.eDataGet output_assign_role
```


### OutputChangeLogo

Create an instance: `output_change_logo <- Sdk.output_change_logo sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `contentAsBase64` | `String` | The content of the image as base64 encoded string |
| `mimeType` | `String` | The MIME type of the image |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |

#### Example: Create

```haskell
  ent <- Sdk.output_change_logo sdk VNoval
  d <- jo
    [ ("contentAsBase64", VStr "example_contentAsBase64")   -- String
    , ("mimeType", VStr "example_mimeType")   -- String
    ]
  ctrl <- emptyMap
  output_change_logo <- Sdk.eCreate ent d ctrl
  output_change_logoData <- Sdk.eDataGet output_change_logo
```


### OutputCreateMandator

Create an instance: `output_create_mandator <- Sdk.output_create_mandator sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `city` | `String` |  |
| `country` | `String` |  |
| `dateOfBirth` | `String` |  |
| `description` | `String` |  |
| `driversLicenseNumber` | `String` |  |
| `email` | `String` |  |
| `firstName` | `String` |  |
| `identificationNumber` | `String` |  |
| `lastName` | `String` |  |
| `login` | `String` |  |
| `name` | `String` |  |
| `passportNumber` | `String` |  |
| `phone` | `String` |  |
| `salutation` | `String` |  |
| `state` | `String` |  |
| `street1` | `String` |  |
| `street2` | `String` |  |
| `zipCode` | `String` |  |

#### Example: Create

```haskell
  ent <- Sdk.output_create_mandator sdk VNoval
  d <- jo
    [ ("email", VStr "example_email")   -- String
    , ("login", VStr "example_login")   -- String
    , ("phone", VStr "example_phone")   -- String
    ]
  ctrl <- emptyMap
  output_create_mandator <- Sdk.eCreate ent d ctrl
  output_create_mandatorData <- Sdk.eDataGet output_create_mandator
```


### OutputCreateServiceUser

Create an instance: `output_create_service_user <- Sdk.output_create_service_user sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `mandatorName` | `String` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |

#### Example: Create

```haskell
  ent <- Sdk.output_create_service_user sdk VNoval
  d <- jo
    [ ("mandatorName", VStr "example_mandatorName")   -- String
    ]
  ctrl <- emptyMap
  output_create_service_user <- Sdk.eCreate ent d ctrl
  output_create_service_userData <- Sdk.eDataGet output_create_service_user
```


### OutputDeactivateUser

Create an instance: `output_deactivate_user <- Sdk.output_deactivate_user sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumerUUID` | `String` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |

#### Example: Create

```haskell
  ent <- Sdk.output_deactivate_user sdk VNoval
  d <- jo
    []
  ctrl <- emptyMap
  output_deactivate_user <- Sdk.eCreate ent d ctrl
  output_deactivate_userData <- Sdk.eDataGet output_deactivate_user
```


### OutputGetKycDocument

Create an instance: `output_get_kyc_document <- Sdk.output_get_kyc_document sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `caseID` | `String` |  |
| `encodedDataBase64` | `String` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |

#### Example: Create

```haskell
  ent <- Sdk.output_get_kyc_document sdk VNoval
  d <- jo
    []
  ctrl <- emptyMap
  output_get_kyc_document <- Sdk.eCreate ent d ctrl
  output_get_kyc_documentData <- Sdk.eDataGet output_get_kyc_document
```


### OutputGetLogo

Create an instance: `output_get_logo <- Sdk.output_get_logo sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eLoad ent match ctrl` | Load a single entity by match criteria. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `contentAsBase64` | `String` | The content of the image as base64 encoded string |
| `mimeType` | `String` | The MIME type of the image |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |

#### Example: Load

```haskell
  ent <- Sdk.output_get_logo sdk VNoval
  match <- jo []
  ctrl <- emptyMap
  output_get_logo <- Sdk.eLoad ent match ctrl
  -- The op resolves to the ENTITY; the record is inside it.
  output_get_logoData <- Sdk.eDataGet output_get_logo
```


### OutputListOfAvailableRole

Create an instance: `output_list_of_available_role <- Sdk.output_list_of_available_role sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `availableRoles` | `[Value]` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |

#### Example: Create

```haskell
  ent <- Sdk.output_list_of_available_role sdk VNoval
  d <- jo
    []
  ctrl <- emptyMap
  output_list_of_available_role <- Sdk.eCreate ent d ctrl
  output_list_of_available_roleData <- Sdk.eDataGet output_list_of_available_role
```


### OutputListOfMandator

Create an instance: `output_list_of_mandator <- Sdk.output_list_of_mandator sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `filter` | `Value` |  |
| `list` | `[Value]` |  |
| `pagination` | `Value` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |
| `sorting` | `Value` |  |

#### Example: Create

```haskell
  ent <- Sdk.output_list_of_mandator sdk VNoval
  d <- jo
    []
  ctrl <- emptyMap
  output_list_of_mandator <- Sdk.eCreate ent d ctrl
  output_list_of_mandatorData <- Sdk.eDataGet output_list_of_mandator
```


### OutputListOfModule

Create an instance: `output_list_of_module <- Sdk.output_list_of_module sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `list` | `[Value]` |  |
| `pagination` | `Value` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |

#### Example: Create

```haskell
  ent <- Sdk.output_list_of_module sdk VNoval
  d <- jo
    []
  ctrl <- emptyMap
  output_list_of_module <- Sdk.eCreate ent d ctrl
  output_list_of_moduleData <- Sdk.eDataGet output_list_of_module
```


### OutputListOfRoleGroup

Create an instance: `output_list_of_role_group <- Sdk.output_list_of_role_group sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `filter` | `Value` |  |
| `groupRoles` | `[Value]` |  |
| `pagination` | `Value` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |
| `sorting` | `Value` |  |

#### Example: Create

```haskell
  ent <- Sdk.output_list_of_role_group sdk VNoval
  d <- jo
    []
  ctrl <- emptyMap
  output_list_of_role_group <- Sdk.eCreate ent d ctrl
  output_list_of_role_groupData <- Sdk.eDataGet output_list_of_role_group
```


### OutputListOfTransactionsHistory

Create an instance: `output_list_of_transactions_history <- Sdk.output_list_of_transactions_history sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `filter` | `Value` |  |
| `list` | `[Value]` |  |
| `pagination` | `Value` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |
| `sorting` | `Value` |  |

#### Example: Create

```haskell
  ent <- Sdk.output_list_of_transactions_history sdk VNoval
  d <- jo
    []
  ctrl <- emptyMap
  output_list_of_transactions_history <- Sdk.eCreate ent d ctrl
  output_list_of_transactions_historyData <- Sdk.eDataGet output_list_of_transactions_history
```


### OutputListOfUser

Create an instance: `output_list_of_user <- Sdk.output_list_of_user sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `filter` | `Value` |  |
| `list` | `[Value]` |  |
| `pagination` | `Value` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |
| `sorting` | `Value` |  |

#### Example: Create

```haskell
  ent <- Sdk.output_list_of_user sdk VNoval
  d <- jo
    []
  ctrl <- emptyMap
  output_list_of_user <- Sdk.eCreate ent d ctrl
  output_list_of_userData <- Sdk.eDataGet output_list_of_user
```


### OutputProvideCredential

Create an instance: `output_provide_credential <- Sdk.output_provide_credential sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `mandatorName` | `String` |  |
| `password` | `String` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |
| `username` | `String` |  |

#### Example: Create

```haskell
  ent <- Sdk.output_provide_credential sdk VNoval
  d <- jo
    [ ("mandatorName", VStr "example_mandatorName")   -- String
    ]
  ctrl <- emptyMap
  output_provide_credential <- Sdk.eCreate ent d ctrl
  output_provide_credentialData <- Sdk.eDataGet output_provide_credential
```


### OutputRegisterUser

Create an instance: `output_register_user <- Sdk.output_register_user sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `city` | `String` | City where the user resides. |
| `consumerId` | `String` | User login or unique user identifier. |
| `consumerLanguage` | `String` | Preferred language for the user (e.g., 'en'). |
| `country` | `String` | User's country. |
| `dateOfBirth` | `String` | User's date of birth (expected format: dd.MM.yyyy). |
| `driverLicenceNumber` | `String` | User's driver's license number. |
| `email` | `String` | User's email address (must be unique). |
| `firstName` | `String` | User's first name. |
| `identificationNumber` | `String` | User's identification number. |
| `lastName` | `String` | User's last name. |
| `login` | `String` | User login identifier (should be unique). |
| `module` | `String` | Module identifier (if applicable). |
| `passportNumber` | `String` | User's passport number. |
| `phone` | `String` | User's phone number. |
| `responseCode` | `Int` | Response code (0 indicates success; non-zero indicates an error). |
| `responseMessage` | `String` | Human-readable response message. |
| `salutation` | `String` | User's salutation (e.g., Mr., Ms.). |
| `state` | `String` | User's state or region. |
| `street1` | `String` | Primary address line. |
| `street2` | `String` | Secondary address line. |
| `zip` | `String` | Postal code. |

#### Example: Create

```haskell
  ent <- Sdk.output_register_user sdk VNoval
  d <- jo
    [ ("email", VStr "example_email")   -- String
    ]
  ctrl <- emptyMap
  output_register_user <- Sdk.eCreate ent d ctrl
  output_register_userData <- Sdk.eDataGet output_register_user
```


### OutputRemoveRole

Create an instance: `output_remove_role <- Sdk.output_remove_role sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumerUUID` | `String` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |
| `roles` | `[Value]` |  |

#### Example: Create

```haskell
  ent <- Sdk.output_remove_role sdk VNoval
  d <- jo
    []
  ctrl <- emptyMap
  output_remove_role <- Sdk.eCreate ent d ctrl
  output_remove_roleData <- Sdk.eDataGet output_remove_role
```


### OutputResendLink

Create an instance: `output_resend_link <- Sdk.output_resend_link sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `businessRegistrationNumber` | `String` |  |
| `consumerUUID` | `String` |  |
| `emailConfirmationCode` | `String` |  |
| `phoneNumber` | `String` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |

#### Example: Create

```haskell
  ent <- Sdk.output_resend_link sdk VNoval
  d <- jo
    [ ("consumerUUID", VStr "example_consumerUUID")   -- String
    ]
  ctrl <- emptyMap
  output_resend_link <- Sdk.eCreate ent d ctrl
  output_resend_linkData <- Sdk.eDataGet output_resend_link
```


### OutputResetPassword

Create an instance: `output_reset_password <- Sdk.output_reset_password sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumerUuid` | `String` |  |
| `phoneNumber` | `String` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |

#### Example: Create

```haskell
  ent <- Sdk.output_reset_password sdk VNoval
  d <- jo
    []
  ctrl <- emptyMap
  output_reset_password <- Sdk.eCreate ent d ctrl
  output_reset_passwordData <- Sdk.eDataGet output_reset_password
```


### OutputUpdateConsumer

Create an instance: `output_update_consumer <- Sdk.output_update_consumer sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `city` | `String` |  |
| `consumerUuid` | `String` |  |
| `consumerlanguage` | `String` |  |
| `country` | `String` |  |
| `dateOfBirth` | `String` |  |
| `datetime_created` | `String` |  |
| `driverLicenceNumber` | `String` |  |
| `email` | `String` |  |
| `firstName` | `String` |  |
| `identificationNumber` | `String` |  |
| `kycPassed` | `Bool` |  |
| `lastName` | `String` |  |
| `nationality` | `String` |  |
| `passportNumber` | `String` |  |
| `phoneNumber` | `String` |  |
| `placeOfBirth` | `String` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |
| `state` | `String` |  |
| `street1` | `String` |  |
| `street2` | `String` |  |
| `transactionhistory_id` | `String` |  |
| `zip` | `String` |  |

#### Example: Create

```haskell
  ent <- Sdk.output_update_consumer sdk VNoval
  d <- jo
    [ ("consumerUuid", VStr "example_consumerUuid")   -- String
    ]
  ctrl <- emptyMap
  output_update_consumer <- Sdk.eCreate ent d ctrl
  output_update_consumerData <- Sdk.eDataGet output_update_consumer
```


### OutputUpdateProfile

Create an instance: `output_update_profile <- Sdk.output_update_profile sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eCreate ent data ctrl` | Create a new entity with the given data. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumerLanguage` | `String` |  |
| `email` | `String` |  |
| `firstName` | `String` |  |
| `lastName` | `String` |  |
| `phoneNumber` | `String` |  |
| `responseCode` | `Int` |  |
| `responseMessage` | `String` |  |

#### Example: Create

```haskell
  ent <- Sdk.output_update_profile sdk VNoval
  d <- jo
    []
  ctrl <- emptyMap
  output_update_profile <- Sdk.eCreate ent d ctrl
  output_update_profileData <- Sdk.eDataGet output_update_profile
```


### Version

Create an instance: `version <- Sdk.version sdk VNoval`

#### Operations

| Method | Description |
| --- | --- |
| `eLoad ent match ctrl` | Load a single entity by match criteria. Resolves to the entity. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `appName` | `String` |  |
| `buildDate` | `String` |  |
| `version` | `String` |  |

#### Example: Load

```haskell
  ent <- Sdk.version sdk VNoval
  match <- jo []
  ctrl <- emptyMap
  version <- Sdk.eLoad ent match ctrl
  -- The op resolves to the ENTITY; the record is inside it.
  versionData <- Sdk.eDataGet version
```

## Features

This SDK ships 11 optional features. Each is **inactive until you
switch it on**, so an SDK you have not configured behaves exactly as if none of
them existed — no retries, no cache, no logging, no measurable overhead.

Activate a feature by name in the client options, alongside the options shown
above:

| Feature | What it does |
|---|---|
| [`audit`](#audit) | Structured audit trail of operations |
| [`clienttrack`](#clienttrack) | Client identity and per-request correlation headers |
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

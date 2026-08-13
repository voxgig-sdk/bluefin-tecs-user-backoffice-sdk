# BluefinTecsUserBackoffice Haskell SDK Reference

Complete API reference for the BluefinTecsUserBackoffice Haskell SDK.


## Client

### Constructors

```haskell
import qualified SdkClient as Sdk
import VoxgigStruct (Value (..))
import SdkHelpers (jo)

makeClient :: IO Sdk.Client
makeClient = do
  opts <- jo [("base", VStr "https://api.example.com")]
  Sdk.newSdk opts
```

Construct a live SDK client.

**Functions:**

| Function | Signature | Description |
| --- | --- | --- |
| `newSdk` | `Value -> IO Client` | Construct a client from an options map. |
| `newSdk0` | `IO Client` | Construct a client with defaults. |

**Options (map keys):**

| Key | Type | Description |
| --- | --- | --- |
| `apikey` | `String` | API key for authentication. |
| `base` | `String` | Base URL for API requests. |
| `prefix` | `String` | URL prefix appended after base. |
| `suffix` | `String` | URL suffix appended after path. |
| `headers` | `Value` | Custom headers for all requests. |
| `feature` | `Value` | Feature configuration. |
| `system` | `Value` | System overrides (e.g. custom fetch). |


### Test constructors

```haskell
client <- Sdk.testSdk0
```

`testSdk :: Value -> Value -> IO Client` constructs a test client with mock
features active (`testSdk0 :: IO Client` for the no-argument form). Pass
`VNoval` for defaults.


### Entity accessors

#### `output_activate_digital_module :: Client -> Value -> IO Entity`

Construct a `OutputActivateDigitalModule` entity bound to the client. Pass `VNoval` for no initial options.

#### `output_activate_portal_module :: Client -> Value -> IO Entity`

Construct a `OutputActivatePortalModule` entity bound to the client. Pass `VNoval` for no initial options.

#### `output_activate_store_module :: Client -> Value -> IO Entity`

Construct a `OutputActivateStoreModule` entity bound to the client. Pass `VNoval` for no initial options.

#### `output_activate_user :: Client -> Value -> IO Entity`

Construct a `OutputActivateUser` entity bound to the client. Pass `VNoval` for no initial options.

#### `output_assign_role :: Client -> Value -> IO Entity`

Construct a `OutputAssignRole` entity bound to the client. Pass `VNoval` for no initial options.

#### `output_change_logo :: Client -> Value -> IO Entity`

Construct a `OutputChangeLogo` entity bound to the client. Pass `VNoval` for no initial options.

#### `output_create_mandator :: Client -> Value -> IO Entity`

Construct a `OutputCreateMandator` entity bound to the client. Pass `VNoval` for no initial options.

#### `output_create_service_user :: Client -> Value -> IO Entity`

Construct a `OutputCreateServiceUser` entity bound to the client. Pass `VNoval` for no initial options.

#### `output_deactivate_user :: Client -> Value -> IO Entity`

Construct a `OutputDeactivateUser` entity bound to the client. Pass `VNoval` for no initial options.

#### `output_get_kyc_document :: Client -> Value -> IO Entity`

Construct a `OutputGetKycDocument` entity bound to the client. Pass `VNoval` for no initial options.

#### `output_get_logo :: Client -> Value -> IO Entity`

Construct a `OutputGetLogo` entity bound to the client. Pass `VNoval` for no initial options.

#### `output_list_of_available_role :: Client -> Value -> IO Entity`

Construct a `OutputListOfAvailableRole` entity bound to the client. Pass `VNoval` for no initial options.

#### `output_list_of_mandator :: Client -> Value -> IO Entity`

Construct a `OutputListOfMandator` entity bound to the client. Pass `VNoval` for no initial options.

#### `output_list_of_module :: Client -> Value -> IO Entity`

Construct a `OutputListOfModule` entity bound to the client. Pass `VNoval` for no initial options.

#### `output_list_of_role_group :: Client -> Value -> IO Entity`

Construct a `OutputListOfRoleGroup` entity bound to the client. Pass `VNoval` for no initial options.

#### `output_list_of_transactions_history :: Client -> Value -> IO Entity`

Construct a `OutputListOfTransactionsHistory` entity bound to the client. Pass `VNoval` for no initial options.

#### `output_list_of_user :: Client -> Value -> IO Entity`

Construct a `OutputListOfUser` entity bound to the client. Pass `VNoval` for no initial options.

#### `output_provide_credential :: Client -> Value -> IO Entity`

Construct a `OutputProvideCredential` entity bound to the client. Pass `VNoval` for no initial options.

#### `output_register_user :: Client -> Value -> IO Entity`

Construct a `OutputRegisterUser` entity bound to the client. Pass `VNoval` for no initial options.

#### `output_remove_role :: Client -> Value -> IO Entity`

Construct a `OutputRemoveRole` entity bound to the client. Pass `VNoval` for no initial options.

#### `output_resend_link :: Client -> Value -> IO Entity`

Construct a `OutputResendLink` entity bound to the client. Pass `VNoval` for no initial options.

#### `output_reset_password :: Client -> Value -> IO Entity`

Construct a `OutputResetPassword` entity bound to the client. Pass `VNoval` for no initial options.

#### `output_update_consumer :: Client -> Value -> IO Entity`

Construct a `OutputUpdateConsumer` entity bound to the client. Pass `VNoval` for no initial options.

#### `output_update_profile :: Client -> Value -> IO Entity`

Construct a `OutputUpdateProfile` entity bound to the client. Pass `VNoval` for no initial options.

#### `version :: Client -> Value -> IO Entity`

Construct a `Version` entity bound to the client. Pass `VNoval` for no initial options.

### HTTP escape hatches

#### `direct :: Client -> Value -> IO Value` (module `SdkFeatures`)

Make a direct HTTP request to any API endpoint. Returns a result `Value` with
`ok`, `status`, `headers`, and `data` (or `err` on failure). This escape
hatch never raises — branch on `getp result "ok"`.

**Argument (map keys):**

| Key | Type | Description |
| --- | --- | --- |
| `path` | `String` | URL path with optional `{param}` placeholders. |
| `method` | `String` | HTTP method (default: `"GET"`). |
| `params` | `Value` | Path parameter values. |
| `query` | `Value` | Query string parameters. |
| `headers` | `Value` | Request headers (merged with defaults). |
| `body` | `Value` | Request body (maps are JSON-serialized). |

#### `prepare :: Client -> Value -> IO Value` (module `SdkFeatures`)

Prepare a fetch definition without sending. Returns the `fetchdef` and raises on error.


---

## OutputActivateDigitalModule

```haskell
  ent <- Sdk.output_activate_digital_module sdk VNoval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `eCreate ent data ctrl :: IO Entity`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `eDataGet`) and raises on error.

```haskell
  ent <- Sdk.output_activate_digital_module sdk VNoval
  d <- jo
    []
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl   -- the ENTITY
  d2 <- Sdk.eDataGet result
```

### Common Fields

#### `eDataGet :: IO Value`

Get the entity data.

#### `eDataSet :: Value -> IO ()`

Set the entity data.

#### `eStream :: String -> Value -> Value -> IO [Value]`

Run an operation as a lazy stream of result items.

#### `eMake :: IO Entity`

Create a new `OutputActivateDigitalModule` entity with the same options.

#### `eName :: String`

The entity name.


---

## OutputActivatePortalModule

```haskell
  ent <- Sdk.output_activate_portal_module sdk VNoval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clientSecret` | `String` | Yes |  |
| `notificationEmail` | `String` | Yes |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `eCreate ent data ctrl :: IO Entity`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `eDataGet`) and raises on error.

```haskell
  ent <- Sdk.output_activate_portal_module sdk VNoval
  d <- jo
    [ ("clientSecret", VStr "example_clientSecret")   -- String
    , ("notificationEmail", VStr "example_notificationEmail")   -- String
    ]
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl   -- the ENTITY
  d2 <- Sdk.eDataGet result
```

### Common Fields

#### `eDataGet :: IO Value`

Get the entity data.

#### `eDataSet :: Value -> IO ()`

Set the entity data.

#### `eStream :: String -> Value -> Value -> IO [Value]`

Run an operation as a lazy stream of result items.

#### `eMake :: IO Entity`

Create a new `OutputActivatePortalModule` entity with the same options.

#### `eName :: String`

The entity name.


---

## OutputActivateStoreModule

```haskell
  ent <- Sdk.output_activate_store_module sdk VNoval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `eCreate ent data ctrl :: IO Entity`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `eDataGet`) and raises on error.

```haskell
  ent <- Sdk.output_activate_store_module sdk VNoval
  d <- jo
    []
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl   -- the ENTITY
  d2 <- Sdk.eDataGet result
```

### Common Fields

#### `eDataGet :: IO Value`

Get the entity data.

#### `eDataSet :: Value -> IO ()`

Set the entity data.

#### `eStream :: String -> Value -> Value -> IO [Value]`

Run an operation as a lazy stream of result items.

#### `eMake :: IO Entity`

Create a new `OutputActivateStoreModule` entity with the same options.

#### `eName :: String`

The entity name.


---

## OutputActivateUser

```haskell
  ent <- Sdk.output_activate_user sdk VNoval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumerUUID` | `String` | No |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `eCreate ent data ctrl :: IO Entity`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `eDataGet`) and raises on error.

```haskell
  ent <- Sdk.output_activate_user sdk VNoval
  d <- jo
    []
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl   -- the ENTITY
  d2 <- Sdk.eDataGet result
```

### Common Fields

#### `eDataGet :: IO Value`

Get the entity data.

#### `eDataSet :: Value -> IO ()`

Set the entity data.

#### `eStream :: String -> Value -> Value -> IO [Value]`

Run an operation as a lazy stream of result items.

#### `eMake :: IO Entity`

Create a new `OutputActivateUser` entity with the same options.

#### `eName :: String`

The entity name.


---

## OutputAssignRole

```haskell
  ent <- Sdk.output_assign_role sdk VNoval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumerUUID` | `String` | Yes |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |
| `roles` | `[Value]` | Yes |  |

### Operations

#### `eCreate ent data ctrl :: IO Entity`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `eDataGet`) and raises on error.

```haskell
  ent <- Sdk.output_assign_role sdk VNoval
  d <- jo
    [ ("consumerUUID", VStr "example_consumerUUID")   -- String
    , ("roles", VNoval)   -- [Value]
    ]
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl   -- the ENTITY
  d2 <- Sdk.eDataGet result
```

### Common Fields

#### `eDataGet :: IO Value`

Get the entity data.

#### `eDataSet :: Value -> IO ()`

Set the entity data.

#### `eStream :: String -> Value -> Value -> IO [Value]`

Run an operation as a lazy stream of result items.

#### `eMake :: IO Entity`

Create a new `OutputAssignRole` entity with the same options.

#### `eName :: String`

The entity name.


---

## OutputChangeLogo

```haskell
  ent <- Sdk.output_change_logo sdk VNoval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `contentAsBase64` | `String` | Yes |  |
| `mimeType` | `String` | Yes |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `eCreate ent data ctrl :: IO Entity`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `eDataGet`) and raises on error.

```haskell
  ent <- Sdk.output_change_logo sdk VNoval
  d <- jo
    [ ("contentAsBase64", VStr "example_contentAsBase64")   -- String
    , ("mimeType", VStr "example_mimeType")   -- String
    ]
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl   -- the ENTITY
  d2 <- Sdk.eDataGet result
```

### Common Fields

#### `eDataGet :: IO Value`

Get the entity data.

#### `eDataSet :: Value -> IO ()`

Set the entity data.

#### `eStream :: String -> Value -> Value -> IO [Value]`

Run an operation as a lazy stream of result items.

#### `eMake :: IO Entity`

Create a new `OutputChangeLogo` entity with the same options.

#### `eName :: String`

The entity name.


---

## OutputCreateMandator

```haskell
  ent <- Sdk.output_create_mandator sdk VNoval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `city` | `String` | No |  |
| `country` | `String` | No |  |
| `dateOfBirth` | `String` | No |  |
| `description` | `String` | No |  |
| `driversLicenseNumber` | `String` | No |  |
| `email` | `String` | Yes |  |
| `firstName` | `String` | No |  |
| `identificationNumber` | `String` | No |  |
| `lastName` | `String` | No |  |
| `login` | `String` | Yes |  |
| `name` | `String` | No |  |
| `passportNumber` | `String` | No |  |
| `phone` | `String` | Yes |  |
| `salutation` | `String` | No |  |
| `state` | `String` | No |  |
| `street1` | `String` | No |  |
| `street2` | `String` | No |  |
| `zipCode` | `String` | No |  |

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

#### `eCreate ent data ctrl :: IO Entity`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `eDataGet`) and raises on error.

```haskell
  ent <- Sdk.output_create_mandator sdk VNoval
  d <- jo
    [ ("email", VStr "example_email")   -- String
    , ("login", VStr "example_login")   -- String
    , ("phone", VStr "example_phone")   -- String
    ]
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl   -- the ENTITY
  d2 <- Sdk.eDataGet result
```

### Common Fields

#### `eDataGet :: IO Value`

Get the entity data.

#### `eDataSet :: Value -> IO ()`

Set the entity data.

#### `eStream :: String -> Value -> Value -> IO [Value]`

Run an operation as a lazy stream of result items.

#### `eMake :: IO Entity`

Create a new `OutputCreateMandator` entity with the same options.

#### `eName :: String`

The entity name.


---

## OutputCreateServiceUser

```haskell
  ent <- Sdk.output_create_service_user sdk VNoval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `mandatorName` | `String` | Yes |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `eCreate ent data ctrl :: IO Entity`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `eDataGet`) and raises on error.

```haskell
  ent <- Sdk.output_create_service_user sdk VNoval
  d <- jo
    [ ("mandatorName", VStr "example_mandatorName")   -- String
    ]
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl   -- the ENTITY
  d2 <- Sdk.eDataGet result
```

### Common Fields

#### `eDataGet :: IO Value`

Get the entity data.

#### `eDataSet :: Value -> IO ()`

Set the entity data.

#### `eStream :: String -> Value -> Value -> IO [Value]`

Run an operation as a lazy stream of result items.

#### `eMake :: IO Entity`

Create a new `OutputCreateServiceUser` entity with the same options.

#### `eName :: String`

The entity name.


---

## OutputDeactivateUser

```haskell
  ent <- Sdk.output_deactivate_user sdk VNoval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumerUUID` | `String` | No |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `eCreate ent data ctrl :: IO Entity`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `eDataGet`) and raises on error.

```haskell
  ent <- Sdk.output_deactivate_user sdk VNoval
  d <- jo
    []
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl   -- the ENTITY
  d2 <- Sdk.eDataGet result
```

### Common Fields

#### `eDataGet :: IO Value`

Get the entity data.

#### `eDataSet :: Value -> IO ()`

Set the entity data.

#### `eStream :: String -> Value -> Value -> IO [Value]`

Run an operation as a lazy stream of result items.

#### `eMake :: IO Entity`

Create a new `OutputDeactivateUser` entity with the same options.

#### `eName :: String`

The entity name.


---

## OutputGetKycDocument

```haskell
  ent <- Sdk.output_get_kyc_document sdk VNoval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `caseID` | `String` | No |  |
| `encodedDataBase64` | `String` | No |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `eCreate ent data ctrl :: IO Entity`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `eDataGet`) and raises on error.

```haskell
  ent <- Sdk.output_get_kyc_document sdk VNoval
  d <- jo
    []
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl   -- the ENTITY
  d2 <- Sdk.eDataGet result
```

### Common Fields

#### `eDataGet :: IO Value`

Get the entity data.

#### `eDataSet :: Value -> IO ()`

Set the entity data.

#### `eStream :: String -> Value -> Value -> IO [Value]`

Run an operation as a lazy stream of result items.

#### `eMake :: IO Entity`

Create a new `OutputGetKycDocument` entity with the same options.

#### `eName :: String`

The entity name.


---

## OutputGetLogo

```haskell
  ent <- Sdk.output_get_logo sdk VNoval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `contentAsBase64` | `String` | Yes |  |
| `mimeType` | `String` | Yes |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `eLoad ent match ctrl :: IO Entity`

Load a single entity matching the given criteria. Resolves to the ENTITY (read the record with `eDataGet`) and raises on error.

```haskell
  ent <- Sdk.output_get_logo sdk VNoval
  match <- jo []
  ctrl <- emptyMap
  result <- Sdk.eLoad ent match ctrl
```

### Common Fields

#### `eDataGet :: IO Value`

Get the entity data.

#### `eDataSet :: Value -> IO ()`

Set the entity data.

#### `eStream :: String -> Value -> Value -> IO [Value]`

Run an operation as a lazy stream of result items.

#### `eMake :: IO Entity`

Create a new `OutputGetLogo` entity with the same options.

#### `eName :: String`

The entity name.


---

## OutputListOfAvailableRole

```haskell
  ent <- Sdk.output_list_of_available_role sdk VNoval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `availableRoles` | `[Value]` | No |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `eCreate ent data ctrl :: IO Entity`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `eDataGet`) and raises on error.

```haskell
  ent <- Sdk.output_list_of_available_role sdk VNoval
  d <- jo
    []
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl   -- the ENTITY
  d2 <- Sdk.eDataGet result
```

### Common Fields

#### `eDataGet :: IO Value`

Get the entity data.

#### `eDataSet :: Value -> IO ()`

Set the entity data.

#### `eStream :: String -> Value -> Value -> IO [Value]`

Run an operation as a lazy stream of result items.

#### `eMake :: IO Entity`

Create a new `OutputListOfAvailableRole` entity with the same options.

#### `eName :: String`

The entity name.


---

## OutputListOfMandator

```haskell
  ent <- Sdk.output_list_of_mandator sdk VNoval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `filter` | `Value` | No |  |
| `list` | `[Value]` | No |  |
| `pagination` | `Value` | No |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |
| `sorting` | `Value` | No |  |

### Operations

#### `eCreate ent data ctrl :: IO Entity`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `eDataGet`) and raises on error.

```haskell
  ent <- Sdk.output_list_of_mandator sdk VNoval
  d <- jo
    []
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl   -- the ENTITY
  d2 <- Sdk.eDataGet result
```

### Common Fields

#### `eDataGet :: IO Value`

Get the entity data.

#### `eDataSet :: Value -> IO ()`

Set the entity data.

#### `eStream :: String -> Value -> Value -> IO [Value]`

Run an operation as a lazy stream of result items.

#### `eMake :: IO Entity`

Create a new `OutputListOfMandator` entity with the same options.

#### `eName :: String`

The entity name.


---

## OutputListOfModule

```haskell
  ent <- Sdk.output_list_of_module sdk VNoval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `list` | `[Value]` | No |  |
| `pagination` | `Value` | No |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `eCreate ent data ctrl :: IO Entity`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `eDataGet`) and raises on error.

```haskell
  ent <- Sdk.output_list_of_module sdk VNoval
  d <- jo
    []
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl   -- the ENTITY
  d2 <- Sdk.eDataGet result
```

### Common Fields

#### `eDataGet :: IO Value`

Get the entity data.

#### `eDataSet :: Value -> IO ()`

Set the entity data.

#### `eStream :: String -> Value -> Value -> IO [Value]`

Run an operation as a lazy stream of result items.

#### `eMake :: IO Entity`

Create a new `OutputListOfModule` entity with the same options.

#### `eName :: String`

The entity name.


---

## OutputListOfRoleGroup

```haskell
  ent <- Sdk.output_list_of_role_group sdk VNoval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `filter` | `Value` | No |  |
| `groupRoles` | `[Value]` | No |  |
| `pagination` | `Value` | No |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |
| `sorting` | `Value` | No |  |

### Operations

#### `eCreate ent data ctrl :: IO Entity`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `eDataGet`) and raises on error.

```haskell
  ent <- Sdk.output_list_of_role_group sdk VNoval
  d <- jo
    []
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl   -- the ENTITY
  d2 <- Sdk.eDataGet result
```

### Common Fields

#### `eDataGet :: IO Value`

Get the entity data.

#### `eDataSet :: Value -> IO ()`

Set the entity data.

#### `eStream :: String -> Value -> Value -> IO [Value]`

Run an operation as a lazy stream of result items.

#### `eMake :: IO Entity`

Create a new `OutputListOfRoleGroup` entity with the same options.

#### `eName :: String`

The entity name.


---

## OutputListOfTransactionsHistory

```haskell
  ent <- Sdk.output_list_of_transactions_history sdk VNoval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `filter` | `Value` | No |  |
| `list` | `[Value]` | No |  |
| `pagination` | `Value` | No |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |
| `sorting` | `Value` | No |  |

### Operations

#### `eCreate ent data ctrl :: IO Entity`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `eDataGet`) and raises on error.

```haskell
  ent <- Sdk.output_list_of_transactions_history sdk VNoval
  d <- jo
    []
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl   -- the ENTITY
  d2 <- Sdk.eDataGet result
```

### Common Fields

#### `eDataGet :: IO Value`

Get the entity data.

#### `eDataSet :: Value -> IO ()`

Set the entity data.

#### `eStream :: String -> Value -> Value -> IO [Value]`

Run an operation as a lazy stream of result items.

#### `eMake :: IO Entity`

Create a new `OutputListOfTransactionsHistory` entity with the same options.

#### `eName :: String`

The entity name.


---

## OutputListOfUser

```haskell
  ent <- Sdk.output_list_of_user sdk VNoval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `filter` | `Value` | No |  |
| `list` | `[Value]` | No |  |
| `pagination` | `Value` | No |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |
| `sorting` | `Value` | No |  |

### Operations

#### `eCreate ent data ctrl :: IO Entity`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `eDataGet`) and raises on error.

```haskell
  ent <- Sdk.output_list_of_user sdk VNoval
  d <- jo
    []
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl   -- the ENTITY
  d2 <- Sdk.eDataGet result
```

### Common Fields

#### `eDataGet :: IO Value`

Get the entity data.

#### `eDataSet :: Value -> IO ()`

Set the entity data.

#### `eStream :: String -> Value -> Value -> IO [Value]`

Run an operation as a lazy stream of result items.

#### `eMake :: IO Entity`

Create a new `OutputListOfUser` entity with the same options.

#### `eName :: String`

The entity name.


---

## OutputProvideCredential

```haskell
  ent <- Sdk.output_provide_credential sdk VNoval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `mandatorName` | `String` | Yes |  |
| `password` | `String` | No |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |
| `username` | `String` | No |  |

### Operations

#### `eCreate ent data ctrl :: IO Entity`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `eDataGet`) and raises on error.

```haskell
  ent <- Sdk.output_provide_credential sdk VNoval
  d <- jo
    [ ("mandatorName", VStr "example_mandatorName")   -- String
    ]
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl   -- the ENTITY
  d2 <- Sdk.eDataGet result
```

### Common Fields

#### `eDataGet :: IO Value`

Get the entity data.

#### `eDataSet :: Value -> IO ()`

Set the entity data.

#### `eStream :: String -> Value -> Value -> IO [Value]`

Run an operation as a lazy stream of result items.

#### `eMake :: IO Entity`

Create a new `OutputProvideCredential` entity with the same options.

#### `eName :: String`

The entity name.


---

## OutputRegisterUser

```haskell
  ent <- Sdk.output_register_user sdk VNoval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `city` | `String` | No |  |
| `consumerId` | `String` | No |  |
| `consumerLanguage` | `String` | No |  |
| `country` | `String` | No |  |
| `dateOfBirth` | `String` | No |  |
| `driverLicenceNumber` | `String` | No |  |
| `email` | `String` | Yes |  |
| `firstName` | `String` | No |  |
| `identificationNumber` | `String` | No |  |
| `lastName` | `String` | No |  |
| `login` | `String` | No |  |
| `module` | `String` | No |  |
| `passportNumber` | `String` | No |  |
| `phone` | `String` | No |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |
| `salutation` | `String` | No |  |
| `state` | `String` | No |  |
| `street1` | `String` | No |  |
| `street2` | `String` | No |  |
| `zip` | `String` | No |  |

### Operations

#### `eCreate ent data ctrl :: IO Entity`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `eDataGet`) and raises on error.

```haskell
  ent <- Sdk.output_register_user sdk VNoval
  d <- jo
    [ ("email", VStr "example_email")   -- String
    ]
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl   -- the ENTITY
  d2 <- Sdk.eDataGet result
```

### Common Fields

#### `eDataGet :: IO Value`

Get the entity data.

#### `eDataSet :: Value -> IO ()`

Set the entity data.

#### `eStream :: String -> Value -> Value -> IO [Value]`

Run an operation as a lazy stream of result items.

#### `eMake :: IO Entity`

Create a new `OutputRegisterUser` entity with the same options.

#### `eName :: String`

The entity name.


---

## OutputRemoveRole

```haskell
  ent <- Sdk.output_remove_role sdk VNoval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumerUUID` | `String` | No |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |
| `roles` | `[Value]` | No |  |

### Operations

#### `eCreate ent data ctrl :: IO Entity`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `eDataGet`) and raises on error.

```haskell
  ent <- Sdk.output_remove_role sdk VNoval
  d <- jo
    []
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl   -- the ENTITY
  d2 <- Sdk.eDataGet result
```

### Common Fields

#### `eDataGet :: IO Value`

Get the entity data.

#### `eDataSet :: Value -> IO ()`

Set the entity data.

#### `eStream :: String -> Value -> Value -> IO [Value]`

Run an operation as a lazy stream of result items.

#### `eMake :: IO Entity`

Create a new `OutputRemoveRole` entity with the same options.

#### `eName :: String`

The entity name.


---

## OutputResendLink

```haskell
  ent <- Sdk.output_resend_link sdk VNoval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `businessRegistrationNumber` | `String` | No |  |
| `consumerUUID` | `String` | Yes |  |
| `emailConfirmationCode` | `String` | No |  |
| `phoneNumber` | `String` | No |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `eCreate ent data ctrl :: IO Entity`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `eDataGet`) and raises on error.

```haskell
  ent <- Sdk.output_resend_link sdk VNoval
  d <- jo
    [ ("consumerUUID", VStr "example_consumerUUID")   -- String
    ]
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl   -- the ENTITY
  d2 <- Sdk.eDataGet result
```

### Common Fields

#### `eDataGet :: IO Value`

Get the entity data.

#### `eDataSet :: Value -> IO ()`

Set the entity data.

#### `eStream :: String -> Value -> Value -> IO [Value]`

Run an operation as a lazy stream of result items.

#### `eMake :: IO Entity`

Create a new `OutputResendLink` entity with the same options.

#### `eName :: String`

The entity name.


---

## OutputResetPassword

```haskell
  ent <- Sdk.output_reset_password sdk VNoval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumerUuid` | `String` | No |  |
| `phoneNumber` | `String` | No |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `eCreate ent data ctrl :: IO Entity`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `eDataGet`) and raises on error.

```haskell
  ent <- Sdk.output_reset_password sdk VNoval
  d <- jo
    []
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl   -- the ENTITY
  d2 <- Sdk.eDataGet result
```

### Common Fields

#### `eDataGet :: IO Value`

Get the entity data.

#### `eDataSet :: Value -> IO ()`

Set the entity data.

#### `eStream :: String -> Value -> Value -> IO [Value]`

Run an operation as a lazy stream of result items.

#### `eMake :: IO Entity`

Create a new `OutputResetPassword` entity with the same options.

#### `eName :: String`

The entity name.


---

## OutputUpdateConsumer

```haskell
  ent <- Sdk.output_update_consumer sdk VNoval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `city` | `String` | No |  |
| `consumerUuid` | `String` | Yes |  |
| `consumerlanguage` | `String` | No |  |
| `country` | `String` | No |  |
| `dateOfBirth` | `String` | No |  |
| `datetime_created` | `String` | No |  |
| `driverLicenceNumber` | `String` | No |  |
| `email` | `String` | No |  |
| `firstName` | `String` | No |  |
| `identificationNumber` | `String` | No |  |
| `kycPassed` | `Bool` | No |  |
| `lastName` | `String` | No |  |
| `nationality` | `String` | No |  |
| `passportNumber` | `String` | No |  |
| `phoneNumber` | `String` | No |  |
| `placeOfBirth` | `String` | No |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |
| `state` | `String` | No |  |
| `street1` | `String` | No |  |
| `street2` | `String` | No |  |
| `transactionhistory_id` | `String` | No |  |
| `zip` | `String` | No |  |

### Operations

#### `eCreate ent data ctrl :: IO Entity`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `eDataGet`) and raises on error.

```haskell
  ent <- Sdk.output_update_consumer sdk VNoval
  d <- jo
    [ ("consumerUuid", VStr "example_consumerUuid")   -- String
    ]
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl   -- the ENTITY
  d2 <- Sdk.eDataGet result
```

### Common Fields

#### `eDataGet :: IO Value`

Get the entity data.

#### `eDataSet :: Value -> IO ()`

Set the entity data.

#### `eStream :: String -> Value -> Value -> IO [Value]`

Run an operation as a lazy stream of result items.

#### `eMake :: IO Entity`

Create a new `OutputUpdateConsumer` entity with the same options.

#### `eName :: String`

The entity name.


---

## OutputUpdateProfile

```haskell
  ent <- Sdk.output_update_profile sdk VNoval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumerLanguage` | `String` | No |  |
| `email` | `String` | No |  |
| `firstName` | `String` | No |  |
| `lastName` | `String` | No |  |
| `phoneNumber` | `String` | No |  |
| `responseCode` | `Int` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `eCreate ent data ctrl :: IO Entity`

Create a new entity with the given data. Resolves to the ENTITY (read the record with `eDataGet`) and raises on error.

```haskell
  ent <- Sdk.output_update_profile sdk VNoval
  d <- jo
    []
  ctrl <- emptyMap
  result <- Sdk.eCreate ent d ctrl   -- the ENTITY
  d2 <- Sdk.eDataGet result
```

### Common Fields

#### `eDataGet :: IO Value`

Get the entity data.

#### `eDataSet :: Value -> IO ()`

Set the entity data.

#### `eStream :: String -> Value -> Value -> IO [Value]`

Run an operation as a lazy stream of result items.

#### `eMake :: IO Entity`

Create a new `OutputUpdateProfile` entity with the same options.

#### `eName :: String`

The entity name.


---

## Version

```haskell
  ent <- Sdk.version sdk VNoval
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `appName` | `String` | No |  |
| `buildDate` | `String` | No |  |
| `version` | `String` | No |  |

### Operations

#### `eLoad ent match ctrl :: IO Entity`

Load a single entity matching the given criteria. Resolves to the ENTITY (read the record with `eDataGet`) and raises on error.

```haskell
  ent <- Sdk.version sdk VNoval
  match <- jo []
  ctrl <- emptyMap
  result <- Sdk.eLoad ent match ctrl
```

### Common Fields

#### `eDataGet :: IO Value`

Get the entity data.

#### `eDataSet :: Value -> IO ()`

Set the entity data.

#### `eStream :: String -> Value -> Value -> IO [Value]`

Run an operation as a lazy stream of result items.

#### `eMake :: IO Entity`

Create a new `Version` entity with the same options.

#### `eName :: String`

The entity name.


---

## Features

| Feature | Version | Description |
| --- | --- | --- |
| `test` | 0.0.1 | In-memory mock transport for testing without a live server |


Features are activated via the `feature` option:

```haskell
  active <- jo [("active", VBool True)]
  featureCfg <- jo
    [ ("test", active)
    ]
  opts <- jo [("feature", featureCfg)]
  client <- Sdk.newSdk opts
```


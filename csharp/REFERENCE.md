# BluefinTecsUserBackoffice C# SDK Reference

Complete API reference for the BluefinTecsUserBackoffice C# SDK.


## BluefinTecsUserBackofficeSDK

### Constructor

```csharp
using BluefinTecsUserBackofficeSdk;

var client = new BluefinTecsUserBackofficeSDK(options);
```

Create a new SDK client instance. `options` is a
`Dictionary<string, object?>`.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `options` | `Dictionary` | SDK configuration options. |
| `options["apikey"]` | `string` | API key for authentication. |
| `options["base"]` | `string` | Base URL for API requests. |
| `options["prefix"]` | `string` | URL prefix appended after base. |
| `options["suffix"]` | `string` | URL suffix appended after path. |
| `options["headers"]` | `Dictionary` | Custom headers for all requests. |
| `options["feature"]` | `Dictionary` | Feature configuration. |
| `options["system"]` | `Dictionary` | System overrides (e.g. custom fetch). |


### Static Methods

#### `BluefinTecsUserBackofficeSDK.TestSDK(testopts = null, sdkopts = null)`

Create a test client with mock features active. Both arguments may be `null`.

```csharp
var client = BluefinTecsUserBackofficeSDK.TestSDK(null, null);
```


### Instance Methods

#### `OutputActivateDigitalModule(entopts = null)`

Create a new `OutputActivateDigitalModule` entity instance (returns
`BluefinTecsUserBackofficeEntityBase`). Pass `null` for no initial options.

#### `OutputActivatePortalModule(entopts = null)`

Create a new `OutputActivatePortalModule` entity instance (returns
`BluefinTecsUserBackofficeEntityBase`). Pass `null` for no initial options.

#### `OutputActivateStoreModule(entopts = null)`

Create a new `OutputActivateStoreModule` entity instance (returns
`BluefinTecsUserBackofficeEntityBase`). Pass `null` for no initial options.

#### `OutputActivateUser(entopts = null)`

Create a new `OutputActivateUser` entity instance (returns
`BluefinTecsUserBackofficeEntityBase`). Pass `null` for no initial options.

#### `OutputAssignRole(entopts = null)`

Create a new `OutputAssignRole` entity instance (returns
`BluefinTecsUserBackofficeEntityBase`). Pass `null` for no initial options.

#### `OutputChangeLogo(entopts = null)`

Create a new `OutputChangeLogo` entity instance (returns
`BluefinTecsUserBackofficeEntityBase`). Pass `null` for no initial options.

#### `OutputCreateMandator(entopts = null)`

Create a new `OutputCreateMandator` entity instance (returns
`BluefinTecsUserBackofficeEntityBase`). Pass `null` for no initial options.

#### `OutputCreateServiceUser(entopts = null)`

Create a new `OutputCreateServiceUser` entity instance (returns
`BluefinTecsUserBackofficeEntityBase`). Pass `null` for no initial options.

#### `OutputDeactivateUser(entopts = null)`

Create a new `OutputDeactivateUser` entity instance (returns
`BluefinTecsUserBackofficeEntityBase`). Pass `null` for no initial options.

#### `OutputGetKycDocument(entopts = null)`

Create a new `OutputGetKycDocument` entity instance (returns
`BluefinTecsUserBackofficeEntityBase`). Pass `null` for no initial options.

#### `OutputGetLogo(entopts = null)`

Create a new `OutputGetLogo` entity instance (returns
`BluefinTecsUserBackofficeEntityBase`). Pass `null` for no initial options.

#### `OutputListOfAvailableRole(entopts = null)`

Create a new `OutputListOfAvailableRole` entity instance (returns
`BluefinTecsUserBackofficeEntityBase`). Pass `null` for no initial options.

#### `OutputListOfMandator(entopts = null)`

Create a new `OutputListOfMandator` entity instance (returns
`BluefinTecsUserBackofficeEntityBase`). Pass `null` for no initial options.

#### `OutputListOfModule(entopts = null)`

Create a new `OutputListOfModule` entity instance (returns
`BluefinTecsUserBackofficeEntityBase`). Pass `null` for no initial options.

#### `OutputListOfRoleGroup(entopts = null)`

Create a new `OutputListOfRoleGroup` entity instance (returns
`BluefinTecsUserBackofficeEntityBase`). Pass `null` for no initial options.

#### `OutputListOfTransactionsHistory(entopts = null)`

Create a new `OutputListOfTransactionsHistory` entity instance (returns
`BluefinTecsUserBackofficeEntityBase`). Pass `null` for no initial options.

#### `OutputListOfUser(entopts = null)`

Create a new `OutputListOfUser` entity instance (returns
`BluefinTecsUserBackofficeEntityBase`). Pass `null` for no initial options.

#### `OutputProvideCredential(entopts = null)`

Create a new `OutputProvideCredential` entity instance (returns
`BluefinTecsUserBackofficeEntityBase`). Pass `null` for no initial options.

#### `OutputRegisterUser(entopts = null)`

Create a new `OutputRegisterUser` entity instance (returns
`BluefinTecsUserBackofficeEntityBase`). Pass `null` for no initial options.

#### `OutputRemoveRole(entopts = null)`

Create a new `OutputRemoveRole` entity instance (returns
`BluefinTecsUserBackofficeEntityBase`). Pass `null` for no initial options.

#### `OutputResendLink(entopts = null)`

Create a new `OutputResendLink` entity instance (returns
`BluefinTecsUserBackofficeEntityBase`). Pass `null` for no initial options.

#### `OutputResetPassword(entopts = null)`

Create a new `OutputResetPassword` entity instance (returns
`BluefinTecsUserBackofficeEntityBase`). Pass `null` for no initial options.

#### `OutputUpdateConsumer(entopts = null)`

Create a new `OutputUpdateConsumer` entity instance (returns
`BluefinTecsUserBackofficeEntityBase`). Pass `null` for no initial options.

#### `OutputUpdateProfile(entopts = null)`

Create a new `OutputUpdateProfile` entity instance (returns
`BluefinTecsUserBackofficeEntityBase`). Pass `null` for no initial options.

#### `Version(entopts = null)`

Create a new `Version` entity instance (returns
`BluefinTecsUserBackofficeEntityBase`). Pass `null` for no initial options.

#### `OptionsMap() -> Dictionary`

Return a deep copy of the current SDK options.

#### `GetUtility() -> Utility`

Return a copy of the SDK utility object.

#### `Direct(fetchargs = null) -> Dictionary`

Make a direct HTTP request to any API endpoint. Returns a result
`Dictionary<string, object?>` with `ok`, `status`, `headers`, and `data`
(or `err` on failure). This escape hatch never raises — branch on
`result["ok"]`.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `fetchargs["path"]` | `string` | URL path with optional `{param}` placeholders. |
| `fetchargs["method"]` | `string` | HTTP method (default: `"GET"`). |
| `fetchargs["params"]` | `Dictionary` | Path parameter values. |
| `fetchargs["query"]` | `Dictionary` | Query string parameters. |
| `fetchargs["headers"]` | `Dictionary` | Request headers (merged with defaults). |
| `fetchargs["body"]` | `object?` | Request body (dictionaries are JSON-serialized). |

**Returns:** `Dictionary<string, object?>`

#### `Prepare(fetchargs = null) -> Dictionary`

Prepare a fetch definition without sending. Returns the `fetchdef` and raises on error.


---

## OutputActivateDigitalModule

```csharp
var outputActivateDigitalModule = client.OutputActivateDigitalModule();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.OutputActivateDigitalModule().Create(new Dictionary<string, object?>
{
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `OutputActivateDigitalModule` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## OutputActivatePortalModule

```csharp
var outputActivatePortalModule = client.OutputActivatePortalModule();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clientSecret` | `string` | Yes |  |
| `notificationEmail` | `string` | Yes |  |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.OutputActivatePortalModule().Create(new Dictionary<string, object?>
{
    ["clientSecret"] = "example_clientSecret",  // string
    ["notificationEmail"] = "example_notificationEmail",  // string
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `OutputActivatePortalModule` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## OutputActivateStoreModule

```csharp
var outputActivateStoreModule = client.OutputActivateStoreModule();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.OutputActivateStoreModule().Create(new Dictionary<string, object?>
{
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `OutputActivateStoreModule` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## OutputActivateUser

```csharp
var outputActivateUser = client.OutputActivateUser();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumerUUID` | `string` | No |  |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.OutputActivateUser().Create(new Dictionary<string, object?>
{
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `OutputActivateUser` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## OutputAssignRole

```csharp
var outputAssignRole = client.OutputAssignRole();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumerUUID` | `string` | Yes | Unique identifier of the consumer (user) to whom the role(s) will be assigned. |
| `responseCode` | `long` | No | Response code: 0 indicates success; any non-zero value indicates an error. |
| `responseMessage` | `string` | No | A human-readable message providing additional details about the outcome. |
| `roles` | `List<object?>` | Yes | List of roles to assign to the consumer. |

### Operations

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.OutputAssignRole().Create(new Dictionary<string, object?>
{
    ["consumerUUID"] = "example_consumerUUID",  // string
    ["roles"] = new List<object?>(),  // List<object?>
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `OutputAssignRole` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## OutputChangeLogo

```csharp
var outputChangeLogo = client.OutputChangeLogo();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `contentAsBase64` | `string` | Yes | The content of the image as base64 encoded string |
| `mimeType` | `string` | Yes | The MIME type of the image |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.OutputChangeLogo().Create(new Dictionary<string, object?>
{
    ["contentAsBase64"] = "example_contentAsBase64",  // string
    ["mimeType"] = "example_mimeType",  // string
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `OutputChangeLogo` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## OutputCreateMandator

```csharp
var outputCreateMandator = client.OutputCreateMandator();
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

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.OutputCreateMandator().Create(new Dictionary<string, object?>
{
    ["email"] = "example_email",  // string
    ["login"] = "example_login",  // string
    ["phone"] = "example_phone",  // string
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `OutputCreateMandator` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## OutputCreateServiceUser

```csharp
var outputCreateServiceUser = client.OutputCreateServiceUser();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `mandatorName` | `string` | Yes |  |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.OutputCreateServiceUser().Create(new Dictionary<string, object?>
{
    ["mandatorName"] = "example_mandatorName",  // string
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `OutputCreateServiceUser` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## OutputDeactivateUser

```csharp
var outputDeactivateUser = client.OutputDeactivateUser();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumerUUID` | `string` | No |  |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.OutputDeactivateUser().Create(new Dictionary<string, object?>
{
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `OutputDeactivateUser` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## OutputGetKycDocument

```csharp
var outputGetKycDocument = client.OutputGetKycDocument();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `caseID` | `string` | No |  |
| `encodedDataBase64` | `string` | No |  |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.OutputGetKycDocument().Create(new Dictionary<string, object?>
{
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `OutputGetKycDocument` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## OutputGetLogo

```csharp
var outputGetLogo = client.OutputGetLogo();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `contentAsBase64` | `string` | Yes | The content of the image as base64 encoded string |
| `mimeType` | `string` | Yes | The MIME type of the image |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `Load(reqmatch, ctrl = null) -> object?`

Load a single entity matching the given criteria. Returns the entity data and raises on error.

```csharp
var result = client.OutputGetLogo().Load(null);
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `OutputGetLogo` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## OutputListOfAvailableRole

```csharp
var outputListOfAvailableRole = client.OutputListOfAvailableRole();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `availableRoles` | `List<object?>` | No |  |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.OutputListOfAvailableRole().Create(new Dictionary<string, object?>
{
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `OutputListOfAvailableRole` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## OutputListOfMandator

```csharp
var outputListOfMandator = client.OutputListOfMandator();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `filter` | `Dictionary<string, object?>` | No |  |
| `list` | `List<object?>` | No |  |
| `pagination` | `Dictionary<string, object?>` | No |  |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |
| `sorting` | `Dictionary<string, object?>` | No |  |

### Operations

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.OutputListOfMandator().Create(new Dictionary<string, object?>
{
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `OutputListOfMandator` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## OutputListOfModule

```csharp
var outputListOfModule = client.OutputListOfModule();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `list` | `List<object?>` | No |  |
| `pagination` | `Dictionary<string, object?>` | No |  |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.OutputListOfModule().Create(new Dictionary<string, object?>
{
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `OutputListOfModule` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## OutputListOfRoleGroup

```csharp
var outputListOfRoleGroup = client.OutputListOfRoleGroup();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `filter` | `Dictionary<string, object?>` | No |  |
| `groupRoles` | `List<object?>` | No |  |
| `pagination` | `Dictionary<string, object?>` | No |  |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |
| `sorting` | `Dictionary<string, object?>` | No |  |

### Operations

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.OutputListOfRoleGroup().Create(new Dictionary<string, object?>
{
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `OutputListOfRoleGroup` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## OutputListOfTransactionsHistory

```csharp
var outputListOfTransactionsHistory = client.OutputListOfTransactionsHistory();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `filter` | `Dictionary<string, object?>` | No |  |
| `list` | `List<object?>` | No |  |
| `pagination` | `Dictionary<string, object?>` | No |  |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |
| `sorting` | `Dictionary<string, object?>` | No |  |

### Operations

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.OutputListOfTransactionsHistory().Create(new Dictionary<string, object?>
{
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `OutputListOfTransactionsHistory` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## OutputListOfUser

```csharp
var outputListOfUser = client.OutputListOfUser();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `filter` | `Dictionary<string, object?>` | No |  |
| `list` | `List<object?>` | No |  |
| `pagination` | `Dictionary<string, object?>` | No |  |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |
| `sorting` | `Dictionary<string, object?>` | No |  |

### Operations

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.OutputListOfUser().Create(new Dictionary<string, object?>
{
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `OutputListOfUser` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## OutputProvideCredential

```csharp
var outputProvideCredential = client.OutputProvideCredential();
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

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.OutputProvideCredential().Create(new Dictionary<string, object?>
{
    ["mandatorName"] = "example_mandatorName",  // string
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `OutputProvideCredential` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## OutputRegisterUser

```csharp
var outputRegisterUser = client.OutputRegisterUser();
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

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.OutputRegisterUser().Create(new Dictionary<string, object?>
{
    ["email"] = "example_email",  // string
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `OutputRegisterUser` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## OutputRemoveRole

```csharp
var outputRemoveRole = client.OutputRemoveRole();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumerUUID` | `string` | No |  |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |
| `roles` | `List<object?>` | No |  |

### Operations

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.OutputRemoveRole().Create(new Dictionary<string, object?>
{
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `OutputRemoveRole` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## OutputResendLink

```csharp
var outputResendLink = client.OutputResendLink();
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

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.OutputResendLink().Create(new Dictionary<string, object?>
{
    ["consumerUUID"] = "example_consumerUUID",  // string
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `OutputResendLink` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## OutputResetPassword

```csharp
var outputResetPassword = client.OutputResetPassword();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumerUuid` | `string` | No |  |
| `phoneNumber` | `string` | No |  |
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.OutputResetPassword().Create(new Dictionary<string, object?>
{
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `OutputResetPassword` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## OutputUpdateConsumer

```csharp
var outputUpdateConsumer = client.OutputUpdateConsumer();
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
| `responseCode` | `long` | No |  |
| `responseMessage` | `string` | No |  |
| `state` | `string` | No |  |
| `street1` | `string` | No |  |
| `street2` | `string` | No |  |
| `transactionhistory_id` | `string` | No |  |
| `zip` | `string` | No |  |

### Operations

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.OutputUpdateConsumer().Create(new Dictionary<string, object?>
{
    ["consumerUuid"] = "example_consumerUuid",  // string
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `OutputUpdateConsumer` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## OutputUpdateProfile

```csharp
var outputUpdateProfile = client.OutputUpdateProfile();
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

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.OutputUpdateProfile().Create(new Dictionary<string, object?>
{
});
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `OutputUpdateProfile` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


---

## Version

```csharp
var version = client.Version();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `appName` | `string` | No |  |
| `buildDate` | `string` | No |  |
| `version` | `string` | No |  |

### Operations

#### `Load(reqmatch, ctrl = null) -> object?`

Load a single entity matching the given criteria. Returns the entity data and raises on error.

```csharp
var result = client.Version().Load(null);
```

### Common Methods

#### `Data(newdata = null) -> object?`

Get or set the entity data.

#### `Match(newmatch = null) -> object?`

Get or set the entity match criteria.

#### `Make() -> IEntity`

Create a new `Version` entity instance with the same options.

#### `GetName() -> string`

Return the entity name.


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

```csharp
var client = new BluefinTecsUserBackofficeSDK(new Dictionary<string, object?>
{
    ["feature"] = new Dictionary<string, object?>
    {
        ["audit"] = new Dictionary<string, object?> { ["active"] = true },
        ["clienttrack"] = new Dictionary<string, object?> { ["active"] = true },
        ["idempotency"] = new Dictionary<string, object?> { ["active"] = true },
        ["log"] = new Dictionary<string, object?> { ["active"] = true },
        ["metrics"] = new Dictionary<string, object?> { ["active"] = true },
        ["paging"] = new Dictionary<string, object?> { ["active"] = true },
        ["ratelimit"] = new Dictionary<string, object?> { ["active"] = true },
        ["retry"] = new Dictionary<string, object?> { ["active"] = true },
        ["telemetry"] = new Dictionary<string, object?> { ["active"] = true },
        ["test"] = new Dictionary<string, object?> { ["active"] = true },
        ["timeout"] = new Dictionary<string, object?> { ["active"] = true },
    },
});
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


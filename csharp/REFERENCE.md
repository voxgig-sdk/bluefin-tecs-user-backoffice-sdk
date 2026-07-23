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
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |

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
| `client_secret` | `string` | Yes |  |
| `notification_email` | `string` | Yes |  |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |

### Operations

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.OutputActivatePortalModule().Create(new Dictionary<string, object?>
{
    ["client_secret"] = "example_client_secret",  // string
    ["notification_email"] = "example_notification_email",  // string
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
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |

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
| `consumer_uuid` | `string` | No |  |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |

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
| `consumer_uuid` | `string` | Yes |  |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |
| `role` | `List<object?>` | Yes |  |

### Operations

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.OutputAssignRole().Create(new Dictionary<string, object?>
{
    ["consumer_uuid"] = "example_consumer_uuid",  // string
    ["role"] = new List<object?>(),  // List<object?>
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
| `content_as_base64` | `string` | Yes |  |
| `mime_type` | `string` | Yes |  |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |

### Operations

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.OutputChangeLogo().Create(new Dictionary<string, object?>
{
    ["content_as_base64"] = "example_content_as_base64",  // string
    ["mime_type"] = "example_mime_type",  // string
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
| `date_of_birth` | `string` | No |  |
| `description` | `string` | Yes |  |
| `drivers_license_number` | `string` | No |  |
| `email` | `string` | Yes |  |
| `first_name` | `string` | No |  |
| `identification_number` | `string` | No |  |
| `last_name` | `string` | No |  |
| `login` | `string` | Yes |  |
| `mandator` | `Dictionary<string, object?>` | No |  |
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

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.OutputCreateMandator().Create(new Dictionary<string, object?>
{
    ["description"] = "example_description",  // string
    ["email"] = "example_email",  // string
    ["login"] = "example_login",  // string
    ["name"] = "example_name",  // string
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
| `mandator_name` | `string` | Yes |  |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |

### Operations

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.OutputCreateServiceUser().Create(new Dictionary<string, object?>
{
    ["mandator_name"] = "example_mandator_name",  // string
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
| `consumer_uuid` | `string` | No |  |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |

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
| `case_id` | `string` | No |  |
| `encoded_data_base64` | `string` | No |  |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |

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
| `content_as_base64` | `string` | Yes |  |
| `mime_type` | `string` | Yes |  |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |

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
| `available_role` | `List<object?>` | No |  |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |

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
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |
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
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |

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
| `group_role` | `List<object?>` | No |  |
| `pagination` | `Dictionary<string, object?>` | No |  |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |
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
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |
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
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |
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
| `mandator_name` | `string` | Yes |  |
| `password` | `string` | No |  |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |
| `username` | `string` | No |  |

### Operations

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.OutputProvideCredential().Create(new Dictionary<string, object?>
{
    ["mandator_name"] = "example_mandator_name",  // string
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
| `consumer_uuid` | `string` | No |  |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |
| `role` | `List<object?>` | No |  |

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
| `business_registration_number` | `string` | No |  |
| `consumer_uuid` | `string` | Yes |  |
| `email_confirmation_code` | `string` | No |  |
| `phone_number` | `string` | No |  |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |

### Operations

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.OutputResendLink().Create(new Dictionary<string, object?>
{
    ["consumer_uuid"] = "example_consumer_uuid",  // string
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
| `consumer_uuid` | `string` | No |  |
| `phone_number` | `string` | No |  |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |

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
| `consumer_uuid` | `string` | Yes |  |
| `consumerlanguage` | `string` | No |  |
| `country` | `string` | No |  |
| `date_of_birth` | `string` | No |  |
| `datetime_created` | `string` | No |  |
| `driver_licence_number` | `string` | No |  |
| `email` | `string` | No |  |
| `first_name` | `string` | No |  |
| `identification_number` | `string` | No |  |
| `kyc_passed` | `bool` | No |  |
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

#### `Create(reqdata, ctrl = null) -> object?`

Create a new entity with the given data. Returns the created entity data and raises on error.

```csharp
var result = client.OutputUpdateConsumer().Create(new Dictionary<string, object?>
{
    ["consumer_uuid"] = "example_consumer_uuid",  // string
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
| `consumer_language` | `string` | No |  |
| `email` | `string` | No |  |
| `first_name` | `string` | No |  |
| `last_name` | `string` | No |  |
| `phone_number` | `string` | No |  |
| `response_code` | `long` | No |  |
| `response_message` | `string` | No |  |

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
| `app_name` | `string` | No |  |
| `build_date` | `string` | No |  |
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
| `test` | 0.0.1 | In-memory mock transport for testing without a live server |


Features are activated via the `feature` option:

```csharp
var client = new BluefinTecsUserBackofficeSDK(new Dictionary<string, object?>
{
    ["feature"] = new Dictionary<string, object?>
    {
        ["test"] = new Dictionary<string, object?> { ["active"] = true },
    },
});
```


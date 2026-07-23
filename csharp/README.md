# BluefinTecsUserBackoffice C# SDK



The C# SDK for the BluefinTecsUserBackoffice API — an entity-oriented client following idiomatic C# conventions.

The SDK exposes the API as capitalised, semantic **Entities** — for example `client.OutputActivateDigitalModule()` — each
carrying a small, uniform set of operations (`load`, `create`) instead of raw URL
paths and query strings. You work with named resources and verbs, which
keeps the cognitive load low.

> Other languages, the CLI, and MCP server live alongside this one — see
> the [top-level README](../README.md).


## Install
This package is not yet published to NuGet. Install it from the GitHub
release tag (`csharp/vX.Y.Z`, see [Releases](https://github.com/voxgig-sdk/bluefin-tecs-user-backoffice-sdk/releases)) or
from a source checkout — build the library and add a project reference:

```bash
cd csharp && dotnet build BluefinTecsUserBackofficeSDK.csproj
```


## Tutorial: your first API call

This tutorial walks through creating a client, listing entities, and
loading a specific record.

### 1. Create a client

```csharp
using BluefinTecsUserBackofficeSdk;

var client = new BluefinTecsUserBackofficeSDK(new Dictionary<string, object?>
{
    ["apikey"] = Environment.GetEnvironmentVariable("BLUEFIN_TECS_USER_BACKOFFICE_APIKEY"),
});
```

### 4. Create, update, and remove

```csharp
// Create — returns the bare created record (as object?)
var created = client.OutputActivateDigitalModule().Create(new Dictionary<string, object?> { ["response_code"] = 1L, ["response_message"] = "example_response_message" });

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

For endpoints not covered by entity methods:

```csharp
var result = client.Direct(new Dictionary<string, object?>
{
    ["path"] = "/api/resource/{id}",
    ["method"] = "GET",
    ["params"] = new Dictionary<string, object?> { ["id"] = "example" },
});

if (Equals(result["ok"], true))
{
    Console.WriteLine(result["status"]);  // 200
    Console.WriteLine(result["data"]);    // response body
}
else
{
    // A non-2xx response carries status + data (the error body); a
    // transport-level failure carries err instead. Only one is present, so
    // read both with TryGetValue rather than indexing a key that may be absent.
    result.TryGetValue("status", out var status);
    result.TryGetValue("err", out var err);
    Console.WriteLine($"{status} {err}");
}
```

### Prepare a request without sending it

```csharp
// Prepare() returns the fetch definition and raises on error.
var fetchdef = client.Prepare(new Dictionary<string, object?>
{
    ["path"] = "/api/resource/{id}",
    ["method"] = "DELETE",
    ["params"] = new Dictionary<string, object?> { ["id"] = "example" },
});

Console.WriteLine(fetchdef["url"]);
Console.WriteLine(fetchdef["method"]);
Console.WriteLine(fetchdef["headers"]);
```

### Use test mode

Create a mock client for unit testing — no server required:

```csharp
var client = BluefinTecsUserBackofficeSDK.TestSDK(null, null);

// Entity ops return the bare record and raise on error.
var outputGetLogo = client.OutputGetLogo().Load(null);
// outputGetLogo holds the mock response record
Console.WriteLine(outputGetLogo);
```

### Use a custom fetch function

Replace the HTTP transport with your own delegate:

```csharp
Func<string, Dictionary<string, object?>, Dictionary<string, object?>> mockFetch =
    (url, init) => new Dictionary<string, object?>
    {
        ["status"] = 200,
        ["statusText"] = "OK",
        ["headers"] = new Dictionary<string, object?>(),
        ["json"] = (Func<object?>)(() => new Dictionary<string, object?> { ["id"] = "mock01" }),
    };

var client = new BluefinTecsUserBackofficeSDK(new Dictionary<string, object?>
{
    ["base"] = "http://localhost:8080",
    ["system"] = new Dictionary<string, object?>
    {
        ["fetch"] = mockFetch,
    },
});
```

### Run live tests

Create a `.env.local` file at the project root:

```
BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE=TRUE
BLUEFIN_TECS_USER_BACKOFFICE_APIKEY=<your-key>
```

Then run:

```bash
cd csharp && dotnet test
```


## Reference

### BluefinTecsUserBackofficeSDK

```csharp
using BluefinTecsUserBackofficeSdk;

var client = new BluefinTecsUserBackofficeSDK(options);
```

Creates a new SDK client. `options` is a `Dictionary<string, object?>`.

| Option | Type | Description |
| --- | --- | --- |
| `apikey` | `string` | API key for authentication. |
| `base` | `string` | Base URL of the API server. |
| `prefix` | `string` | URL path prefix prepended to all requests. |
| `suffix` | `string` | URL path suffix appended to all requests. |
| `feature` | `Dictionary` | Feature activation flags. |
| `extend` | `List` | Additional Feature instances to load. |
| `system` | `Dictionary` | System overrides (e.g. custom `fetch` delegate). |

### TestSDK

```csharp
var client = BluefinTecsUserBackofficeSDK.TestSDK(testopts, sdkopts);
```

Creates a test-mode client with mock transport. Both arguments may be `null`.

### BluefinTecsUserBackofficeSDK methods

| Method | Signature | Description |
| --- | --- | --- |
| `OptionsMap` | `() -> Dictionary` | Deep copy of current SDK options. |
| `GetUtility` | `() -> Utility` | Copy of the SDK utility object. |
| `Prepare` | `(fetchargs) -> Dictionary` | Build an HTTP request definition without sending. Raises on error. |
| `Direct` | `(fetchargs) -> Dictionary` | Build and send an HTTP request. Returns a result dictionary (branch on `ok`). |
| `OutputActivateDigitalModule` | `(entopts) -> BluefinTecsUserBackofficeEntityBase` | Create an OutputActivateDigitalModule entity instance. |
| `OutputActivatePortalModule` | `(entopts) -> BluefinTecsUserBackofficeEntityBase` | Create an OutputActivatePortalModule entity instance. |
| `OutputActivateStoreModule` | `(entopts) -> BluefinTecsUserBackofficeEntityBase` | Create an OutputActivateStoreModule entity instance. |
| `OutputActivateUser` | `(entopts) -> BluefinTecsUserBackofficeEntityBase` | Create an OutputActivateUser entity instance. |
| `OutputAssignRole` | `(entopts) -> BluefinTecsUserBackofficeEntityBase` | Create an OutputAssignRole entity instance. |
| `OutputChangeLogo` | `(entopts) -> BluefinTecsUserBackofficeEntityBase` | Create an OutputChangeLogo entity instance. |
| `OutputCreateMandator` | `(entopts) -> BluefinTecsUserBackofficeEntityBase` | Create an OutputCreateMandator entity instance. |
| `OutputCreateServiceUser` | `(entopts) -> BluefinTecsUserBackofficeEntityBase` | Create an OutputCreateServiceUser entity instance. |
| `OutputDeactivateUser` | `(entopts) -> BluefinTecsUserBackofficeEntityBase` | Create an OutputDeactivateUser entity instance. |
| `OutputGetKycDocument` | `(entopts) -> BluefinTecsUserBackofficeEntityBase` | Create an OutputGetKycDocument entity instance. |
| `OutputGetLogo` | `(entopts) -> BluefinTecsUserBackofficeEntityBase` | Create an OutputGetLogo entity instance. |
| `OutputListOfAvailableRole` | `(entopts) -> BluefinTecsUserBackofficeEntityBase` | Create an OutputListOfAvailableRole entity instance. |
| `OutputListOfMandator` | `(entopts) -> BluefinTecsUserBackofficeEntityBase` | Create an OutputListOfMandator entity instance. |
| `OutputListOfModule` | `(entopts) -> BluefinTecsUserBackofficeEntityBase` | Create an OutputListOfModule entity instance. |
| `OutputListOfRoleGroup` | `(entopts) -> BluefinTecsUserBackofficeEntityBase` | Create an OutputListOfRoleGroup entity instance. |
| `OutputListOfTransactionsHistory` | `(entopts) -> BluefinTecsUserBackofficeEntityBase` | Create an OutputListOfTransactionsHistory entity instance. |
| `OutputListOfUser` | `(entopts) -> BluefinTecsUserBackofficeEntityBase` | Create an OutputListOfUser entity instance. |
| `OutputProvideCredential` | `(entopts) -> BluefinTecsUserBackofficeEntityBase` | Create an OutputProvideCredential entity instance. |
| `OutputRegisterUser` | `(entopts) -> BluefinTecsUserBackofficeEntityBase` | Create an OutputRegisterUser entity instance. |
| `OutputRemoveRole` | `(entopts) -> BluefinTecsUserBackofficeEntityBase` | Create an OutputRemoveRole entity instance. |
| `OutputResendLink` | `(entopts) -> BluefinTecsUserBackofficeEntityBase` | Create an OutputResendLink entity instance. |
| `OutputResetPassword` | `(entopts) -> BluefinTecsUserBackofficeEntityBase` | Create an OutputResetPassword entity instance. |
| `OutputUpdateConsumer` | `(entopts) -> BluefinTecsUserBackofficeEntityBase` | Create an OutputUpdateConsumer entity instance. |
| `OutputUpdateProfile` | `(entopts) -> BluefinTecsUserBackofficeEntityBase` | Create an OutputUpdateProfile entity instance. |
| `Version` | `(entopts) -> BluefinTecsUserBackofficeEntityBase` | Create a Version entity instance. |

### Entity interface

All entities share the same interface.

| Method | Signature | Description |
| --- | --- | --- |
| `Load` | `(reqmatch, ctrl) -> object?` | Load a single entity by match criteria. Raises on error. |
| `Create` | `(reqdata, ctrl) -> object?` | Create a new entity. Raises on error. |
| `Data` | `(newdata) -> object?` | Get or set entity data. |
| `Match` | `(newmatch) -> object?` | Get or set entity match criteria. |
| `Make` | `() -> IEntity` | Create a new instance with the same options. |
| `GetName` | `() -> string` | Return the entity name. |

### Result shape

Entity operations return the bare result data (a `Dictionary` for
single-entity ops, an aggregate list for `List`) as `object?` and raise on
error. Wrap calls in `try`/`catch` to handle failures.

The `Direct()` escape hatch never raises — it returns a result
`Dictionary<string, object?>` you branch on via `result["ok"]`:

| Key | Type | Description |
| --- | --- | --- |
| `ok` | `bool` | `true` if the HTTP status is 2xx. |
| `status` | `int` | HTTP status code. |
| `headers` | `Dictionary` | Response headers. |
| `data` | `object?` | Parsed JSON response body. |

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

Create an instance: `var outputActivateDigitalModule = client.OutputActivateDigitalModule();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `response_code` | `long` |  |
| `response_message` | `string` |  |

#### Example: Create

```csharp
var outputActivateDigitalModule = client.OutputActivateDigitalModule().Create(new Dictionary<string, object?>
{
});
```


### OutputActivatePortalModule

Create an instance: `var outputActivatePortalModule = client.OutputActivatePortalModule();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `client_secret` | `string` |  |
| `notification_email` | `string` |  |
| `response_code` | `long` |  |
| `response_message` | `string` |  |

#### Example: Create

```csharp
var outputActivatePortalModule = client.OutputActivatePortalModule().Create(new Dictionary<string, object?>
{
    ["client_secret"] = "example_client_secret",  // string
    ["notification_email"] = "example_notification_email",  // string
});
```


### OutputActivateStoreModule

Create an instance: `var outputActivateStoreModule = client.OutputActivateStoreModule();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `response_code` | `long` |  |
| `response_message` | `string` |  |

#### Example: Create

```csharp
var outputActivateStoreModule = client.OutputActivateStoreModule().Create(new Dictionary<string, object?>
{
});
```


### OutputActivateUser

Create an instance: `var outputActivateUser = client.OutputActivateUser();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumer_uuid` | `string` |  |
| `response_code` | `long` |  |
| `response_message` | `string` |  |

#### Example: Create

```csharp
var outputActivateUser = client.OutputActivateUser().Create(new Dictionary<string, object?>
{
});
```


### OutputAssignRole

Create an instance: `var outputAssignRole = client.OutputAssignRole();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumer_uuid` | `string` |  |
| `response_code` | `long` |  |
| `response_message` | `string` |  |
| `role` | `List<object?>` |  |

#### Example: Create

```csharp
var outputAssignRole = client.OutputAssignRole().Create(new Dictionary<string, object?>
{
    ["consumer_uuid"] = "example_consumer_uuid",  // string
    ["role"] = new List<object?>(),  // List<object?>
});
```


### OutputChangeLogo

Create an instance: `var outputChangeLogo = client.OutputChangeLogo();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `content_as_base64` | `string` |  |
| `mime_type` | `string` |  |
| `response_code` | `long` |  |
| `response_message` | `string` |  |

#### Example: Create

```csharp
var outputChangeLogo = client.OutputChangeLogo().Create(new Dictionary<string, object?>
{
    ["content_as_base64"] = "example_content_as_base64",  // string
    ["mime_type"] = "example_mime_type",  // string
});
```


### OutputCreateMandator

Create an instance: `var outputCreateMandator = client.OutputCreateMandator();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

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
| `mandator` | `Dictionary<string, object?>` |  |
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

```csharp
var outputCreateMandator = client.OutputCreateMandator().Create(new Dictionary<string, object?>
{
    ["description"] = "example_description",  // string
    ["email"] = "example_email",  // string
    ["login"] = "example_login",  // string
    ["name"] = "example_name",  // string
    ["phone"] = "example_phone",  // string
});
```


### OutputCreateServiceUser

Create an instance: `var outputCreateServiceUser = client.OutputCreateServiceUser();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `mandator_name` | `string` |  |
| `response_code` | `long` |  |
| `response_message` | `string` |  |

#### Example: Create

```csharp
var outputCreateServiceUser = client.OutputCreateServiceUser().Create(new Dictionary<string, object?>
{
    ["mandator_name"] = "example_mandator_name",  // string
});
```


### OutputDeactivateUser

Create an instance: `var outputDeactivateUser = client.OutputDeactivateUser();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumer_uuid` | `string` |  |
| `response_code` | `long` |  |
| `response_message` | `string` |  |

#### Example: Create

```csharp
var outputDeactivateUser = client.OutputDeactivateUser().Create(new Dictionary<string, object?>
{
});
```


### OutputGetKycDocument

Create an instance: `var outputGetKycDocument = client.OutputGetKycDocument();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `case_id` | `string` |  |
| `encoded_data_base64` | `string` |  |
| `response_code` | `long` |  |
| `response_message` | `string` |  |

#### Example: Create

```csharp
var outputGetKycDocument = client.OutputGetKycDocument().Create(new Dictionary<string, object?>
{
});
```


### OutputGetLogo

Create an instance: `var outputGetLogo = client.OutputGetLogo();`

#### Operations

| Method | Description |
| --- | --- |
| `Load(match)` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `content_as_base64` | `string` |  |
| `mime_type` | `string` |  |
| `response_code` | `long` |  |
| `response_message` | `string` |  |

#### Example: Load

```csharp
var outputGetLogo = client.OutputGetLogo().Load(null);
```


### OutputListOfAvailableRole

Create an instance: `var outputListOfAvailableRole = client.OutputListOfAvailableRole();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `available_role` | `List<object?>` |  |
| `response_code` | `long` |  |
| `response_message` | `string` |  |

#### Example: Create

```csharp
var outputListOfAvailableRole = client.OutputListOfAvailableRole().Create(new Dictionary<string, object?>
{
});
```


### OutputListOfMandator

Create an instance: `var outputListOfMandator = client.OutputListOfMandator();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `filter` | `Dictionary<string, object?>` |  |
| `list` | `List<object?>` |  |
| `pagination` | `Dictionary<string, object?>` |  |
| `response_code` | `long` |  |
| `response_message` | `string` |  |
| `sorting` | `Dictionary<string, object?>` |  |

#### Example: Create

```csharp
var outputListOfMandator = client.OutputListOfMandator().Create(new Dictionary<string, object?>
{
});
```


### OutputListOfModule

Create an instance: `var outputListOfModule = client.OutputListOfModule();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `list` | `List<object?>` |  |
| `pagination` | `Dictionary<string, object?>` |  |
| `response_code` | `long` |  |
| `response_message` | `string` |  |

#### Example: Create

```csharp
var outputListOfModule = client.OutputListOfModule().Create(new Dictionary<string, object?>
{
});
```


### OutputListOfRoleGroup

Create an instance: `var outputListOfRoleGroup = client.OutputListOfRoleGroup();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `filter` | `Dictionary<string, object?>` |  |
| `group_role` | `List<object?>` |  |
| `pagination` | `Dictionary<string, object?>` |  |
| `response_code` | `long` |  |
| `response_message` | `string` |  |
| `sorting` | `Dictionary<string, object?>` |  |

#### Example: Create

```csharp
var outputListOfRoleGroup = client.OutputListOfRoleGroup().Create(new Dictionary<string, object?>
{
});
```


### OutputListOfTransactionsHistory

Create an instance: `var outputListOfTransactionsHistory = client.OutputListOfTransactionsHistory();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `filter` | `Dictionary<string, object?>` |  |
| `list` | `List<object?>` |  |
| `pagination` | `Dictionary<string, object?>` |  |
| `response_code` | `long` |  |
| `response_message` | `string` |  |
| `sorting` | `Dictionary<string, object?>` |  |

#### Example: Create

```csharp
var outputListOfTransactionsHistory = client.OutputListOfTransactionsHistory().Create(new Dictionary<string, object?>
{
});
```


### OutputListOfUser

Create an instance: `var outputListOfUser = client.OutputListOfUser();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `filter` | `Dictionary<string, object?>` |  |
| `list` | `List<object?>` |  |
| `pagination` | `Dictionary<string, object?>` |  |
| `response_code` | `long` |  |
| `response_message` | `string` |  |
| `sorting` | `Dictionary<string, object?>` |  |

#### Example: Create

```csharp
var outputListOfUser = client.OutputListOfUser().Create(new Dictionary<string, object?>
{
});
```


### OutputProvideCredential

Create an instance: `var outputProvideCredential = client.OutputProvideCredential();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `mandator_name` | `string` |  |
| `password` | `string` |  |
| `response_code` | `long` |  |
| `response_message` | `string` |  |
| `username` | `string` |  |

#### Example: Create

```csharp
var outputProvideCredential = client.OutputProvideCredential().Create(new Dictionary<string, object?>
{
    ["mandator_name"] = "example_mandator_name",  // string
});
```


### OutputRegisterUser

Create an instance: `var outputRegisterUser = client.OutputRegisterUser();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

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

```csharp
var outputRegisterUser = client.OutputRegisterUser().Create(new Dictionary<string, object?>
{
    ["email"] = "example_email",  // string
});
```


### OutputRemoveRole

Create an instance: `var outputRemoveRole = client.OutputRemoveRole();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumer_uuid` | `string` |  |
| `response_code` | `long` |  |
| `response_message` | `string` |  |
| `role` | `List<object?>` |  |

#### Example: Create

```csharp
var outputRemoveRole = client.OutputRemoveRole().Create(new Dictionary<string, object?>
{
});
```


### OutputResendLink

Create an instance: `var outputResendLink = client.OutputResendLink();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

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

```csharp
var outputResendLink = client.OutputResendLink().Create(new Dictionary<string, object?>
{
    ["consumer_uuid"] = "example_consumer_uuid",  // string
});
```


### OutputResetPassword

Create an instance: `var outputResetPassword = client.OutputResetPassword();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumer_uuid` | `string` |  |
| `phone_number` | `string` |  |
| `response_code` | `long` |  |
| `response_message` | `string` |  |

#### Example: Create

```csharp
var outputResetPassword = client.OutputResetPassword().Create(new Dictionary<string, object?>
{
});
```


### OutputUpdateConsumer

Create an instance: `var outputUpdateConsumer = client.OutputUpdateConsumer();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

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
| `kyc_passed` | `bool` |  |
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

```csharp
var outputUpdateConsumer = client.OutputUpdateConsumer().Create(new Dictionary<string, object?>
{
    ["consumer_uuid"] = "example_consumer_uuid",  // string
});
```


### OutputUpdateProfile

Create an instance: `var outputUpdateProfile = client.OutputUpdateProfile();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

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

```csharp
var outputUpdateProfile = client.OutputUpdateProfile().Create(new Dictionary<string, object?>
{
});
```


### Version

Create an instance: `var version = client.Version();`

#### Operations

| Method | Description |
| --- | --- |
| `Load(match)` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `app_name` | `string` |  |
| `build_date` | `string` |  |
| `version` | `string` |  |

#### Example: Load

```csharp
var version = client.Version().Load(null);
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

### Data as dictionaries

The C# SDK uses a loose object model — `Dictionary<string, object?>`
throughout — rather than a bespoke typed class per endpoint. This mirrors
the dynamic nature of the API and keeps the SDK flexible: no regeneration is
needed when the API schema changes.

Use `Helpers.ToMapAny(value)` to safely coerce a value to a
`Dictionary<string, object?>`. A `BluefinTecsUserBackofficeTypes.cs` module of
reference `record` types is also generated for editor documentation.

### Project structure

```
csharp/
├── BluefinTecsUserBackofficeSDK.csproj    -- Library project (compiles everything except test/)
├── core/                       -- Main SDK client, config, entity base, error type
├── entity/                     -- Entity implementations
├── feature/                    -- Built-in features (Base, Test, Log, ...)
├── utility/                    -- Utility functions and the vendored struct library
└── test/                       -- xUnit test suites
```

The main client class (`BluefinTecsUserBackofficeSDK`, namespace
`BluefinTecsUserBackofficeSdk`) exposes the entity accessors. Reference entity or
utility types directly only when needed.

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

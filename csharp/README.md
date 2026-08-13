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
var created = client.OutputActivateDigitalModule().Create(new Dictionary<string, object?> { ["responseCode"] = 1L, ["responseMessage"] = "example_responseMessage" });

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
| `consumerUUID` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `roles` |  |

Operations: Create.

API path: `/assignRoles`

#### OutputChangeLogo

| Field | Description |
| --- | --- |
| `contentAsBase64` |  |
| `mimeType` |  |
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
| `contentAsBase64` |  |
| `mimeType` |  |
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
| `city` |  |
| `consumerId` |  |
| `consumerLanguage` |  |
| `country` |  |
| `dateOfBirth` |  |
| `driverLicenceNumber` |  |
| `email` |  |
| `firstName` |  |
| `identificationNumber` |  |
| `lastName` |  |
| `login` |  |
| `module` |  |
| `passportNumber` |  |
| `phone` |  |
| `responseCode` |  |
| `responseMessage` |  |
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

Create an instance: `var outputActivateDigitalModule = client.OutputActivateDigitalModule();`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `responseCode` | `long` |  |
| `responseMessage` | `string` |  |

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
| `clientSecret` | `string` |  |
| `notificationEmail` | `string` |  |
| `responseCode` | `long` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```csharp
var outputActivatePortalModule = client.OutputActivatePortalModule().Create(new Dictionary<string, object?>
{
    ["clientSecret"] = "example_clientSecret",  // string
    ["notificationEmail"] = "example_notificationEmail",  // string
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
| `responseCode` | `long` |  |
| `responseMessage` | `string` |  |

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
| `consumerUUID` | `string` |  |
| `responseCode` | `long` |  |
| `responseMessage` | `string` |  |

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
| `consumerUUID` | `string` |  |
| `responseCode` | `long` |  |
| `responseMessage` | `string` |  |
| `roles` | `List<object?>` |  |

#### Example: Create

```csharp
var outputAssignRole = client.OutputAssignRole().Create(new Dictionary<string, object?>
{
    ["consumerUUID"] = "example_consumerUUID",  // string
    ["roles"] = new List<object?>(),  // List<object?>
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
| `contentAsBase64` | `string` |  |
| `mimeType` | `string` |  |
| `responseCode` | `long` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```csharp
var outputChangeLogo = client.OutputChangeLogo().Create(new Dictionary<string, object?>
{
    ["contentAsBase64"] = "example_contentAsBase64",  // string
    ["mimeType"] = "example_mimeType",  // string
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
| `dateOfBirth` | `string` |  |
| `description` | `string` |  |
| `driversLicenseNumber` | `string` |  |
| `email` | `string` |  |
| `firstName` | `string` |  |
| `identificationNumber` | `string` |  |
| `lastName` | `string` |  |
| `login` | `string` |  |
| `name` | `string` |  |
| `passportNumber` | `string` |  |
| `phone` | `string` |  |
| `salutation` | `string` |  |
| `state` | `string` |  |
| `street1` | `string` |  |
| `street2` | `string` |  |
| `zipCode` | `string` |  |

#### Example: Create

```csharp
var outputCreateMandator = client.OutputCreateMandator().Create(new Dictionary<string, object?>
{
    ["email"] = "example_email",  // string
    ["login"] = "example_login",  // string
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
| `mandatorName` | `string` |  |
| `responseCode` | `long` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```csharp
var outputCreateServiceUser = client.OutputCreateServiceUser().Create(new Dictionary<string, object?>
{
    ["mandatorName"] = "example_mandatorName",  // string
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
| `consumerUUID` | `string` |  |
| `responseCode` | `long` |  |
| `responseMessage` | `string` |  |

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
| `caseID` | `string` |  |
| `encodedDataBase64` | `string` |  |
| `responseCode` | `long` |  |
| `responseMessage` | `string` |  |

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
| `contentAsBase64` | `string` |  |
| `mimeType` | `string` |  |
| `responseCode` | `long` |  |
| `responseMessage` | `string` |  |

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
| `availableRoles` | `List<object?>` |  |
| `responseCode` | `long` |  |
| `responseMessage` | `string` |  |

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
| `responseCode` | `long` |  |
| `responseMessage` | `string` |  |
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
| `responseCode` | `long` |  |
| `responseMessage` | `string` |  |

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
| `groupRoles` | `List<object?>` |  |
| `pagination` | `Dictionary<string, object?>` |  |
| `responseCode` | `long` |  |
| `responseMessage` | `string` |  |
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
| `responseCode` | `long` |  |
| `responseMessage` | `string` |  |
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
| `responseCode` | `long` |  |
| `responseMessage` | `string` |  |
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
| `mandatorName` | `string` |  |
| `password` | `string` |  |
| `responseCode` | `long` |  |
| `responseMessage` | `string` |  |
| `username` | `string` |  |

#### Example: Create

```csharp
var outputProvideCredential = client.OutputProvideCredential().Create(new Dictionary<string, object?>
{
    ["mandatorName"] = "example_mandatorName",  // string
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
| `consumerId` | `string` |  |
| `consumerLanguage` | `string` |  |
| `country` | `string` |  |
| `dateOfBirth` | `string` |  |
| `driverLicenceNumber` | `string` |  |
| `email` | `string` |  |
| `firstName` | `string` |  |
| `identificationNumber` | `string` |  |
| `lastName` | `string` |  |
| `login` | `string` |  |
| `module` | `string` |  |
| `passportNumber` | `string` |  |
| `phone` | `string` |  |
| `responseCode` | `long` |  |
| `responseMessage` | `string` |  |
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
| `consumerUUID` | `string` |  |
| `responseCode` | `long` |  |
| `responseMessage` | `string` |  |
| `roles` | `List<object?>` |  |

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
| `businessRegistrationNumber` | `string` |  |
| `consumerUUID` | `string` |  |
| `emailConfirmationCode` | `string` |  |
| `phoneNumber` | `string` |  |
| `responseCode` | `long` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```csharp
var outputResendLink = client.OutputResendLink().Create(new Dictionary<string, object?>
{
    ["consumerUUID"] = "example_consumerUUID",  // string
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
| `consumerUuid` | `string` |  |
| `phoneNumber` | `string` |  |
| `responseCode` | `long` |  |
| `responseMessage` | `string` |  |

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
| `consumerUuid` | `string` |  |
| `consumerlanguage` | `string` |  |
| `country` | `string` |  |
| `dateOfBirth` | `string` |  |
| `datetime_created` | `string` |  |
| `driverLicenceNumber` | `string` |  |
| `email` | `string` |  |
| `firstName` | `string` |  |
| `identificationNumber` | `string` |  |
| `kycPassed` | `bool` |  |
| `lastName` | `string` |  |
| `nationality` | `string` |  |
| `passportNumber` | `string` |  |
| `phoneNumber` | `string` |  |
| `placeOfBirth` | `string` |  |
| `responseCode` | `long` |  |
| `responseMessage` | `string` |  |
| `state` | `string` |  |
| `street1` | `string` |  |
| `street2` | `string` |  |
| `transactionhistory_id` | `string` |  |
| `zip` | `string` |  |

#### Example: Create

```csharp
var outputUpdateConsumer = client.OutputUpdateConsumer().Create(new Dictionary<string, object?>
{
    ["consumerUuid"] = "example_consumerUuid",  // string
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
| `consumerLanguage` | `string` |  |
| `email` | `string` |  |
| `firstName` | `string` |  |
| `lastName` | `string` |  |
| `phoneNumber` | `string` |  |
| `responseCode` | `long` |  |
| `responseMessage` | `string` |  |

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
| `appName` | `string` |  |
| `buildDate` | `string` |  |
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

# BluefinTecsUserBackoffice Golang SDK



The Golang SDK for the BluefinTecsUserBackoffice API — an entity-oriented client using standard Go conventions. No generics required; data flows as `map[string]any`.

It exposes the API as capitalised, semantic **Entities** — e.g. `client.OutputActivateDigitalModule(nil)` — each with the same small set of operations (`Load`, `Create`) instead of raw URL paths and query strings. You call meaning, not endpoints, which keeps the cognitive load low.

> Also generated from this model: `c`, `clojure`, `cpp`, `csharp`, `dart`, `elixir`, `go-cli`, `go-mcp`, `java`, `js`, `kotlin`, `lua`, `ocaml`, `perl`, `php`, `py`, `rb`, `rust`, `scala`, `swift`, `ts`, `zig` — see
> the [top-level README](../README.md).


## Install
```bash
go get github.com/voxgig-sdk/bluefin-tecs-user-backoffice-sdk/go@latest
```

The Go module proxy resolves the version from the `go/vX.Y.Z` GitHub
release tag — see [Releases](https://github.com/voxgig-sdk/bluefin-tecs-user-backoffice-sdk/releases) for the available versions.

To vendor from a local checkout instead, clone this repo alongside your
project and add a `replace` directive pointing at the checked-out
`go/` directory:

```bash
go mod edit -replace github.com/voxgig-sdk/bluefin-tecs-user-backoffice-sdk/go=../bluefin-tecs-user-backoffice-sdk/go
```


## Tutorial: your first API call

This tutorial walks through creating a client, listing entities, and
loading a specific record.

### Quickstart

A complete program: create a client, then call the entity operations.
Each operation returns `(value, error)` — the value is the data itself
(there is no `{ok, data}` wrapper), so check `err` and use the value
directly.

```go
package main

import (
    "fmt"
    "os"
    sdk "github.com/voxgig-sdk/bluefin-tecs-user-backoffice-sdk/go"
)

func main() {
    client := sdk.NewBluefinTecsUserBackofficeSDK(map[string]any{
        "apikey": os.Getenv("BLUEFIN_TECS_USER_BACKOFFICE_APIKEY"),
    })

    // Create a outputActivateDigitalModule.
    created, err := client.OutputActivateDigitalModule(nil).Create(map[string]any{"responseCode": 1, "responseMessage": "example_responseMessage"}, nil)
    if err != nil {
        panic(err)
    }
    fmt.Println(created)
}
```


## Error handling

Every entity operation returns `(value, error)`. Check `err` before
using the value — there is no exception to catch:

```go
outputgetlogo, err := client.OutputGetLogo(nil).Load(nil, nil)
if err != nil {
    // handle err
    return
}
_ = outputgetlogo
```

`Direct` follows the same `(value, error)` convention:

```go
result, err := client.Direct(map[string]any{
    "path":   "/api/resource/{id}",
    "method": "GET",
    "params": map[string]any{"id": "example_id"},
})
if err != nil {
    // handle err
}
_ = result
```


## How-to guides

### Make a direct HTTP request

For endpoints not covered by entity methods:

```go
result, err := client.Direct(map[string]any{
    "path":   "/api/resource/{id}",
    "method": "GET",
    "params": map[string]any{"id": "example"},
})
if err != nil {
    panic(err)
}

if result["ok"] == true {
    fmt.Println(result["status"]) // 200
    fmt.Println(result["data"])   // response body
}
```

### Prepare a request without sending it

```go
fetchdef, err := client.Prepare(map[string]any{
    "path":   "/api/resource/{id}",
    "method": "DELETE",
    "params": map[string]any{"id": "example"},
})
if err != nil {
    panic(err)
}

fmt.Println(fetchdef["url"])
fmt.Println(fetchdef["method"])
fmt.Println(fetchdef["headers"])
```

### Use test mode

Create a mock client for unit testing — no server required:

```go
client := sdk.Test()

outputGetLogo, err := client.OutputGetLogo(nil).Load(
    nil, nil,
)
if err != nil {
    panic(err)
}
fmt.Println(outputGetLogo) // the returned mock data
```

### Use a custom fetch function

Replace the HTTP transport with your own function:

```go
mockFetch := func(url string, init map[string]any) (map[string]any, error) {
    return map[string]any{
        "status":     200,
        "statusText": "OK",
        "headers":    map[string]any{},
        "json": (func() any)(func() any {
            return map[string]any{"id": "mock01"}
        }),
    }, nil
}

client := sdk.NewBluefinTecsUserBackofficeSDK(map[string]any{
    "base": "http://localhost:8080",
    "system": map[string]any{
        "fetch": (func(string, map[string]any) (map[string]any, error))(mockFetch),
    },
})
```

### Run live tests

Create a `.env.local` file at the project root:

```
BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE=TRUE
BLUEFIN_TECS_USER_BACKOFFICE_APIKEY=<your-key>
```

Then run:

```bash
cd go && go test ./test/...
```


## Reference

### NewBluefinTecsUserBackofficeSDK

```go
func NewBluefinTecsUserBackofficeSDK(options map[string]any) *BluefinTecsUserBackofficeSDK
```

Creates a new SDK client.

| Option | Type | Description |
| --- | --- | --- |
| `"apikey"` | `string` | API key for authentication. |
| `"base"` | `string` | Base URL of the API server. |
| `"prefix"` | `string` | URL path prefix prepended to all requests. |
| `"suffix"` | `string` | URL path suffix appended to all requests. |
| `"feature"` | `map[string]any` | Feature activation flags. |
| `"extend"` | `[]any` | Additional Feature instances to load. |
| `"system"` | `map[string]any` | System overrides (e.g. custom `"fetch"` function). |

### TestSDK

```go
func TestSDK(testopts map[string]any, sdkopts map[string]any) *BluefinTecsUserBackofficeSDK
```

Creates a test-mode client with mock transport. Both arguments may be `nil`.

### BluefinTecsUserBackofficeSDK methods

| Method | Signature | Description |
| --- | --- | --- |
| `OptionsMap` | `() map[string]any` | Deep copy of current SDK options. |
| `GetUtility` | `() *Utility` | Copy of the SDK utility object. |
| `Prepare` | `(fetchargs map[string]any) (map[string]any, error)` | Build an HTTP request definition without sending. |
| `Direct` | `(fetchargs map[string]any) (map[string]any, error)` | Build and send an HTTP request. |
| `OutputActivateDigitalModule` | `(data map[string]any) BluefinTecsUserBackofficeEntity` | Create an OutputActivateDigitalModule entity instance. |
| `OutputActivatePortalModule` | `(data map[string]any) BluefinTecsUserBackofficeEntity` | Create an OutputActivatePortalModule entity instance. |
| `OutputActivateStoreModule` | `(data map[string]any) BluefinTecsUserBackofficeEntity` | Create an OutputActivateStoreModule entity instance. |
| `OutputActivateUser` | `(data map[string]any) BluefinTecsUserBackofficeEntity` | Create an OutputActivateUser entity instance. |
| `OutputAssignRole` | `(data map[string]any) BluefinTecsUserBackofficeEntity` | Create an OutputAssignRole entity instance. |
| `OutputChangeLogo` | `(data map[string]any) BluefinTecsUserBackofficeEntity` | Create an OutputChangeLogo entity instance. |
| `OutputCreateMandator` | `(data map[string]any) BluefinTecsUserBackofficeEntity` | Create an OutputCreateMandator entity instance. |
| `OutputCreateServiceUser` | `(data map[string]any) BluefinTecsUserBackofficeEntity` | Create an OutputCreateServiceUser entity instance. |
| `OutputDeactivateUser` | `(data map[string]any) BluefinTecsUserBackofficeEntity` | Create an OutputDeactivateUser entity instance. |
| `OutputGetKycDocument` | `(data map[string]any) BluefinTecsUserBackofficeEntity` | Create an OutputGetKycDocument entity instance. |
| `OutputGetLogo` | `(data map[string]any) BluefinTecsUserBackofficeEntity` | Create an OutputGetLogo entity instance. |
| `OutputListOfAvailableRole` | `(data map[string]any) BluefinTecsUserBackofficeEntity` | Create an OutputListOfAvailableRole entity instance. |
| `OutputListOfMandator` | `(data map[string]any) BluefinTecsUserBackofficeEntity` | Create an OutputListOfMandator entity instance. |
| `OutputListOfModule` | `(data map[string]any) BluefinTecsUserBackofficeEntity` | Create an OutputListOfModule entity instance. |
| `OutputListOfRoleGroup` | `(data map[string]any) BluefinTecsUserBackofficeEntity` | Create an OutputListOfRoleGroup entity instance. |
| `OutputListOfTransactionsHistory` | `(data map[string]any) BluefinTecsUserBackofficeEntity` | Create an OutputListOfTransactionsHistory entity instance. |
| `OutputListOfUser` | `(data map[string]any) BluefinTecsUserBackofficeEntity` | Create an OutputListOfUser entity instance. |
| `OutputProvideCredential` | `(data map[string]any) BluefinTecsUserBackofficeEntity` | Create an OutputProvideCredential entity instance. |
| `OutputRegisterUser` | `(data map[string]any) BluefinTecsUserBackofficeEntity` | Create an OutputRegisterUser entity instance. |
| `OutputRemoveRole` | `(data map[string]any) BluefinTecsUserBackofficeEntity` | Create an OutputRemoveRole entity instance. |
| `OutputResendLink` | `(data map[string]any) BluefinTecsUserBackofficeEntity` | Create an OutputResendLink entity instance. |
| `OutputResetPassword` | `(data map[string]any) BluefinTecsUserBackofficeEntity` | Create an OutputResetPassword entity instance. |
| `OutputUpdateConsumer` | `(data map[string]any) BluefinTecsUserBackofficeEntity` | Create an OutputUpdateConsumer entity instance. |
| `OutputUpdateProfile` | `(data map[string]any) BluefinTecsUserBackofficeEntity` | Create an OutputUpdateProfile entity instance. |
| `Version` | `(data map[string]any) BluefinTecsUserBackofficeEntity` | Create a Version entity instance. |

### Entity interface (BluefinTecsUserBackofficeEntity)

All entities implement the `BluefinTecsUserBackofficeEntity` interface.

| Method | Signature | Description |
| --- | --- | --- |
| `Load` | `(reqmatch, ctrl map[string]any) (any, error)` | Load a single entity by match criteria. |
| `Create` | `(reqdata, ctrl map[string]any) (any, error)` | Create a new entity. |
| `Data` | `(args ...any) any` | Get or set entity data. |
| `Match` | `(args ...any) any` | Get or set entity match criteria. |
| `Make` | `() Entity` | Create a new instance with the same options. |
| `GetName` | `() string` | Return the entity name. |

### Result shape

Entity operations return `(value, error)`. The `value` is the
operation's data **directly** — there is no wrapper:

| Operation | `value` |
| --- | --- |
| `Load` / `Create` | the entity record (`map[string]any`) |

Check `err` first, then use the value directly (or the typed
`...Typed` variants, which return the entity's model struct and a typed
slice):

    outputActivateDigitalModule, err := client.OutputActivateDigitalModule(nil).Create(map[string]any{/* fields */}, nil)
    if err != nil { /* handle */ }
    // outputActivateDigitalModule is the returned record

Only `Direct()` returns a response envelope — a `map[string]any` with
`"ok"`, `"status"`, `"headers"`, and `"data"` keys.

### Entities

#### OutputActivateDigitalModule

| Field | Description |
| --- | --- |
| `"responseCode"` |  |
| `"responseMessage"` |  |

Operations: Create.

API path: `/activateDigitalModule`

#### OutputActivatePortalModule

| Field | Description |
| --- | --- |
| `"clientSecret"` |  |
| `"notificationEmail"` |  |
| `"responseCode"` |  |
| `"responseMessage"` |  |

Operations: Create.

API path: `/activateMerchantPortalModule`

#### OutputActivateStoreModule

| Field | Description |
| --- | --- |
| `"responseCode"` |  |
| `"responseMessage"` |  |

Operations: Create.

API path: `/activateAppStoreModule`

#### OutputActivateUser

| Field | Description |
| --- | --- |
| `"consumerUUID"` |  |
| `"responseCode"` |  |
| `"responseMessage"` |  |

Operations: Create.

API path: `/activateUser`

#### OutputAssignRole

| Field | Description |
| --- | --- |
| `"consumerUUID"` | Unique identifier of the consumer (user) to whom the role(s) will be assigned. |
| `"responseCode"` | Response code: 0 indicates success; any non-zero value indicates an error. |
| `"responseMessage"` | A human-readable message providing additional details about the outcome. |
| `"roles"` | List of roles to assign to the consumer. |

Operations: Create.

API path: `/assignRoles`

#### OutputChangeLogo

| Field | Description |
| --- | --- |
| `"contentAsBase64"` | The content of the image as base64 encoded string |
| `"mimeType"` | The MIME type of the image |
| `"responseCode"` |  |
| `"responseMessage"` |  |

Operations: Create.

API path: `/changeLogo`

#### OutputCreateMandator

| Field | Description |
| --- | --- |
| `"city"` |  |
| `"country"` |  |
| `"dateOfBirth"` |  |
| `"description"` |  |
| `"driversLicenseNumber"` |  |
| `"email"` |  |
| `"firstName"` |  |
| `"identificationNumber"` |  |
| `"lastName"` |  |
| `"login"` |  |
| `"name"` |  |
| `"passportNumber"` |  |
| `"phone"` |  |
| `"salutation"` |  |
| `"state"` |  |
| `"street1"` |  |
| `"street2"` |  |
| `"zipCode"` |  |

Operations: Create.

API path: `/createMandator`

#### OutputCreateServiceUser

| Field | Description |
| --- | --- |
| `"mandatorName"` |  |
| `"responseCode"` |  |
| `"responseMessage"` |  |

Operations: Create.

API path: `/createServiceUser`

#### OutputDeactivateUser

| Field | Description |
| --- | --- |
| `"consumerUUID"` |  |
| `"responseCode"` |  |
| `"responseMessage"` |  |

Operations: Create.

API path: `/deactivateUser`

#### OutputGetKycDocument

| Field | Description |
| --- | --- |
| `"caseID"` |  |
| `"encodedDataBase64"` |  |
| `"responseCode"` |  |
| `"responseMessage"` |  |

Operations: Create.

API path: `/getKycDocument`

#### OutputGetLogo

| Field | Description |
| --- | --- |
| `"contentAsBase64"` | The content of the image as base64 encoded string |
| `"mimeType"` | The MIME type of the image |
| `"responseCode"` |  |
| `"responseMessage"` |  |

Operations: Load.

API path: `/getLogo`

#### OutputListOfAvailableRole

| Field | Description |
| --- | --- |
| `"availableRoles"` |  |
| `"responseCode"` |  |
| `"responseMessage"` |  |

Operations: Create.

API path: `/listOfAvailableRoles`

#### OutputListOfMandator

| Field | Description |
| --- | --- |
| `"filter"` |  |
| `"list"` |  |
| `"pagination"` |  |
| `"responseCode"` |  |
| `"responseMessage"` |  |
| `"sorting"` |  |

Operations: Create.

API path: `/listOfMandators`

#### OutputListOfModule

| Field | Description |
| --- | --- |
| `"list"` |  |
| `"pagination"` |  |
| `"responseCode"` |  |
| `"responseMessage"` |  |

Operations: Create.

API path: `/listOfModules`

#### OutputListOfRoleGroup

| Field | Description |
| --- | --- |
| `"filter"` |  |
| `"groupRoles"` |  |
| `"pagination"` |  |
| `"responseCode"` |  |
| `"responseMessage"` |  |
| `"sorting"` |  |

Operations: Create.

API path: `/listOfRoleGroups`

#### OutputListOfTransactionsHistory

| Field | Description |
| --- | --- |
| `"filter"` |  |
| `"list"` |  |
| `"pagination"` |  |
| `"responseCode"` |  |
| `"responseMessage"` |  |
| `"sorting"` |  |

Operations: Create.

API path: `/listOfTransactionsHistory`

#### OutputListOfUser

| Field | Description |
| --- | --- |
| `"filter"` |  |
| `"list"` |  |
| `"pagination"` |  |
| `"responseCode"` |  |
| `"responseMessage"` |  |
| `"sorting"` |  |

Operations: Create.

API path: `/listOfUsers`

#### OutputProvideCredential

| Field | Description |
| --- | --- |
| `"mandatorName"` |  |
| `"password"` |  |
| `"responseCode"` |  |
| `"responseMessage"` |  |
| `"username"` |  |

Operations: Create.

API path: `/provideCredentials`

#### OutputRegisterUser

| Field | Description |
| --- | --- |
| `"city"` | City where the user resides. |
| `"consumerId"` | User login or unique user identifier. |
| `"consumerLanguage"` | Preferred language for the user (e.g., 'en'). |
| `"country"` | User's country. |
| `"dateOfBirth"` | User's date of birth (expected format: dd.MM.yyyy). |
| `"driverLicenceNumber"` | User's driver's license number. |
| `"email"` | User's email address (must be unique). |
| `"firstName"` | User's first name. |
| `"identificationNumber"` | User's identification number. |
| `"lastName"` | User's last name. |
| `"login"` | User login identifier (should be unique). |
| `"module"` | Module identifier (if applicable). |
| `"passportNumber"` | User's passport number. |
| `"phone"` | User's phone number. |
| `"responseCode"` | Response code (0 indicates success; non-zero indicates an error). |
| `"responseMessage"` | Human-readable response message. |
| `"salutation"` | User's salutation (e.g., Mr., Ms.). |
| `"state"` | User's state or region. |
| `"street1"` | Primary address line. |
| `"street2"` | Secondary address line. |
| `"zip"` | Postal code. |

Operations: Create.

API path: `/registerUser`

#### OutputRemoveRole

| Field | Description |
| --- | --- |
| `"consumerUUID"` |  |
| `"responseCode"` |  |
| `"responseMessage"` |  |
| `"roles"` |  |

Operations: Create.

API path: `/removeRoles`

#### OutputResendLink

| Field | Description |
| --- | --- |
| `"businessRegistrationNumber"` |  |
| `"consumerUUID"` |  |
| `"emailConfirmationCode"` |  |
| `"phoneNumber"` |  |
| `"responseCode"` |  |
| `"responseMessage"` |  |

Operations: Create.

API path: `/resendLink`

#### OutputResetPassword

| Field | Description |
| --- | --- |
| `"consumerUuid"` |  |
| `"phoneNumber"` |  |
| `"responseCode"` |  |
| `"responseMessage"` |  |

Operations: Create.

API path: `/resetPassword`

#### OutputUpdateConsumer

| Field | Description |
| --- | --- |
| `"city"` |  |
| `"consumerUuid"` |  |
| `"consumerlanguage"` |  |
| `"country"` |  |
| `"dateOfBirth"` |  |
| `"datetime_created"` |  |
| `"driverLicenceNumber"` |  |
| `"email"` |  |
| `"firstName"` |  |
| `"identificationNumber"` |  |
| `"kycPassed"` |  |
| `"lastName"` |  |
| `"nationality"` |  |
| `"passportNumber"` |  |
| `"phoneNumber"` |  |
| `"placeOfBirth"` |  |
| `"responseCode"` |  |
| `"responseMessage"` |  |
| `"state"` |  |
| `"street1"` |  |
| `"street2"` |  |
| `"transactionhistory_id"` |  |
| `"zip"` |  |

Operations: Create.

API path: `/updateConsumer`

#### OutputUpdateProfile

| Field | Description |
| --- | --- |
| `"consumerLanguage"` |  |
| `"email"` |  |
| `"firstName"` |  |
| `"lastName"` |  |
| `"phoneNumber"` |  |
| `"responseCode"` |  |
| `"responseMessage"` |  |

Operations: Create.

API path: `/updateProfile`

#### Version

| Field | Description |
| --- | --- |
| `"appName"` |  |
| `"buildDate"` |  |
| `"version"` |  |

Operations: Load.

API path: `/version`



## Entities


### OutputActivateDigitalModule

Create an instance: `outputActivateDigitalModule := client.OutputActivateDigitalModule(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```go
result, err := client.OutputActivateDigitalModule(nil).Create(map[string]any{
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```


### OutputActivatePortalModule

Create an instance: `outputActivatePortalModule := client.OutputActivatePortalModule(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clientSecret` | `string` |  |
| `notificationEmail` | `string` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```go
result, err := client.OutputActivatePortalModule(nil).Create(map[string]any{
    "clientSecret": "example_clientSecret",
    "notificationEmail": "example_notificationEmail",
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```


### OutputActivateStoreModule

Create an instance: `outputActivateStoreModule := client.OutputActivateStoreModule(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```go
result, err := client.OutputActivateStoreModule(nil).Create(map[string]any{
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```


### OutputActivateUser

Create an instance: `outputActivateUser := client.OutputActivateUser(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumerUUID` | `string` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```go
result, err := client.OutputActivateUser(nil).Create(map[string]any{
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```


### OutputAssignRole

Create an instance: `outputAssignRole := client.OutputAssignRole(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumerUUID` | `string` | Unique identifier of the consumer (user) to whom the role(s) will be assigned. |
| `responseCode` | `int` | Response code: 0 indicates success; any non-zero value indicates an error. |
| `responseMessage` | `string` | A human-readable message providing additional details about the outcome. |
| `roles` | `[]any` | List of roles to assign to the consumer. |

#### Example: Create

```go
result, err := client.OutputAssignRole(nil).Create(map[string]any{
    "consumerUUID": "example_consumerUUID",
    "roles": []any{},
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```


### OutputChangeLogo

Create an instance: `outputChangeLogo := client.OutputChangeLogo(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `contentAsBase64` | `string` | The content of the image as base64 encoded string |
| `mimeType` | `string` | The MIME type of the image |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```go
result, err := client.OutputChangeLogo(nil).Create(map[string]any{
    "contentAsBase64": "example_contentAsBase64",
    "mimeType": "example_mimeType",
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```


### OutputCreateMandator

Create an instance: `outputCreateMandator := client.OutputCreateMandator(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data, ctrl)` | Create a new entity with the given data. |

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

```go
result, err := client.OutputCreateMandator(nil).Create(map[string]any{
    "email": "example_email",
    "login": "example_login",
    "phone": "example_phone",
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```


### OutputCreateServiceUser

Create an instance: `outputCreateServiceUser := client.OutputCreateServiceUser(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `mandatorName` | `string` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```go
result, err := client.OutputCreateServiceUser(nil).Create(map[string]any{
    "mandatorName": "example_mandatorName",
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```


### OutputDeactivateUser

Create an instance: `outputDeactivateUser := client.OutputDeactivateUser(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumerUUID` | `string` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```go
result, err := client.OutputDeactivateUser(nil).Create(map[string]any{
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```


### OutputGetKycDocument

Create an instance: `outputGetKycDocument := client.OutputGetKycDocument(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `caseID` | `string` |  |
| `encodedDataBase64` | `string` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```go
result, err := client.OutputGetKycDocument(nil).Create(map[string]any{
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```


### OutputGetLogo

Create an instance: `outputGetLogo := client.OutputGetLogo(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `Load(match, ctrl)` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `contentAsBase64` | `string` | The content of the image as base64 encoded string |
| `mimeType` | `string` | The MIME type of the image |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |

#### Example: Load

```go
outputGetLogo, err := client.OutputGetLogo(nil).Load(nil, nil)
if err != nil {
    panic(err)
}
fmt.Println(outputGetLogo) // the loaded record
```


### OutputListOfAvailableRole

Create an instance: `outputListOfAvailableRole := client.OutputListOfAvailableRole(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `availableRoles` | `[]any` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```go
result, err := client.OutputListOfAvailableRole(nil).Create(map[string]any{
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```


### OutputListOfMandator

Create an instance: `outputListOfMandator := client.OutputListOfMandator(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `filter` | `map[string]any` |  |
| `list` | `[]any` |  |
| `pagination` | `map[string]any` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |
| `sorting` | `map[string]any` |  |

#### Example: Create

```go
result, err := client.OutputListOfMandator(nil).Create(map[string]any{
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```


### OutputListOfModule

Create an instance: `outputListOfModule := client.OutputListOfModule(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `list` | `[]any` |  |
| `pagination` | `map[string]any` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```go
result, err := client.OutputListOfModule(nil).Create(map[string]any{
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```


### OutputListOfRoleGroup

Create an instance: `outputListOfRoleGroup := client.OutputListOfRoleGroup(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `filter` | `map[string]any` |  |
| `groupRoles` | `[]any` |  |
| `pagination` | `map[string]any` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |
| `sorting` | `map[string]any` |  |

#### Example: Create

```go
result, err := client.OutputListOfRoleGroup(nil).Create(map[string]any{
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```


### OutputListOfTransactionsHistory

Create an instance: `outputListOfTransactionsHistory := client.OutputListOfTransactionsHistory(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `filter` | `map[string]any` |  |
| `list` | `[]any` |  |
| `pagination` | `map[string]any` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |
| `sorting` | `map[string]any` |  |

#### Example: Create

```go
result, err := client.OutputListOfTransactionsHistory(nil).Create(map[string]any{
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```


### OutputListOfUser

Create an instance: `outputListOfUser := client.OutputListOfUser(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `filter` | `map[string]any` |  |
| `list` | `[]any` |  |
| `pagination` | `map[string]any` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |
| `sorting` | `map[string]any` |  |

#### Example: Create

```go
result, err := client.OutputListOfUser(nil).Create(map[string]any{
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```


### OutputProvideCredential

Create an instance: `outputProvideCredential := client.OutputProvideCredential(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `mandatorName` | `string` |  |
| `password` | `string` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |
| `username` | `string` |  |

#### Example: Create

```go
result, err := client.OutputProvideCredential(nil).Create(map[string]any{
    "mandatorName": "example_mandatorName",
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```


### OutputRegisterUser

Create an instance: `outputRegisterUser := client.OutputRegisterUser(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `city` | `string` | City where the user resides. |
| `consumerId` | `string` | User login or unique user identifier. |
| `consumerLanguage` | `string` | Preferred language for the user (e.g., 'en'). |
| `country` | `string` | User's country. |
| `dateOfBirth` | `string` | User's date of birth (expected format: dd.MM.yyyy). |
| `driverLicenceNumber` | `string` | User's driver's license number. |
| `email` | `string` | User's email address (must be unique). |
| `firstName` | `string` | User's first name. |
| `identificationNumber` | `string` | User's identification number. |
| `lastName` | `string` | User's last name. |
| `login` | `string` | User login identifier (should be unique). |
| `module` | `string` | Module identifier (if applicable). |
| `passportNumber` | `string` | User's passport number. |
| `phone` | `string` | User's phone number. |
| `responseCode` | `int` | Response code (0 indicates success; non-zero indicates an error). |
| `responseMessage` | `string` | Human-readable response message. |
| `salutation` | `string` | User's salutation (e.g., Mr., Ms.). |
| `state` | `string` | User's state or region. |
| `street1` | `string` | Primary address line. |
| `street2` | `string` | Secondary address line. |
| `zip` | `string` | Postal code. |

#### Example: Create

```go
result, err := client.OutputRegisterUser(nil).Create(map[string]any{
    "email": "example_email",
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```


### OutputRemoveRole

Create an instance: `outputRemoveRole := client.OutputRemoveRole(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumerUUID` | `string` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |
| `roles` | `[]any` |  |

#### Example: Create

```go
result, err := client.OutputRemoveRole(nil).Create(map[string]any{
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```


### OutputResendLink

Create an instance: `outputResendLink := client.OutputResendLink(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `businessRegistrationNumber` | `string` |  |
| `consumerUUID` | `string` |  |
| `emailConfirmationCode` | `string` |  |
| `phoneNumber` | `string` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```go
result, err := client.OutputResendLink(nil).Create(map[string]any{
    "consumerUUID": "example_consumerUUID",
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```


### OutputResetPassword

Create an instance: `outputResetPassword := client.OutputResetPassword(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumerUuid` | `string` |  |
| `phoneNumber` | `string` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```go
result, err := client.OutputResetPassword(nil).Create(map[string]any{
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```


### OutputUpdateConsumer

Create an instance: `outputUpdateConsumer := client.OutputUpdateConsumer(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data, ctrl)` | Create a new entity with the given data. |

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
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |
| `state` | `string` |  |
| `street1` | `string` |  |
| `street2` | `string` |  |
| `transactionhistory_id` | `string` |  |
| `zip` | `string` |  |

#### Example: Create

```go
result, err := client.OutputUpdateConsumer(nil).Create(map[string]any{
    "consumerUuid": "example_consumerUuid",
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```


### OutputUpdateProfile

Create an instance: `outputUpdateProfile := client.OutputUpdateProfile(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `Create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumerLanguage` | `string` |  |
| `email` | `string` |  |
| `firstName` | `string` |  |
| `lastName` | `string` |  |
| `phoneNumber` | `string` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```go
result, err := client.OutputUpdateProfile(nil).Create(map[string]any{
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```


### Version

Create an instance: `version := client.Version(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `Load(match, ctrl)` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `appName` | `string` |  |
| `buildDate` | `string` |  |
| `version` | `string` |  |

#### Example: Load

```go
version, err := client.Version(nil).Load(nil, nil)
if err != nil {
    panic(err)
}
fmt.Println(version) // the loaded record
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

Features are the extension mechanism. A feature implements the
`Feature` interface and provides hooks — functions keyed by pipeline
stage names.

The SDK ships with built-in features:

- **TestFeature**: In-memory mock transport for testing without a live server

Features are initialized in order. Hooks fire in the order features
were added, so later features can override earlier ones.

### Data as maps

The Go SDK uses `map[string]any` throughout rather than typed structs.
This mirrors the dynamic nature of the API and keeps the SDK
flexible — no code generation is needed when the API schema changes.

Use `core.ToMapAny()` to safely cast results and nested data.

### Package structure

```
github.com/voxgig-sdk/bluefin-tecs-user-backoffice-sdk/go/
├── bluefin-tecs-user-backoffice.go        # Root package — type aliases and constructors
├── core/               # SDK core — client, types, pipeline
├── entity/             # Entity implementations
├── feature/            # Built-in features (Base, Test, Log)
├── utility/            # Utility functions and struct library
└── test/               # Test suites
```

The root package (`github.com/voxgig-sdk/bluefin-tecs-user-backoffice-sdk/go`) re-exports everything needed
for normal use. Import sub-packages only when you need specific types
like `core.ToMapAny`.

### Entity state

Entity instances are stateful. After a successful `Load`, the entity
stores the returned data and match criteria internally.

```go
outputgetlogo := client.OutputGetLogo(nil)
outputgetlogo.Load(nil, nil)

// outputgetlogo.Data() now returns the outputgetlogo data from the last load
// outputgetlogo.Match() returns the last match criteria
```

Call `Make()` to create a fresh instance with the same configuration
but no stored state.

### Direct vs entity access

The entity interface handles URL construction, parameter placement,
and response parsing automatically. Use it for standard CRUD operations.

`Direct()` gives full control over the HTTP request. Use it for
non-standard endpoints, bulk operations, or any path not modelled as
an entity. `Prepare()` builds the request without sending it — useful
for debugging or custom transport.


## Full Reference

See [REFERENCE.md](REFERENCE.md) for complete API reference
documentation including all method signatures, entity field schemas,
and detailed usage examples.

# BluefinTecsUserBackoffice PHP SDK



The PHP SDK for the BluefinTecsUserBackoffice API — an entity-oriented client using PHP conventions.

The SDK exposes the API as capitalised, semantic **Entities** — for example `$client->OutputActivateDigitalModule()` — with named operations (`load`/`create`) instead of raw URL paths and query strings. Working with resources and verbs keeps call sites self-describing and reduces cognitive load.

> Other languages, the CLI, and MCP server live alongside this one — see
> the [top-level README](../README.md).


## Install
This package is not yet published to Packagist. Install it from the
GitHub release tag (`php/vX.Y.Z`):

- Releases: [https://github.com/voxgig-sdk/bluefin-tecs-user-backoffice-sdk/releases](https://github.com/voxgig-sdk/bluefin-tecs-user-backoffice-sdk/releases)


## Tutorial: your first API call

This tutorial walks through creating a client, listing entities, and
loading a specific record.

### 1. Create a client

```php
<?php
require_once 'bluefintecsuserbackoffice_sdk.php';

$client = new BluefinTecsUserBackofficeSDK([
    "apikey" => getenv("BLUEFIN_TECS_USER_BACKOFFICE_APIKEY"),
]);
```

### 4. Create, update, and remove

```php
// create() returns the ENTITY — call data_get() for the created OutputActivateDigitalModule record.
$created = $client->OutputActivateDigitalModule()->create(["responseCode" => 1, "responseMessage" => "example_responseMessage"]);

```


## Error handling

Entity operations throw a `\Throwable` on failure, so wrap them in
`try` / `catch`:

```php
try {
    $outputgetlogo = $client->OutputGetLogo()->load();
} catch (\Throwable $err) {
    echo "Error: " . $err->getMessage();
}
```

`direct()` does **not** throw — it returns the result array. Branch on
`ok`; on failure `status` holds the HTTP status (for error responses) and
`err` holds a transport error, so read both defensively:

```php
$result = $client->direct([
    "path" => "/api/resource/{id}",
    "method" => "GET",
    "params" => ["id" => "example_id"],
]);

if (! $result["ok"]) {
    $err = $result["err"] ?? null;
    echo "request failed: " . ($err ? $err->getMessage() : "HTTP " . $result["status"]);
}
```


## How-to guides

### Make a direct HTTP request

For endpoints not covered by entity methods:

```php
// direct() is the raw-HTTP escape hatch: it returns a result array
// (it does not throw). Branch on $result["ok"].
$result = $client->direct([
    "path" => "/api/resource/{id}",
    "method" => "GET",
    "params" => ["id" => "example"],
]);

if ($result["ok"]) {
    echo $result["status"];  // 200
    print_r($result["data"]);  // response body
} else {
    // On an HTTP error status there is no err (only a transport failure sets
    // it), so fall back to the status code.
    $err = $result["err"] ?? null;
    echo "Error: " . ($err ? $err->getMessage() : "HTTP " . $result["status"]);
}
```

### Prepare a request without sending it

```php
// prepare() throws on error and returns the fetch definition.
$fetchdef = $client->prepare([
    "path" => "/api/resource/{id}",
    "method" => "DELETE",
    "params" => ["id" => "example"],
]);

echo $fetchdef["url"];
echo $fetchdef["method"];
print_r($fetchdef["headers"]);
```

### Use test mode

Create a mock client for unit testing — no server required:

```php
$client = BluefinTecsUserBackofficeSDK::test();

// Entity ops return the ENTITY (throws on error);
// call data_get() for the mock record.
$outputgetlogo = $client->OutputGetLogo()->load();
print_r($outputgetlogo);
```

### Use a custom fetch function

Replace the HTTP transport with your own function:

```php
$mock_fetch = function ($url, $init) {
    return [
        [
            "status" => 200,
            "statusText" => "OK",
            "headers" => [],
            "json" => function () { return ["id" => "mock01"]; },
        ],
        null,
    ];
};

$client = new BluefinTecsUserBackofficeSDK([
    "base" => "http://localhost:8080",
    "system" => [
        "fetch" => $mock_fetch,
    ],
]);
```

### Run live tests

Create a `.env.local` file at the project root:

```
BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE=TRUE
BLUEFIN_TECS_USER_BACKOFFICE_APIKEY=<your-key>
```

Then run:

```bash
cd php && ./vendor/bin/phpunit test/
```


## Reference

### BluefinTecsUserBackofficeSDK

```php
require_once 'bluefintecsuserbackoffice_sdk.php';
$client = new BluefinTecsUserBackofficeSDK($options);
```

Creates a new SDK client.

| Option | Type | Description |
| --- | --- | --- |
| `apikey` | `string` | API key for authentication. |
| `base` | `string` | Base URL of the API server. |
| `prefix` | `string` | URL path prefix prepended to all requests. |
| `suffix` | `string` | URL path suffix appended to all requests. |
| `feature` | `array` | Feature activation flags. |
| `extend` | `array` | Additional Feature instances to load. |
| `system` | `array` | System overrides (e.g. custom `fetch` callable). |

### test

```php
$client = BluefinTecsUserBackofficeSDK::test($testopts, $sdkopts);
```

Creates a test-mode client with mock transport. Both arguments may be `null`.

### BluefinTecsUserBackofficeSDK methods

| Method | Signature | Description |
| --- | --- | --- |
| `options_map` | `(): array` | Deep copy of current SDK options. |
| `get_utility` | `(): Utility` | Copy of the SDK utility object. |
| `prepare` | `(array $fetchargs): array` | Build an HTTP request definition without sending. |
| `direct` | `(array $fetchargs): array` | Build and send an HTTP request. |
| `OutputActivateDigitalModule` | `($data): OutputActivateDigitalModuleEntity` | Create an OutputActivateDigitalModule entity instance. |
| `OutputActivatePortalModule` | `($data): OutputActivatePortalModuleEntity` | Create an OutputActivatePortalModule entity instance. |
| `OutputActivateStoreModule` | `($data): OutputActivateStoreModuleEntity` | Create an OutputActivateStoreModule entity instance. |
| `OutputActivateUser` | `($data): OutputActivateUserEntity` | Create an OutputActivateUser entity instance. |
| `OutputAssignRole` | `($data): OutputAssignRoleEntity` | Create an OutputAssignRole entity instance. |
| `OutputChangeLogo` | `($data): OutputChangeLogoEntity` | Create an OutputChangeLogo entity instance. |
| `OutputCreateMandator` | `($data): OutputCreateMandatorEntity` | Create an OutputCreateMandator entity instance. |
| `OutputCreateServiceUser` | `($data): OutputCreateServiceUserEntity` | Create an OutputCreateServiceUser entity instance. |
| `OutputDeactivateUser` | `($data): OutputDeactivateUserEntity` | Create an OutputDeactivateUser entity instance. |
| `OutputGetKycDocument` | `($data): OutputGetKycDocumentEntity` | Create an OutputGetKycDocument entity instance. |
| `OutputGetLogo` | `($data): OutputGetLogoEntity` | Create an OutputGetLogo entity instance. |
| `OutputListOfAvailableRole` | `($data): OutputListOfAvailableRoleEntity` | Create an OutputListOfAvailableRole entity instance. |
| `OutputListOfMandator` | `($data): OutputListOfMandatorEntity` | Create an OutputListOfMandator entity instance. |
| `OutputListOfModule` | `($data): OutputListOfModuleEntity` | Create an OutputListOfModule entity instance. |
| `OutputListOfRoleGroup` | `($data): OutputListOfRoleGroupEntity` | Create an OutputListOfRoleGroup entity instance. |
| `OutputListOfTransactionsHistory` | `($data): OutputListOfTransactionsHistoryEntity` | Create an OutputListOfTransactionsHistory entity instance. |
| `OutputListOfUser` | `($data): OutputListOfUserEntity` | Create an OutputListOfUser entity instance. |
| `OutputProvideCredential` | `($data): OutputProvideCredentialEntity` | Create an OutputProvideCredential entity instance. |
| `OutputRegisterUser` | `($data): OutputRegisterUserEntity` | Create an OutputRegisterUser entity instance. |
| `OutputRemoveRole` | `($data): OutputRemoveRoleEntity` | Create an OutputRemoveRole entity instance. |
| `OutputResendLink` | `($data): OutputResendLinkEntity` | Create an OutputResendLink entity instance. |
| `OutputResetPassword` | `($data): OutputResetPasswordEntity` | Create an OutputResetPassword entity instance. |
| `OutputUpdateConsumer` | `($data): OutputUpdateConsumerEntity` | Create an OutputUpdateConsumer entity instance. |
| `OutputUpdateProfile` | `($data): OutputUpdateProfileEntity` | Create an OutputUpdateProfile entity instance. |
| `Version` | `($data): VersionEntity` | Create a Version entity instance. |

### Entity interface

All entities share the same interface.

| Method | Signature | Description |
| --- | --- | --- |
| `load` | `($reqmatch, $ctrl): array` | Load a single entity by match criteria. |
| `create` | `($reqdata, $ctrl): array` | Create a new entity. |
| `data_get` | `(): array` | Get entity data. |
| `data_set` | `($data): void` | Set entity data. |
| `match_get` | `(): array` | Get entity match criteria. |
| `match_set` | `($match): void` | Set entity match criteria. |
| `make` | `(): Entity` | Create a new instance with the same options. |
| `get_name` | `(): string` | Return the entity name. |

### Result shape

Entity operations return the ENTITY (call data_get() for the record) (an `array` for single-entity
ops, a `list` for `list`) and throw on error. Wrap calls in
`try`/`catch` to handle failures.

The `direct()` escape hatch never throws — it returns a result `array`
you branch on via `$result["ok"]`:

| Key | Type | Description |
| --- | --- | --- |
| `ok` | `bool` | `true` if the HTTP status is 2xx. |
| `status` | `int` | HTTP status code. |
| `headers` | `array` | Response headers. |
| `data` | `mixed` | Parsed JSON response body. |

On error, `ok` is `false` and `$err` contains the error value.

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

Create an instance: `$output_activate_digital_module = $client->OutputActivateDigitalModule();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```php
$output_activate_digital_module = $client->OutputActivateDigitalModule()->create([
]);
```


### OutputActivatePortalModule

Create an instance: `$output_activate_portal_module = $client->OutputActivatePortalModule();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clientSecret` | `string` |  |
| `notificationEmail` | `string` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```php
$output_activate_portal_module = $client->OutputActivatePortalModule()->create([
    "clientSecret" => null, // string
    "notificationEmail" => null, // string
]);
```


### OutputActivateStoreModule

Create an instance: `$output_activate_store_module = $client->OutputActivateStoreModule();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```php
$output_activate_store_module = $client->OutputActivateStoreModule()->create([
]);
```


### OutputActivateUser

Create an instance: `$output_activate_user = $client->OutputActivateUser();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumerUUID` | `string` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```php
$output_activate_user = $client->OutputActivateUser()->create([
]);
```


### OutputAssignRole

Create an instance: `$output_assign_role = $client->OutputAssignRole();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumerUUID` | `string` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |
| `roles` | `array` |  |

#### Example: Create

```php
$output_assign_role = $client->OutputAssignRole()->create([
    "consumerUUID" => null, // string
    "roles" => null, // array
]);
```


### OutputChangeLogo

Create an instance: `$output_change_logo = $client->OutputChangeLogo();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `contentAsBase64` | `string` |  |
| `mimeType` | `string` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```php
$output_change_logo = $client->OutputChangeLogo()->create([
    "contentAsBase64" => null, // string
    "mimeType" => null, // string
]);
```


### OutputCreateMandator

Create an instance: `$output_create_mandator = $client->OutputCreateMandator();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

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

```php
$output_create_mandator = $client->OutputCreateMandator()->create([
    "email" => null, // string
    "login" => null, // string
    "phone" => null, // string
]);
```


### OutputCreateServiceUser

Create an instance: `$output_create_service_user = $client->OutputCreateServiceUser();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `mandatorName` | `string` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```php
$output_create_service_user = $client->OutputCreateServiceUser()->create([
    "mandatorName" => null, // string
]);
```


### OutputDeactivateUser

Create an instance: `$output_deactivate_user = $client->OutputDeactivateUser();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumerUUID` | `string` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```php
$output_deactivate_user = $client->OutputDeactivateUser()->create([
]);
```


### OutputGetKycDocument

Create an instance: `$output_get_kyc_document = $client->OutputGetKycDocument();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `caseID` | `string` |  |
| `encodedDataBase64` | `string` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```php
$output_get_kyc_document = $client->OutputGetKycDocument()->create([
]);
```


### OutputGetLogo

Create an instance: `$output_get_logo = $client->OutputGetLogo();`

#### Operations

| Method | Description |
| --- | --- |
| `load(match)` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `contentAsBase64` | `string` |  |
| `mimeType` | `string` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |

#### Example: Load

```php
// load() returns the ENTITY — call data_get() for the OutputGetLogo record (throws on error).
$output_get_logo = $client->OutputGetLogo()->load();
```


### OutputListOfAvailableRole

Create an instance: `$output_list_of_available_role = $client->OutputListOfAvailableRole();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `availableRoles` | `array` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```php
$output_list_of_available_role = $client->OutputListOfAvailableRole()->create([
]);
```


### OutputListOfMandator

Create an instance: `$output_list_of_mandator = $client->OutputListOfMandator();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `filter` | `array` |  |
| `list` | `array` |  |
| `pagination` | `array` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |
| `sorting` | `array` |  |

#### Example: Create

```php
$output_list_of_mandator = $client->OutputListOfMandator()->create([
]);
```


### OutputListOfModule

Create an instance: `$output_list_of_module = $client->OutputListOfModule();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `list` | `array` |  |
| `pagination` | `array` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```php
$output_list_of_module = $client->OutputListOfModule()->create([
]);
```


### OutputListOfRoleGroup

Create an instance: `$output_list_of_role_group = $client->OutputListOfRoleGroup();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `filter` | `array` |  |
| `groupRoles` | `array` |  |
| `pagination` | `array` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |
| `sorting` | `array` |  |

#### Example: Create

```php
$output_list_of_role_group = $client->OutputListOfRoleGroup()->create([
]);
```


### OutputListOfTransactionsHistory

Create an instance: `$output_list_of_transactions_history = $client->OutputListOfTransactionsHistory();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `filter` | `array` |  |
| `list` | `array` |  |
| `pagination` | `array` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |
| `sorting` | `array` |  |

#### Example: Create

```php
$output_list_of_transactions_history = $client->OutputListOfTransactionsHistory()->create([
]);
```


### OutputListOfUser

Create an instance: `$output_list_of_user = $client->OutputListOfUser();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `filter` | `array` |  |
| `list` | `array` |  |
| `pagination` | `array` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |
| `sorting` | `array` |  |

#### Example: Create

```php
$output_list_of_user = $client->OutputListOfUser()->create([
]);
```


### OutputProvideCredential

Create an instance: `$output_provide_credential = $client->OutputProvideCredential();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `mandatorName` | `string` |  |
| `password` | `string` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |
| `username` | `string` |  |

#### Example: Create

```php
$output_provide_credential = $client->OutputProvideCredential()->create([
    "mandatorName" => null, // string
]);
```


### OutputRegisterUser

Create an instance: `$output_register_user = $client->OutputRegisterUser();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

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
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |
| `salutation` | `string` |  |
| `state` | `string` |  |
| `street1` | `string` |  |
| `street2` | `string` |  |
| `zip` | `string` |  |

#### Example: Create

```php
$output_register_user = $client->OutputRegisterUser()->create([
    "email" => null, // string
]);
```


### OutputRemoveRole

Create an instance: `$output_remove_role = $client->OutputRemoveRole();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumerUUID` | `string` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |
| `roles` | `array` |  |

#### Example: Create

```php
$output_remove_role = $client->OutputRemoveRole()->create([
]);
```


### OutputResendLink

Create an instance: `$output_resend_link = $client->OutputResendLink();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

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

```php
$output_resend_link = $client->OutputResendLink()->create([
    "consumerUUID" => null, // string
]);
```


### OutputResetPassword

Create an instance: `$output_reset_password = $client->OutputResetPassword();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumerUuid` | `string` |  |
| `phoneNumber` | `string` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```php
$output_reset_password = $client->OutputResetPassword()->create([
]);
```


### OutputUpdateConsumer

Create an instance: `$output_update_consumer = $client->OutputUpdateConsumer();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

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

```php
$output_update_consumer = $client->OutputUpdateConsumer()->create([
    "consumerUuid" => null, // string
]);
```


### OutputUpdateProfile

Create an instance: `$output_update_profile = $client->OutputUpdateProfile();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

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

```php
$output_update_profile = $client->OutputUpdateProfile()->create([
]);
```


### Version

Create an instance: `$version = $client->Version();`

#### Operations

| Method | Description |
| --- | --- |
| `load(match)` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `appName` | `string` |  |
| `buildDate` | `string` |  |
| `version` | `string` |  |

#### Example: Load

```php
// load() returns the ENTITY — call data_get() for the Version record (throws on error).
$version = $client->Version()->load();
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

Features are the extension mechanism. A feature is a PHP class
with hook methods named after pipeline stages (e.g. `PrePoint`,
`PreSpec`). Each method receives the context.

The SDK ships with built-in features:

- **TestFeature**: In-memory mock transport for testing without a live server

Features are initialized in order. Hooks fire in the order features
were added, so later features can override earlier ones.

### Data as arrays

The PHP SDK uses plain PHP associative arrays throughout rather than typed
objects. This mirrors the dynamic nature of the API and keeps the
SDK flexible — no code generation is needed when the API schema
changes.

Use `Helpers::to_map()` to safely validate that a value is an array.

### Directory structure

```
php/
├── bluefintecsuserbackoffice_sdk.php          -- Main SDK class
├── config.php                     -- Configuration
├── features.php                   -- Feature factory
├── core/                          -- Core types and context
├── entity/                        -- Entity implementations
├── feature/                       -- Built-in features (Base, Test, Log)
├── utility/                       -- Utility functions and struct library
└── test/                          -- Test suites
```

The main class (`bluefintecsuserbackoffice_sdk.php`) exports the SDK class
and test helper. Import entity or utility modules directly only
when needed.

### Entity state

Entity instances are stateful. After a successful `load`, the entity
stores the returned data and match criteria internally.

```php
$outputgetlogo = $client->OutputGetLogo();
$outputgetlogo->load();

// $outputgetlogo->data_get() now returns the outputgetlogo data from the last load
// $outputgetlogo->match_get() returns the last match criteria
```

Call `make()` to create a fresh instance with the same configuration
but no stored state.

### Direct vs entity access

The entity interface handles URL construction, parameter placement,
and response parsing automatically. Use it for standard CRUD operations.

`direct()` gives full control over the HTTP request. Use it for
non-standard endpoints, bulk operations, or any path not modelled as
an entity. `prepare()` builds the request without sending it — useful
for debugging or custom transport.


## Full Reference

See [REFERENCE.md](REFERENCE.md) for complete API reference
documentation including all method signatures, entity field schemas,
and detailed usage examples.

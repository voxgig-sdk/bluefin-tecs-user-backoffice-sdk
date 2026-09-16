# BluefinTecsUserBackoffice PHP SDK Reference

Complete API reference for the BluefinTecsUserBackoffice PHP SDK.


## BluefinTecsUserBackofficeSDK

### Constructor

```php
require_once __DIR__ . '/bluefintecsuserbackoffice_sdk.php';

$client = new BluefinTecsUserBackofficeSDK($options);
```

Create a new SDK client instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `$options` | `array` | SDK configuration options. |
| `$options["apikey"]` | `string` | API key for authentication. |
| `$options["base"]` | `string` | Base URL for API requests. |
| `$options["prefix"]` | `string` | URL prefix appended after base. |
| `$options["suffix"]` | `string` | URL suffix appended after path. |
| `$options["headers"]` | `array` | Custom headers for all requests. |
| `$options["feature"]` | `array` | Feature configuration. |
| `$options["system"]` | `array` | System overrides (e.g. custom fetch). |


### Static Methods

#### `BluefinTecsUserBackofficeSDK::test($testopts = null, $sdkopts = null)`

Create a test client with mock features active. Both arguments may be `null`.

```php
$client = BluefinTecsUserBackofficeSDK::test();
```


### Instance Methods

#### `OutputActivateDigitalModule($data = null)`

Create a new `OutputActivateDigitalModuleEntity` instance. Pass `null` for no initial data.

#### `OutputActivatePortalModule($data = null)`

Create a new `OutputActivatePortalModuleEntity` instance. Pass `null` for no initial data.

#### `OutputActivateStoreModule($data = null)`

Create a new `OutputActivateStoreModuleEntity` instance. Pass `null` for no initial data.

#### `OutputActivateUser($data = null)`

Create a new `OutputActivateUserEntity` instance. Pass `null` for no initial data.

#### `OutputAssignRole($data = null)`

Create a new `OutputAssignRoleEntity` instance. Pass `null` for no initial data.

#### `OutputChangeLogo($data = null)`

Create a new `OutputChangeLogoEntity` instance. Pass `null` for no initial data.

#### `OutputCreateMandator($data = null)`

Create a new `OutputCreateMandatorEntity` instance. Pass `null` for no initial data.

#### `OutputCreateServiceUser($data = null)`

Create a new `OutputCreateServiceUserEntity` instance. Pass `null` for no initial data.

#### `OutputDeactivateUser($data = null)`

Create a new `OutputDeactivateUserEntity` instance. Pass `null` for no initial data.

#### `OutputGetKycDocument($data = null)`

Create a new `OutputGetKycDocumentEntity` instance. Pass `null` for no initial data.

#### `OutputGetLogo($data = null)`

Create a new `OutputGetLogoEntity` instance. Pass `null` for no initial data.

#### `OutputListOfAvailableRole($data = null)`

Create a new `OutputListOfAvailableRoleEntity` instance. Pass `null` for no initial data.

#### `OutputListOfMandator($data = null)`

Create a new `OutputListOfMandatorEntity` instance. Pass `null` for no initial data.

#### `OutputListOfModule($data = null)`

Create a new `OutputListOfModuleEntity` instance. Pass `null` for no initial data.

#### `OutputListOfRoleGroup($data = null)`

Create a new `OutputListOfRoleGroupEntity` instance. Pass `null` for no initial data.

#### `OutputListOfTransactionsHistory($data = null)`

Create a new `OutputListOfTransactionsHistoryEntity` instance. Pass `null` for no initial data.

#### `OutputListOfUser($data = null)`

Create a new `OutputListOfUserEntity` instance. Pass `null` for no initial data.

#### `OutputProvideCredential($data = null)`

Create a new `OutputProvideCredentialEntity` instance. Pass `null` for no initial data.

#### `OutputRegisterUser($data = null)`

Create a new `OutputRegisterUserEntity` instance. Pass `null` for no initial data.

#### `OutputRemoveRole($data = null)`

Create a new `OutputRemoveRoleEntity` instance. Pass `null` for no initial data.

#### `OutputResendLink($data = null)`

Create a new `OutputResendLinkEntity` instance. Pass `null` for no initial data.

#### `OutputResetPassword($data = null)`

Create a new `OutputResetPasswordEntity` instance. Pass `null` for no initial data.

#### `OutputUpdateConsumer($data = null)`

Create a new `OutputUpdateConsumerEntity` instance. Pass `null` for no initial data.

#### `OutputUpdateProfile($data = null)`

Create a new `OutputUpdateProfileEntity` instance. Pass `null` for no initial data.

#### `Version($data = null)`

Create a new `VersionEntity` instance. Pass `null` for no initial data.

#### `options_map(): array`

Return a deep copy of the current SDK options.

#### `get_utility(): BluefinTecsUserBackofficeUtility`

Return a copy of the SDK utility object.

#### `direct(array $fetchargs = []): array`

Make a direct HTTP request to any API endpoint. This is the raw-HTTP escape
hatch: it does **not** throw. It returns a result array
`["ok" => bool, "status" => int, "headers" => array, "data" => mixed]`, or
`["ok" => false, "err" => \Exception]` on failure. Branch on `$result["ok"]`.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `$fetchargs["path"]` | `string` | URL path with optional `{param}` placeholders. |
| `$fetchargs["method"]` | `string` | HTTP method (default: `"GET"`). |
| `$fetchargs["params"]` | `array` | Path parameter values for `{param}` substitution. |
| `$fetchargs["query"]` | `array` | Query string parameters. |
| `$fetchargs["headers"]` | `array` | Request headers (merged with defaults). |
| `$fetchargs["body"]` | `mixed` | Request body (arrays are JSON-serialized). |
| `$fetchargs["ctrl"]` | `array` | Control options. |

**Returns:** `array` — the result dict (see above); never throws.

#### `prepare(array $fetchargs = []): mixed`

Prepare a fetch definition without sending the request. Returns the
`$fetchdef` array. Throws on error.


---

## OutputActivateDigitalModuleEntity

```php
$output_activate_digital_module = $client->OutputActivateDigitalModule();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `create(array $reqdata, ?array $ctrl = null): mixed`

Create a new entity with the given data. Throws on error.

```php
$result = $client->OutputActivateDigitalModule()->create([
]);
```

### Common Methods

#### `data_get(): array`

Get the entity data. Returns a copy of the current data.

#### `data_set($data): void`

Set the entity data.

#### `match_get(): array`

Get the entity match criteria.

#### `match_set($match): void`

Set the entity match criteria.

#### `make(): OutputActivateDigitalModuleEntity`

Create a new `OutputActivateDigitalModuleEntity` instance with the same client and
options.

#### `get_name(): string`

Return the entity name.


---

## OutputActivatePortalModuleEntity

```php
$output_activate_portal_module = $client->OutputActivatePortalModule();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clientSecret` | `string` | Yes |  |
| `notificationEmail` | `string` | Yes |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `create(array $reqdata, ?array $ctrl = null): mixed`

Create a new entity with the given data. Throws on error.

```php
$result = $client->OutputActivatePortalModule()->create([
  "clientSecret" => null, // string
  "notificationEmail" => null, // string
]);
```

### Common Methods

#### `data_get(): array`

Get the entity data. Returns a copy of the current data.

#### `data_set($data): void`

Set the entity data.

#### `match_get(): array`

Get the entity match criteria.

#### `match_set($match): void`

Set the entity match criteria.

#### `make(): OutputActivatePortalModuleEntity`

Create a new `OutputActivatePortalModuleEntity` instance with the same client and
options.

#### `get_name(): string`

Return the entity name.


---

## OutputActivateStoreModuleEntity

```php
$output_activate_store_module = $client->OutputActivateStoreModule();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `create(array $reqdata, ?array $ctrl = null): mixed`

Create a new entity with the given data. Throws on error.

```php
$result = $client->OutputActivateStoreModule()->create([
]);
```

### Common Methods

#### `data_get(): array`

Get the entity data. Returns a copy of the current data.

#### `data_set($data): void`

Set the entity data.

#### `match_get(): array`

Get the entity match criteria.

#### `match_set($match): void`

Set the entity match criteria.

#### `make(): OutputActivateStoreModuleEntity`

Create a new `OutputActivateStoreModuleEntity` instance with the same client and
options.

#### `get_name(): string`

Return the entity name.


---

## OutputActivateUserEntity

```php
$output_activate_user = $client->OutputActivateUser();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumerUUID` | `string` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `create(array $reqdata, ?array $ctrl = null): mixed`

Create a new entity with the given data. Throws on error.

```php
$result = $client->OutputActivateUser()->create([
]);
```

### Common Methods

#### `data_get(): array`

Get the entity data. Returns a copy of the current data.

#### `data_set($data): void`

Set the entity data.

#### `match_get(): array`

Get the entity match criteria.

#### `match_set($match): void`

Set the entity match criteria.

#### `make(): OutputActivateUserEntity`

Create a new `OutputActivateUserEntity` instance with the same client and
options.

#### `get_name(): string`

Return the entity name.


---

## OutputAssignRoleEntity

```php
$output_assign_role = $client->OutputAssignRole();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumerUUID` | `string` | Yes | Unique identifier of the consumer (user) to whom the role(s) will be assigned. |
| `responseCode` | `int` | No | Response code: 0 indicates success; any non-zero value indicates an error. |
| `responseMessage` | `string` | No | A human-readable message providing additional details about the outcome. |
| `roles` | `array` | Yes | List of roles to assign to the consumer. |

### Operations

#### `create(array $reqdata, ?array $ctrl = null): mixed`

Create a new entity with the given data. Throws on error.

```php
$result = $client->OutputAssignRole()->create([
  "consumerUUID" => null, // string
  "roles" => null, // array
]);
```

### Common Methods

#### `data_get(): array`

Get the entity data. Returns a copy of the current data.

#### `data_set($data): void`

Set the entity data.

#### `match_get(): array`

Get the entity match criteria.

#### `match_set($match): void`

Set the entity match criteria.

#### `make(): OutputAssignRoleEntity`

Create a new `OutputAssignRoleEntity` instance with the same client and
options.

#### `get_name(): string`

Return the entity name.


---

## OutputChangeLogoEntity

```php
$output_change_logo = $client->OutputChangeLogo();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `contentAsBase64` | `string` | Yes | The content of the image as base64 encoded string |
| `mimeType` | `string` | Yes | The MIME type of the image |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `create(array $reqdata, ?array $ctrl = null): mixed`

Create a new entity with the given data. Throws on error.

```php
$result = $client->OutputChangeLogo()->create([
  "contentAsBase64" => null, // string
  "mimeType" => null, // string
]);
```

### Common Methods

#### `data_get(): array`

Get the entity data. Returns a copy of the current data.

#### `data_set($data): void`

Set the entity data.

#### `match_get(): array`

Get the entity match criteria.

#### `match_set($match): void`

Set the entity match criteria.

#### `make(): OutputChangeLogoEntity`

Create a new `OutputChangeLogoEntity` instance with the same client and
options.

#### `get_name(): string`

Return the entity name.


---

## OutputCreateMandatorEntity

```php
$output_create_mandator = $client->OutputCreateMandator();
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

#### `create(array $reqdata, ?array $ctrl = null): mixed`

Create a new entity with the given data. Throws on error.

```php
$result = $client->OutputCreateMandator()->create([
  "email" => null, // string
  "login" => null, // string
  "phone" => null, // string
]);
```

### Common Methods

#### `data_get(): array`

Get the entity data. Returns a copy of the current data.

#### `data_set($data): void`

Set the entity data.

#### `match_get(): array`

Get the entity match criteria.

#### `match_set($match): void`

Set the entity match criteria.

#### `make(): OutputCreateMandatorEntity`

Create a new `OutputCreateMandatorEntity` instance with the same client and
options.

#### `get_name(): string`

Return the entity name.


---

## OutputCreateServiceUserEntity

```php
$output_create_service_user = $client->OutputCreateServiceUser();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `mandatorName` | `string` | Yes |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `create(array $reqdata, ?array $ctrl = null): mixed`

Create a new entity with the given data. Throws on error.

```php
$result = $client->OutputCreateServiceUser()->create([
  "mandatorName" => null, // string
]);
```

### Common Methods

#### `data_get(): array`

Get the entity data. Returns a copy of the current data.

#### `data_set($data): void`

Set the entity data.

#### `match_get(): array`

Get the entity match criteria.

#### `match_set($match): void`

Set the entity match criteria.

#### `make(): OutputCreateServiceUserEntity`

Create a new `OutputCreateServiceUserEntity` instance with the same client and
options.

#### `get_name(): string`

Return the entity name.


---

## OutputDeactivateUserEntity

```php
$output_deactivate_user = $client->OutputDeactivateUser();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumerUUID` | `string` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `create(array $reqdata, ?array $ctrl = null): mixed`

Create a new entity with the given data. Throws on error.

```php
$result = $client->OutputDeactivateUser()->create([
]);
```

### Common Methods

#### `data_get(): array`

Get the entity data. Returns a copy of the current data.

#### `data_set($data): void`

Set the entity data.

#### `match_get(): array`

Get the entity match criteria.

#### `match_set($match): void`

Set the entity match criteria.

#### `make(): OutputDeactivateUserEntity`

Create a new `OutputDeactivateUserEntity` instance with the same client and
options.

#### `get_name(): string`

Return the entity name.


---

## OutputGetKycDocumentEntity

```php
$output_get_kyc_document = $client->OutputGetKycDocument();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `caseID` | `string` | No |  |
| `encodedDataBase64` | `string` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `create(array $reqdata, ?array $ctrl = null): mixed`

Create a new entity with the given data. Throws on error.

```php
$result = $client->OutputGetKycDocument()->create([
]);
```

### Common Methods

#### `data_get(): array`

Get the entity data. Returns a copy of the current data.

#### `data_set($data): void`

Set the entity data.

#### `match_get(): array`

Get the entity match criteria.

#### `match_set($match): void`

Set the entity match criteria.

#### `make(): OutputGetKycDocumentEntity`

Create a new `OutputGetKycDocumentEntity` instance with the same client and
options.

#### `get_name(): string`

Return the entity name.


---

## OutputGetLogoEntity

```php
$output_get_logo = $client->OutputGetLogo();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `contentAsBase64` | `string` | Yes | The content of the image as base64 encoded string |
| `mimeType` | `string` | Yes | The MIME type of the image |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `load(array $reqmatch, ?array $ctrl = null): mixed`

Load a single entity matching the given criteria. Throws on error.

```php
$result = $client->OutputGetLogo()->load();
```

### Common Methods

#### `data_get(): array`

Get the entity data. Returns a copy of the current data.

#### `data_set($data): void`

Set the entity data.

#### `match_get(): array`

Get the entity match criteria.

#### `match_set($match): void`

Set the entity match criteria.

#### `make(): OutputGetLogoEntity`

Create a new `OutputGetLogoEntity` instance with the same client and
options.

#### `get_name(): string`

Return the entity name.


---

## OutputListOfAvailableRoleEntity

```php
$output_list_of_available_role = $client->OutputListOfAvailableRole();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `availableRoles` | `array` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `create(array $reqdata, ?array $ctrl = null): mixed`

Create a new entity with the given data. Throws on error.

```php
$result = $client->OutputListOfAvailableRole()->create([
]);
```

### Common Methods

#### `data_get(): array`

Get the entity data. Returns a copy of the current data.

#### `data_set($data): void`

Set the entity data.

#### `match_get(): array`

Get the entity match criteria.

#### `match_set($match): void`

Set the entity match criteria.

#### `make(): OutputListOfAvailableRoleEntity`

Create a new `OutputListOfAvailableRoleEntity` instance with the same client and
options.

#### `get_name(): string`

Return the entity name.


---

## OutputListOfMandatorEntity

```php
$output_list_of_mandator = $client->OutputListOfMandator();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `filter` | `array` | No |  |
| `list` | `array` | No |  |
| `pagination` | `array` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |
| `sorting` | `array` | No |  |

### Operations

#### `create(array $reqdata, ?array $ctrl = null): mixed`

Create a new entity with the given data. Throws on error.

```php
$result = $client->OutputListOfMandator()->create([
]);
```

### Common Methods

#### `data_get(): array`

Get the entity data. Returns a copy of the current data.

#### `data_set($data): void`

Set the entity data.

#### `match_get(): array`

Get the entity match criteria.

#### `match_set($match): void`

Set the entity match criteria.

#### `make(): OutputListOfMandatorEntity`

Create a new `OutputListOfMandatorEntity` instance with the same client and
options.

#### `get_name(): string`

Return the entity name.


---

## OutputListOfModuleEntity

```php
$output_list_of_module = $client->OutputListOfModule();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `list` | `array` | No |  |
| `pagination` | `array` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `create(array $reqdata, ?array $ctrl = null): mixed`

Create a new entity with the given data. Throws on error.

```php
$result = $client->OutputListOfModule()->create([
]);
```

### Common Methods

#### `data_get(): array`

Get the entity data. Returns a copy of the current data.

#### `data_set($data): void`

Set the entity data.

#### `match_get(): array`

Get the entity match criteria.

#### `match_set($match): void`

Set the entity match criteria.

#### `make(): OutputListOfModuleEntity`

Create a new `OutputListOfModuleEntity` instance with the same client and
options.

#### `get_name(): string`

Return the entity name.


---

## OutputListOfRoleGroupEntity

```php
$output_list_of_role_group = $client->OutputListOfRoleGroup();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `filter` | `array` | No |  |
| `groupRoles` | `array` | No |  |
| `pagination` | `array` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |
| `sorting` | `array` | No |  |

### Operations

#### `create(array $reqdata, ?array $ctrl = null): mixed`

Create a new entity with the given data. Throws on error.

```php
$result = $client->OutputListOfRoleGroup()->create([
]);
```

### Common Methods

#### `data_get(): array`

Get the entity data. Returns a copy of the current data.

#### `data_set($data): void`

Set the entity data.

#### `match_get(): array`

Get the entity match criteria.

#### `match_set($match): void`

Set the entity match criteria.

#### `make(): OutputListOfRoleGroupEntity`

Create a new `OutputListOfRoleGroupEntity` instance with the same client and
options.

#### `get_name(): string`

Return the entity name.


---

## OutputListOfTransactionsHistoryEntity

```php
$output_list_of_transactions_history = $client->OutputListOfTransactionsHistory();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `filter` | `array` | No |  |
| `list` | `array` | No |  |
| `pagination` | `array` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |
| `sorting` | `array` | No |  |

### Operations

#### `create(array $reqdata, ?array $ctrl = null): mixed`

Create a new entity with the given data. Throws on error.

```php
$result = $client->OutputListOfTransactionsHistory()->create([
]);
```

### Common Methods

#### `data_get(): array`

Get the entity data. Returns a copy of the current data.

#### `data_set($data): void`

Set the entity data.

#### `match_get(): array`

Get the entity match criteria.

#### `match_set($match): void`

Set the entity match criteria.

#### `make(): OutputListOfTransactionsHistoryEntity`

Create a new `OutputListOfTransactionsHistoryEntity` instance with the same client and
options.

#### `get_name(): string`

Return the entity name.


---

## OutputListOfUserEntity

```php
$output_list_of_user = $client->OutputListOfUser();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `filter` | `array` | No |  |
| `list` | `array` | No |  |
| `pagination` | `array` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |
| `sorting` | `array` | No |  |

### Operations

#### `create(array $reqdata, ?array $ctrl = null): mixed`

Create a new entity with the given data. Throws on error.

```php
$result = $client->OutputListOfUser()->create([
]);
```

### Common Methods

#### `data_get(): array`

Get the entity data. Returns a copy of the current data.

#### `data_set($data): void`

Set the entity data.

#### `match_get(): array`

Get the entity match criteria.

#### `match_set($match): void`

Set the entity match criteria.

#### `make(): OutputListOfUserEntity`

Create a new `OutputListOfUserEntity` instance with the same client and
options.

#### `get_name(): string`

Return the entity name.


---

## OutputProvideCredentialEntity

```php
$output_provide_credential = $client->OutputProvideCredential();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `mandatorName` | `string` | Yes |  |
| `password` | `string` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |
| `username` | `string` | No |  |

### Operations

#### `create(array $reqdata, ?array $ctrl = null): mixed`

Create a new entity with the given data. Throws on error.

```php
$result = $client->OutputProvideCredential()->create([
  "mandatorName" => null, // string
]);
```

### Common Methods

#### `data_get(): array`

Get the entity data. Returns a copy of the current data.

#### `data_set($data): void`

Set the entity data.

#### `match_get(): array`

Get the entity match criteria.

#### `match_set($match): void`

Set the entity match criteria.

#### `make(): OutputProvideCredentialEntity`

Create a new `OutputProvideCredentialEntity` instance with the same client and
options.

#### `get_name(): string`

Return the entity name.


---

## OutputRegisterUserEntity

```php
$output_register_user = $client->OutputRegisterUser();
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
| `responseCode` | `int` | No | Response code (0 indicates success; non-zero indicates an error). |
| `responseMessage` | `string` | No | Human-readable response message. |
| `salutation` | `string` | No | User's salutation (e.g., Mr., Ms.). |
| `state` | `string` | No | User's state or region. |
| `street1` | `string` | No | Primary address line. |
| `street2` | `string` | No | Secondary address line. |
| `zip` | `string` | No | Postal code. |

### Operations

#### `create(array $reqdata, ?array $ctrl = null): mixed`

Create a new entity with the given data. Throws on error.

```php
$result = $client->OutputRegisterUser()->create([
  "email" => null, // string
]);
```

### Common Methods

#### `data_get(): array`

Get the entity data. Returns a copy of the current data.

#### `data_set($data): void`

Set the entity data.

#### `match_get(): array`

Get the entity match criteria.

#### `match_set($match): void`

Set the entity match criteria.

#### `make(): OutputRegisterUserEntity`

Create a new `OutputRegisterUserEntity` instance with the same client and
options.

#### `get_name(): string`

Return the entity name.


---

## OutputRemoveRoleEntity

```php
$output_remove_role = $client->OutputRemoveRole();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumerUUID` | `string` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |
| `roles` | `array` | No |  |

### Operations

#### `create(array $reqdata, ?array $ctrl = null): mixed`

Create a new entity with the given data. Throws on error.

```php
$result = $client->OutputRemoveRole()->create([
]);
```

### Common Methods

#### `data_get(): array`

Get the entity data. Returns a copy of the current data.

#### `data_set($data): void`

Set the entity data.

#### `match_get(): array`

Get the entity match criteria.

#### `match_set($match): void`

Set the entity match criteria.

#### `make(): OutputRemoveRoleEntity`

Create a new `OutputRemoveRoleEntity` instance with the same client and
options.

#### `get_name(): string`

Return the entity name.


---

## OutputResendLinkEntity

```php
$output_resend_link = $client->OutputResendLink();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `businessRegistrationNumber` | `string` | No |  |
| `consumerUUID` | `string` | Yes |  |
| `emailConfirmationCode` | `string` | No |  |
| `phoneNumber` | `string` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `create(array $reqdata, ?array $ctrl = null): mixed`

Create a new entity with the given data. Throws on error.

```php
$result = $client->OutputResendLink()->create([
  "consumerUUID" => null, // string
]);
```

### Common Methods

#### `data_get(): array`

Get the entity data. Returns a copy of the current data.

#### `data_set($data): void`

Set the entity data.

#### `match_get(): array`

Get the entity match criteria.

#### `match_set($match): void`

Set the entity match criteria.

#### `make(): OutputResendLinkEntity`

Create a new `OutputResendLinkEntity` instance with the same client and
options.

#### `get_name(): string`

Return the entity name.


---

## OutputResetPasswordEntity

```php
$output_reset_password = $client->OutputResetPassword();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumerUuid` | `string` | No |  |
| `phoneNumber` | `string` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `create(array $reqdata, ?array $ctrl = null): mixed`

Create a new entity with the given data. Throws on error.

```php
$result = $client->OutputResetPassword()->create([
]);
```

### Common Methods

#### `data_get(): array`

Get the entity data. Returns a copy of the current data.

#### `data_set($data): void`

Set the entity data.

#### `match_get(): array`

Get the entity match criteria.

#### `match_set($match): void`

Set the entity match criteria.

#### `make(): OutputResetPasswordEntity`

Create a new `OutputResetPasswordEntity` instance with the same client and
options.

#### `get_name(): string`

Return the entity name.


---

## OutputUpdateConsumerEntity

```php
$output_update_consumer = $client->OutputUpdateConsumer();
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
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |
| `state` | `string` | No |  |
| `street1` | `string` | No |  |
| `street2` | `string` | No |  |
| `transactionhistory_id` | `string` | No |  |
| `zip` | `string` | No |  |

### Operations

#### `create(array $reqdata, ?array $ctrl = null): mixed`

Create a new entity with the given data. Throws on error.

```php
$result = $client->OutputUpdateConsumer()->create([
  "consumerUuid" => null, // string
]);
```

### Common Methods

#### `data_get(): array`

Get the entity data. Returns a copy of the current data.

#### `data_set($data): void`

Set the entity data.

#### `match_get(): array`

Get the entity match criteria.

#### `match_set($match): void`

Set the entity match criteria.

#### `make(): OutputUpdateConsumerEntity`

Create a new `OutputUpdateConsumerEntity` instance with the same client and
options.

#### `get_name(): string`

Return the entity name.


---

## OutputUpdateProfileEntity

```php
$output_update_profile = $client->OutputUpdateProfile();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumerLanguage` | `string` | No |  |
| `email` | `string` | No |  |
| `firstName` | `string` | No |  |
| `lastName` | `string` | No |  |
| `phoneNumber` | `string` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `create(array $reqdata, ?array $ctrl = null): mixed`

Create a new entity with the given data. Throws on error.

```php
$result = $client->OutputUpdateProfile()->create([
]);
```

### Common Methods

#### `data_get(): array`

Get the entity data. Returns a copy of the current data.

#### `data_set($data): void`

Set the entity data.

#### `match_get(): array`

Get the entity match criteria.

#### `match_set($match): void`

Set the entity match criteria.

#### `make(): OutputUpdateProfileEntity`

Create a new `OutputUpdateProfileEntity` instance with the same client and
options.

#### `get_name(): string`

Return the entity name.


---

## VersionEntity

```php
$version = $client->Version();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `appName` | `string` | No |  |
| `buildDate` | `string` | No |  |
| `version` | `string` | No |  |

### Operations

#### `load(array $reqmatch, ?array $ctrl = null): mixed`

Load a single entity matching the given criteria. Throws on error.

```php
$result = $client->Version()->load();
```

### Common Methods

#### `data_get(): array`

Get the entity data. Returns a copy of the current data.

#### `data_set($data): void`

Set the entity data.

#### `match_get(): array`

Get the entity match criteria.

#### `match_set($match): void`

Set the entity match criteria.

#### `make(): VersionEntity`

Create a new `VersionEntity` instance with the same client and
options.

#### `get_name(): string`

Return the entity name.


---

## Features

| Feature | Version | Description |
| --- | --- | --- |
| `audit` | 0.0.1 | Structured audit trail of operations |
| `clienttrack` | 0.0.1 | Client identity and per-request correlation headers |
| `debug` | 0.0.1 | Request/response capture ring buffer for debugging |
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

```php
$client = new BluefinTecsUserBackofficeSDK([
  "feature" => [
    "audit" => ["active" => true],
    "clienttrack" => ["active" => true],
    "debug" => ["active" => true],
    "idempotency" => ["active" => true],
    "log" => ["active" => true],
    "metrics" => ["active" => true],
    "paging" => ["active" => true],
    "ratelimit" => ["active" => true],
    "retry" => ["active" => true],
    "telemetry" => ["active" => true],
    "test" => ["active" => true],
    "timeout" => ["active" => true],
  ],
]);
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

`audit`, `clienttrack`, `debug`, `idempotency`, `log`, `metrics`, `paging`, `telemetry`, `test` attach to pipeline hooks
rather than the transport, so their order does not affect what they observe.

#### `audit`

Structured audit trail of operations.

**Configuration**

| Option | Default |
|---|---|
| `active` | `false` |
| `actor` | `'anonymous'` |
| `max` | `1000` |

| Option | Type |
|---|---|
| `now` | function |
| `sink` | function |

These take no default: the feature behaves one way when you supply them and
another when you do not.

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

| Option | Type |
|---|---|
| `clientName` | string |
| `headers` | map |
| `idgen` | function |
| `sessionId` | string |

These take no default: the feature behaves one way when you supply them and
another when you do not.

**Usage**

Set `feature.clienttrack.active` to true in the client options, and override any option above in the same entry. Every option keeps
its default unless you name it.

**Considerations**

- Attaches to pipeline hooks, not the transport, so activation order does
  not change what it observes.
- Inactive by default: leaving it out costs nothing at runtime.

#### `debug`

Request/response capture ring buffer for debugging.

**Configuration**

| Option | Default |
|---|---|
| `active` | `false` |
| `max` | `100` |
| `redact` | `['authorization', 'cookie', 'set-cookie', 'api-key', 'apikey', 'x-api-key', 'idempotency-key']` |

| Option | Type |
|---|---|
| `now` | function |
| `onEntry` | function |

These take no default: the feature behaves one way when you supply them and
another when you do not.

**Usage**

Set `feature.debug.active` to true in the client options, and override any option above in the same entry. Every option keeps
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

| Option | Type |
|---|---|
| `keygen` | function |

These take no default: the feature behaves one way when you supply them and
another when you do not.

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

| Option | Type |
|---|---|
| `level` | string |
| `logger` | any |

These take no default: the feature behaves one way when you supply them and
another when you do not.

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

| Option | Type |
|---|---|
| `now` | function |

These take no default: the feature behaves one way when you supply them and
another when you do not.

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

| Option | Type |
|---|---|
| `limit` | number |
| `ops` | list |

These take no default: the feature behaves one way when you supply them and
another when you do not.

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

| Option | Type |
|---|---|
| `now` | function |
| `sleep` | function |

These take no default: the feature behaves one way when you supply them and
another when you do not.

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

| Option | Type |
|---|---|
| `jitter` | boolean |
| `sleep` | function |

These take no default: the feature behaves one way when you supply them and
another when you do not.

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

| Option | Type |
|---|---|
| `exporter` | function |
| `headers` | map |
| `idgen` | function |
| `now` | function |

These take no default: the feature behaves one way when you supply them and
another when you do not.

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

| Option | Type |
|---|---|
| `entity` | map |
| `net` | map |

These take no default: the feature behaves one way when you supply them and
another when you do not.

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

| Option | Type |
|---|---|
| `clearTimer` | function |
| `setTimer` | function |

These take no default: the feature behaves one way when you supply them and
another when you do not.

**Usage**

Set `feature.timeout.active` to true in the client options, and override any option above in the same entry. Every option keeps
its default unless you name it.

**Considerations**

- Wraps the transport: its place in the activation order decides what it
  sees. See [Ordering](#ordering) above.
- Inactive by default: leaving it out costs nothing at runtime.


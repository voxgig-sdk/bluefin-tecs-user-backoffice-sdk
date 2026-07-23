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
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |

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
| `client_secret` | `string` | Yes |  |
| `notification_email` | `string` | Yes |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |

### Operations

#### `create(array $reqdata, ?array $ctrl = null): mixed`

Create a new entity with the given data. Throws on error.

```php
$result = $client->OutputActivatePortalModule()->create([
  "client_secret" => null, // string
  "notification_email" => null, // string
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
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |

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
| `consumer_uuid` | `string` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |

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
| `consumer_uuid` | `string` | Yes |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |
| `role` | `array` | Yes |  |

### Operations

#### `create(array $reqdata, ?array $ctrl = null): mixed`

Create a new entity with the given data. Throws on error.

```php
$result = $client->OutputAssignRole()->create([
  "consumer_uuid" => null, // string
  "role" => null, // array
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
| `content_as_base64` | `string` | Yes |  |
| `mime_type` | `string` | Yes |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |

### Operations

#### `create(array $reqdata, ?array $ctrl = null): mixed`

Create a new entity with the given data. Throws on error.

```php
$result = $client->OutputChangeLogo()->create([
  "content_as_base64" => null, // string
  "mime_type" => null, // string
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
| `date_of_birth` | `string` | No |  |
| `description` | `string` | Yes |  |
| `drivers_license_number` | `string` | No |  |
| `email` | `string` | Yes |  |
| `first_name` | `string` | No |  |
| `identification_number` | `string` | No |  |
| `last_name` | `string` | No |  |
| `login` | `string` | Yes |  |
| `mandator` | `array` | No |  |
| `name` | `string` | Yes |  |
| `passport_number` | `string` | No |  |
| `phone` | `string` | Yes |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |
| `salutation` | `string` | No |  |
| `state` | `string` | No |  |
| `street1` | `string` | No |  |
| `street2` | `string` | No |  |
| `zip_code` | `string` | No |  |

### Operations

#### `create(array $reqdata, ?array $ctrl = null): mixed`

Create a new entity with the given data. Throws on error.

```php
$result = $client->OutputCreateMandator()->create([
  "description" => null, // string
  "email" => null, // string
  "login" => null, // string
  "name" => null, // string
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
| `mandator_name` | `string` | Yes |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |

### Operations

#### `create(array $reqdata, ?array $ctrl = null): mixed`

Create a new entity with the given data. Throws on error.

```php
$result = $client->OutputCreateServiceUser()->create([
  "mandator_name" => null, // string
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
| `consumer_uuid` | `string` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |

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
| `case_id` | `string` | No |  |
| `encoded_data_base64` | `string` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |

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
| `content_as_base64` | `string` | Yes |  |
| `mime_type` | `string` | Yes |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |

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
| `available_role` | `array` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |

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
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |
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
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |

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
| `group_role` | `array` | No |  |
| `pagination` | `array` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |
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
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |
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
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |
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
| `mandator_name` | `string` | Yes |  |
| `password` | `string` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |
| `username` | `string` | No |  |

### Operations

#### `create(array $reqdata, ?array $ctrl = null): mixed`

Create a new entity with the given data. Throws on error.

```php
$result = $client->OutputProvideCredential()->create([
  "mandator_name" => null, // string
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
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |
| `salutation` | `string` | No |  |
| `state` | `string` | No |  |
| `street1` | `string` | No |  |
| `street2` | `string` | No |  |
| `zip` | `string` | No |  |

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
| `consumer_uuid` | `string` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |
| `role` | `array` | No |  |

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
| `business_registration_number` | `string` | No |  |
| `consumer_uuid` | `string` | Yes |  |
| `email_confirmation_code` | `string` | No |  |
| `phone_number` | `string` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |

### Operations

#### `create(array $reqdata, ?array $ctrl = null): mixed`

Create a new entity with the given data. Throws on error.

```php
$result = $client->OutputResendLink()->create([
  "consumer_uuid" => null, // string
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
| `consumer_uuid` | `string` | No |  |
| `phone_number` | `string` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |

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
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |
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
  "consumer_uuid" => null, // string
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
| `consumer_language` | `string` | No |  |
| `email` | `string` | No |  |
| `first_name` | `string` | No |  |
| `last_name` | `string` | No |  |
| `phone_number` | `string` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |

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
| `app_name` | `string` | No |  |
| `build_date` | `string` | No |  |
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
| `test` | 0.0.1 | In-memory mock transport for testing without a live server |


Features are activated via the `feature` option:

```php
$client = new BluefinTecsUserBackofficeSDK([
  "feature" => [
    "test" => ["active" => true],
  ],
]);
```


# BluefinTecsUserBackoffice Perl SDK Reference

Complete API reference for the BluefinTecsUserBackoffice Perl SDK.


## BluefinTecsUserBackofficeSDK

### Constructor

```perl
use lib 'lib';
use BluefinTecsUserBackofficeSDK;

my $client = BluefinTecsUserBackofficeSDK->new($options);
```

Create a new SDK client instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `$options` | `hashref` | SDK configuration options. |
| `$options->{apikey}` | `string` | API key for authentication. |
| `$options->{base}` | `string` | Base URL for API requests. |
| `$options->{prefix}` | `string` | URL prefix appended after base. |
| `$options->{suffix}` | `string` | URL suffix appended after path. |
| `$options->{headers}` | `hashref` | Custom headers for all requests. |
| `$options->{feature}` | `hashref` | Feature configuration. |
| `$options->{system}` | `hashref` | System overrides (e.g. custom fetch). |


### Static Methods

#### `BluefinTecsUserBackofficeSDK->test($testopts, $sdkopts)`

Create a test client with mock features active. Both arguments may be `undef`.

```perl
my $client = BluefinTecsUserBackofficeSDK->test();
```


### Instance Methods

#### `OutputActivateDigitalModule($data)`

Create a new `OutputActivateDigitalModule` entity instance. Pass `undef` for no initial data.

#### `OutputActivatePortalModule($data)`

Create a new `OutputActivatePortalModule` entity instance. Pass `undef` for no initial data.

#### `OutputActivateStoreModule($data)`

Create a new `OutputActivateStoreModule` entity instance. Pass `undef` for no initial data.

#### `OutputActivateUser($data)`

Create a new `OutputActivateUser` entity instance. Pass `undef` for no initial data.

#### `OutputAssignRole($data)`

Create a new `OutputAssignRole` entity instance. Pass `undef` for no initial data.

#### `OutputChangeLogo($data)`

Create a new `OutputChangeLogo` entity instance. Pass `undef` for no initial data.

#### `OutputCreateMandator($data)`

Create a new `OutputCreateMandator` entity instance. Pass `undef` for no initial data.

#### `OutputCreateServiceUser($data)`

Create a new `OutputCreateServiceUser` entity instance. Pass `undef` for no initial data.

#### `OutputDeactivateUser($data)`

Create a new `OutputDeactivateUser` entity instance. Pass `undef` for no initial data.

#### `OutputGetKycDocument($data)`

Create a new `OutputGetKycDocument` entity instance. Pass `undef` for no initial data.

#### `OutputGetLogo($data)`

Create a new `OutputGetLogo` entity instance. Pass `undef` for no initial data.

#### `OutputListOfAvailableRole($data)`

Create a new `OutputListOfAvailableRole` entity instance. Pass `undef` for no initial data.

#### `OutputListOfMandator($data)`

Create a new `OutputListOfMandator` entity instance. Pass `undef` for no initial data.

#### `OutputListOfModule($data)`

Create a new `OutputListOfModule` entity instance. Pass `undef` for no initial data.

#### `OutputListOfRoleGroup($data)`

Create a new `OutputListOfRoleGroup` entity instance. Pass `undef` for no initial data.

#### `OutputListOfTransactionsHistory($data)`

Create a new `OutputListOfTransactionsHistory` entity instance. Pass `undef` for no initial data.

#### `OutputListOfUser($data)`

Create a new `OutputListOfUser` entity instance. Pass `undef` for no initial data.

#### `OutputProvideCredential($data)`

Create a new `OutputProvideCredential` entity instance. Pass `undef` for no initial data.

#### `OutputRegisterUser($data)`

Create a new `OutputRegisterUser` entity instance. Pass `undef` for no initial data.

#### `OutputRemoveRole($data)`

Create a new `OutputRemoveRole` entity instance. Pass `undef` for no initial data.

#### `OutputResendLink($data)`

Create a new `OutputResendLink` entity instance. Pass `undef` for no initial data.

#### `OutputResetPassword($data)`

Create a new `OutputResetPassword` entity instance. Pass `undef` for no initial data.

#### `OutputUpdateConsumer($data)`

Create a new `OutputUpdateConsumer` entity instance. Pass `undef` for no initial data.

#### `OutputUpdateProfile($data)`

Create a new `OutputUpdateProfile` entity instance. Pass `undef` for no initial data.

#### `Version($data)`

Create a new `Version` entity instance. Pass `undef` for no initial data.

#### `options_map() -> hashref`

Return a deep copy of the current SDK options.

#### `get_utility() -> utility`

Return a copy of the SDK utility object.

#### `direct($fetchargs) -> hashref`

Make a direct HTTP request to any API endpoint. Returns a result `hashref` with `ok`, `status`, `headers`, and `data` (or `err` on failure). This escape hatch never dies — branch on `$result->{ok}`.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `$fetchargs->{path}` | `string` | URL path with optional `{param}` placeholders. |
| `$fetchargs->{method}` | `string` | HTTP method (default: `'GET'`). |
| `$fetchargs->{params}` | `hashref` | Path parameter values. |
| `$fetchargs->{query}` | `hashref` | Query string parameters. |
| `$fetchargs->{headers}` | `hashref` | Request headers (merged with defaults). |
| `$fetchargs->{body}` | `any` | Request body (hashrefs are JSON-serialized). |

**Returns:** `hashref`

#### `prepare($fetchargs) -> hashref`

Prepare a fetch definition without sending. Returns the `fetchdef` and dies on error.


---

## OutputActivateDigitalModule entity

```perl
my $output_activate_digital_module = $client->OutputActivateDigitalModule;
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `responseCode` | `integer` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `create($reqdata, $ctrl) -> hashref`

Create a new entity with the given data. Returns the created entity data and dies on error.

```perl
my $result = $client->OutputActivateDigitalModule->create({
});
```

### Common Methods

#### `data_get() -> hashref`

Get the entity data.

#### `data_set($data)`

Set the entity data.

#### `match_get() -> hashref`

Get the entity match criteria.

#### `match_set($match)`

Set the entity match criteria.

#### `make() -> entity`

Create a new `OutputActivateDigitalModule` entity instance with the same options.

#### `get_name() -> string`

Return the entity name.


---

## OutputActivatePortalModule entity

```perl
my $output_activate_portal_module = $client->OutputActivatePortalModule;
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clientSecret` | `string` | Yes |  |
| `notificationEmail` | `string` | Yes |  |
| `responseCode` | `integer` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `create($reqdata, $ctrl) -> hashref`

Create a new entity with the given data. Returns the created entity data and dies on error.

```perl
my $result = $client->OutputActivatePortalModule->create({
    'clientSecret' => 'example_clientSecret',  # string
    'notificationEmail' => 'example_notificationEmail',  # string
});
```

### Common Methods

#### `data_get() -> hashref`

Get the entity data.

#### `data_set($data)`

Set the entity data.

#### `match_get() -> hashref`

Get the entity match criteria.

#### `match_set($match)`

Set the entity match criteria.

#### `make() -> entity`

Create a new `OutputActivatePortalModule` entity instance with the same options.

#### `get_name() -> string`

Return the entity name.


---

## OutputActivateStoreModule entity

```perl
my $output_activate_store_module = $client->OutputActivateStoreModule;
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `responseCode` | `integer` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `create($reqdata, $ctrl) -> hashref`

Create a new entity with the given data. Returns the created entity data and dies on error.

```perl
my $result = $client->OutputActivateStoreModule->create({
});
```

### Common Methods

#### `data_get() -> hashref`

Get the entity data.

#### `data_set($data)`

Set the entity data.

#### `match_get() -> hashref`

Get the entity match criteria.

#### `match_set($match)`

Set the entity match criteria.

#### `make() -> entity`

Create a new `OutputActivateStoreModule` entity instance with the same options.

#### `get_name() -> string`

Return the entity name.


---

## OutputActivateUser entity

```perl
my $output_activate_user = $client->OutputActivateUser;
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumerUUID` | `string` | No |  |
| `responseCode` | `integer` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `create($reqdata, $ctrl) -> hashref`

Create a new entity with the given data. Returns the created entity data and dies on error.

```perl
my $result = $client->OutputActivateUser->create({
});
```

### Common Methods

#### `data_get() -> hashref`

Get the entity data.

#### `data_set($data)`

Set the entity data.

#### `match_get() -> hashref`

Get the entity match criteria.

#### `match_set($match)`

Set the entity match criteria.

#### `make() -> entity`

Create a new `OutputActivateUser` entity instance with the same options.

#### `get_name() -> string`

Return the entity name.


---

## OutputAssignRole entity

```perl
my $output_assign_role = $client->OutputAssignRole;
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumerUUID` | `string` | Yes | Unique identifier of the consumer (user) to whom the role(s) will be assigned. |
| `responseCode` | `integer` | No | Response code: 0 indicates success; any non-zero value indicates an error. |
| `responseMessage` | `string` | No | A human-readable message providing additional details about the outcome. |
| `roles` | `arrayref` | Yes | List of roles to assign to the consumer. |

### Operations

#### `create($reqdata, $ctrl) -> hashref`

Create a new entity with the given data. Returns the created entity data and dies on error.

```perl
my $result = $client->OutputAssignRole->create({
    'consumerUUID' => 'example_consumerUUID',  # string
    'roles' => [],  # arrayref
});
```

### Common Methods

#### `data_get() -> hashref`

Get the entity data.

#### `data_set($data)`

Set the entity data.

#### `match_get() -> hashref`

Get the entity match criteria.

#### `match_set($match)`

Set the entity match criteria.

#### `make() -> entity`

Create a new `OutputAssignRole` entity instance with the same options.

#### `get_name() -> string`

Return the entity name.


---

## OutputChangeLogo entity

```perl
my $output_change_logo = $client->OutputChangeLogo;
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `contentAsBase64` | `string` | Yes | The content of the image as base64 encoded string |
| `mimeType` | `string` | Yes | The MIME type of the image |
| `responseCode` | `integer` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `create($reqdata, $ctrl) -> hashref`

Create a new entity with the given data. Returns the created entity data and dies on error.

```perl
my $result = $client->OutputChangeLogo->create({
    'contentAsBase64' => 'example_contentAsBase64',  # string
    'mimeType' => 'example_mimeType',  # string
});
```

### Common Methods

#### `data_get() -> hashref`

Get the entity data.

#### `data_set($data)`

Set the entity data.

#### `match_get() -> hashref`

Get the entity match criteria.

#### `match_set($match)`

Set the entity match criteria.

#### `make() -> entity`

Create a new `OutputChangeLogo` entity instance with the same options.

#### `get_name() -> string`

Return the entity name.


---

## OutputCreateMandator entity

```perl
my $output_create_mandator = $client->OutputCreateMandator;
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

#### `create($reqdata, $ctrl) -> hashref`

Create a new entity with the given data. Returns the created entity data and dies on error.

```perl
my $result = $client->OutputCreateMandator->create({
    'email' => 'example_email',  # string
    'login' => 'example_login',  # string
    'phone' => 'example_phone',  # string
});
```

### Common Methods

#### `data_get() -> hashref`

Get the entity data.

#### `data_set($data)`

Set the entity data.

#### `match_get() -> hashref`

Get the entity match criteria.

#### `match_set($match)`

Set the entity match criteria.

#### `make() -> entity`

Create a new `OutputCreateMandator` entity instance with the same options.

#### `get_name() -> string`

Return the entity name.


---

## OutputCreateServiceUser entity

```perl
my $output_create_service_user = $client->OutputCreateServiceUser;
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `mandatorName` | `string` | Yes |  |
| `responseCode` | `integer` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `create($reqdata, $ctrl) -> hashref`

Create a new entity with the given data. Returns the created entity data and dies on error.

```perl
my $result = $client->OutputCreateServiceUser->create({
    'mandatorName' => 'example_mandatorName',  # string
});
```

### Common Methods

#### `data_get() -> hashref`

Get the entity data.

#### `data_set($data)`

Set the entity data.

#### `match_get() -> hashref`

Get the entity match criteria.

#### `match_set($match)`

Set the entity match criteria.

#### `make() -> entity`

Create a new `OutputCreateServiceUser` entity instance with the same options.

#### `get_name() -> string`

Return the entity name.


---

## OutputDeactivateUser entity

```perl
my $output_deactivate_user = $client->OutputDeactivateUser;
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumerUUID` | `string` | No |  |
| `responseCode` | `integer` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `create($reqdata, $ctrl) -> hashref`

Create a new entity with the given data. Returns the created entity data and dies on error.

```perl
my $result = $client->OutputDeactivateUser->create({
});
```

### Common Methods

#### `data_get() -> hashref`

Get the entity data.

#### `data_set($data)`

Set the entity data.

#### `match_get() -> hashref`

Get the entity match criteria.

#### `match_set($match)`

Set the entity match criteria.

#### `make() -> entity`

Create a new `OutputDeactivateUser` entity instance with the same options.

#### `get_name() -> string`

Return the entity name.


---

## OutputGetKycDocument entity

```perl
my $output_get_kyc_document = $client->OutputGetKycDocument;
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `caseID` | `string` | No |  |
| `encodedDataBase64` | `string` | No |  |
| `responseCode` | `integer` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `create($reqdata, $ctrl) -> hashref`

Create a new entity with the given data. Returns the created entity data and dies on error.

```perl
my $result = $client->OutputGetKycDocument->create({
});
```

### Common Methods

#### `data_get() -> hashref`

Get the entity data.

#### `data_set($data)`

Set the entity data.

#### `match_get() -> hashref`

Get the entity match criteria.

#### `match_set($match)`

Set the entity match criteria.

#### `make() -> entity`

Create a new `OutputGetKycDocument` entity instance with the same options.

#### `get_name() -> string`

Return the entity name.


---

## OutputGetLogo entity

```perl
my $output_get_logo = $client->OutputGetLogo;
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `contentAsBase64` | `string` | Yes | The content of the image as base64 encoded string |
| `mimeType` | `string` | Yes | The MIME type of the image |
| `responseCode` | `integer` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `load($reqmatch, $ctrl) -> hashref`

Load a single entity matching the given criteria. Returns the entity data and dies on error.

```perl
my $result = $client->OutputGetLogo->load();
```

### Common Methods

#### `data_get() -> hashref`

Get the entity data.

#### `data_set($data)`

Set the entity data.

#### `match_get() -> hashref`

Get the entity match criteria.

#### `match_set($match)`

Set the entity match criteria.

#### `make() -> entity`

Create a new `OutputGetLogo` entity instance with the same options.

#### `get_name() -> string`

Return the entity name.


---

## OutputListOfAvailableRole entity

```perl
my $output_list_of_available_role = $client->OutputListOfAvailableRole;
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `availableRoles` | `arrayref` | No |  |
| `responseCode` | `integer` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `create($reqdata, $ctrl) -> hashref`

Create a new entity with the given data. Returns the created entity data and dies on error.

```perl
my $result = $client->OutputListOfAvailableRole->create({
});
```

### Common Methods

#### `data_get() -> hashref`

Get the entity data.

#### `data_set($data)`

Set the entity data.

#### `match_get() -> hashref`

Get the entity match criteria.

#### `match_set($match)`

Set the entity match criteria.

#### `make() -> entity`

Create a new `OutputListOfAvailableRole` entity instance with the same options.

#### `get_name() -> string`

Return the entity name.


---

## OutputListOfMandator entity

```perl
my $output_list_of_mandator = $client->OutputListOfMandator;
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `filter` | `hashref` | No |  |
| `list` | `arrayref` | No |  |
| `pagination` | `hashref` | No |  |
| `responseCode` | `integer` | No |  |
| `responseMessage` | `string` | No |  |
| `sorting` | `hashref` | No |  |

### Operations

#### `create($reqdata, $ctrl) -> hashref`

Create a new entity with the given data. Returns the created entity data and dies on error.

```perl
my $result = $client->OutputListOfMandator->create({
});
```

### Common Methods

#### `data_get() -> hashref`

Get the entity data.

#### `data_set($data)`

Set the entity data.

#### `match_get() -> hashref`

Get the entity match criteria.

#### `match_set($match)`

Set the entity match criteria.

#### `make() -> entity`

Create a new `OutputListOfMandator` entity instance with the same options.

#### `get_name() -> string`

Return the entity name.


---

## OutputListOfModule entity

```perl
my $output_list_of_module = $client->OutputListOfModule;
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `list` | `arrayref` | No |  |
| `pagination` | `hashref` | No |  |
| `responseCode` | `integer` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `create($reqdata, $ctrl) -> hashref`

Create a new entity with the given data. Returns the created entity data and dies on error.

```perl
my $result = $client->OutputListOfModule->create({
});
```

### Common Methods

#### `data_get() -> hashref`

Get the entity data.

#### `data_set($data)`

Set the entity data.

#### `match_get() -> hashref`

Get the entity match criteria.

#### `match_set($match)`

Set the entity match criteria.

#### `make() -> entity`

Create a new `OutputListOfModule` entity instance with the same options.

#### `get_name() -> string`

Return the entity name.


---

## OutputListOfRoleGroup entity

```perl
my $output_list_of_role_group = $client->OutputListOfRoleGroup;
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `filter` | `hashref` | No |  |
| `groupRoles` | `arrayref` | No |  |
| `pagination` | `hashref` | No |  |
| `responseCode` | `integer` | No |  |
| `responseMessage` | `string` | No |  |
| `sorting` | `hashref` | No |  |

### Operations

#### `create($reqdata, $ctrl) -> hashref`

Create a new entity with the given data. Returns the created entity data and dies on error.

```perl
my $result = $client->OutputListOfRoleGroup->create({
});
```

### Common Methods

#### `data_get() -> hashref`

Get the entity data.

#### `data_set($data)`

Set the entity data.

#### `match_get() -> hashref`

Get the entity match criteria.

#### `match_set($match)`

Set the entity match criteria.

#### `make() -> entity`

Create a new `OutputListOfRoleGroup` entity instance with the same options.

#### `get_name() -> string`

Return the entity name.


---

## OutputListOfTransactionsHistory entity

```perl
my $output_list_of_transactions_history = $client->OutputListOfTransactionsHistory;
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `filter` | `hashref` | No |  |
| `list` | `arrayref` | No |  |
| `pagination` | `hashref` | No |  |
| `responseCode` | `integer` | No |  |
| `responseMessage` | `string` | No |  |
| `sorting` | `hashref` | No |  |

### Operations

#### `create($reqdata, $ctrl) -> hashref`

Create a new entity with the given data. Returns the created entity data and dies on error.

```perl
my $result = $client->OutputListOfTransactionsHistory->create({
});
```

### Common Methods

#### `data_get() -> hashref`

Get the entity data.

#### `data_set($data)`

Set the entity data.

#### `match_get() -> hashref`

Get the entity match criteria.

#### `match_set($match)`

Set the entity match criteria.

#### `make() -> entity`

Create a new `OutputListOfTransactionsHistory` entity instance with the same options.

#### `get_name() -> string`

Return the entity name.


---

## OutputListOfUser entity

```perl
my $output_list_of_user = $client->OutputListOfUser;
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `filter` | `hashref` | No |  |
| `list` | `arrayref` | No |  |
| `pagination` | `hashref` | No |  |
| `responseCode` | `integer` | No |  |
| `responseMessage` | `string` | No |  |
| `sorting` | `hashref` | No |  |

### Operations

#### `create($reqdata, $ctrl) -> hashref`

Create a new entity with the given data. Returns the created entity data and dies on error.

```perl
my $result = $client->OutputListOfUser->create({
});
```

### Common Methods

#### `data_get() -> hashref`

Get the entity data.

#### `data_set($data)`

Set the entity data.

#### `match_get() -> hashref`

Get the entity match criteria.

#### `match_set($match)`

Set the entity match criteria.

#### `make() -> entity`

Create a new `OutputListOfUser` entity instance with the same options.

#### `get_name() -> string`

Return the entity name.


---

## OutputProvideCredential entity

```perl
my $output_provide_credential = $client->OutputProvideCredential;
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `mandatorName` | `string` | Yes |  |
| `password` | `string` | No |  |
| `responseCode` | `integer` | No |  |
| `responseMessage` | `string` | No |  |
| `username` | `string` | No |  |

### Operations

#### `create($reqdata, $ctrl) -> hashref`

Create a new entity with the given data. Returns the created entity data and dies on error.

```perl
my $result = $client->OutputProvideCredential->create({
    'mandatorName' => 'example_mandatorName',  # string
});
```

### Common Methods

#### `data_get() -> hashref`

Get the entity data.

#### `data_set($data)`

Set the entity data.

#### `match_get() -> hashref`

Get the entity match criteria.

#### `match_set($match)`

Set the entity match criteria.

#### `make() -> entity`

Create a new `OutputProvideCredential` entity instance with the same options.

#### `get_name() -> string`

Return the entity name.


---

## OutputRegisterUser entity

```perl
my $output_register_user = $client->OutputRegisterUser;
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
| `responseCode` | `integer` | No | Response code (0 indicates success; non-zero indicates an error). |
| `responseMessage` | `string` | No | Human-readable response message. |
| `salutation` | `string` | No | User's salutation (e.g., Mr., Ms.). |
| `state` | `string` | No | User's state or region. |
| `street1` | `string` | No | Primary address line. |
| `street2` | `string` | No | Secondary address line. |
| `zip` | `string` | No | Postal code. |

### Operations

#### `create($reqdata, $ctrl) -> hashref`

Create a new entity with the given data. Returns the created entity data and dies on error.

```perl
my $result = $client->OutputRegisterUser->create({
    'email' => 'example_email',  # string
});
```

### Common Methods

#### `data_get() -> hashref`

Get the entity data.

#### `data_set($data)`

Set the entity data.

#### `match_get() -> hashref`

Get the entity match criteria.

#### `match_set($match)`

Set the entity match criteria.

#### `make() -> entity`

Create a new `OutputRegisterUser` entity instance with the same options.

#### `get_name() -> string`

Return the entity name.


---

## OutputRemoveRole entity

```perl
my $output_remove_role = $client->OutputRemoveRole;
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumerUUID` | `string` | No |  |
| `responseCode` | `integer` | No |  |
| `responseMessage` | `string` | No |  |
| `roles` | `arrayref` | No |  |

### Operations

#### `create($reqdata, $ctrl) -> hashref`

Create a new entity with the given data. Returns the created entity data and dies on error.

```perl
my $result = $client->OutputRemoveRole->create({
});
```

### Common Methods

#### `data_get() -> hashref`

Get the entity data.

#### `data_set($data)`

Set the entity data.

#### `match_get() -> hashref`

Get the entity match criteria.

#### `match_set($match)`

Set the entity match criteria.

#### `make() -> entity`

Create a new `OutputRemoveRole` entity instance with the same options.

#### `get_name() -> string`

Return the entity name.


---

## OutputResendLink entity

```perl
my $output_resend_link = $client->OutputResendLink;
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `businessRegistrationNumber` | `string` | No |  |
| `consumerUUID` | `string` | Yes |  |
| `emailConfirmationCode` | `string` | No |  |
| `phoneNumber` | `string` | No |  |
| `responseCode` | `integer` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `create($reqdata, $ctrl) -> hashref`

Create a new entity with the given data. Returns the created entity data and dies on error.

```perl
my $result = $client->OutputResendLink->create({
    'consumerUUID' => 'example_consumerUUID',  # string
});
```

### Common Methods

#### `data_get() -> hashref`

Get the entity data.

#### `data_set($data)`

Set the entity data.

#### `match_get() -> hashref`

Get the entity match criteria.

#### `match_set($match)`

Set the entity match criteria.

#### `make() -> entity`

Create a new `OutputResendLink` entity instance with the same options.

#### `get_name() -> string`

Return the entity name.


---

## OutputResetPassword entity

```perl
my $output_reset_password = $client->OutputResetPassword;
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumerUuid` | `string` | No |  |
| `phoneNumber` | `string` | No |  |
| `responseCode` | `integer` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `create($reqdata, $ctrl) -> hashref`

Create a new entity with the given data. Returns the created entity data and dies on error.

```perl
my $result = $client->OutputResetPassword->create({
});
```

### Common Methods

#### `data_get() -> hashref`

Get the entity data.

#### `data_set($data)`

Set the entity data.

#### `match_get() -> hashref`

Get the entity match criteria.

#### `match_set($match)`

Set the entity match criteria.

#### `make() -> entity`

Create a new `OutputResetPassword` entity instance with the same options.

#### `get_name() -> string`

Return the entity name.


---

## OutputUpdateConsumer entity

```perl
my $output_update_consumer = $client->OutputUpdateConsumer;
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
| `kycPassed` | `boolean` | No |  |
| `lastName` | `string` | No |  |
| `nationality` | `string` | No |  |
| `passportNumber` | `string` | No |  |
| `phoneNumber` | `string` | No |  |
| `placeOfBirth` | `string` | No |  |
| `responseCode` | `integer` | No |  |
| `responseMessage` | `string` | No |  |
| `state` | `string` | No |  |
| `street1` | `string` | No |  |
| `street2` | `string` | No |  |
| `transactionhistory_id` | `string` | No |  |
| `zip` | `string` | No |  |

### Operations

#### `create($reqdata, $ctrl) -> hashref`

Create a new entity with the given data. Returns the created entity data and dies on error.

```perl
my $result = $client->OutputUpdateConsumer->create({
    'consumerUuid' => 'example_consumerUuid',  # string
});
```

### Common Methods

#### `data_get() -> hashref`

Get the entity data.

#### `data_set($data)`

Set the entity data.

#### `match_get() -> hashref`

Get the entity match criteria.

#### `match_set($match)`

Set the entity match criteria.

#### `make() -> entity`

Create a new `OutputUpdateConsumer` entity instance with the same options.

#### `get_name() -> string`

Return the entity name.


---

## OutputUpdateProfile entity

```perl
my $output_update_profile = $client->OutputUpdateProfile;
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumerLanguage` | `string` | No |  |
| `email` | `string` | No |  |
| `firstName` | `string` | No |  |
| `lastName` | `string` | No |  |
| `phoneNumber` | `string` | No |  |
| `responseCode` | `integer` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `create($reqdata, $ctrl) -> hashref`

Create a new entity with the given data. Returns the created entity data and dies on error.

```perl
my $result = $client->OutputUpdateProfile->create({
});
```

### Common Methods

#### `data_get() -> hashref`

Get the entity data.

#### `data_set($data)`

Set the entity data.

#### `match_get() -> hashref`

Get the entity match criteria.

#### `match_set($match)`

Set the entity match criteria.

#### `make() -> entity`

Create a new `OutputUpdateProfile` entity instance with the same options.

#### `get_name() -> string`

Return the entity name.


---

## Version entity

```perl
my $version = $client->Version;
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `appName` | `string` | No |  |
| `buildDate` | `string` | No |  |
| `version` | `string` | No |  |

### Operations

#### `load($reqmatch, $ctrl) -> hashref`

Load a single entity matching the given criteria. Returns the entity data and dies on error.

```perl
my $result = $client->Version->load();
```

### Common Methods

#### `data_get() -> hashref`

Get the entity data.

#### `data_set($data)`

Set the entity data.

#### `match_get() -> hashref`

Get the entity match criteria.

#### `match_set($match)`

Set the entity match criteria.

#### `make() -> entity`

Create a new `Version` entity instance with the same options.

#### `get_name() -> string`

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

```perl
my $client = BluefinTecsUserBackofficeSDK->new({
    'feature' => {
        'audit' => { 'active' => 1 },
        'clienttrack' => { 'active' => 1 },
        'idempotency' => { 'active' => 1 },
        'log' => { 'active' => 1 },
        'metrics' => { 'active' => 1 },
        'paging' => { 'active' => 1 },
        'ratelimit' => { 'active' => 1 },
        'retry' => { 'active' => 1 },
        'telemetry' => { 'active' => 1 },
        'test' => { 'active' => 1 },
        'timeout' => { 'active' => 1 },
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


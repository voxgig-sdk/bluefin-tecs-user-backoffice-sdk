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
| `consumerUUID` | `string` | Yes |  |
| `responseCode` | `integer` | No |  |
| `responseMessage` | `string` | No |  |
| `roles` | `arrayref` | Yes |  |

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
| `contentAsBase64` | `string` | Yes |  |
| `mimeType` | `string` | Yes |  |
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
| `contentAsBase64` | `string` | Yes |  |
| `mimeType` | `string` | Yes |  |
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
| `city` | `string` | No |  |
| `consumerId` | `string` | No |  |
| `consumerLanguage` | `string` | No |  |
| `country` | `string` | No |  |
| `dateOfBirth` | `string` | No |  |
| `driverLicenceNumber` | `string` | No |  |
| `email` | `string` | Yes |  |
| `firstName` | `string` | No |  |
| `identificationNumber` | `string` | No |  |
| `lastName` | `string` | No |  |
| `login` | `string` | No |  |
| `module` | `string` | No |  |
| `passportNumber` | `string` | No |  |
| `phone` | `string` | No |  |
| `responseCode` | `integer` | No |  |
| `responseMessage` | `string` | No |  |
| `salutation` | `string` | No |  |
| `state` | `string` | No |  |
| `street1` | `string` | No |  |
| `street2` | `string` | No |  |
| `zip` | `string` | No |  |

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
| `test` | 0.0.1 | In-memory mock transport for testing without a live server |


Features are activated via the `feature` option:

```perl
my $client = BluefinTecsUserBackofficeSDK->new({
    'feature' => {
        'test' => { 'active' => 1 },
    },
});
```


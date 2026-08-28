# BluefinTecsUserBackoffice Perl SDK



The Perl SDK for the BluefinTecsUserBackoffice API — an entity-oriented client
following idiomatic Perl conventions.

The SDK exposes the API as capitalised, semantic **Entities** — for example `$client->OutputActivateDigitalModule` — each
carrying a small, uniform set of operations (`load`, `create`) instead of raw URL
paths and query strings. You work with named resources and verbs, which
keeps the cognitive load low.

> Other languages, the CLI, and MCP server live alongside this one — see
> the [top-level README](../README.md).


## Install
This package is not yet published to CPAN. Install it from the GitHub
release tag (`perl/vX.Y.Z`, see [Releases](https://github.com/voxgig-sdk/bluefin-tecs-user-backoffice-sdk/releases)) or
from a source checkout.

The SDK is pure Perl with zero non-core runtime dependencies, so no build
step is required — just put its `lib` directory on `@INC`:

```perl
use lib 'lib';
use BluefinTecsUserBackofficeSDK;
```


## Tutorial: your first API call

This tutorial walks through creating a client, listing entities, and
loading a specific record.

### 1. Create a client

```perl
use lib 'lib';
use BluefinTecsUserBackofficeSDK;

my $client = BluefinTecsUserBackofficeSDK->new({
    'apikey' => $ENV{'BLUEFIN_TECS_USER_BACKOFFICE_APIKEY'},
});
```

### 4. Create, update, and remove

```perl
# Create — returns the ENTITY (call data_get for the record)
my $created = $client->OutputActivateDigitalModule->create({ 'responseCode' => 1, 'responseMessage' => 'example_responseMessage' });

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

```perl
my $result = $client->direct({
    'path' => '/api/resource/{id}',
    'method' => 'GET',
    'params' => { 'id' => 'example' },
});

if ($result->{ok}) {
    print $result->{status}, "\n";  # 200
    print $result->{data}, "\n";    # response body
}
else {
    # A non-2xx response carries status + data (the error body); a
    # transport-level failure carries err instead. Only one is present, so
    # read whichever is defined.
    print $result->{status}, ' ', ($result->{err} // ''), "\n";
}
```

### Prepare a request without sending it

```perl
# prepare() returns the fetch definition and dies on error.
my $fetchdef = $client->prepare({
    'path' => '/api/resource/{id}',
    'method' => 'DELETE',
    'params' => { 'id' => 'example' },
});

print $fetchdef->{url}, "\n";
print $fetchdef->{method}, "\n";
print $fetchdef->{headers}, "\n";
```

### Use test mode

Create a mock client for unit testing — no server required:

```perl
my $client = BluefinTecsUserBackofficeSDK->test(undef, undef);

# Entity ops return the ENTITY and dies on error;
# call data_get for the record.
my $outputgetlogo = $client->OutputGetLogo->load();
# $outputgetlogo contains the mock response record
```

### Use a custom fetch function

Replace the HTTP transport with your own coderef:

```perl
my $mock_fetch = sub {
    my ($url, $init) = @_;
    return ({
        'status' => 200,
        'statusText' => 'OK',
        'headers' => {},
        'json' => sub { { 'id' => 'mock01' } },
    }, undef);
};

my $client = BluefinTecsUserBackofficeSDK->new({
    'base' => 'http://localhost:8080',
    'system' => { 'fetch' => $mock_fetch },
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
cd perl && prove -Ilib t/
```


## Reference

### BluefinTecsUserBackofficeSDK

```perl
use lib 'lib';
use BluefinTecsUserBackofficeSDK;

my $client = BluefinTecsUserBackofficeSDK->new($options);
```

Creates a new SDK client.

| Option | Type | Description |
| --- | --- | --- |
| `apikey` | `string` | API key for authentication. |
| `base` | `string` | Base URL of the API server. |
| `prefix` | `string` | URL path prefix prepended to all requests. |
| `suffix` | `string` | URL path suffix appended to all requests. |
| `feature` | `hashref` | Feature activation flags. |
| `extend` | `arrayref` | Additional feature instances to load. |
| `system` | `hashref` | System overrides (e.g. custom `fetch` coderef). |

### test

```perl
my $client = BluefinTecsUserBackofficeSDK->test($testopts, $sdkopts);
```

Creates a test-mode client with mock transport. Both arguments may be `undef`.

### BluefinTecsUserBackofficeSDK methods

| Method | Signature | Description |
| --- | --- | --- |
| `options_map` | `() -> hashref` | Deep copy of current SDK options. |
| `get_utility` | `() -> utility` | Copy of the SDK utility object. |
| `prepare` | `($fetchargs) -> hashref` | Build an HTTP request definition without sending. Dies on error. |
| `direct` | `($fetchargs) -> hashref` | Build and send an HTTP request. Returns a result hashref (branch on `ok`). |
| `OutputActivateDigitalModule` | `($data) -> OutputActivateDigitalModule entity` | Create an OutputActivateDigitalModule entity instance. |
| `OutputActivatePortalModule` | `($data) -> OutputActivatePortalModule entity` | Create an OutputActivatePortalModule entity instance. |
| `OutputActivateStoreModule` | `($data) -> OutputActivateStoreModule entity` | Create an OutputActivateStoreModule entity instance. |
| `OutputActivateUser` | `($data) -> OutputActivateUser entity` | Create an OutputActivateUser entity instance. |
| `OutputAssignRole` | `($data) -> OutputAssignRole entity` | Create an OutputAssignRole entity instance. |
| `OutputChangeLogo` | `($data) -> OutputChangeLogo entity` | Create an OutputChangeLogo entity instance. |
| `OutputCreateMandator` | `($data) -> OutputCreateMandator entity` | Create an OutputCreateMandator entity instance. |
| `OutputCreateServiceUser` | `($data) -> OutputCreateServiceUser entity` | Create an OutputCreateServiceUser entity instance. |
| `OutputDeactivateUser` | `($data) -> OutputDeactivateUser entity` | Create an OutputDeactivateUser entity instance. |
| `OutputGetKycDocument` | `($data) -> OutputGetKycDocument entity` | Create an OutputGetKycDocument entity instance. |
| `OutputGetLogo` | `($data) -> OutputGetLogo entity` | Create an OutputGetLogo entity instance. |
| `OutputListOfAvailableRole` | `($data) -> OutputListOfAvailableRole entity` | Create an OutputListOfAvailableRole entity instance. |
| `OutputListOfMandator` | `($data) -> OutputListOfMandator entity` | Create an OutputListOfMandator entity instance. |
| `OutputListOfModule` | `($data) -> OutputListOfModule entity` | Create an OutputListOfModule entity instance. |
| `OutputListOfRoleGroup` | `($data) -> OutputListOfRoleGroup entity` | Create an OutputListOfRoleGroup entity instance. |
| `OutputListOfTransactionsHistory` | `($data) -> OutputListOfTransactionsHistory entity` | Create an OutputListOfTransactionsHistory entity instance. |
| `OutputListOfUser` | `($data) -> OutputListOfUser entity` | Create an OutputListOfUser entity instance. |
| `OutputProvideCredential` | `($data) -> OutputProvideCredential entity` | Create an OutputProvideCredential entity instance. |
| `OutputRegisterUser` | `($data) -> OutputRegisterUser entity` | Create an OutputRegisterUser entity instance. |
| `OutputRemoveRole` | `($data) -> OutputRemoveRole entity` | Create an OutputRemoveRole entity instance. |
| `OutputResendLink` | `($data) -> OutputResendLink entity` | Create an OutputResendLink entity instance. |
| `OutputResetPassword` | `($data) -> OutputResetPassword entity` | Create an OutputResetPassword entity instance. |
| `OutputUpdateConsumer` | `($data) -> OutputUpdateConsumer entity` | Create an OutputUpdateConsumer entity instance. |
| `OutputUpdateProfile` | `($data) -> OutputUpdateProfile entity` | Create an OutputUpdateProfile entity instance. |
| `Version` | `($data) -> Version entity` | Create a Version entity instance. |

### Entity interface

All entities share the same interface.

| Method | Signature | Description |
| --- | --- | --- |
| `load` | `($reqmatch, $ctrl) -> hashref` | Load a single entity by match criteria. Dies on error. |
| `create` | `($reqdata, $ctrl) -> hashref` | Create a new entity. Dies on error. |
| `data_get` | `() -> hashref` | Get entity data. |
| `data_set` | `($data)` | Set entity data. |
| `match_get` | `() -> hashref` | Get entity match criteria. |
| `match_set` | `($match)` | Set entity match criteria. |
| `make` | `() -> entity` | Create a new instance with the same options. |
| `get_name` | `() -> string` | Return the entity name. |

### Result shape

Entity operations return the ENTITY (call data_get for the record) (a `hashref` for single-entity
ops, an `arrayref` for `list`) and die on error. Wrap calls in
`eval { ... }` and inspect `$@` to handle failures.

The `direct()` escape hatch never dies — it returns a result `hashref`
you branch on via `$result->{ok}`:

| Key | Type | Description |
| --- | --- | --- |
| `ok` | `boolean` | True if the HTTP status is 2xx. |
| `status` | `integer` | HTTP status code. |
| `headers` | `hashref` | Response headers. |
| `data` | `any` | Parsed JSON response body. |

On error, `ok` is false and `err` contains the error value.

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
| `consumerUUID` | Unique identifier of the consumer (user) to whom the role(s) will be assigned. |
| `responseCode` | Response code: 0 indicates success; any non-zero value indicates an error. |
| `responseMessage` | A human-readable message providing additional details about the outcome. |
| `roles` | List of roles to assign to the consumer. |

Operations: Create.

API path: `/assignRoles`

#### OutputChangeLogo

| Field | Description |
| --- | --- |
| `contentAsBase64` | The content of the image as base64 encoded string |
| `mimeType` | The MIME type of the image |
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
| `contentAsBase64` | The content of the image as base64 encoded string |
| `mimeType` | The MIME type of the image |
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
| `city` | City where the user resides. |
| `consumerId` | User login or unique user identifier. |
| `consumerLanguage` | Preferred language for the user (e.g., 'en'). |
| `country` | User's country. |
| `dateOfBirth` | User's date of birth (expected format: dd.MM.yyyy). |
| `driverLicenceNumber` | User's driver's license number. |
| `email` | User's email address (must be unique). |
| `firstName` | User's first name. |
| `identificationNumber` | User's identification number. |
| `lastName` | User's last name. |
| `login` | User login identifier (should be unique). |
| `module` | Module identifier (if applicable). |
| `passportNumber` | User's passport number. |
| `phone` | User's phone number. |
| `responseCode` | Response code (0 indicates success; non-zero indicates an error). |
| `responseMessage` | Human-readable response message. |
| `salutation` | User's salutation (e.g., Mr., Ms.). |
| `state` | User's state or region. |
| `street1` | Primary address line. |
| `street2` | Secondary address line. |
| `zip` | Postal code. |

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

Create an instance: `my $output_activate_digital_module = $client->OutputActivateDigitalModule;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `responseCode` | `integer` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```perl
my $output_activate_digital_module = $client->OutputActivateDigitalModule->create({
});
```


### OutputActivatePortalModule

Create an instance: `my $output_activate_portal_module = $client->OutputActivatePortalModule;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clientSecret` | `string` |  |
| `notificationEmail` | `string` |  |
| `responseCode` | `integer` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```perl
my $output_activate_portal_module = $client->OutputActivatePortalModule->create({
    'clientSecret' => 'example_clientSecret',  # string
    'notificationEmail' => 'example_notificationEmail',  # string
});
```


### OutputActivateStoreModule

Create an instance: `my $output_activate_store_module = $client->OutputActivateStoreModule;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `responseCode` | `integer` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```perl
my $output_activate_store_module = $client->OutputActivateStoreModule->create({
});
```


### OutputActivateUser

Create an instance: `my $output_activate_user = $client->OutputActivateUser;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumerUUID` | `string` |  |
| `responseCode` | `integer` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```perl
my $output_activate_user = $client->OutputActivateUser->create({
});
```


### OutputAssignRole

Create an instance: `my $output_assign_role = $client->OutputAssignRole;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumerUUID` | `string` | Unique identifier of the consumer (user) to whom the role(s) will be assigned. |
| `responseCode` | `integer` | Response code: 0 indicates success; any non-zero value indicates an error. |
| `responseMessage` | `string` | A human-readable message providing additional details about the outcome. |
| `roles` | `arrayref` | List of roles to assign to the consumer. |

#### Example: Create

```perl
my $output_assign_role = $client->OutputAssignRole->create({
    'consumerUUID' => 'example_consumerUUID',  # string
    'roles' => [],  # arrayref
});
```


### OutputChangeLogo

Create an instance: `my $output_change_logo = $client->OutputChangeLogo;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `contentAsBase64` | `string` | The content of the image as base64 encoded string |
| `mimeType` | `string` | The MIME type of the image |
| `responseCode` | `integer` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```perl
my $output_change_logo = $client->OutputChangeLogo->create({
    'contentAsBase64' => 'example_contentAsBase64',  # string
    'mimeType' => 'example_mimeType',  # string
});
```


### OutputCreateMandator

Create an instance: `my $output_create_mandator = $client->OutputCreateMandator;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

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

```perl
my $output_create_mandator = $client->OutputCreateMandator->create({
    'email' => 'example_email',  # string
    'login' => 'example_login',  # string
    'phone' => 'example_phone',  # string
});
```


### OutputCreateServiceUser

Create an instance: `my $output_create_service_user = $client->OutputCreateServiceUser;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `mandatorName` | `string` |  |
| `responseCode` | `integer` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```perl
my $output_create_service_user = $client->OutputCreateServiceUser->create({
    'mandatorName' => 'example_mandatorName',  # string
});
```


### OutputDeactivateUser

Create an instance: `my $output_deactivate_user = $client->OutputDeactivateUser;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumerUUID` | `string` |  |
| `responseCode` | `integer` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```perl
my $output_deactivate_user = $client->OutputDeactivateUser->create({
});
```


### OutputGetKycDocument

Create an instance: `my $output_get_kyc_document = $client->OutputGetKycDocument;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `caseID` | `string` |  |
| `encodedDataBase64` | `string` |  |
| `responseCode` | `integer` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```perl
my $output_get_kyc_document = $client->OutputGetKycDocument->create({
});
```


### OutputGetLogo

Create an instance: `my $output_get_logo = $client->OutputGetLogo;`

#### Operations

| Method | Description |
| --- | --- |
| `load($match)` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `contentAsBase64` | `string` | The content of the image as base64 encoded string |
| `mimeType` | `string` | The MIME type of the image |
| `responseCode` | `integer` |  |
| `responseMessage` | `string` |  |

#### Example: Load

```perl
my $output_get_logo = $client->OutputGetLogo->load();
```


### OutputListOfAvailableRole

Create an instance: `my $output_list_of_available_role = $client->OutputListOfAvailableRole;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `availableRoles` | `arrayref` |  |
| `responseCode` | `integer` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```perl
my $output_list_of_available_role = $client->OutputListOfAvailableRole->create({
});
```


### OutputListOfMandator

Create an instance: `my $output_list_of_mandator = $client->OutputListOfMandator;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `filter` | `hashref` |  |
| `list` | `arrayref` |  |
| `pagination` | `hashref` |  |
| `responseCode` | `integer` |  |
| `responseMessage` | `string` |  |
| `sorting` | `hashref` |  |

#### Example: Create

```perl
my $output_list_of_mandator = $client->OutputListOfMandator->create({
});
```


### OutputListOfModule

Create an instance: `my $output_list_of_module = $client->OutputListOfModule;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `list` | `arrayref` |  |
| `pagination` | `hashref` |  |
| `responseCode` | `integer` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```perl
my $output_list_of_module = $client->OutputListOfModule->create({
});
```


### OutputListOfRoleGroup

Create an instance: `my $output_list_of_role_group = $client->OutputListOfRoleGroup;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `filter` | `hashref` |  |
| `groupRoles` | `arrayref` |  |
| `pagination` | `hashref` |  |
| `responseCode` | `integer` |  |
| `responseMessage` | `string` |  |
| `sorting` | `hashref` |  |

#### Example: Create

```perl
my $output_list_of_role_group = $client->OutputListOfRoleGroup->create({
});
```


### OutputListOfTransactionsHistory

Create an instance: `my $output_list_of_transactions_history = $client->OutputListOfTransactionsHistory;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `filter` | `hashref` |  |
| `list` | `arrayref` |  |
| `pagination` | `hashref` |  |
| `responseCode` | `integer` |  |
| `responseMessage` | `string` |  |
| `sorting` | `hashref` |  |

#### Example: Create

```perl
my $output_list_of_transactions_history = $client->OutputListOfTransactionsHistory->create({
});
```


### OutputListOfUser

Create an instance: `my $output_list_of_user = $client->OutputListOfUser;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `filter` | `hashref` |  |
| `list` | `arrayref` |  |
| `pagination` | `hashref` |  |
| `responseCode` | `integer` |  |
| `responseMessage` | `string` |  |
| `sorting` | `hashref` |  |

#### Example: Create

```perl
my $output_list_of_user = $client->OutputListOfUser->create({
});
```


### OutputProvideCredential

Create an instance: `my $output_provide_credential = $client->OutputProvideCredential;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `mandatorName` | `string` |  |
| `password` | `string` |  |
| `responseCode` | `integer` |  |
| `responseMessage` | `string` |  |
| `username` | `string` |  |

#### Example: Create

```perl
my $output_provide_credential = $client->OutputProvideCredential->create({
    'mandatorName' => 'example_mandatorName',  # string
});
```


### OutputRegisterUser

Create an instance: `my $output_register_user = $client->OutputRegisterUser;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

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
| `responseCode` | `integer` | Response code (0 indicates success; non-zero indicates an error). |
| `responseMessage` | `string` | Human-readable response message. |
| `salutation` | `string` | User's salutation (e.g., Mr., Ms.). |
| `state` | `string` | User's state or region. |
| `street1` | `string` | Primary address line. |
| `street2` | `string` | Secondary address line. |
| `zip` | `string` | Postal code. |

#### Example: Create

```perl
my $output_register_user = $client->OutputRegisterUser->create({
    'email' => 'example_email',  # string
});
```


### OutputRemoveRole

Create an instance: `my $output_remove_role = $client->OutputRemoveRole;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumerUUID` | `string` |  |
| `responseCode` | `integer` |  |
| `responseMessage` | `string` |  |
| `roles` | `arrayref` |  |

#### Example: Create

```perl
my $output_remove_role = $client->OutputRemoveRole->create({
});
```


### OutputResendLink

Create an instance: `my $output_resend_link = $client->OutputResendLink;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `businessRegistrationNumber` | `string` |  |
| `consumerUUID` | `string` |  |
| `emailConfirmationCode` | `string` |  |
| `phoneNumber` | `string` |  |
| `responseCode` | `integer` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```perl
my $output_resend_link = $client->OutputResendLink->create({
    'consumerUUID' => 'example_consumerUUID',  # string
});
```


### OutputResetPassword

Create an instance: `my $output_reset_password = $client->OutputResetPassword;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumerUuid` | `string` |  |
| `phoneNumber` | `string` |  |
| `responseCode` | `integer` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```perl
my $output_reset_password = $client->OutputResetPassword->create({
});
```


### OutputUpdateConsumer

Create an instance: `my $output_update_consumer = $client->OutputUpdateConsumer;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

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
| `kycPassed` | `boolean` |  |
| `lastName` | `string` |  |
| `nationality` | `string` |  |
| `passportNumber` | `string` |  |
| `phoneNumber` | `string` |  |
| `placeOfBirth` | `string` |  |
| `responseCode` | `integer` |  |
| `responseMessage` | `string` |  |
| `state` | `string` |  |
| `street1` | `string` |  |
| `street2` | `string` |  |
| `transactionhistory_id` | `string` |  |
| `zip` | `string` |  |

#### Example: Create

```perl
my $output_update_consumer = $client->OutputUpdateConsumer->create({
    'consumerUuid' => 'example_consumerUuid',  # string
});
```


### OutputUpdateProfile

Create an instance: `my $output_update_profile = $client->OutputUpdateProfile;`

#### Operations

| Method | Description |
| --- | --- |
| `create($data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumerLanguage` | `string` |  |
| `email` | `string` |  |
| `firstName` | `string` |  |
| `lastName` | `string` |  |
| `phoneNumber` | `string` |  |
| `responseCode` | `integer` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```perl
my $output_update_profile = $client->OutputUpdateProfile->create({
});
```


### Version

Create an instance: `my $version = $client->Version;`

#### Operations

| Method | Description |
| --- | --- |
| `load($match)` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `appName` | `string` |  |
| `buildDate` | `string` |  |
| `version` | `string` |  |

#### Example: Load

```perl
my $version = $client->Version->load();
```

## Features

This SDK ships 11 optional features. Each is **inactive until you
switch it on**, so an SDK you have not configured behaves exactly as if none of
them existed — no retries, no cache, no logging, no measurable overhead.

Activate a feature by name in the client options, alongside the options shown
above:

| Feature | What it does |
|---|---|
| [`audit`](#audit) | Structured audit trail of operations |
| [`clienttrack`](#clienttrack) | Client identity and per-request correlation headers |
| [`idempotency`](#idempotency) | Idempotency keys for safe retries of mutating operations |
| [`log`](#log) | Structured request and response logging |
| [`metrics`](#metrics) | Statistics capture: per-operation counters and latency |
| [`paging`](#paging) | Pagination signals for list operations |
| [`ratelimit`](#ratelimit) | Client-side rate limiting via a token bucket |
| [`retry`](#retry) | Automatic retry of transient failures with exponential backoff |
| [`telemetry`](#telemetry) | Distributed tracing spans with W3C trace-context propagation |
| [`test`](#test) | In-memory mock transport for testing without a live server |
| [`timeout`](#timeout) | Per-request timeout with transport abort |

> **Order matters for `ratelimit`, `retry`, `timeout`.** These wrap the
> transport, so each one wraps whatever is already installed: the order you
> activate them in IS the nesting order. Activating them as an ordered list
> rather than a map is what fixes that order.

### audit

Structured audit trail of operations.

| Option | Default |
|---|---|
| `active` | `false` |
| `actor` | `'anonymous'` |
| `max` | `1000` |

Set `feature.audit.active` to enable it, then override any of the options above.

### clienttrack

Client identity and per-request correlation headers.

| Option | Default |
|---|---|
| `active` | `false` |
| `clientVersion` | `'0.0.1'` |

Set `feature.clienttrack.active` to enable it, then override any of the options above.

### idempotency

Idempotency keys for safe retries of mutating operations.

| Option | Default |
|---|---|
| `active` | `false` |
| `header` | `'Idempotency-Key'` |
| `methods` | `['POST', 'PUT', 'PATCH', 'DELETE']` |
| `ops` | `['create', 'update', 'remove']` |

Set `feature.idempotency.active` to enable it, then override any of the options above.

### log

Structured request and response logging.

| Option | Default |
|---|---|
| `active` | `true` |

Set `feature.log.active` to enable it, then override any of the options above.

### metrics

Statistics capture: per-operation counters and latency.

| Option | Default |
|---|---|
| `active` | `false` |

Set `feature.metrics.active` to enable it, then override any of the options above.

### paging

Pagination signals for list operations.

| Option | Default |
|---|---|
| `active` | `false` |
| `afterVar` | `'after'` |
| `cursorParam` | `'cursor'` |
| `firstVar` | `'first'` |
| `limitParam` | `'limit'` |
| `pageParam` | `'page'` |
| `startPage` | `1` |

Set `feature.paging.active` to enable it, then override any of the options above.

### ratelimit

Client-side rate limiting via a token bucket.

| Option | Default |
|---|---|
| `active` | `false` |
| `burst` | `5` |
| `rate` | `5` |

Set `feature.ratelimit.active` to enable it, then override any of the options above.

`ratelimit` wraps the transport, so its position among the other
transport features decides what it sees. A feature activated later wraps one
activated earlier.

### retry

Automatic retry of transient failures with exponential backoff.

| Option | Default |
|---|---|
| `active` | `false` |
| `factor` | `2` |
| `maxDelay` | `2000` |
| `minDelay` | `50` |
| `retries` | `2` |
| `statuses` | `[408, 425, 429, 500, 502, 503, 504]` |

Set `feature.retry.active` to enable it, then override any of the options above.

`retry` wraps the transport, so its position among the other
transport features decides what it sees. A feature activated later wraps one
activated earlier.

### telemetry

Distributed tracing spans with W3C trace-context propagation.

| Option | Default |
|---|---|
| `active` | `false` |

Set `feature.telemetry.active` to enable it, then override any of the options above.

### test

In-memory mock transport for testing without a live server.

| Option | Default |
|---|---|
| `active` | `false` |

Set `feature.test.active` to enable it, then override any of the options above.

### timeout

Per-request timeout with transport abort.

| Option | Default |
|---|---|
| `active` | `false` |
| `ms` | `30000` |

Set `feature.timeout.active` to enable it, then override any of the options above.

`timeout` wraps the transport, so its position among the other
transport features decides what it sees. A feature activated later wraps one
activated earlier.


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

- **AuditFeature**: Structured audit trail of operations
- **ClienttrackFeature**: Client identity and per-request correlation headers
- **IdempotencyFeature**: Idempotency keys for safe retries of mutating operations
- **LogFeature**: Structured request and response logging
- **MetricsFeature**: Statistics capture: per-operation counters and latency
- **PagingFeature**: Pagination signals for list operations
- **RatelimitFeature**: Client-side rate limiting via a token bucket
- **RetryFeature**: Automatic retry of transient failures with exponential backoff
- **TelemetryFeature**: Distributed tracing spans with W3C trace-context propagation
- **TestFeature**: In-memory mock transport for testing without a live server
- **TimeoutFeature**: Per-request timeout with transport abort

Features are initialized in order. Hooks fire in the order features
were added, so later features can override earlier ones.

### Data as hashrefs

The Perl SDK uses plain hashrefs and arrayrefs throughout rather than typed
objects. This mirrors the dynamic nature of the API and keeps the SDK
flexible — no code generation is needed when the API schema changes.

Use `BluefinTecsUserBackofficeHelpers::to_map()` to safely validate that a value
is a hashref.

### Module structure

```
perl/
├── lib/BluefinTecsUserBackofficeSDK.pm    -- Main SDK module (package BluefinTecsUserBackofficeSDK)
├── config.pm                    -- Configuration
├── features.pm                  -- Feature factory
├── core/                        -- Core types and context
├── entity/                      -- Entity implementations
├── feature/                     -- Built-in features (base, test, log)
├── utility/                     -- Utility functions
├── lib/Voxgig/Struct.pm         -- Vendored struct library
└── t/                           -- Test suites
```

Load the main module with `use lib 'lib'; use BluefinTecsUserBackofficeSDK;` — it
pulls in the config, features, and core modules for you. Require entity or
utility modules directly only when needed.

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

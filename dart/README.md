# BluefinTecsUserBackoffice Dart SDK



The Dart SDK for the BluefinTecsUserBackoffice API — an entity-oriented client following idiomatic Dart conventions.

The SDK exposes the API as capitalised, semantic **Entities** — for example `client.OutputActivateDigitalModule()` — each
carrying a small, uniform set of operations (`load`, `create`) instead of raw URL
paths and query strings. You work with named resources and verbs, which
keeps the cognitive load low.

> Other languages, the CLI, and MCP server live alongside this one — see
> the [top-level README](../README.md).


## Install
This package is not yet published to pub.dev. Add it as a git
dependency (pinned to a release tag `dart/vX.Y.Z`, see
[Releases](https://github.com/voxgig-sdk/bluefin-tecs-user-backoffice-sdk/releases)) in your `pubspec.yaml`:

```yaml
dependencies:
  bluefin_tecs_user_backoffice_sdk:
    git:
      url: https://github.com/voxgig-sdk/bluefin-tecs-user-backoffice-sdk
      path: dart
      ref: dart/v0.1.1
```

Or depend on a local source checkout:

```yaml
dependencies:
  bluefin_tecs_user_backoffice_sdk:
    path: ../dart
```


## Tutorial: your first API call

This tutorial walks through creating a client, listing entities, and
loading a specific record.

### 1. Create a client

```dart
import 'dart:io';
import 'package:bluefin_tecs_user_backoffice_sdk/BluefinTecsUserBackofficeSDK.dart';

final client = BluefinTecsUserBackofficeSDK({
  'apikey': Platform.environment['BLUEFIN_TECS_USER_BACKOFFICE_APIKEY'],
});
```

### 4. Create, update, and remove

```dart
// Create — returns the ENTITY (call data() for the record)
final created = await client.OutputActivateDigitalModule().create({'responseCode': 1, 'responseMessage': 'example_responseMessage'});

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

```dart
final result = await client.direct({
  'path': '/api/resource/{id}',
  'method': 'GET',
  'params': {'id': 'example'},
});

if (true == result['ok']) {
  print(result['status']);  // 200
  print(result['data']);    // response body
} else {
  // A non-2xx response carries status + data (the error body); a
  // transport-level failure carries err instead. direct() never throws —
  // branch on result['ok'].
  print(result['status']);
  print(result['err']);
}
```

### Prepare a request without sending it

```dart
// prepare() returns the fetch definition (or an error value on failure).
final fetchdef = await client.prepare({
  'path': '/api/resource/{id}',
  'method': 'DELETE',
  'params': {'id': 'example'},
});

print(fetchdef['url']);
print(fetchdef['method']);
print(fetchdef['headers']);
```

### Use test mode

Create a mock client for unit testing — no server required:

```dart
final client = BluefinTecsUserBackofficeSDK.test();

// Entity ops return the ENTITY and throws on error;
// call data() for the record.
final outputgetlogo = await client.OutputGetLogo().load();
// outputgetlogo contains the mock response record
print(outputgetlogo);
```

### Use a custom fetch function

Replace the HTTP transport with your own function:

```dart
Future<dynamic> mockFetch(dynamic url, dynamic init) async {
  return {
    'status': 200,
    'statusText': 'OK',
    'headers': <String, dynamic>{},
    'json': () => {'id': 'mock01'},
  };
}

final client = BluefinTecsUserBackofficeSDK({
  'base': 'http://localhost:8080',
  'system': {
    'fetch': mockFetch,
  },
});
```

### Run live tests

Set the live-mode environment variables:

```bash
export BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE=TRUE
export BLUEFIN_TECS_USER_BACKOFFICE_APIKEY=<your-key>
```

Then run:

```bash
cd dart && dart run test/main.dart
```


## Reference

### BluefinTecsUserBackofficeSDK

```dart
import 'package:bluefin_tecs_user_backoffice_sdk/BluefinTecsUserBackofficeSDK.dart';

final client = BluefinTecsUserBackofficeSDK(options);
```

Creates a new SDK client.

| Option | Type | Description |
| --- | --- | --- |
| `apikey` | `String` | API key for authentication. |
| `base` | `String` | Base URL of the API server. |
| `prefix` | `String` | URL path prefix prepended to all requests. |
| `suffix` | `String` | URL path suffix appended to all requests. |
| `feature` | `Map` | Feature activation flags. |
| `extend` | `List` | Additional Feature instances to load. |
| `system` | `Map` | System overrides (e.g. custom `fetch` function). |

### test

```dart
final client = BluefinTecsUserBackofficeSDK.test(testopts, sdkopts);
```

Creates a test-mode client with mock transport. Both arguments may be `null`.

### BluefinTecsUserBackofficeSDK methods

| Method | Signature | Description |
| --- | --- | --- |
| `options` | `() -> Map` | Deep copy of current SDK options. |
| `utility` | `() -> Utility` | The SDK utility object. |
| `prepare` | `([fetchargs]) -> Future` | Build an HTTP request definition without sending. Returns an error value on failure. |
| `direct` | `([fetchargs]) -> Future<Map>` | Build and send an HTTP request. Returns a result map (branch on `ok`); never throws. |
| `OutputActivateDigitalModule` | `([entopts]) -> OutputActivateDigitalModuleEntity` | Create an OutputActivateDigitalModule entity instance. |
| `OutputActivatePortalModule` | `([entopts]) -> OutputActivatePortalModuleEntity` | Create an OutputActivatePortalModule entity instance. |
| `OutputActivateStoreModule` | `([entopts]) -> OutputActivateStoreModuleEntity` | Create an OutputActivateStoreModule entity instance. |
| `OutputActivateUser` | `([entopts]) -> OutputActivateUserEntity` | Create an OutputActivateUser entity instance. |
| `OutputAssignRole` | `([entopts]) -> OutputAssignRoleEntity` | Create an OutputAssignRole entity instance. |
| `OutputChangeLogo` | `([entopts]) -> OutputChangeLogoEntity` | Create an OutputChangeLogo entity instance. |
| `OutputCreateMandator` | `([entopts]) -> OutputCreateMandatorEntity` | Create an OutputCreateMandator entity instance. |
| `OutputCreateServiceUser` | `([entopts]) -> OutputCreateServiceUserEntity` | Create an OutputCreateServiceUser entity instance. |
| `OutputDeactivateUser` | `([entopts]) -> OutputDeactivateUserEntity` | Create an OutputDeactivateUser entity instance. |
| `OutputGetKycDocument` | `([entopts]) -> OutputGetKycDocumentEntity` | Create an OutputGetKycDocument entity instance. |
| `OutputGetLogo` | `([entopts]) -> OutputGetLogoEntity` | Create an OutputGetLogo entity instance. |
| `OutputListOfAvailableRole` | `([entopts]) -> OutputListOfAvailableRoleEntity` | Create an OutputListOfAvailableRole entity instance. |
| `OutputListOfMandator` | `([entopts]) -> OutputListOfMandatorEntity` | Create an OutputListOfMandator entity instance. |
| `OutputListOfModule` | `([entopts]) -> OutputListOfModuleEntity` | Create an OutputListOfModule entity instance. |
| `OutputListOfRoleGroup` | `([entopts]) -> OutputListOfRoleGroupEntity` | Create an OutputListOfRoleGroup entity instance. |
| `OutputListOfTransactionsHistory` | `([entopts]) -> OutputListOfTransactionsHistoryEntity` | Create an OutputListOfTransactionsHistory entity instance. |
| `OutputListOfUser` | `([entopts]) -> OutputListOfUserEntity` | Create an OutputListOfUser entity instance. |
| `OutputProvideCredential` | `([entopts]) -> OutputProvideCredentialEntity` | Create an OutputProvideCredential entity instance. |
| `OutputRegisterUser` | `([entopts]) -> OutputRegisterUserEntity` | Create an OutputRegisterUser entity instance. |
| `OutputRemoveRole` | `([entopts]) -> OutputRemoveRoleEntity` | Create an OutputRemoveRole entity instance. |
| `OutputResendLink` | `([entopts]) -> OutputResendLinkEntity` | Create an OutputResendLink entity instance. |
| `OutputResetPassword` | `([entopts]) -> OutputResetPasswordEntity` | Create an OutputResetPassword entity instance. |
| `OutputUpdateConsumer` | `([entopts]) -> OutputUpdateConsumerEntity` | Create an OutputUpdateConsumer entity instance. |
| `OutputUpdateProfile` | `([entopts]) -> OutputUpdateProfileEntity` | Create an OutputUpdateProfile entity instance. |
| `Version` | `([entopts]) -> VersionEntity` | Create a Version entity instance. |

### Entity interface

All entities share the same interface.

| Method | Signature | Description |
| --- | --- | --- |
| `load` | `(reqmatch, [ctrl]) -> Future<dynamic>` | Load a single entity by match criteria. Throws on error. |
| `create` | `(reqdata, [ctrl]) -> Future<dynamic>` | Create a new entity. Throws on error. |
| `data` | `([d]) -> Map` | Get (or, with an argument, set) entity data. |
| `match` | `([m]) -> Map` | Get (or, with an argument, set) entity match criteria. |
| `make` | `() -> Entity` | Create a new instance with the same options. |
| `entopts` | `() -> Map` | Return the entity options. |
| `Name` | `String` | The entity name (a public field). |

### Result shape

Entity operations return the ENTITY (call data() for the record) (a `Map` for single-entity
ops, a `List` of entity instances for `list`) and throw on error. Wrap calls
in `try`/`catch` to handle failures.

The `direct()` escape hatch never throws — it returns a result `Map` you
branch on via `result['ok']`:

| Key | Type | Description |
| --- | --- | --- |
| `ok` | `bool` | `true` if the HTTP status is 2xx. |
| `status` | `int` | HTTP status code. |
| `headers` | `Map` | Response headers. |
| `data` | `dynamic` | Parsed JSON response body. |

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

Create an instance: `final output_activate_digital_module = client.OutputActivateDigitalModule();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `responseCode` | `int` |  |
| `responseMessage` | `String` |  |

#### Example: Create

```dart
final output_activate_digital_module = await client.OutputActivateDigitalModule().create({
});
```


### OutputActivatePortalModule

Create an instance: `final output_activate_portal_module = client.OutputActivatePortalModule();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clientSecret` | `String` |  |
| `notificationEmail` | `String` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `String` |  |

#### Example: Create

```dart
final output_activate_portal_module = await client.OutputActivatePortalModule().create({
  'clientSecret': 'example_clientSecret',  // String
  'notificationEmail': 'example_notificationEmail',  // String
});
```


### OutputActivateStoreModule

Create an instance: `final output_activate_store_module = client.OutputActivateStoreModule();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `responseCode` | `int` |  |
| `responseMessage` | `String` |  |

#### Example: Create

```dart
final output_activate_store_module = await client.OutputActivateStoreModule().create({
});
```


### OutputActivateUser

Create an instance: `final output_activate_user = client.OutputActivateUser();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumerUUID` | `String` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `String` |  |

#### Example: Create

```dart
final output_activate_user = await client.OutputActivateUser().create({
});
```


### OutputAssignRole

Create an instance: `final output_assign_role = client.OutputAssignRole();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumerUUID` | `String` | Unique identifier of the consumer (user) to whom the role(s) will be assigned. |
| `responseCode` | `int` | Response code: 0 indicates success; any non-zero value indicates an error. |
| `responseMessage` | `String` | A human-readable message providing additional details about the outcome. |
| `roles` | `List<dynamic>` | List of roles to assign to the consumer. |

#### Example: Create

```dart
final output_assign_role = await client.OutputAssignRole().create({
  'consumerUUID': 'example_consumerUUID',  // String
  'roles': <dynamic>[],  // List<dynamic>
});
```


### OutputChangeLogo

Create an instance: `final output_change_logo = client.OutputChangeLogo();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `contentAsBase64` | `String` | The content of the image as base64 encoded string |
| `mimeType` | `String` | The MIME type of the image |
| `responseCode` | `int` |  |
| `responseMessage` | `String` |  |

#### Example: Create

```dart
final output_change_logo = await client.OutputChangeLogo().create({
  'contentAsBase64': 'example_contentAsBase64',  // String
  'mimeType': 'example_mimeType',  // String
});
```


### OutputCreateMandator

Create an instance: `final output_create_mandator = client.OutputCreateMandator();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `city` | `String` |  |
| `country` | `String` |  |
| `dateOfBirth` | `String` |  |
| `description` | `String` |  |
| `driversLicenseNumber` | `String` |  |
| `email` | `String` |  |
| `firstName` | `String` |  |
| `identificationNumber` | `String` |  |
| `lastName` | `String` |  |
| `login` | `String` |  |
| `name` | `String` |  |
| `passportNumber` | `String` |  |
| `phone` | `String` |  |
| `salutation` | `String` |  |
| `state` | `String` |  |
| `street1` | `String` |  |
| `street2` | `String` |  |
| `zipCode` | `String` |  |

#### Example: Create

```dart
final output_create_mandator = await client.OutputCreateMandator().create({
  'email': 'example_email',  // String
  'login': 'example_login',  // String
  'phone': 'example_phone',  // String
});
```


### OutputCreateServiceUser

Create an instance: `final output_create_service_user = client.OutputCreateServiceUser();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `mandatorName` | `String` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `String` |  |

#### Example: Create

```dart
final output_create_service_user = await client.OutputCreateServiceUser().create({
  'mandatorName': 'example_mandatorName',  // String
});
```


### OutputDeactivateUser

Create an instance: `final output_deactivate_user = client.OutputDeactivateUser();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumerUUID` | `String` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `String` |  |

#### Example: Create

```dart
final output_deactivate_user = await client.OutputDeactivateUser().create({
});
```


### OutputGetKycDocument

Create an instance: `final output_get_kyc_document = client.OutputGetKycDocument();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `caseID` | `String` |  |
| `encodedDataBase64` | `String` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `String` |  |

#### Example: Create

```dart
final output_get_kyc_document = await client.OutputGetKycDocument().create({
});
```


### OutputGetLogo

Create an instance: `final output_get_logo = client.OutputGetLogo();`

#### Operations

| Method | Description |
| --- | --- |
| `load(match)` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `contentAsBase64` | `String` | The content of the image as base64 encoded string |
| `mimeType` | `String` | The MIME type of the image |
| `responseCode` | `int` |  |
| `responseMessage` | `String` |  |

#### Example: Load

```dart
final output_get_logo = await client.OutputGetLogo().load();
```


### OutputListOfAvailableRole

Create an instance: `final output_list_of_available_role = client.OutputListOfAvailableRole();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `availableRoles` | `List<dynamic>` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `String` |  |

#### Example: Create

```dart
final output_list_of_available_role = await client.OutputListOfAvailableRole().create({
});
```


### OutputListOfMandator

Create an instance: `final output_list_of_mandator = client.OutputListOfMandator();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `filter` | `Map<String, dynamic>` |  |
| `list` | `List<dynamic>` |  |
| `pagination` | `Map<String, dynamic>` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `String` |  |
| `sorting` | `Map<String, dynamic>` |  |

#### Example: Create

```dart
final output_list_of_mandator = await client.OutputListOfMandator().create({
});
```


### OutputListOfModule

Create an instance: `final output_list_of_module = client.OutputListOfModule();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `list` | `List<dynamic>` |  |
| `pagination` | `Map<String, dynamic>` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `String` |  |

#### Example: Create

```dart
final output_list_of_module = await client.OutputListOfModule().create({
});
```


### OutputListOfRoleGroup

Create an instance: `final output_list_of_role_group = client.OutputListOfRoleGroup();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `filter` | `Map<String, dynamic>` |  |
| `groupRoles` | `List<dynamic>` |  |
| `pagination` | `Map<String, dynamic>` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `String` |  |
| `sorting` | `Map<String, dynamic>` |  |

#### Example: Create

```dart
final output_list_of_role_group = await client.OutputListOfRoleGroup().create({
});
```


### OutputListOfTransactionsHistory

Create an instance: `final output_list_of_transactions_history = client.OutputListOfTransactionsHistory();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `filter` | `Map<String, dynamic>` |  |
| `list` | `List<dynamic>` |  |
| `pagination` | `Map<String, dynamic>` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `String` |  |
| `sorting` | `Map<String, dynamic>` |  |

#### Example: Create

```dart
final output_list_of_transactions_history = await client.OutputListOfTransactionsHistory().create({
});
```


### OutputListOfUser

Create an instance: `final output_list_of_user = client.OutputListOfUser();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `filter` | `Map<String, dynamic>` |  |
| `list` | `List<dynamic>` |  |
| `pagination` | `Map<String, dynamic>` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `String` |  |
| `sorting` | `Map<String, dynamic>` |  |

#### Example: Create

```dart
final output_list_of_user = await client.OutputListOfUser().create({
});
```


### OutputProvideCredential

Create an instance: `final output_provide_credential = client.OutputProvideCredential();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `mandatorName` | `String` |  |
| `password` | `String` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `String` |  |
| `username` | `String` |  |

#### Example: Create

```dart
final output_provide_credential = await client.OutputProvideCredential().create({
  'mandatorName': 'example_mandatorName',  // String
});
```


### OutputRegisterUser

Create an instance: `final output_register_user = client.OutputRegisterUser();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `city` | `String` | City where the user resides. |
| `consumerId` | `String` | User login or unique user identifier. |
| `consumerLanguage` | `String` | Preferred language for the user (e.g., 'en'). |
| `country` | `String` | User's country. |
| `dateOfBirth` | `String` | User's date of birth (expected format: dd.MM.yyyy). |
| `driverLicenceNumber` | `String` | User's driver's license number. |
| `email` | `String` | User's email address (must be unique). |
| `firstName` | `String` | User's first name. |
| `identificationNumber` | `String` | User's identification number. |
| `lastName` | `String` | User's last name. |
| `login` | `String` | User login identifier (should be unique). |
| `module` | `String` | Module identifier (if applicable). |
| `passportNumber` | `String` | User's passport number. |
| `phone` | `String` | User's phone number. |
| `responseCode` | `int` | Response code (0 indicates success; non-zero indicates an error). |
| `responseMessage` | `String` | Human-readable response message. |
| `salutation` | `String` | User's salutation (e.g., Mr., Ms.). |
| `state` | `String` | User's state or region. |
| `street1` | `String` | Primary address line. |
| `street2` | `String` | Secondary address line. |
| `zip` | `String` | Postal code. |

#### Example: Create

```dart
final output_register_user = await client.OutputRegisterUser().create({
  'email': 'example_email',  // String
});
```


### OutputRemoveRole

Create an instance: `final output_remove_role = client.OutputRemoveRole();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumerUUID` | `String` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `String` |  |
| `roles` | `List<dynamic>` |  |

#### Example: Create

```dart
final output_remove_role = await client.OutputRemoveRole().create({
});
```


### OutputResendLink

Create an instance: `final output_resend_link = client.OutputResendLink();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `businessRegistrationNumber` | `String` |  |
| `consumerUUID` | `String` |  |
| `emailConfirmationCode` | `String` |  |
| `phoneNumber` | `String` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `String` |  |

#### Example: Create

```dart
final output_resend_link = await client.OutputResendLink().create({
  'consumerUUID': 'example_consumerUUID',  // String
});
```


### OutputResetPassword

Create an instance: `final output_reset_password = client.OutputResetPassword();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumerUuid` | `String` |  |
| `phoneNumber` | `String` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `String` |  |

#### Example: Create

```dart
final output_reset_password = await client.OutputResetPassword().create({
});
```


### OutputUpdateConsumer

Create an instance: `final output_update_consumer = client.OutputUpdateConsumer();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `city` | `String` |  |
| `consumerUuid` | `String` |  |
| `consumerlanguage` | `String` |  |
| `country` | `String` |  |
| `dateOfBirth` | `String` |  |
| `datetime_created` | `String` |  |
| `driverLicenceNumber` | `String` |  |
| `email` | `String` |  |
| `firstName` | `String` |  |
| `identificationNumber` | `String` |  |
| `kycPassed` | `bool` |  |
| `lastName` | `String` |  |
| `nationality` | `String` |  |
| `passportNumber` | `String` |  |
| `phoneNumber` | `String` |  |
| `placeOfBirth` | `String` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `String` |  |
| `state` | `String` |  |
| `street1` | `String` |  |
| `street2` | `String` |  |
| `transactionhistory_id` | `String` |  |
| `zip` | `String` |  |

#### Example: Create

```dart
final output_update_consumer = await client.OutputUpdateConsumer().create({
  'consumerUuid': 'example_consumerUuid',  // String
});
```


### OutputUpdateProfile

Create an instance: `final output_update_profile = client.OutputUpdateProfile();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumerLanguage` | `String` |  |
| `email` | `String` |  |
| `firstName` | `String` |  |
| `lastName` | `String` |  |
| `phoneNumber` | `String` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `String` |  |

#### Example: Create

```dart
final output_update_profile = await client.OutputUpdateProfile().create({
});
```


### Version

Create an instance: `final version = client.Version();`

#### Operations

| Method | Description |
| --- | --- |
| `load(match)` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `appName` | `String` |  |
| `buildDate` | `String` |  |
| `version` | `String` |  |

#### Example: Load

```dart
final version = await client.Version().load();
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

### Maps in, typed models alongside

The Dart SDK passes plain `Map<String, dynamic>` values through the
operation pipeline rather than requiring typed objects at every call. This
mirrors the dynamic nature of the API and keeps calls terse — a create is
just `create({'name': 'example'})`.

For a typed, documented view of each entity and operation, the generated
`BluefinTecsUserBackofficeTypes.dart` provides a class per entity plus per-op request/match
classes (e.g. `BluefinTecsUserBackoffice.fromMap(entity.data())` and `model.toMap()`), so you
can convert to and from those maps wherever you want compile-time structure.

### Package structure

```
dart/
├── lib/
│   ├── BluefinTecsUserBackofficeSDK.dart          -- Main SDK library (exported entry point)
│   ├── BluefinTecsUserBackofficeTypes.dart        -- Typed entity + request/match models
│   ├── BluefinTecsUserBackofficeEntityBase.dart   -- Base class for entities
│   ├── BluefinTecsUserBackofficeError.dart        -- SDK error type
│   ├── Config.dart              -- Configuration
│   ├── entity/                  -- Entity implementations
│   ├── feature/                 -- Built-in features (base, test, log, ...)
│   └── utility/                 -- Utility functions and vendored struct library
└── test/                        -- Test suites (dart run test/main.dart)
```

The main library (`BluefinTecsUserBackofficeSDK.dart`) re-exports the SDK class, the typed
models, and every entity class, so a single
`import 'package:bluefin_tecs_user_backoffice_sdk/BluefinTecsUserBackofficeSDK.dart';`
brings in everything you need.

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

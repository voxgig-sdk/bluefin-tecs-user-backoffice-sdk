# BluefinTecsUserBackoffice Dart SDK Reference

Complete API reference for the BluefinTecsUserBackoffice Dart SDK.

## BluefinTecsUserBackofficeSDK

### Constructor

```dart
import 'package:bluefin_tecs_user_backoffice_sdk/BluefinTecsUserBackofficeSDK.dart';

final client = BluefinTecsUserBackofficeSDK(options);
```

Create a new SDK client instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `options` | `Map` | SDK configuration options. |
| `options['apikey']` | `String` | API key for authentication. |
| `options['base']` | `String` | Base URL for API requests. |
| `options['prefix']` | `String` | URL prefix appended after base. |
| `options['suffix']` | `String` | URL suffix appended after path. |
| `options['headers']` | `Map` | Custom headers for all requests. |
| `options['feature']` | `Map` | Feature configuration. |
| `options['system']` | `Map` | System overrides (e.g. custom fetch). |


### Static Methods

#### `BluefinTecsUserBackofficeSDK.test([testopts, sdkopts])`

Create a test client with mock features active. Both arguments may be `null`.

```dart
final client = BluefinTecsUserBackofficeSDK.test();
```


### Instance Methods

#### `OutputActivateDigitalModule([entopts])`

Create a new `OutputActivateDigitalModuleEntity` instance. Pass no argument for no initial data.

#### `OutputActivatePortalModule([entopts])`

Create a new `OutputActivatePortalModuleEntity` instance. Pass no argument for no initial data.

#### `OutputActivateStoreModule([entopts])`

Create a new `OutputActivateStoreModuleEntity` instance. Pass no argument for no initial data.

#### `OutputActivateUser([entopts])`

Create a new `OutputActivateUserEntity` instance. Pass no argument for no initial data.

#### `OutputAssignRole([entopts])`

Create a new `OutputAssignRoleEntity` instance. Pass no argument for no initial data.

#### `OutputChangeLogo([entopts])`

Create a new `OutputChangeLogoEntity` instance. Pass no argument for no initial data.

#### `OutputCreateMandator([entopts])`

Create a new `OutputCreateMandatorEntity` instance. Pass no argument for no initial data.

#### `OutputCreateServiceUser([entopts])`

Create a new `OutputCreateServiceUserEntity` instance. Pass no argument for no initial data.

#### `OutputDeactivateUser([entopts])`

Create a new `OutputDeactivateUserEntity` instance. Pass no argument for no initial data.

#### `OutputGetKycDocument([entopts])`

Create a new `OutputGetKycDocumentEntity` instance. Pass no argument for no initial data.

#### `OutputGetLogo([entopts])`

Create a new `OutputGetLogoEntity` instance. Pass no argument for no initial data.

#### `OutputListOfAvailableRole([entopts])`

Create a new `OutputListOfAvailableRoleEntity` instance. Pass no argument for no initial data.

#### `OutputListOfMandator([entopts])`

Create a new `OutputListOfMandatorEntity` instance. Pass no argument for no initial data.

#### `OutputListOfModule([entopts])`

Create a new `OutputListOfModuleEntity` instance. Pass no argument for no initial data.

#### `OutputListOfRoleGroup([entopts])`

Create a new `OutputListOfRoleGroupEntity` instance. Pass no argument for no initial data.

#### `OutputListOfTransactionsHistory([entopts])`

Create a new `OutputListOfTransactionsHistoryEntity` instance. Pass no argument for no initial data.

#### `OutputListOfUser([entopts])`

Create a new `OutputListOfUserEntity` instance. Pass no argument for no initial data.

#### `OutputProvideCredential([entopts])`

Create a new `OutputProvideCredentialEntity` instance. Pass no argument for no initial data.

#### `OutputRegisterUser([entopts])`

Create a new `OutputRegisterUserEntity` instance. Pass no argument for no initial data.

#### `OutputRemoveRole([entopts])`

Create a new `OutputRemoveRoleEntity` instance. Pass no argument for no initial data.

#### `OutputResendLink([entopts])`

Create a new `OutputResendLinkEntity` instance. Pass no argument for no initial data.

#### `OutputResetPassword([entopts])`

Create a new `OutputResetPasswordEntity` instance. Pass no argument for no initial data.

#### `OutputUpdateConsumer([entopts])`

Create a new `OutputUpdateConsumerEntity` instance. Pass no argument for no initial data.

#### `OutputUpdateProfile([entopts])`

Create a new `OutputUpdateProfileEntity` instance. Pass no argument for no initial data.

#### `Version([entopts])`

Create a new `VersionEntity` instance. Pass no argument for no initial data.

#### `options() -> Map`

Return a deep copy of the current SDK options.

#### `utility() -> Utility`

Return the SDK utility object.

#### `direct([fetchargs]) -> Future<Map>`

Make a direct HTTP request to any API endpoint. Returns a result `Map` with `ok`, `status`, `headers`, and `data` (or `err` on failure). This escape hatch never throws — branch on `result['ok']`.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `fetchargs['path']` | `String` | URL path with optional `{param}` placeholders. |
| `fetchargs['method']` | `String` | HTTP method (default: `'GET'`). |
| `fetchargs['params']` | `Map` | Path parameter values. |
| `fetchargs['query']` | `Map` | Query string parameters. |
| `fetchargs['headers']` | `Map` | Request headers (merged with defaults). |
| `fetchargs['body']` | `dynamic` | Request body (maps are JSON-serialized). |

**Returns:** `Future<Map>`

#### `prepare([fetchargs]) -> Future`

Prepare a fetch definition without sending. Returns the `fetchdef` (or an error value on failure).


---

## OutputActivateDigitalModuleEntity

```dart
final output_activate_digital_module = client.OutputActivateDigitalModule();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `responseCode` | `int` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.OutputActivateDigitalModule().create({
});
```

### Common Methods

#### `data([d]) -> Map`

Get the entity data, or set it when passed an argument.

#### `match([m]) -> Map`

Get the entity match criteria, or set it when passed an argument.

#### `make() -> Entity`

Create a new `OutputActivateDigitalModuleEntity` instance with the same options.

#### `entopts() -> Map`

Return the entity options.


---

## OutputActivatePortalModuleEntity

```dart
final output_activate_portal_module = client.OutputActivatePortalModule();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clientSecret` | `String` | Yes |  |
| `notificationEmail` | `String` | Yes |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.OutputActivatePortalModule().create({
  'clientSecret': 'example_clientSecret',  // String
  'notificationEmail': 'example_notificationEmail',  // String
});
```

### Common Methods

#### `data([d]) -> Map`

Get the entity data, or set it when passed an argument.

#### `match([m]) -> Map`

Get the entity match criteria, or set it when passed an argument.

#### `make() -> Entity`

Create a new `OutputActivatePortalModuleEntity` instance with the same options.

#### `entopts() -> Map`

Return the entity options.


---

## OutputActivateStoreModuleEntity

```dart
final output_activate_store_module = client.OutputActivateStoreModule();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `responseCode` | `int` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.OutputActivateStoreModule().create({
});
```

### Common Methods

#### `data([d]) -> Map`

Get the entity data, or set it when passed an argument.

#### `match([m]) -> Map`

Get the entity match criteria, or set it when passed an argument.

#### `make() -> Entity`

Create a new `OutputActivateStoreModuleEntity` instance with the same options.

#### `entopts() -> Map`

Return the entity options.


---

## OutputActivateUserEntity

```dart
final output_activate_user = client.OutputActivateUser();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumerUUID` | `String` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.OutputActivateUser().create({
});
```

### Common Methods

#### `data([d]) -> Map`

Get the entity data, or set it when passed an argument.

#### `match([m]) -> Map`

Get the entity match criteria, or set it when passed an argument.

#### `make() -> Entity`

Create a new `OutputActivateUserEntity` instance with the same options.

#### `entopts() -> Map`

Return the entity options.


---

## OutputAssignRoleEntity

```dart
final output_assign_role = client.OutputAssignRole();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumerUUID` | `String` | Yes | Unique identifier of the consumer (user) to whom the role(s) will be assigned. |
| `responseCode` | `int` | No | Response code: 0 indicates success; any non-zero value indicates an error. |
| `responseMessage` | `String` | No | A human-readable message providing additional details about the outcome. |
| `roles` | `List<dynamic>` | Yes | List of roles to assign to the consumer. |

### Operations

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.OutputAssignRole().create({
  'consumerUUID': 'example_consumerUUID',  // String
  'roles': <dynamic>[],  // List<dynamic>
});
```

### Common Methods

#### `data([d]) -> Map`

Get the entity data, or set it when passed an argument.

#### `match([m]) -> Map`

Get the entity match criteria, or set it when passed an argument.

#### `make() -> Entity`

Create a new `OutputAssignRoleEntity` instance with the same options.

#### `entopts() -> Map`

Return the entity options.


---

## OutputChangeLogoEntity

```dart
final output_change_logo = client.OutputChangeLogo();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `contentAsBase64` | `String` | Yes | The content of the image as base64 encoded string |
| `mimeType` | `String` | Yes | The MIME type of the image |
| `responseCode` | `int` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.OutputChangeLogo().create({
  'contentAsBase64': 'example_contentAsBase64',  // String
  'mimeType': 'example_mimeType',  // String
});
```

### Common Methods

#### `data([d]) -> Map`

Get the entity data, or set it when passed an argument.

#### `match([m]) -> Map`

Get the entity match criteria, or set it when passed an argument.

#### `make() -> Entity`

Create a new `OutputChangeLogoEntity` instance with the same options.

#### `entopts() -> Map`

Return the entity options.


---

## OutputCreateMandatorEntity

```dart
final output_create_mandator = client.OutputCreateMandator();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `city` | `String` | No |  |
| `country` | `String` | No |  |
| `dateOfBirth` | `String` | No |  |
| `description` | `String` | No |  |
| `driversLicenseNumber` | `String` | No |  |
| `email` | `String` | Yes |  |
| `firstName` | `String` | No |  |
| `identificationNumber` | `String` | No |  |
| `lastName` | `String` | No |  |
| `login` | `String` | Yes |  |
| `name` | `String` | No |  |
| `passportNumber` | `String` | No |  |
| `phone` | `String` | Yes |  |
| `salutation` | `String` | No |  |
| `state` | `String` | No |  |
| `street1` | `String` | No |  |
| `street2` | `String` | No |  |
| `zipCode` | `String` | No |  |

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

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.OutputCreateMandator().create({
  'email': 'example_email',  // String
  'login': 'example_login',  // String
  'phone': 'example_phone',  // String
});
```

### Common Methods

#### `data([d]) -> Map`

Get the entity data, or set it when passed an argument.

#### `match([m]) -> Map`

Get the entity match criteria, or set it when passed an argument.

#### `make() -> Entity`

Create a new `OutputCreateMandatorEntity` instance with the same options.

#### `entopts() -> Map`

Return the entity options.


---

## OutputCreateServiceUserEntity

```dart
final output_create_service_user = client.OutputCreateServiceUser();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `mandatorName` | `String` | Yes |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.OutputCreateServiceUser().create({
  'mandatorName': 'example_mandatorName',  // String
});
```

### Common Methods

#### `data([d]) -> Map`

Get the entity data, or set it when passed an argument.

#### `match([m]) -> Map`

Get the entity match criteria, or set it when passed an argument.

#### `make() -> Entity`

Create a new `OutputCreateServiceUserEntity` instance with the same options.

#### `entopts() -> Map`

Return the entity options.


---

## OutputDeactivateUserEntity

```dart
final output_deactivate_user = client.OutputDeactivateUser();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumerUUID` | `String` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.OutputDeactivateUser().create({
});
```

### Common Methods

#### `data([d]) -> Map`

Get the entity data, or set it when passed an argument.

#### `match([m]) -> Map`

Get the entity match criteria, or set it when passed an argument.

#### `make() -> Entity`

Create a new `OutputDeactivateUserEntity` instance with the same options.

#### `entopts() -> Map`

Return the entity options.


---

## OutputGetKycDocumentEntity

```dart
final output_get_kyc_document = client.OutputGetKycDocument();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `caseID` | `String` | No |  |
| `encodedDataBase64` | `String` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.OutputGetKycDocument().create({
});
```

### Common Methods

#### `data([d]) -> Map`

Get the entity data, or set it when passed an argument.

#### `match([m]) -> Map`

Get the entity match criteria, or set it when passed an argument.

#### `make() -> Entity`

Create a new `OutputGetKycDocumentEntity` instance with the same options.

#### `entopts() -> Map`

Return the entity options.


---

## OutputGetLogoEntity

```dart
final output_get_logo = client.OutputGetLogo();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `contentAsBase64` | `String` | Yes | The content of the image as base64 encoded string |
| `mimeType` | `String` | Yes | The MIME type of the image |
| `responseCode` | `int` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `load(reqmatch, [ctrl]) -> Future<dynamic>`

Load a single entity matching the given criteria. Returns the entity data and throws on error.

```dart
final result = await client.OutputGetLogo().load();
```

### Common Methods

#### `data([d]) -> Map`

Get the entity data, or set it when passed an argument.

#### `match([m]) -> Map`

Get the entity match criteria, or set it when passed an argument.

#### `make() -> Entity`

Create a new `OutputGetLogoEntity` instance with the same options.

#### `entopts() -> Map`

Return the entity options.


---

## OutputListOfAvailableRoleEntity

```dart
final output_list_of_available_role = client.OutputListOfAvailableRole();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `availableRoles` | `List<dynamic>` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.OutputListOfAvailableRole().create({
});
```

### Common Methods

#### `data([d]) -> Map`

Get the entity data, or set it when passed an argument.

#### `match([m]) -> Map`

Get the entity match criteria, or set it when passed an argument.

#### `make() -> Entity`

Create a new `OutputListOfAvailableRoleEntity` instance with the same options.

#### `entopts() -> Map`

Return the entity options.


---

## OutputListOfMandatorEntity

```dart
final output_list_of_mandator = client.OutputListOfMandator();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `filter` | `Map<String, dynamic>` | No |  |
| `list` | `List<dynamic>` | No |  |
| `pagination` | `Map<String, dynamic>` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `String` | No |  |
| `sorting` | `Map<String, dynamic>` | No |  |

### Operations

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.OutputListOfMandator().create({
});
```

### Common Methods

#### `data([d]) -> Map`

Get the entity data, or set it when passed an argument.

#### `match([m]) -> Map`

Get the entity match criteria, or set it when passed an argument.

#### `make() -> Entity`

Create a new `OutputListOfMandatorEntity` instance with the same options.

#### `entopts() -> Map`

Return the entity options.


---

## OutputListOfModuleEntity

```dart
final output_list_of_module = client.OutputListOfModule();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `list` | `List<dynamic>` | No |  |
| `pagination` | `Map<String, dynamic>` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.OutputListOfModule().create({
});
```

### Common Methods

#### `data([d]) -> Map`

Get the entity data, or set it when passed an argument.

#### `match([m]) -> Map`

Get the entity match criteria, or set it when passed an argument.

#### `make() -> Entity`

Create a new `OutputListOfModuleEntity` instance with the same options.

#### `entopts() -> Map`

Return the entity options.


---

## OutputListOfRoleGroupEntity

```dart
final output_list_of_role_group = client.OutputListOfRoleGroup();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `filter` | `Map<String, dynamic>` | No |  |
| `groupRoles` | `List<dynamic>` | No |  |
| `pagination` | `Map<String, dynamic>` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `String` | No |  |
| `sorting` | `Map<String, dynamic>` | No |  |

### Operations

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.OutputListOfRoleGroup().create({
});
```

### Common Methods

#### `data([d]) -> Map`

Get the entity data, or set it when passed an argument.

#### `match([m]) -> Map`

Get the entity match criteria, or set it when passed an argument.

#### `make() -> Entity`

Create a new `OutputListOfRoleGroupEntity` instance with the same options.

#### `entopts() -> Map`

Return the entity options.


---

## OutputListOfTransactionsHistoryEntity

```dart
final output_list_of_transactions_history = client.OutputListOfTransactionsHistory();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `filter` | `Map<String, dynamic>` | No |  |
| `list` | `List<dynamic>` | No |  |
| `pagination` | `Map<String, dynamic>` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `String` | No |  |
| `sorting` | `Map<String, dynamic>` | No |  |

### Operations

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.OutputListOfTransactionsHistory().create({
});
```

### Common Methods

#### `data([d]) -> Map`

Get the entity data, or set it when passed an argument.

#### `match([m]) -> Map`

Get the entity match criteria, or set it when passed an argument.

#### `make() -> Entity`

Create a new `OutputListOfTransactionsHistoryEntity` instance with the same options.

#### `entopts() -> Map`

Return the entity options.


---

## OutputListOfUserEntity

```dart
final output_list_of_user = client.OutputListOfUser();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `filter` | `Map<String, dynamic>` | No |  |
| `list` | `List<dynamic>` | No |  |
| `pagination` | `Map<String, dynamic>` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `String` | No |  |
| `sorting` | `Map<String, dynamic>` | No |  |

### Operations

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.OutputListOfUser().create({
});
```

### Common Methods

#### `data([d]) -> Map`

Get the entity data, or set it when passed an argument.

#### `match([m]) -> Map`

Get the entity match criteria, or set it when passed an argument.

#### `make() -> Entity`

Create a new `OutputListOfUserEntity` instance with the same options.

#### `entopts() -> Map`

Return the entity options.


---

## OutputProvideCredentialEntity

```dart
final output_provide_credential = client.OutputProvideCredential();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `mandatorName` | `String` | Yes |  |
| `password` | `String` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `String` | No |  |
| `username` | `String` | No |  |

### Operations

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.OutputProvideCredential().create({
  'mandatorName': 'example_mandatorName',  // String
});
```

### Common Methods

#### `data([d]) -> Map`

Get the entity data, or set it when passed an argument.

#### `match([m]) -> Map`

Get the entity match criteria, or set it when passed an argument.

#### `make() -> Entity`

Create a new `OutputProvideCredentialEntity` instance with the same options.

#### `entopts() -> Map`

Return the entity options.


---

## OutputRegisterUserEntity

```dart
final output_register_user = client.OutputRegisterUser();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `city` | `String` | No | City where the user resides. |
| `consumerId` | `String` | No | User login or unique user identifier. |
| `consumerLanguage` | `String` | No | Preferred language for the user (e.g., 'en'). |
| `country` | `String` | No | User's country. |
| `dateOfBirth` | `String` | No | User's date of birth (expected format: dd.MM.yyyy). |
| `driverLicenceNumber` | `String` | No | User's driver's license number. |
| `email` | `String` | Yes | User's email address (must be unique). |
| `firstName` | `String` | No | User's first name. |
| `identificationNumber` | `String` | No | User's identification number. |
| `lastName` | `String` | No | User's last name. |
| `login` | `String` | No | User login identifier (should be unique). |
| `module` | `String` | No | Module identifier (if applicable). |
| `passportNumber` | `String` | No | User's passport number. |
| `phone` | `String` | No | User's phone number. |
| `responseCode` | `int` | No | Response code (0 indicates success; non-zero indicates an error). |
| `responseMessage` | `String` | No | Human-readable response message. |
| `salutation` | `String` | No | User's salutation (e.g., Mr., Ms.). |
| `state` | `String` | No | User's state or region. |
| `street1` | `String` | No | Primary address line. |
| `street2` | `String` | No | Secondary address line. |
| `zip` | `String` | No | Postal code. |

### Operations

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.OutputRegisterUser().create({
  'email': 'example_email',  // String
});
```

### Common Methods

#### `data([d]) -> Map`

Get the entity data, or set it when passed an argument.

#### `match([m]) -> Map`

Get the entity match criteria, or set it when passed an argument.

#### `make() -> Entity`

Create a new `OutputRegisterUserEntity` instance with the same options.

#### `entopts() -> Map`

Return the entity options.


---

## OutputRemoveRoleEntity

```dart
final output_remove_role = client.OutputRemoveRole();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumerUUID` | `String` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `String` | No |  |
| `roles` | `List<dynamic>` | No |  |

### Operations

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.OutputRemoveRole().create({
});
```

### Common Methods

#### `data([d]) -> Map`

Get the entity data, or set it when passed an argument.

#### `match([m]) -> Map`

Get the entity match criteria, or set it when passed an argument.

#### `make() -> Entity`

Create a new `OutputRemoveRoleEntity` instance with the same options.

#### `entopts() -> Map`

Return the entity options.


---

## OutputResendLinkEntity

```dart
final output_resend_link = client.OutputResendLink();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `businessRegistrationNumber` | `String` | No |  |
| `consumerUUID` | `String` | Yes |  |
| `emailConfirmationCode` | `String` | No |  |
| `phoneNumber` | `String` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.OutputResendLink().create({
  'consumerUUID': 'example_consumerUUID',  // String
});
```

### Common Methods

#### `data([d]) -> Map`

Get the entity data, or set it when passed an argument.

#### `match([m]) -> Map`

Get the entity match criteria, or set it when passed an argument.

#### `make() -> Entity`

Create a new `OutputResendLinkEntity` instance with the same options.

#### `entopts() -> Map`

Return the entity options.


---

## OutputResetPasswordEntity

```dart
final output_reset_password = client.OutputResetPassword();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumerUuid` | `String` | No |  |
| `phoneNumber` | `String` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.OutputResetPassword().create({
});
```

### Common Methods

#### `data([d]) -> Map`

Get the entity data, or set it when passed an argument.

#### `match([m]) -> Map`

Get the entity match criteria, or set it when passed an argument.

#### `make() -> Entity`

Create a new `OutputResetPasswordEntity` instance with the same options.

#### `entopts() -> Map`

Return the entity options.


---

## OutputUpdateConsumerEntity

```dart
final output_update_consumer = client.OutputUpdateConsumer();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `city` | `String` | No |  |
| `consumerUuid` | `String` | Yes |  |
| `consumerlanguage` | `String` | No |  |
| `country` | `String` | No |  |
| `dateOfBirth` | `String` | No |  |
| `datetime_created` | `String` | No |  |
| `driverLicenceNumber` | `String` | No |  |
| `email` | `String` | No |  |
| `firstName` | `String` | No |  |
| `identificationNumber` | `String` | No |  |
| `kycPassed` | `bool` | No |  |
| `lastName` | `String` | No |  |
| `nationality` | `String` | No |  |
| `passportNumber` | `String` | No |  |
| `phoneNumber` | `String` | No |  |
| `placeOfBirth` | `String` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `String` | No |  |
| `state` | `String` | No |  |
| `street1` | `String` | No |  |
| `street2` | `String` | No |  |
| `transactionhistory_id` | `String` | No |  |
| `zip` | `String` | No |  |

### Operations

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.OutputUpdateConsumer().create({
  'consumerUuid': 'example_consumerUuid',  // String
});
```

### Common Methods

#### `data([d]) -> Map`

Get the entity data, or set it when passed an argument.

#### `match([m]) -> Map`

Get the entity match criteria, or set it when passed an argument.

#### `make() -> Entity`

Create a new `OutputUpdateConsumerEntity` instance with the same options.

#### `entopts() -> Map`

Return the entity options.


---

## OutputUpdateProfileEntity

```dart
final output_update_profile = client.OutputUpdateProfile();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumerLanguage` | `String` | No |  |
| `email` | `String` | No |  |
| `firstName` | `String` | No |  |
| `lastName` | `String` | No |  |
| `phoneNumber` | `String` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `String` | No |  |

### Operations

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.OutputUpdateProfile().create({
});
```

### Common Methods

#### `data([d]) -> Map`

Get the entity data, or set it when passed an argument.

#### `match([m]) -> Map`

Get the entity match criteria, or set it when passed an argument.

#### `make() -> Entity`

Create a new `OutputUpdateProfileEntity` instance with the same options.

#### `entopts() -> Map`

Return the entity options.


---

## VersionEntity

```dart
final version = client.Version();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `appName` | `String` | No |  |
| `buildDate` | `String` | No |  |
| `version` | `String` | No |  |

### Operations

#### `load(reqmatch, [ctrl]) -> Future<dynamic>`

Load a single entity matching the given criteria. Returns the entity data and throws on error.

```dart
final result = await client.Version().load();
```

### Common Methods

#### `data([d]) -> Map`

Get the entity data, or set it when passed an argument.

#### `match([m]) -> Map`

Get the entity match criteria, or set it when passed an argument.

#### `make() -> Entity`

Create a new `VersionEntity` instance with the same options.

#### `entopts() -> Map`

Return the entity options.


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

```dart
final client = BluefinTecsUserBackofficeSDK({
  'feature': {
    'audit': {'active': true},
    'clienttrack': {'active': true},
    'debug': {'active': true},
    'idempotency': {'active': true},
    'log': {'active': true},
    'metrics': {'active': true},
    'paging': {'active': true},
    'ratelimit': {'active': true},
    'retry': {'active': true},
    'telemetry': {'active': true},
    'test': {'active': true},
    'timeout': {'active': true},
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


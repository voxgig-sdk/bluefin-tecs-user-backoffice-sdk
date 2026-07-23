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
| `response_code` | `int` | No |  |
| `response_message` | `String` | No |  |

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
| `client_secret` | `String` | Yes |  |
| `notification_email` | `String` | Yes |  |
| `response_code` | `int` | No |  |
| `response_message` | `String` | No |  |

### Operations

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.OutputActivatePortalModule().create({
  'client_secret': 'example_client_secret',  // String
  'notification_email': 'example_notification_email',  // String
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
| `response_code` | `int` | No |  |
| `response_message` | `String` | No |  |

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
| `consumer_uuid` | `String` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `String` | No |  |

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
| `consumer_uuid` | `String` | Yes |  |
| `response_code` | `int` | No |  |
| `response_message` | `String` | No |  |
| `role` | `List<dynamic>` | Yes |  |

### Operations

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.OutputAssignRole().create({
  'consumer_uuid': 'example_consumer_uuid',  // String
  'role': <dynamic>[],  // List<dynamic>
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
| `content_as_base64` | `String` | Yes |  |
| `mime_type` | `String` | Yes |  |
| `response_code` | `int` | No |  |
| `response_message` | `String` | No |  |

### Operations

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.OutputChangeLogo().create({
  'content_as_base64': 'example_content_as_base64',  // String
  'mime_type': 'example_mime_type',  // String
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
| `date_of_birth` | `String` | No |  |
| `description` | `String` | Yes |  |
| `drivers_license_number` | `String` | No |  |
| `email` | `String` | Yes |  |
| `first_name` | `String` | No |  |
| `identification_number` | `String` | No |  |
| `last_name` | `String` | No |  |
| `login` | `String` | Yes |  |
| `mandator` | `Map<String, dynamic>` | No |  |
| `name` | `String` | Yes |  |
| `passport_number` | `String` | No |  |
| `phone` | `String` | Yes |  |
| `response_code` | `int` | No |  |
| `response_message` | `String` | No |  |
| `salutation` | `String` | No |  |
| `state` | `String` | No |  |
| `street1` | `String` | No |  |
| `street2` | `String` | No |  |
| `zip_code` | `String` | No |  |

### Operations

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.OutputCreateMandator().create({
  'description': 'example_description',  // String
  'email': 'example_email',  // String
  'login': 'example_login',  // String
  'name': 'example_name',  // String
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
| `mandator_name` | `String` | Yes |  |
| `response_code` | `int` | No |  |
| `response_message` | `String` | No |  |

### Operations

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.OutputCreateServiceUser().create({
  'mandator_name': 'example_mandator_name',  // String
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
| `consumer_uuid` | `String` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `String` | No |  |

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
| `case_id` | `String` | No |  |
| `encoded_data_base64` | `String` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `String` | No |  |

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
| `content_as_base64` | `String` | Yes |  |
| `mime_type` | `String` | Yes |  |
| `response_code` | `int` | No |  |
| `response_message` | `String` | No |  |

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
| `available_role` | `List<dynamic>` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `String` | No |  |

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
| `response_code` | `int` | No |  |
| `response_message` | `String` | No |  |
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
| `response_code` | `int` | No |  |
| `response_message` | `String` | No |  |

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
| `group_role` | `List<dynamic>` | No |  |
| `pagination` | `Map<String, dynamic>` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `String` | No |  |
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
| `response_code` | `int` | No |  |
| `response_message` | `String` | No |  |
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
| `response_code` | `int` | No |  |
| `response_message` | `String` | No |  |
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
| `mandator_name` | `String` | Yes |  |
| `password` | `String` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `String` | No |  |
| `username` | `String` | No |  |

### Operations

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.OutputProvideCredential().create({
  'mandator_name': 'example_mandator_name',  // String
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
| `city` | `String` | No |  |
| `consumer_id` | `String` | No |  |
| `consumer_language` | `String` | No |  |
| `country` | `String` | No |  |
| `date_of_birth` | `String` | No |  |
| `driver_licence_number` | `String` | No |  |
| `email` | `String` | Yes |  |
| `first_name` | `String` | No |  |
| `identification_number` | `String` | No |  |
| `last_name` | `String` | No |  |
| `login` | `String` | No |  |
| `module` | `String` | No |  |
| `passport_number` | `String` | No |  |
| `phone` | `String` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `String` | No |  |
| `salutation` | `String` | No |  |
| `state` | `String` | No |  |
| `street1` | `String` | No |  |
| `street2` | `String` | No |  |
| `zip` | `String` | No |  |

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
| `consumer_uuid` | `String` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `String` | No |  |
| `role` | `List<dynamic>` | No |  |

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
| `business_registration_number` | `String` | No |  |
| `consumer_uuid` | `String` | Yes |  |
| `email_confirmation_code` | `String` | No |  |
| `phone_number` | `String` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `String` | No |  |

### Operations

#### `create(reqdata, [ctrl]) -> Future<dynamic>`

Create a new entity with the given data. Returns the created entity data and throws on error.

```dart
final result = await client.OutputResendLink().create({
  'consumer_uuid': 'example_consumer_uuid',  // String
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
| `consumer_uuid` | `String` | No |  |
| `phone_number` | `String` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `String` | No |  |

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
| `consumer_uuid` | `String` | Yes |  |
| `consumerlanguage` | `String` | No |  |
| `country` | `String` | No |  |
| `date_of_birth` | `String` | No |  |
| `datetime_created` | `String` | No |  |
| `driver_licence_number` | `String` | No |  |
| `email` | `String` | No |  |
| `first_name` | `String` | No |  |
| `identification_number` | `String` | No |  |
| `kyc_passed` | `bool` | No |  |
| `last_name` | `String` | No |  |
| `nationality` | `String` | No |  |
| `passport_number` | `String` | No |  |
| `phone_number` | `String` | No |  |
| `place_of_birth` | `String` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `String` | No |  |
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
  'consumer_uuid': 'example_consumer_uuid',  // String
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
| `consumer_language` | `String` | No |  |
| `email` | `String` | No |  |
| `first_name` | `String` | No |  |
| `last_name` | `String` | No |  |
| `phone_number` | `String` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `String` | No |  |

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
| `app_name` | `String` | No |  |
| `build_date` | `String` | No |  |
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
| `test` | 0.0.1 | In-memory mock transport for testing without a live server |


Features are activated via the `feature` option:

```dart
final client = BluefinTecsUserBackofficeSDK({
  'feature': {
    'test': {'active': true},
  },
});
```


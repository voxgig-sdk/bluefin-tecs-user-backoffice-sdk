# BluefinTecsUserBackoffice C++ SDK Reference

Complete API reference for the BluefinTecsUserBackoffice C++ SDK.


## BluefinTecsUserBackofficeSDK

### Constructor

```cpp
#include "core/sdk.hpp"

using namespace sdk;

auto client = std::make_shared<BluefinTecsUserBackofficeSDK>(options);
```

Create a new SDK client instance. `options` is an `sdk::Value` map.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `options` | `Value` | SDK configuration options (a map). |
| `options["apikey"]` | `std::string` | API key for authentication. |
| `options["base"]` | `std::string` | Base URL for API requests. |
| `options["prefix"]` | `std::string` | URL prefix appended after base. |
| `options["suffix"]` | `std::string` | URL suffix appended after path. |
| `options["headers"]` | `Value` | Custom headers for all requests. |
| `options["feature"]` | `Value` | Feature configuration. |
| `options["system"]` | `Value` | System overrides. |


### Static Methods

#### `BluefinTecsUserBackofficeSDK::testSDK(testopts, sdkopts)`

Create a test client with mock features active. Both arguments may be
`Value::undef()`; a no-arg overload is also provided.

```cpp
auto client = BluefinTecsUserBackofficeSDK::testSDK();
```


### Instance Methods

#### `output_activate_digital_module(entopts = Value::undef()) -> std::shared_ptr<OutputActivateDigitalModuleEntity>`

Create a new `OutputActivateDigitalModuleEntity` instance bound to this client.

#### `output_activate_portal_module(entopts = Value::undef()) -> std::shared_ptr<OutputActivatePortalModuleEntity>`

Create a new `OutputActivatePortalModuleEntity` instance bound to this client.

#### `output_activate_store_module(entopts = Value::undef()) -> std::shared_ptr<OutputActivateStoreModuleEntity>`

Create a new `OutputActivateStoreModuleEntity` instance bound to this client.

#### `output_activate_user(entopts = Value::undef()) -> std::shared_ptr<OutputActivateUserEntity>`

Create a new `OutputActivateUserEntity` instance bound to this client.

#### `output_assign_role(entopts = Value::undef()) -> std::shared_ptr<OutputAssignRoleEntity>`

Create a new `OutputAssignRoleEntity` instance bound to this client.

#### `output_change_logo(entopts = Value::undef()) -> std::shared_ptr<OutputChangeLogoEntity>`

Create a new `OutputChangeLogoEntity` instance bound to this client.

#### `output_create_mandator(entopts = Value::undef()) -> std::shared_ptr<OutputCreateMandatorEntity>`

Create a new `OutputCreateMandatorEntity` instance bound to this client.

#### `output_create_service_user(entopts = Value::undef()) -> std::shared_ptr<OutputCreateServiceUserEntity>`

Create a new `OutputCreateServiceUserEntity` instance bound to this client.

#### `output_deactivate_user(entopts = Value::undef()) -> std::shared_ptr<OutputDeactivateUserEntity>`

Create a new `OutputDeactivateUserEntity` instance bound to this client.

#### `output_get_kyc_document(entopts = Value::undef()) -> std::shared_ptr<OutputGetKycDocumentEntity>`

Create a new `OutputGetKycDocumentEntity` instance bound to this client.

#### `output_get_logo(entopts = Value::undef()) -> std::shared_ptr<OutputGetLogoEntity>`

Create a new `OutputGetLogoEntity` instance bound to this client.

#### `output_list_of_available_role(entopts = Value::undef()) -> std::shared_ptr<OutputListOfAvailableRoleEntity>`

Create a new `OutputListOfAvailableRoleEntity` instance bound to this client.

#### `output_list_of_mandator(entopts = Value::undef()) -> std::shared_ptr<OutputListOfMandatorEntity>`

Create a new `OutputListOfMandatorEntity` instance bound to this client.

#### `output_list_of_module(entopts = Value::undef()) -> std::shared_ptr<OutputListOfModuleEntity>`

Create a new `OutputListOfModuleEntity` instance bound to this client.

#### `output_list_of_role_group(entopts = Value::undef()) -> std::shared_ptr<OutputListOfRoleGroupEntity>`

Create a new `OutputListOfRoleGroupEntity` instance bound to this client.

#### `output_list_of_transactions_history(entopts = Value::undef()) -> std::shared_ptr<OutputListOfTransactionsHistoryEntity>`

Create a new `OutputListOfTransactionsHistoryEntity` instance bound to this client.

#### `output_list_of_user(entopts = Value::undef()) -> std::shared_ptr<OutputListOfUserEntity>`

Create a new `OutputListOfUserEntity` instance bound to this client.

#### `output_provide_credential(entopts = Value::undef()) -> std::shared_ptr<OutputProvideCredentialEntity>`

Create a new `OutputProvideCredentialEntity` instance bound to this client.

#### `output_register_user(entopts = Value::undef()) -> std::shared_ptr<OutputRegisterUserEntity>`

Create a new `OutputRegisterUserEntity` instance bound to this client.

#### `output_remove_role(entopts = Value::undef()) -> std::shared_ptr<OutputRemoveRoleEntity>`

Create a new `OutputRemoveRoleEntity` instance bound to this client.

#### `output_resend_link(entopts = Value::undef()) -> std::shared_ptr<OutputResendLinkEntity>`

Create a new `OutputResendLinkEntity` instance bound to this client.

#### `output_reset_password(entopts = Value::undef()) -> std::shared_ptr<OutputResetPasswordEntity>`

Create a new `OutputResetPasswordEntity` instance bound to this client.

#### `output_update_consumer(entopts = Value::undef()) -> std::shared_ptr<OutputUpdateConsumerEntity>`

Create a new `OutputUpdateConsumerEntity` instance bound to this client.

#### `output_update_profile(entopts = Value::undef()) -> std::shared_ptr<OutputUpdateProfileEntity>`

Create a new `OutputUpdateProfileEntity` instance bound to this client.

#### `version(entopts = Value::undef()) -> std::shared_ptr<VersionEntity>`

Create a new `VersionEntity` instance bound to this client.

#### `optionsMap() -> Value`

Return a deep copy of the current SDK options.

#### `getUtility() -> UtilityPtr`

Return a copy of the SDK utility object.

#### `direct(fetchargs) -> Value`

Make a direct HTTP request to any API endpoint. Returns a result `Value` with `ok`, `status`, `headers`, and `data` (or `err` on failure). This escape hatch never throws — branch on `getp(result, "ok")`.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `fetchargs["path"]` | `std::string` | URL path with optional `{param}` placeholders. |
| `fetchargs["method"]` | `std::string` | HTTP method (default: `"GET"`). |
| `fetchargs["params"]` | `Value` | Path parameter values. |
| `fetchargs["query"]` | `Value` | Query string parameters. |
| `fetchargs["headers"]` | `Value` | Request headers (merged with defaults). |
| `fetchargs["body"]` | `Value` | Request body (maps are JSON-serialized). |

**Returns:** `Value` (result map)

#### `prepare(fetchargs) -> Value`

Prepare a fetch definition without sending. Returns the `fetchdef` and throws on error.


---

## OutputActivateDigitalModuleEntity

```cpp
auto output_activate_digital_module = client->output_activate_digital_module();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `std::string` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->output_activate_digital_module()->create(vmap({
}), Value::undef());
```

### Common Methods

#### `data(arg = Value::undef()) -> Value`

Get the entity data (no argument) or set it (with a map argument).

#### `match(arg = Value::undef()) -> Value`

Get the entity match criteria (no argument) or set it (with a map argument).

#### `make() -> EntityPtr`

Create a new `OutputActivateDigitalModuleEntity` instance with the same options.

#### `getName() -> std::string`

Return the entity name.


---

## OutputActivatePortalModuleEntity

```cpp
auto output_activate_portal_module = client->output_activate_portal_module();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clientSecret` | `std::string` | Yes |  |
| `notificationEmail` | `std::string` | Yes |  |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `std::string` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->output_activate_portal_module()->create(vmap({
    {"clientSecret", Value("example_clientSecret")},  // std::string
    {"notificationEmail", Value("example_notificationEmail")},  // std::string
}), Value::undef());
```

### Common Methods

#### `data(arg = Value::undef()) -> Value`

Get the entity data (no argument) or set it (with a map argument).

#### `match(arg = Value::undef()) -> Value`

Get the entity match criteria (no argument) or set it (with a map argument).

#### `make() -> EntityPtr`

Create a new `OutputActivatePortalModuleEntity` instance with the same options.

#### `getName() -> std::string`

Return the entity name.


---

## OutputActivateStoreModuleEntity

```cpp
auto output_activate_store_module = client->output_activate_store_module();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `std::string` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->output_activate_store_module()->create(vmap({
}), Value::undef());
```

### Common Methods

#### `data(arg = Value::undef()) -> Value`

Get the entity data (no argument) or set it (with a map argument).

#### `match(arg = Value::undef()) -> Value`

Get the entity match criteria (no argument) or set it (with a map argument).

#### `make() -> EntityPtr`

Create a new `OutputActivateStoreModuleEntity` instance with the same options.

#### `getName() -> std::string`

Return the entity name.


---

## OutputActivateUserEntity

```cpp
auto output_activate_user = client->output_activate_user();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumerUUID` | `std::string` | No |  |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `std::string` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->output_activate_user()->create(vmap({
}), Value::undef());
```

### Common Methods

#### `data(arg = Value::undef()) -> Value`

Get the entity data (no argument) or set it (with a map argument).

#### `match(arg = Value::undef()) -> Value`

Get the entity match criteria (no argument) or set it (with a map argument).

#### `make() -> EntityPtr`

Create a new `OutputActivateUserEntity` instance with the same options.

#### `getName() -> std::string`

Return the entity name.


---

## OutputAssignRoleEntity

```cpp
auto output_assign_role = client->output_assign_role();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumerUUID` | `std::string` | Yes | Unique identifier of the consumer (user) to whom the role(s) will be assigned. |
| `responseCode` | `int64_t` | No | Response code: 0 indicates success; any non-zero value indicates an error. |
| `responseMessage` | `std::string` | No | A human-readable message providing additional details about the outcome. |
| `roles` | `std::vector<Value>` | Yes | List of roles to assign to the consumer. |

### Operations

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->output_assign_role()->create(vmap({
    {"consumerUUID", Value("example_consumerUUID")},  // std::string
    {"roles", vlist()},  // std::vector<Value>
}), Value::undef());
```

### Common Methods

#### `data(arg = Value::undef()) -> Value`

Get the entity data (no argument) or set it (with a map argument).

#### `match(arg = Value::undef()) -> Value`

Get the entity match criteria (no argument) or set it (with a map argument).

#### `make() -> EntityPtr`

Create a new `OutputAssignRoleEntity` instance with the same options.

#### `getName() -> std::string`

Return the entity name.


---

## OutputChangeLogoEntity

```cpp
auto output_change_logo = client->output_change_logo();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `contentAsBase64` | `std::string` | Yes | The content of the image as base64 encoded string |
| `mimeType` | `std::string` | Yes | The MIME type of the image |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `std::string` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->output_change_logo()->create(vmap({
    {"contentAsBase64", Value("example_contentAsBase64")},  // std::string
    {"mimeType", Value("example_mimeType")},  // std::string
}), Value::undef());
```

### Common Methods

#### `data(arg = Value::undef()) -> Value`

Get the entity data (no argument) or set it (with a map argument).

#### `match(arg = Value::undef()) -> Value`

Get the entity match criteria (no argument) or set it (with a map argument).

#### `make() -> EntityPtr`

Create a new `OutputChangeLogoEntity` instance with the same options.

#### `getName() -> std::string`

Return the entity name.


---

## OutputCreateMandatorEntity

```cpp
auto output_create_mandator = client->output_create_mandator();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `city` | `std::string` | No |  |
| `country` | `std::string` | No |  |
| `dateOfBirth` | `std::string` | No |  |
| `description` | `std::string` | No |  |
| `driversLicenseNumber` | `std::string` | No |  |
| `email` | `std::string` | Yes |  |
| `firstName` | `std::string` | No |  |
| `identificationNumber` | `std::string` | No |  |
| `lastName` | `std::string` | No |  |
| `login` | `std::string` | Yes |  |
| `name` | `std::string` | No |  |
| `passportNumber` | `std::string` | No |  |
| `phone` | `std::string` | Yes |  |
| `salutation` | `std::string` | No |  |
| `state` | `std::string` | No |  |
| `street1` | `std::string` | No |  |
| `street2` | `std::string` | No |  |
| `zipCode` | `std::string` | No |  |

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

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->output_create_mandator()->create(vmap({
    {"email", Value("example_email")},  // std::string
    {"login", Value("example_login")},  // std::string
    {"phone", Value("example_phone")},  // std::string
}), Value::undef());
```

### Common Methods

#### `data(arg = Value::undef()) -> Value`

Get the entity data (no argument) or set it (with a map argument).

#### `match(arg = Value::undef()) -> Value`

Get the entity match criteria (no argument) or set it (with a map argument).

#### `make() -> EntityPtr`

Create a new `OutputCreateMandatorEntity` instance with the same options.

#### `getName() -> std::string`

Return the entity name.


---

## OutputCreateServiceUserEntity

```cpp
auto output_create_service_user = client->output_create_service_user();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `mandatorName` | `std::string` | Yes |  |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `std::string` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->output_create_service_user()->create(vmap({
    {"mandatorName", Value("example_mandatorName")},  // std::string
}), Value::undef());
```

### Common Methods

#### `data(arg = Value::undef()) -> Value`

Get the entity data (no argument) or set it (with a map argument).

#### `match(arg = Value::undef()) -> Value`

Get the entity match criteria (no argument) or set it (with a map argument).

#### `make() -> EntityPtr`

Create a new `OutputCreateServiceUserEntity` instance with the same options.

#### `getName() -> std::string`

Return the entity name.


---

## OutputDeactivateUserEntity

```cpp
auto output_deactivate_user = client->output_deactivate_user();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumerUUID` | `std::string` | No |  |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `std::string` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->output_deactivate_user()->create(vmap({
}), Value::undef());
```

### Common Methods

#### `data(arg = Value::undef()) -> Value`

Get the entity data (no argument) or set it (with a map argument).

#### `match(arg = Value::undef()) -> Value`

Get the entity match criteria (no argument) or set it (with a map argument).

#### `make() -> EntityPtr`

Create a new `OutputDeactivateUserEntity` instance with the same options.

#### `getName() -> std::string`

Return the entity name.


---

## OutputGetKycDocumentEntity

```cpp
auto output_get_kyc_document = client->output_get_kyc_document();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `caseID` | `std::string` | No |  |
| `encodedDataBase64` | `std::string` | No |  |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `std::string` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->output_get_kyc_document()->create(vmap({
}), Value::undef());
```

### Common Methods

#### `data(arg = Value::undef()) -> Value`

Get the entity data (no argument) or set it (with a map argument).

#### `match(arg = Value::undef()) -> Value`

Get the entity match criteria (no argument) or set it (with a map argument).

#### `make() -> EntityPtr`

Create a new `OutputGetKycDocumentEntity` instance with the same options.

#### `getName() -> std::string`

Return the entity name.


---

## OutputGetLogoEntity

```cpp
auto output_get_logo = client->output_get_logo();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `contentAsBase64` | `std::string` | Yes | The content of the image as base64 encoded string |
| `mimeType` | `std::string` | Yes | The MIME type of the image |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `std::string` | No |  |

### Operations

#### `load(reqmatch, ctrl) -> Value`

Load a single entity matching the given criteria. Returns the entity data and throws on error.

```cpp
Value result = client->output_get_logo()->load(Value::undef(), Value::undef());
```

### Common Methods

#### `data(arg = Value::undef()) -> Value`

Get the entity data (no argument) or set it (with a map argument).

#### `match(arg = Value::undef()) -> Value`

Get the entity match criteria (no argument) or set it (with a map argument).

#### `make() -> EntityPtr`

Create a new `OutputGetLogoEntity` instance with the same options.

#### `getName() -> std::string`

Return the entity name.


---

## OutputListOfAvailableRoleEntity

```cpp
auto output_list_of_available_role = client->output_list_of_available_role();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `availableRoles` | `std::vector<Value>` | No |  |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `std::string` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->output_list_of_available_role()->create(vmap({
}), Value::undef());
```

### Common Methods

#### `data(arg = Value::undef()) -> Value`

Get the entity data (no argument) or set it (with a map argument).

#### `match(arg = Value::undef()) -> Value`

Get the entity match criteria (no argument) or set it (with a map argument).

#### `make() -> EntityPtr`

Create a new `OutputListOfAvailableRoleEntity` instance with the same options.

#### `getName() -> std::string`

Return the entity name.


---

## OutputListOfMandatorEntity

```cpp
auto output_list_of_mandator = client->output_list_of_mandator();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `filter` | `std::map<std::string, Value>` | No |  |
| `list` | `std::vector<Value>` | No |  |
| `pagination` | `std::map<std::string, Value>` | No |  |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `std::string` | No |  |
| `sorting` | `std::map<std::string, Value>` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->output_list_of_mandator()->create(vmap({
}), Value::undef());
```

### Common Methods

#### `data(arg = Value::undef()) -> Value`

Get the entity data (no argument) or set it (with a map argument).

#### `match(arg = Value::undef()) -> Value`

Get the entity match criteria (no argument) or set it (with a map argument).

#### `make() -> EntityPtr`

Create a new `OutputListOfMandatorEntity` instance with the same options.

#### `getName() -> std::string`

Return the entity name.


---

## OutputListOfModuleEntity

```cpp
auto output_list_of_module = client->output_list_of_module();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `list` | `std::vector<Value>` | No |  |
| `pagination` | `std::map<std::string, Value>` | No |  |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `std::string` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->output_list_of_module()->create(vmap({
}), Value::undef());
```

### Common Methods

#### `data(arg = Value::undef()) -> Value`

Get the entity data (no argument) or set it (with a map argument).

#### `match(arg = Value::undef()) -> Value`

Get the entity match criteria (no argument) or set it (with a map argument).

#### `make() -> EntityPtr`

Create a new `OutputListOfModuleEntity` instance with the same options.

#### `getName() -> std::string`

Return the entity name.


---

## OutputListOfRoleGroupEntity

```cpp
auto output_list_of_role_group = client->output_list_of_role_group();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `filter` | `std::map<std::string, Value>` | No |  |
| `groupRoles` | `std::vector<Value>` | No |  |
| `pagination` | `std::map<std::string, Value>` | No |  |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `std::string` | No |  |
| `sorting` | `std::map<std::string, Value>` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->output_list_of_role_group()->create(vmap({
}), Value::undef());
```

### Common Methods

#### `data(arg = Value::undef()) -> Value`

Get the entity data (no argument) or set it (with a map argument).

#### `match(arg = Value::undef()) -> Value`

Get the entity match criteria (no argument) or set it (with a map argument).

#### `make() -> EntityPtr`

Create a new `OutputListOfRoleGroupEntity` instance with the same options.

#### `getName() -> std::string`

Return the entity name.


---

## OutputListOfTransactionsHistoryEntity

```cpp
auto output_list_of_transactions_history = client->output_list_of_transactions_history();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `filter` | `std::map<std::string, Value>` | No |  |
| `list` | `std::vector<Value>` | No |  |
| `pagination` | `std::map<std::string, Value>` | No |  |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `std::string` | No |  |
| `sorting` | `std::map<std::string, Value>` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->output_list_of_transactions_history()->create(vmap({
}), Value::undef());
```

### Common Methods

#### `data(arg = Value::undef()) -> Value`

Get the entity data (no argument) or set it (with a map argument).

#### `match(arg = Value::undef()) -> Value`

Get the entity match criteria (no argument) or set it (with a map argument).

#### `make() -> EntityPtr`

Create a new `OutputListOfTransactionsHistoryEntity` instance with the same options.

#### `getName() -> std::string`

Return the entity name.


---

## OutputListOfUserEntity

```cpp
auto output_list_of_user = client->output_list_of_user();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `filter` | `std::map<std::string, Value>` | No |  |
| `list` | `std::vector<Value>` | No |  |
| `pagination` | `std::map<std::string, Value>` | No |  |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `std::string` | No |  |
| `sorting` | `std::map<std::string, Value>` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->output_list_of_user()->create(vmap({
}), Value::undef());
```

### Common Methods

#### `data(arg = Value::undef()) -> Value`

Get the entity data (no argument) or set it (with a map argument).

#### `match(arg = Value::undef()) -> Value`

Get the entity match criteria (no argument) or set it (with a map argument).

#### `make() -> EntityPtr`

Create a new `OutputListOfUserEntity` instance with the same options.

#### `getName() -> std::string`

Return the entity name.


---

## OutputProvideCredentialEntity

```cpp
auto output_provide_credential = client->output_provide_credential();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `mandatorName` | `std::string` | Yes |  |
| `password` | `std::string` | No |  |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `std::string` | No |  |
| `username` | `std::string` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->output_provide_credential()->create(vmap({
    {"mandatorName", Value("example_mandatorName")},  // std::string
}), Value::undef());
```

### Common Methods

#### `data(arg = Value::undef()) -> Value`

Get the entity data (no argument) or set it (with a map argument).

#### `match(arg = Value::undef()) -> Value`

Get the entity match criteria (no argument) or set it (with a map argument).

#### `make() -> EntityPtr`

Create a new `OutputProvideCredentialEntity` instance with the same options.

#### `getName() -> std::string`

Return the entity name.


---

## OutputRegisterUserEntity

```cpp
auto output_register_user = client->output_register_user();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `city` | `std::string` | No | City where the user resides. |
| `consumerId` | `std::string` | No | User login or unique user identifier. |
| `consumerLanguage` | `std::string` | No | Preferred language for the user (e.g., 'en'). |
| `country` | `std::string` | No | User's country. |
| `dateOfBirth` | `std::string` | No | User's date of birth (expected format: dd.MM.yyyy). |
| `driverLicenceNumber` | `std::string` | No | User's driver's license number. |
| `email` | `std::string` | Yes | User's email address (must be unique). |
| `firstName` | `std::string` | No | User's first name. |
| `identificationNumber` | `std::string` | No | User's identification number. |
| `lastName` | `std::string` | No | User's last name. |
| `login` | `std::string` | No | User login identifier (should be unique). |
| `module` | `std::string` | No | Module identifier (if applicable). |
| `passportNumber` | `std::string` | No | User's passport number. |
| `phone` | `std::string` | No | User's phone number. |
| `responseCode` | `int64_t` | No | Response code (0 indicates success; non-zero indicates an error). |
| `responseMessage` | `std::string` | No | Human-readable response message. |
| `salutation` | `std::string` | No | User's salutation (e.g., Mr., Ms.). |
| `state` | `std::string` | No | User's state or region. |
| `street1` | `std::string` | No | Primary address line. |
| `street2` | `std::string` | No | Secondary address line. |
| `zip` | `std::string` | No | Postal code. |

### Operations

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->output_register_user()->create(vmap({
    {"email", Value("example_email")},  // std::string
}), Value::undef());
```

### Common Methods

#### `data(arg = Value::undef()) -> Value`

Get the entity data (no argument) or set it (with a map argument).

#### `match(arg = Value::undef()) -> Value`

Get the entity match criteria (no argument) or set it (with a map argument).

#### `make() -> EntityPtr`

Create a new `OutputRegisterUserEntity` instance with the same options.

#### `getName() -> std::string`

Return the entity name.


---

## OutputRemoveRoleEntity

```cpp
auto output_remove_role = client->output_remove_role();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumerUUID` | `std::string` | No |  |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `std::string` | No |  |
| `roles` | `std::vector<Value>` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->output_remove_role()->create(vmap({
}), Value::undef());
```

### Common Methods

#### `data(arg = Value::undef()) -> Value`

Get the entity data (no argument) or set it (with a map argument).

#### `match(arg = Value::undef()) -> Value`

Get the entity match criteria (no argument) or set it (with a map argument).

#### `make() -> EntityPtr`

Create a new `OutputRemoveRoleEntity` instance with the same options.

#### `getName() -> std::string`

Return the entity name.


---

## OutputResendLinkEntity

```cpp
auto output_resend_link = client->output_resend_link();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `businessRegistrationNumber` | `std::string` | No |  |
| `consumerUUID` | `std::string` | Yes |  |
| `emailConfirmationCode` | `std::string` | No |  |
| `phoneNumber` | `std::string` | No |  |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `std::string` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->output_resend_link()->create(vmap({
    {"consumerUUID", Value("example_consumerUUID")},  // std::string
}), Value::undef());
```

### Common Methods

#### `data(arg = Value::undef()) -> Value`

Get the entity data (no argument) or set it (with a map argument).

#### `match(arg = Value::undef()) -> Value`

Get the entity match criteria (no argument) or set it (with a map argument).

#### `make() -> EntityPtr`

Create a new `OutputResendLinkEntity` instance with the same options.

#### `getName() -> std::string`

Return the entity name.


---

## OutputResetPasswordEntity

```cpp
auto output_reset_password = client->output_reset_password();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumerUuid` | `std::string` | No |  |
| `phoneNumber` | `std::string` | No |  |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `std::string` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->output_reset_password()->create(vmap({
}), Value::undef());
```

### Common Methods

#### `data(arg = Value::undef()) -> Value`

Get the entity data (no argument) or set it (with a map argument).

#### `match(arg = Value::undef()) -> Value`

Get the entity match criteria (no argument) or set it (with a map argument).

#### `make() -> EntityPtr`

Create a new `OutputResetPasswordEntity` instance with the same options.

#### `getName() -> std::string`

Return the entity name.


---

## OutputUpdateConsumerEntity

```cpp
auto output_update_consumer = client->output_update_consumer();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `city` | `std::string` | No |  |
| `consumerUuid` | `std::string` | Yes |  |
| `consumerlanguage` | `std::string` | No |  |
| `country` | `std::string` | No |  |
| `dateOfBirth` | `std::string` | No |  |
| `datetime_created` | `std::string` | No |  |
| `driverLicenceNumber` | `std::string` | No |  |
| `email` | `std::string` | No |  |
| `firstName` | `std::string` | No |  |
| `identificationNumber` | `std::string` | No |  |
| `kycPassed` | `bool` | No |  |
| `lastName` | `std::string` | No |  |
| `nationality` | `std::string` | No |  |
| `passportNumber` | `std::string` | No |  |
| `phoneNumber` | `std::string` | No |  |
| `placeOfBirth` | `std::string` | No |  |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `std::string` | No |  |
| `state` | `std::string` | No |  |
| `street1` | `std::string` | No |  |
| `street2` | `std::string` | No |  |
| `transactionhistory_id` | `std::string` | No |  |
| `zip` | `std::string` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->output_update_consumer()->create(vmap({
    {"consumerUuid", Value("example_consumerUuid")},  // std::string
}), Value::undef());
```

### Common Methods

#### `data(arg = Value::undef()) -> Value`

Get the entity data (no argument) or set it (with a map argument).

#### `match(arg = Value::undef()) -> Value`

Get the entity match criteria (no argument) or set it (with a map argument).

#### `make() -> EntityPtr`

Create a new `OutputUpdateConsumerEntity` instance with the same options.

#### `getName() -> std::string`

Return the entity name.


---

## OutputUpdateProfileEntity

```cpp
auto output_update_profile = client->output_update_profile();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumerLanguage` | `std::string` | No |  |
| `email` | `std::string` | No |  |
| `firstName` | `std::string` | No |  |
| `lastName` | `std::string` | No |  |
| `phoneNumber` | `std::string` | No |  |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `std::string` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->output_update_profile()->create(vmap({
}), Value::undef());
```

### Common Methods

#### `data(arg = Value::undef()) -> Value`

Get the entity data (no argument) or set it (with a map argument).

#### `match(arg = Value::undef()) -> Value`

Get the entity match criteria (no argument) or set it (with a map argument).

#### `make() -> EntityPtr`

Create a new `OutputUpdateProfileEntity` instance with the same options.

#### `getName() -> std::string`

Return the entity name.


---

## VersionEntity

```cpp
auto version = client->version();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `appName` | `std::string` | No |  |
| `buildDate` | `std::string` | No |  |
| `version` | `std::string` | No |  |

### Operations

#### `load(reqmatch, ctrl) -> Value`

Load a single entity matching the given criteria. Returns the entity data and throws on error.

```cpp
Value result = client->version()->load(Value::undef(), Value::undef());
```

### Common Methods

#### `data(arg = Value::undef()) -> Value`

Get the entity data (no argument) or set it (with a map argument).

#### `match(arg = Value::undef()) -> Value`

Get the entity match criteria (no argument) or set it (with a map argument).

#### `make() -> EntityPtr`

Create a new `VersionEntity` instance with the same options.

#### `getName() -> std::string`

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

```cpp
auto client = std::make_shared<BluefinTecsUserBackofficeSDK>(vmap({
    {"feature", vmap({
        {"audit", vmap({{"active", Value(true)}})},
        {"clienttrack", vmap({{"active", Value(true)}})},
        {"debug", vmap({{"active", Value(true)}})},
        {"idempotency", vmap({{"active", Value(true)}})},
        {"log", vmap({{"active", Value(true)}})},
        {"metrics", vmap({{"active", Value(true)}})},
        {"paging", vmap({{"active", Value(true)}})},
        {"ratelimit", vmap({{"active", Value(true)}})},
        {"retry", vmap({{"active", Value(true)}})},
        {"telemetry", vmap({{"active", Value(true)}})},
        {"test", vmap({{"active", Value(true)}})},
        {"timeout", vmap({{"active", Value(true)}})},
    })},
}));
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


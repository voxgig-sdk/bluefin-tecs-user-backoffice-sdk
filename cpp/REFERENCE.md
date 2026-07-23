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
| `response_code` | `int64_t` | No |  |
| `response_message` | `std::string` | No |  |

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
| `client_secret` | `std::string` | Yes |  |
| `notification_email` | `std::string` | Yes |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `std::string` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->output_activate_portal_module()->create(vmap({
    {"client_secret", Value("example_client_secret")},  // std::string
    {"notification_email", Value("example_notification_email")},  // std::string
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
| `response_code` | `int64_t` | No |  |
| `response_message` | `std::string` | No |  |

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
| `consumer_uuid` | `std::string` | No |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `std::string` | No |  |

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
| `consumer_uuid` | `std::string` | Yes |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `std::string` | No |  |
| `role` | `std::vector<Value>` | Yes |  |

### Operations

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->output_assign_role()->create(vmap({
    {"consumer_uuid", Value("example_consumer_uuid")},  // std::string
    {"role", vlist()},  // std::vector<Value>
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
| `content_as_base64` | `std::string` | Yes |  |
| `mime_type` | `std::string` | Yes |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `std::string` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->output_change_logo()->create(vmap({
    {"content_as_base64", Value("example_content_as_base64")},  // std::string
    {"mime_type", Value("example_mime_type")},  // std::string
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
| `date_of_birth` | `std::string` | No |  |
| `description` | `std::string` | Yes |  |
| `drivers_license_number` | `std::string` | No |  |
| `email` | `std::string` | Yes |  |
| `first_name` | `std::string` | No |  |
| `identification_number` | `std::string` | No |  |
| `last_name` | `std::string` | No |  |
| `login` | `std::string` | Yes |  |
| `mandator` | `std::map<std::string, Value>` | No |  |
| `name` | `std::string` | Yes |  |
| `passport_number` | `std::string` | No |  |
| `phone` | `std::string` | Yes |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `std::string` | No |  |
| `salutation` | `std::string` | No |  |
| `state` | `std::string` | No |  |
| `street1` | `std::string` | No |  |
| `street2` | `std::string` | No |  |
| `zip_code` | `std::string` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->output_create_mandator()->create(vmap({
    {"description", Value("example_description")},  // std::string
    {"email", Value("example_email")},  // std::string
    {"login", Value("example_login")},  // std::string
    {"name", Value("example_name")},  // std::string
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
| `mandator_name` | `std::string` | Yes |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `std::string` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->output_create_service_user()->create(vmap({
    {"mandator_name", Value("example_mandator_name")},  // std::string
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
| `consumer_uuid` | `std::string` | No |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `std::string` | No |  |

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
| `case_id` | `std::string` | No |  |
| `encoded_data_base64` | `std::string` | No |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `std::string` | No |  |

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
| `content_as_base64` | `std::string` | Yes |  |
| `mime_type` | `std::string` | Yes |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `std::string` | No |  |

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
| `available_role` | `std::vector<Value>` | No |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `std::string` | No |  |

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
| `response_code` | `int64_t` | No |  |
| `response_message` | `std::string` | No |  |
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
| `response_code` | `int64_t` | No |  |
| `response_message` | `std::string` | No |  |

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
| `group_role` | `std::vector<Value>` | No |  |
| `pagination` | `std::map<std::string, Value>` | No |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `std::string` | No |  |
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
| `response_code` | `int64_t` | No |  |
| `response_message` | `std::string` | No |  |
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
| `response_code` | `int64_t` | No |  |
| `response_message` | `std::string` | No |  |
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
| `mandator_name` | `std::string` | Yes |  |
| `password` | `std::string` | No |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `std::string` | No |  |
| `username` | `std::string` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->output_provide_credential()->create(vmap({
    {"mandator_name", Value("example_mandator_name")},  // std::string
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
| `city` | `std::string` | No |  |
| `consumer_id` | `std::string` | No |  |
| `consumer_language` | `std::string` | No |  |
| `country` | `std::string` | No |  |
| `date_of_birth` | `std::string` | No |  |
| `driver_licence_number` | `std::string` | No |  |
| `email` | `std::string` | Yes |  |
| `first_name` | `std::string` | No |  |
| `identification_number` | `std::string` | No |  |
| `last_name` | `std::string` | No |  |
| `login` | `std::string` | No |  |
| `module` | `std::string` | No |  |
| `passport_number` | `std::string` | No |  |
| `phone` | `std::string` | No |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `std::string` | No |  |
| `salutation` | `std::string` | No |  |
| `state` | `std::string` | No |  |
| `street1` | `std::string` | No |  |
| `street2` | `std::string` | No |  |
| `zip` | `std::string` | No |  |

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
| `consumer_uuid` | `std::string` | No |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `std::string` | No |  |
| `role` | `std::vector<Value>` | No |  |

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
| `business_registration_number` | `std::string` | No |  |
| `consumer_uuid` | `std::string` | Yes |  |
| `email_confirmation_code` | `std::string` | No |  |
| `phone_number` | `std::string` | No |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `std::string` | No |  |

### Operations

#### `create(reqdata, ctrl) -> Value`

Create a new entity with the given data. Returns the created entity data and throws on error.

```cpp
Value result = client->output_resend_link()->create(vmap({
    {"consumer_uuid", Value("example_consumer_uuid")},  // std::string
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
| `consumer_uuid` | `std::string` | No |  |
| `phone_number` | `std::string` | No |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `std::string` | No |  |

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
| `consumer_uuid` | `std::string` | Yes |  |
| `consumerlanguage` | `std::string` | No |  |
| `country` | `std::string` | No |  |
| `date_of_birth` | `std::string` | No |  |
| `datetime_created` | `std::string` | No |  |
| `driver_licence_number` | `std::string` | No |  |
| `email` | `std::string` | No |  |
| `first_name` | `std::string` | No |  |
| `identification_number` | `std::string` | No |  |
| `kyc_passed` | `bool` | No |  |
| `last_name` | `std::string` | No |  |
| `nationality` | `std::string` | No |  |
| `passport_number` | `std::string` | No |  |
| `phone_number` | `std::string` | No |  |
| `place_of_birth` | `std::string` | No |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `std::string` | No |  |
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
    {"consumer_uuid", Value("example_consumer_uuid")},  // std::string
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
| `consumer_language` | `std::string` | No |  |
| `email` | `std::string` | No |  |
| `first_name` | `std::string` | No |  |
| `last_name` | `std::string` | No |  |
| `phone_number` | `std::string` | No |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `std::string` | No |  |

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
| `app_name` | `std::string` | No |  |
| `build_date` | `std::string` | No |  |
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
| `test` | 0.0.1 | In-memory mock transport for testing without a live server |


Features are activated via the `feature` option:

```cpp
auto client = std::make_shared<BluefinTecsUserBackofficeSDK>(vmap({
    {"feature", vmap({
        {"test", vmap({{"active", Value(true)}})},
    })},
}));
```


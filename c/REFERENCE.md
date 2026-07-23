# BluefinTecsUserBackoffice C SDK Reference

Complete API reference for the BluefinTecsUserBackoffice C SDK.


## BluefinTecsUserBackofficeSDK

### Constructor

```c
#include "core/api.h"

BluefinTecsUserBackofficeSDK* client = bluefintecsuserbackoffice_sdk_new(options);
```

Create a new SDK client instance. `options` is a `voxgig_value*` map
(`NULL` for none).

**Parameters (`options` map keys):**

| Key | Value type | Description |
| --- | --- | --- |
| `apikey` | `string` | API key for authentication. |
| `base` | `string` | Base URL for API requests. |
| `prefix` | `string` | URL prefix appended after base. |
| `suffix` | `string` | URL suffix appended after path. |
| `headers` | `map` | Custom headers for all requests. |
| `feature` | `map` | Feature configuration. |
| `system` | `map` | System overrides. |


### Test Constructor

#### `BluefinTecsUserBackofficeSDK* test_sdk(voxgig_value* testopts, voxgig_value* sdkopts)`

Create a test client with mock features active. Both arguments may be
`NULL`.

```c
BluefinTecsUserBackofficeSDK* client = test_sdk(NULL, NULL);
```


### Entity Accessors

#### `Entity* bluefintecsuserbackoffice_output_activate_digital_module(BluefinTecsUserBackofficeSDK* client, voxgig_value* entopts)`

Create a new `OutputActivateDigitalModule` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefintecsuserbackoffice_output_activate_portal_module(BluefinTecsUserBackofficeSDK* client, voxgig_value* entopts)`

Create a new `OutputActivatePortalModule` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefintecsuserbackoffice_output_activate_store_module(BluefinTecsUserBackofficeSDK* client, voxgig_value* entopts)`

Create a new `OutputActivateStoreModule` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefintecsuserbackoffice_output_activate_user(BluefinTecsUserBackofficeSDK* client, voxgig_value* entopts)`

Create a new `OutputActivateUser` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefintecsuserbackoffice_output_assign_role(BluefinTecsUserBackofficeSDK* client, voxgig_value* entopts)`

Create a new `OutputAssignRole` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefintecsuserbackoffice_output_change_logo(BluefinTecsUserBackofficeSDK* client, voxgig_value* entopts)`

Create a new `OutputChangeLogo` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefintecsuserbackoffice_output_create_mandator(BluefinTecsUserBackofficeSDK* client, voxgig_value* entopts)`

Create a new `OutputCreateMandator` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefintecsuserbackoffice_output_create_service_user(BluefinTecsUserBackofficeSDK* client, voxgig_value* entopts)`

Create a new `OutputCreateServiceUser` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefintecsuserbackoffice_output_deactivate_user(BluefinTecsUserBackofficeSDK* client, voxgig_value* entopts)`

Create a new `OutputDeactivateUser` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefintecsuserbackoffice_output_get_kyc_document(BluefinTecsUserBackofficeSDK* client, voxgig_value* entopts)`

Create a new `OutputGetKycDocument` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefintecsuserbackoffice_output_get_logo(BluefinTecsUserBackofficeSDK* client, voxgig_value* entopts)`

Create a new `OutputGetLogo` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefintecsuserbackoffice_output_list_of_available_role(BluefinTecsUserBackofficeSDK* client, voxgig_value* entopts)`

Create a new `OutputListOfAvailableRole` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefintecsuserbackoffice_output_list_of_mandator(BluefinTecsUserBackofficeSDK* client, voxgig_value* entopts)`

Create a new `OutputListOfMandator` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefintecsuserbackoffice_output_list_of_module(BluefinTecsUserBackofficeSDK* client, voxgig_value* entopts)`

Create a new `OutputListOfModule` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefintecsuserbackoffice_output_list_of_role_group(BluefinTecsUserBackofficeSDK* client, voxgig_value* entopts)`

Create a new `OutputListOfRoleGroup` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefintecsuserbackoffice_output_list_of_transactions_history(BluefinTecsUserBackofficeSDK* client, voxgig_value* entopts)`

Create a new `OutputListOfTransactionsHistory` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefintecsuserbackoffice_output_list_of_user(BluefinTecsUserBackofficeSDK* client, voxgig_value* entopts)`

Create a new `OutputListOfUser` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefintecsuserbackoffice_output_provide_credential(BluefinTecsUserBackofficeSDK* client, voxgig_value* entopts)`

Create a new `OutputProvideCredential` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefintecsuserbackoffice_output_register_user(BluefinTecsUserBackofficeSDK* client, voxgig_value* entopts)`

Create a new `OutputRegisterUser` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefintecsuserbackoffice_output_remove_role(BluefinTecsUserBackofficeSDK* client, voxgig_value* entopts)`

Create a new `OutputRemoveRole` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefintecsuserbackoffice_output_resend_link(BluefinTecsUserBackofficeSDK* client, voxgig_value* entopts)`

Create a new `OutputResendLink` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefintecsuserbackoffice_output_reset_password(BluefinTecsUserBackofficeSDK* client, voxgig_value* entopts)`

Create a new `OutputResetPassword` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefintecsuserbackoffice_output_update_consumer(BluefinTecsUserBackofficeSDK* client, voxgig_value* entopts)`

Create a new `OutputUpdateConsumer` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefintecsuserbackoffice_output_update_profile(BluefinTecsUserBackofficeSDK* client, voxgig_value* entopts)`

Create a new `OutputUpdateProfile` entity instance. Pass `NULL` for no initial
options.

#### `Entity* bluefintecsuserbackoffice_version(BluefinTecsUserBackofficeSDK* client, voxgig_value* entopts)`

Create a new `Version` entity instance. Pass `NULL` for no initial
options.

#### `voxgig_value* sdk_direct(BluefinTecsUserBackofficeSDK* client, voxgig_value* fetchargs, PNError** err)`

Make a direct HTTP request to any API endpoint. Returns a result map with
`ok`, `status`, `headers`, and `data` (or `err` on failure). This escape
hatch never sets `*err` for a non-2xx response — branch on
`getp(result, "ok")`.

**Parameters (`fetchargs` map keys):**

| Key | Value type | Description |
| --- | --- | --- |
| `path` | `string` | URL path with optional `{param}` placeholders. |
| `method` | `string` | HTTP method (default: `"GET"`). |
| `params` | `map` | Path parameter values. |
| `query` | `map` | Query string parameters. |
| `headers` | `map` | Request headers (merged with defaults). |
| `body` | `any` | Request body (maps are JSON-serialized). |

#### `voxgig_value* sdk_prepare(BluefinTecsUserBackofficeSDK* client, voxgig_value* fetchargs, PNError** err)`

Prepare a fetch definition without sending. Returns the fetchdef and sets
`*err` on failure.


---

## OutputActivateDigitalModule

```c
Entity* output_activate_digital_module = bluefintecsuserbackoffice_output_activate_digital_module(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `response_code` | `int64_t` | No |  |
| `response_message` | `char*` | No |  |

### Operations

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* output_activate_digital_module = bluefintecsuserbackoffice_output_activate_digital_module(client, NULL);
voxgig_value* result = output_activate_digital_module->vt->create(output_activate_digital_module, NULL, NULL, &err);
```

### Common Methods

#### `voxgig_value* vt->data(Entity* e, voxgig_value* args)`

Get the entity data. Pass a map to set it.

#### `voxgig_value* vt->matchv(Entity* e, voxgig_value* args)`

Get the entity match criteria. Pass a map to set it.

#### `Entity* vt->make(Entity* e)`

Create a new `OutputActivateDigitalModule` entity instance with the same options.

#### `const char* vt->get_name(Entity* e)`

Return the entity name.


---

## OutputActivatePortalModule

```c
Entity* output_activate_portal_module = bluefintecsuserbackoffice_output_activate_portal_module(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `client_secret` | `char*` | Yes |  |
| `notification_email` | `char*` | Yes |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `char*` | No |  |

### Operations

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* output_activate_portal_module = bluefintecsuserbackoffice_output_activate_portal_module(client, NULL);
voxgig_value* result = output_activate_portal_module->vt->create(output_activate_portal_module, cmap(2,
    "client_secret", v_str("example_client_secret"),  // char*
    "notification_email", v_str("example_notification_email"))  // char*
, NULL, &err);
```

### Common Methods

#### `voxgig_value* vt->data(Entity* e, voxgig_value* args)`

Get the entity data. Pass a map to set it.

#### `voxgig_value* vt->matchv(Entity* e, voxgig_value* args)`

Get the entity match criteria. Pass a map to set it.

#### `Entity* vt->make(Entity* e)`

Create a new `OutputActivatePortalModule` entity instance with the same options.

#### `const char* vt->get_name(Entity* e)`

Return the entity name.


---

## OutputActivateStoreModule

```c
Entity* output_activate_store_module = bluefintecsuserbackoffice_output_activate_store_module(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `response_code` | `int64_t` | No |  |
| `response_message` | `char*` | No |  |

### Operations

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* output_activate_store_module = bluefintecsuserbackoffice_output_activate_store_module(client, NULL);
voxgig_value* result = output_activate_store_module->vt->create(output_activate_store_module, NULL, NULL, &err);
```

### Common Methods

#### `voxgig_value* vt->data(Entity* e, voxgig_value* args)`

Get the entity data. Pass a map to set it.

#### `voxgig_value* vt->matchv(Entity* e, voxgig_value* args)`

Get the entity match criteria. Pass a map to set it.

#### `Entity* vt->make(Entity* e)`

Create a new `OutputActivateStoreModule` entity instance with the same options.

#### `const char* vt->get_name(Entity* e)`

Return the entity name.


---

## OutputActivateUser

```c
Entity* output_activate_user = bluefintecsuserbackoffice_output_activate_user(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumer_uuid` | `char*` | No |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `char*` | No |  |

### Operations

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* output_activate_user = bluefintecsuserbackoffice_output_activate_user(client, NULL);
voxgig_value* result = output_activate_user->vt->create(output_activate_user, NULL, NULL, &err);
```

### Common Methods

#### `voxgig_value* vt->data(Entity* e, voxgig_value* args)`

Get the entity data. Pass a map to set it.

#### `voxgig_value* vt->matchv(Entity* e, voxgig_value* args)`

Get the entity match criteria. Pass a map to set it.

#### `Entity* vt->make(Entity* e)`

Create a new `OutputActivateUser` entity instance with the same options.

#### `const char* vt->get_name(Entity* e)`

Return the entity name.


---

## OutputAssignRole

```c
Entity* output_assign_role = bluefintecsuserbackoffice_output_assign_role(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumer_uuid` | `char*` | Yes |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `char*` | No |  |
| `role` | `voxgig_value* (list)` | Yes |  |

### Operations

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* output_assign_role = bluefintecsuserbackoffice_output_assign_role(client, NULL);
voxgig_value* result = output_assign_role->vt->create(output_assign_role, cmap(2,
    "consumer_uuid", v_str("example_consumer_uuid"),  // char*
    "role", v_list())  // voxgig_value* (list)
, NULL, &err);
```

### Common Methods

#### `voxgig_value* vt->data(Entity* e, voxgig_value* args)`

Get the entity data. Pass a map to set it.

#### `voxgig_value* vt->matchv(Entity* e, voxgig_value* args)`

Get the entity match criteria. Pass a map to set it.

#### `Entity* vt->make(Entity* e)`

Create a new `OutputAssignRole` entity instance with the same options.

#### `const char* vt->get_name(Entity* e)`

Return the entity name.


---

## OutputChangeLogo

```c
Entity* output_change_logo = bluefintecsuserbackoffice_output_change_logo(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `content_as_base64` | `char*` | Yes |  |
| `mime_type` | `char*` | Yes |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `char*` | No |  |

### Operations

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* output_change_logo = bluefintecsuserbackoffice_output_change_logo(client, NULL);
voxgig_value* result = output_change_logo->vt->create(output_change_logo, cmap(2,
    "content_as_base64", v_str("example_content_as_base64"),  // char*
    "mime_type", v_str("example_mime_type"))  // char*
, NULL, &err);
```

### Common Methods

#### `voxgig_value* vt->data(Entity* e, voxgig_value* args)`

Get the entity data. Pass a map to set it.

#### `voxgig_value* vt->matchv(Entity* e, voxgig_value* args)`

Get the entity match criteria. Pass a map to set it.

#### `Entity* vt->make(Entity* e)`

Create a new `OutputChangeLogo` entity instance with the same options.

#### `const char* vt->get_name(Entity* e)`

Return the entity name.


---

## OutputCreateMandator

```c
Entity* output_create_mandator = bluefintecsuserbackoffice_output_create_mandator(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `city` | `char*` | No |  |
| `country` | `char*` | No |  |
| `date_of_birth` | `char*` | No |  |
| `description` | `char*` | Yes |  |
| `drivers_license_number` | `char*` | No |  |
| `email` | `char*` | Yes |  |
| `first_name` | `char*` | No |  |
| `identification_number` | `char*` | No |  |
| `last_name` | `char*` | No |  |
| `login` | `char*` | Yes |  |
| `mandator` | `voxgig_value* (map)` | No |  |
| `name` | `char*` | Yes |  |
| `passport_number` | `char*` | No |  |
| `phone` | `char*` | Yes |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `char*` | No |  |
| `salutation` | `char*` | No |  |
| `state` | `char*` | No |  |
| `street1` | `char*` | No |  |
| `street2` | `char*` | No |  |
| `zip_code` | `char*` | No |  |

### Operations

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* output_create_mandator = bluefintecsuserbackoffice_output_create_mandator(client, NULL);
voxgig_value* result = output_create_mandator->vt->create(output_create_mandator, cmap(5,
    "description", v_str("example_description"),  // char*
    "email", v_str("example_email"),  // char*
    "login", v_str("example_login"),  // char*
    "name", v_str("example_name"),  // char*
    "phone", v_str("example_phone"))  // char*
, NULL, &err);
```

### Common Methods

#### `voxgig_value* vt->data(Entity* e, voxgig_value* args)`

Get the entity data. Pass a map to set it.

#### `voxgig_value* vt->matchv(Entity* e, voxgig_value* args)`

Get the entity match criteria. Pass a map to set it.

#### `Entity* vt->make(Entity* e)`

Create a new `OutputCreateMandator` entity instance with the same options.

#### `const char* vt->get_name(Entity* e)`

Return the entity name.


---

## OutputCreateServiceUser

```c
Entity* output_create_service_user = bluefintecsuserbackoffice_output_create_service_user(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `mandator_name` | `char*` | Yes |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `char*` | No |  |

### Operations

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* output_create_service_user = bluefintecsuserbackoffice_output_create_service_user(client, NULL);
voxgig_value* result = output_create_service_user->vt->create(output_create_service_user, cmap(1,
    "mandator_name", v_str("example_mandator_name"))  // char*
, NULL, &err);
```

### Common Methods

#### `voxgig_value* vt->data(Entity* e, voxgig_value* args)`

Get the entity data. Pass a map to set it.

#### `voxgig_value* vt->matchv(Entity* e, voxgig_value* args)`

Get the entity match criteria. Pass a map to set it.

#### `Entity* vt->make(Entity* e)`

Create a new `OutputCreateServiceUser` entity instance with the same options.

#### `const char* vt->get_name(Entity* e)`

Return the entity name.


---

## OutputDeactivateUser

```c
Entity* output_deactivate_user = bluefintecsuserbackoffice_output_deactivate_user(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumer_uuid` | `char*` | No |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `char*` | No |  |

### Operations

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* output_deactivate_user = bluefintecsuserbackoffice_output_deactivate_user(client, NULL);
voxgig_value* result = output_deactivate_user->vt->create(output_deactivate_user, NULL, NULL, &err);
```

### Common Methods

#### `voxgig_value* vt->data(Entity* e, voxgig_value* args)`

Get the entity data. Pass a map to set it.

#### `voxgig_value* vt->matchv(Entity* e, voxgig_value* args)`

Get the entity match criteria. Pass a map to set it.

#### `Entity* vt->make(Entity* e)`

Create a new `OutputDeactivateUser` entity instance with the same options.

#### `const char* vt->get_name(Entity* e)`

Return the entity name.


---

## OutputGetKycDocument

```c
Entity* output_get_kyc_document = bluefintecsuserbackoffice_output_get_kyc_document(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `case_id` | `char*` | No |  |
| `encoded_data_base64` | `char*` | No |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `char*` | No |  |

### Operations

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* output_get_kyc_document = bluefintecsuserbackoffice_output_get_kyc_document(client, NULL);
voxgig_value* result = output_get_kyc_document->vt->create(output_get_kyc_document, NULL, NULL, &err);
```

### Common Methods

#### `voxgig_value* vt->data(Entity* e, voxgig_value* args)`

Get the entity data. Pass a map to set it.

#### `voxgig_value* vt->matchv(Entity* e, voxgig_value* args)`

Get the entity match criteria. Pass a map to set it.

#### `Entity* vt->make(Entity* e)`

Create a new `OutputGetKycDocument` entity instance with the same options.

#### `const char* vt->get_name(Entity* e)`

Return the entity name.


---

## OutputGetLogo

```c
Entity* output_get_logo = bluefintecsuserbackoffice_output_get_logo(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `content_as_base64` | `char*` | Yes |  |
| `mime_type` | `char*` | Yes |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `char*` | No |  |

### Operations

#### `vt->load(Entity* e, voxgig_value* reqmatch, voxgig_value* ctrl, PNError** err)`

Load a single entity matching the given criteria. Returns the entity data and sets `*err` on failure.

```c
Entity* output_get_logo = bluefintecsuserbackoffice_output_get_logo(client, NULL);
voxgig_value* result = output_get_logo->vt->load(output_get_logo, NULL, NULL, &err);
```

### Common Methods

#### `voxgig_value* vt->data(Entity* e, voxgig_value* args)`

Get the entity data. Pass a map to set it.

#### `voxgig_value* vt->matchv(Entity* e, voxgig_value* args)`

Get the entity match criteria. Pass a map to set it.

#### `Entity* vt->make(Entity* e)`

Create a new `OutputGetLogo` entity instance with the same options.

#### `const char* vt->get_name(Entity* e)`

Return the entity name.


---

## OutputListOfAvailableRole

```c
Entity* output_list_of_available_role = bluefintecsuserbackoffice_output_list_of_available_role(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `available_role` | `voxgig_value* (list)` | No |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `char*` | No |  |

### Operations

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* output_list_of_available_role = bluefintecsuserbackoffice_output_list_of_available_role(client, NULL);
voxgig_value* result = output_list_of_available_role->vt->create(output_list_of_available_role, NULL, NULL, &err);
```

### Common Methods

#### `voxgig_value* vt->data(Entity* e, voxgig_value* args)`

Get the entity data. Pass a map to set it.

#### `voxgig_value* vt->matchv(Entity* e, voxgig_value* args)`

Get the entity match criteria. Pass a map to set it.

#### `Entity* vt->make(Entity* e)`

Create a new `OutputListOfAvailableRole` entity instance with the same options.

#### `const char* vt->get_name(Entity* e)`

Return the entity name.


---

## OutputListOfMandator

```c
Entity* output_list_of_mandator = bluefintecsuserbackoffice_output_list_of_mandator(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `filter` | `voxgig_value* (map)` | No |  |
| `list` | `voxgig_value* (list)` | No |  |
| `pagination` | `voxgig_value* (map)` | No |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `char*` | No |  |
| `sorting` | `voxgig_value* (map)` | No |  |

### Operations

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* output_list_of_mandator = bluefintecsuserbackoffice_output_list_of_mandator(client, NULL);
voxgig_value* result = output_list_of_mandator->vt->create(output_list_of_mandator, NULL, NULL, &err);
```

### Common Methods

#### `voxgig_value* vt->data(Entity* e, voxgig_value* args)`

Get the entity data. Pass a map to set it.

#### `voxgig_value* vt->matchv(Entity* e, voxgig_value* args)`

Get the entity match criteria. Pass a map to set it.

#### `Entity* vt->make(Entity* e)`

Create a new `OutputListOfMandator` entity instance with the same options.

#### `const char* vt->get_name(Entity* e)`

Return the entity name.


---

## OutputListOfModule

```c
Entity* output_list_of_module = bluefintecsuserbackoffice_output_list_of_module(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `list` | `voxgig_value* (list)` | No |  |
| `pagination` | `voxgig_value* (map)` | No |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `char*` | No |  |

### Operations

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* output_list_of_module = bluefintecsuserbackoffice_output_list_of_module(client, NULL);
voxgig_value* result = output_list_of_module->vt->create(output_list_of_module, NULL, NULL, &err);
```

### Common Methods

#### `voxgig_value* vt->data(Entity* e, voxgig_value* args)`

Get the entity data. Pass a map to set it.

#### `voxgig_value* vt->matchv(Entity* e, voxgig_value* args)`

Get the entity match criteria. Pass a map to set it.

#### `Entity* vt->make(Entity* e)`

Create a new `OutputListOfModule` entity instance with the same options.

#### `const char* vt->get_name(Entity* e)`

Return the entity name.


---

## OutputListOfRoleGroup

```c
Entity* output_list_of_role_group = bluefintecsuserbackoffice_output_list_of_role_group(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `filter` | `voxgig_value* (map)` | No |  |
| `group_role` | `voxgig_value* (list)` | No |  |
| `pagination` | `voxgig_value* (map)` | No |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `char*` | No |  |
| `sorting` | `voxgig_value* (map)` | No |  |

### Operations

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* output_list_of_role_group = bluefintecsuserbackoffice_output_list_of_role_group(client, NULL);
voxgig_value* result = output_list_of_role_group->vt->create(output_list_of_role_group, NULL, NULL, &err);
```

### Common Methods

#### `voxgig_value* vt->data(Entity* e, voxgig_value* args)`

Get the entity data. Pass a map to set it.

#### `voxgig_value* vt->matchv(Entity* e, voxgig_value* args)`

Get the entity match criteria. Pass a map to set it.

#### `Entity* vt->make(Entity* e)`

Create a new `OutputListOfRoleGroup` entity instance with the same options.

#### `const char* vt->get_name(Entity* e)`

Return the entity name.


---

## OutputListOfTransactionsHistory

```c
Entity* output_list_of_transactions_history = bluefintecsuserbackoffice_output_list_of_transactions_history(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `filter` | `voxgig_value* (map)` | No |  |
| `list` | `voxgig_value* (list)` | No |  |
| `pagination` | `voxgig_value* (map)` | No |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `char*` | No |  |
| `sorting` | `voxgig_value* (map)` | No |  |

### Operations

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* output_list_of_transactions_history = bluefintecsuserbackoffice_output_list_of_transactions_history(client, NULL);
voxgig_value* result = output_list_of_transactions_history->vt->create(output_list_of_transactions_history, NULL, NULL, &err);
```

### Common Methods

#### `voxgig_value* vt->data(Entity* e, voxgig_value* args)`

Get the entity data. Pass a map to set it.

#### `voxgig_value* vt->matchv(Entity* e, voxgig_value* args)`

Get the entity match criteria. Pass a map to set it.

#### `Entity* vt->make(Entity* e)`

Create a new `OutputListOfTransactionsHistory` entity instance with the same options.

#### `const char* vt->get_name(Entity* e)`

Return the entity name.


---

## OutputListOfUser

```c
Entity* output_list_of_user = bluefintecsuserbackoffice_output_list_of_user(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `filter` | `voxgig_value* (map)` | No |  |
| `list` | `voxgig_value* (list)` | No |  |
| `pagination` | `voxgig_value* (map)` | No |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `char*` | No |  |
| `sorting` | `voxgig_value* (map)` | No |  |

### Operations

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* output_list_of_user = bluefintecsuserbackoffice_output_list_of_user(client, NULL);
voxgig_value* result = output_list_of_user->vt->create(output_list_of_user, NULL, NULL, &err);
```

### Common Methods

#### `voxgig_value* vt->data(Entity* e, voxgig_value* args)`

Get the entity data. Pass a map to set it.

#### `voxgig_value* vt->matchv(Entity* e, voxgig_value* args)`

Get the entity match criteria. Pass a map to set it.

#### `Entity* vt->make(Entity* e)`

Create a new `OutputListOfUser` entity instance with the same options.

#### `const char* vt->get_name(Entity* e)`

Return the entity name.


---

## OutputProvideCredential

```c
Entity* output_provide_credential = bluefintecsuserbackoffice_output_provide_credential(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `mandator_name` | `char*` | Yes |  |
| `password` | `char*` | No |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `char*` | No |  |
| `username` | `char*` | No |  |

### Operations

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* output_provide_credential = bluefintecsuserbackoffice_output_provide_credential(client, NULL);
voxgig_value* result = output_provide_credential->vt->create(output_provide_credential, cmap(1,
    "mandator_name", v_str("example_mandator_name"))  // char*
, NULL, &err);
```

### Common Methods

#### `voxgig_value* vt->data(Entity* e, voxgig_value* args)`

Get the entity data. Pass a map to set it.

#### `voxgig_value* vt->matchv(Entity* e, voxgig_value* args)`

Get the entity match criteria. Pass a map to set it.

#### `Entity* vt->make(Entity* e)`

Create a new `OutputProvideCredential` entity instance with the same options.

#### `const char* vt->get_name(Entity* e)`

Return the entity name.


---

## OutputRegisterUser

```c
Entity* output_register_user = bluefintecsuserbackoffice_output_register_user(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `city` | `char*` | No |  |
| `consumer_id` | `char*` | No |  |
| `consumer_language` | `char*` | No |  |
| `country` | `char*` | No |  |
| `date_of_birth` | `char*` | No |  |
| `driver_licence_number` | `char*` | No |  |
| `email` | `char*` | Yes |  |
| `first_name` | `char*` | No |  |
| `identification_number` | `char*` | No |  |
| `last_name` | `char*` | No |  |
| `login` | `char*` | No |  |
| `module` | `char*` | No |  |
| `passport_number` | `char*` | No |  |
| `phone` | `char*` | No |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `char*` | No |  |
| `salutation` | `char*` | No |  |
| `state` | `char*` | No |  |
| `street1` | `char*` | No |  |
| `street2` | `char*` | No |  |
| `zip` | `char*` | No |  |

### Operations

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* output_register_user = bluefintecsuserbackoffice_output_register_user(client, NULL);
voxgig_value* result = output_register_user->vt->create(output_register_user, cmap(1,
    "email", v_str("example_email"))  // char*
, NULL, &err);
```

### Common Methods

#### `voxgig_value* vt->data(Entity* e, voxgig_value* args)`

Get the entity data. Pass a map to set it.

#### `voxgig_value* vt->matchv(Entity* e, voxgig_value* args)`

Get the entity match criteria. Pass a map to set it.

#### `Entity* vt->make(Entity* e)`

Create a new `OutputRegisterUser` entity instance with the same options.

#### `const char* vt->get_name(Entity* e)`

Return the entity name.


---

## OutputRemoveRole

```c
Entity* output_remove_role = bluefintecsuserbackoffice_output_remove_role(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumer_uuid` | `char*` | No |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `char*` | No |  |
| `role` | `voxgig_value* (list)` | No |  |

### Operations

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* output_remove_role = bluefintecsuserbackoffice_output_remove_role(client, NULL);
voxgig_value* result = output_remove_role->vt->create(output_remove_role, NULL, NULL, &err);
```

### Common Methods

#### `voxgig_value* vt->data(Entity* e, voxgig_value* args)`

Get the entity data. Pass a map to set it.

#### `voxgig_value* vt->matchv(Entity* e, voxgig_value* args)`

Get the entity match criteria. Pass a map to set it.

#### `Entity* vt->make(Entity* e)`

Create a new `OutputRemoveRole` entity instance with the same options.

#### `const char* vt->get_name(Entity* e)`

Return the entity name.


---

## OutputResendLink

```c
Entity* output_resend_link = bluefintecsuserbackoffice_output_resend_link(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `business_registration_number` | `char*` | No |  |
| `consumer_uuid` | `char*` | Yes |  |
| `email_confirmation_code` | `char*` | No |  |
| `phone_number` | `char*` | No |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `char*` | No |  |

### Operations

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* output_resend_link = bluefintecsuserbackoffice_output_resend_link(client, NULL);
voxgig_value* result = output_resend_link->vt->create(output_resend_link, cmap(1,
    "consumer_uuid", v_str("example_consumer_uuid"))  // char*
, NULL, &err);
```

### Common Methods

#### `voxgig_value* vt->data(Entity* e, voxgig_value* args)`

Get the entity data. Pass a map to set it.

#### `voxgig_value* vt->matchv(Entity* e, voxgig_value* args)`

Get the entity match criteria. Pass a map to set it.

#### `Entity* vt->make(Entity* e)`

Create a new `OutputResendLink` entity instance with the same options.

#### `const char* vt->get_name(Entity* e)`

Return the entity name.


---

## OutputResetPassword

```c
Entity* output_reset_password = bluefintecsuserbackoffice_output_reset_password(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumer_uuid` | `char*` | No |  |
| `phone_number` | `char*` | No |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `char*` | No |  |

### Operations

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* output_reset_password = bluefintecsuserbackoffice_output_reset_password(client, NULL);
voxgig_value* result = output_reset_password->vt->create(output_reset_password, NULL, NULL, &err);
```

### Common Methods

#### `voxgig_value* vt->data(Entity* e, voxgig_value* args)`

Get the entity data. Pass a map to set it.

#### `voxgig_value* vt->matchv(Entity* e, voxgig_value* args)`

Get the entity match criteria. Pass a map to set it.

#### `Entity* vt->make(Entity* e)`

Create a new `OutputResetPassword` entity instance with the same options.

#### `const char* vt->get_name(Entity* e)`

Return the entity name.


---

## OutputUpdateConsumer

```c
Entity* output_update_consumer = bluefintecsuserbackoffice_output_update_consumer(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `city` | `char*` | No |  |
| `consumer_uuid` | `char*` | Yes |  |
| `consumerlanguage` | `char*` | No |  |
| `country` | `char*` | No |  |
| `date_of_birth` | `char*` | No |  |
| `datetime_created` | `char*` | No |  |
| `driver_licence_number` | `char*` | No |  |
| `email` | `char*` | No |  |
| `first_name` | `char*` | No |  |
| `identification_number` | `char*` | No |  |
| `kyc_passed` | `bool` | No |  |
| `last_name` | `char*` | No |  |
| `nationality` | `char*` | No |  |
| `passport_number` | `char*` | No |  |
| `phone_number` | `char*` | No |  |
| `place_of_birth` | `char*` | No |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `char*` | No |  |
| `state` | `char*` | No |  |
| `street1` | `char*` | No |  |
| `street2` | `char*` | No |  |
| `transactionhistory_id` | `char*` | No |  |
| `zip` | `char*` | No |  |

### Operations

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* output_update_consumer = bluefintecsuserbackoffice_output_update_consumer(client, NULL);
voxgig_value* result = output_update_consumer->vt->create(output_update_consumer, cmap(1,
    "consumer_uuid", v_str("example_consumer_uuid"))  // char*
, NULL, &err);
```

### Common Methods

#### `voxgig_value* vt->data(Entity* e, voxgig_value* args)`

Get the entity data. Pass a map to set it.

#### `voxgig_value* vt->matchv(Entity* e, voxgig_value* args)`

Get the entity match criteria. Pass a map to set it.

#### `Entity* vt->make(Entity* e)`

Create a new `OutputUpdateConsumer` entity instance with the same options.

#### `const char* vt->get_name(Entity* e)`

Return the entity name.


---

## OutputUpdateProfile

```c
Entity* output_update_profile = bluefintecsuserbackoffice_output_update_profile(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumer_language` | `char*` | No |  |
| `email` | `char*` | No |  |
| `first_name` | `char*` | No |  |
| `last_name` | `char*` | No |  |
| `phone_number` | `char*` | No |  |
| `response_code` | `int64_t` | No |  |
| `response_message` | `char*` | No |  |

### Operations

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* output_update_profile = bluefintecsuserbackoffice_output_update_profile(client, NULL);
voxgig_value* result = output_update_profile->vt->create(output_update_profile, NULL, NULL, &err);
```

### Common Methods

#### `voxgig_value* vt->data(Entity* e, voxgig_value* args)`

Get the entity data. Pass a map to set it.

#### `voxgig_value* vt->matchv(Entity* e, voxgig_value* args)`

Get the entity match criteria. Pass a map to set it.

#### `Entity* vt->make(Entity* e)`

Create a new `OutputUpdateProfile` entity instance with the same options.

#### `const char* vt->get_name(Entity* e)`

Return the entity name.


---

## Version

```c
Entity* version = bluefintecsuserbackoffice_version(client, NULL);
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `app_name` | `char*` | No |  |
| `build_date` | `char*` | No |  |
| `version` | `char*` | No |  |

### Operations

#### `vt->load(Entity* e, voxgig_value* reqmatch, voxgig_value* ctrl, PNError** err)`

Load a single entity matching the given criteria. Returns the entity data and sets `*err` on failure.

```c
Entity* version = bluefintecsuserbackoffice_version(client, NULL);
voxgig_value* result = version->vt->load(version, NULL, NULL, &err);
```

### Common Methods

#### `voxgig_value* vt->data(Entity* e, voxgig_value* args)`

Get the entity data. Pass a map to set it.

#### `voxgig_value* vt->matchv(Entity* e, voxgig_value* args)`

Get the entity match criteria. Pass a map to set it.

#### `Entity* vt->make(Entity* e)`

Create a new `Version` entity instance with the same options.

#### `const char* vt->get_name(Entity* e)`

Return the entity name.


---

## Features

| Feature | Version | Description |
| --- | --- | --- |
| `test` | 0.0.1 | In-memory mock transport for testing without a live server |


Features are activated via the `feature` option:

```c
BluefinTecsUserBackofficeSDK* client = bluefintecsuserbackoffice_sdk_new(cmap(1,
    "feature", cmap(1,
        "test", cmap(1, "active", v_bool(true)))
));
```


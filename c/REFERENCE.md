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
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `char*` | No |  |

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
| `clientSecret` | `char*` | Yes |  |
| `notificationEmail` | `char*` | Yes |  |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `char*` | No |  |

### Operations

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* output_activate_portal_module = bluefintecsuserbackoffice_output_activate_portal_module(client, NULL);
voxgig_value* result = output_activate_portal_module->vt->create(output_activate_portal_module, cmap(2,
    "clientSecret", v_str("example_clientSecret"),  // char*
    "notificationEmail", v_str("example_notificationEmail"))  // char*
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
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `char*` | No |  |

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
| `consumerUUID` | `char*` | No |  |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `char*` | No |  |

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
| `consumerUUID` | `char*` | Yes | Unique identifier of the consumer (user) to whom the role(s) will be assigned. |
| `responseCode` | `int64_t` | No | Response code: 0 indicates success; any non-zero value indicates an error. |
| `responseMessage` | `char*` | No | A human-readable message providing additional details about the outcome. |
| `roles` | `voxgig_value* (list)` | Yes | List of roles to assign to the consumer. |

### Operations

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* output_assign_role = bluefintecsuserbackoffice_output_assign_role(client, NULL);
voxgig_value* result = output_assign_role->vt->create(output_assign_role, cmap(2,
    "consumerUUID", v_str("example_consumerUUID"),  // char*
    "roles", v_list())  // voxgig_value* (list)
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
| `contentAsBase64` | `char*` | Yes | The content of the image as base64 encoded string |
| `mimeType` | `char*` | Yes | The MIME type of the image |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `char*` | No |  |

### Operations

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* output_change_logo = bluefintecsuserbackoffice_output_change_logo(client, NULL);
voxgig_value* result = output_change_logo->vt->create(output_change_logo, cmap(2,
    "contentAsBase64", v_str("example_contentAsBase64"),  // char*
    "mimeType", v_str("example_mimeType"))  // char*
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
| `dateOfBirth` | `char*` | No |  |
| `description` | `char*` | No |  |
| `driversLicenseNumber` | `char*` | No |  |
| `email` | `char*` | Yes |  |
| `firstName` | `char*` | No |  |
| `identificationNumber` | `char*` | No |  |
| `lastName` | `char*` | No |  |
| `login` | `char*` | Yes |  |
| `name` | `char*` | No |  |
| `passportNumber` | `char*` | No |  |
| `phone` | `char*` | Yes |  |
| `salutation` | `char*` | No |  |
| `state` | `char*` | No |  |
| `street1` | `char*` | No |  |
| `street2` | `char*` | No |  |
| `zipCode` | `char*` | No |  |

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

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* output_create_mandator = bluefintecsuserbackoffice_output_create_mandator(client, NULL);
voxgig_value* result = output_create_mandator->vt->create(output_create_mandator, cmap(3,
    "email", v_str("example_email"),  // char*
    "login", v_str("example_login"),  // char*
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
| `mandatorName` | `char*` | Yes |  |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `char*` | No |  |

### Operations

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* output_create_service_user = bluefintecsuserbackoffice_output_create_service_user(client, NULL);
voxgig_value* result = output_create_service_user->vt->create(output_create_service_user, cmap(1,
    "mandatorName", v_str("example_mandatorName"))  // char*
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
| `consumerUUID` | `char*` | No |  |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `char*` | No |  |

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
| `caseID` | `char*` | No |  |
| `encodedDataBase64` | `char*` | No |  |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `char*` | No |  |

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
| `contentAsBase64` | `char*` | Yes | The content of the image as base64 encoded string |
| `mimeType` | `char*` | Yes | The MIME type of the image |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `char*` | No |  |

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
| `availableRoles` | `voxgig_value* (list)` | No |  |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `char*` | No |  |

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
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `char*` | No |  |
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
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `char*` | No |  |

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
| `groupRoles` | `voxgig_value* (list)` | No |  |
| `pagination` | `voxgig_value* (map)` | No |  |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `char*` | No |  |
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
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `char*` | No |  |
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
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `char*` | No |  |
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
| `mandatorName` | `char*` | Yes |  |
| `password` | `char*` | No |  |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `char*` | No |  |
| `username` | `char*` | No |  |

### Operations

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* output_provide_credential = bluefintecsuserbackoffice_output_provide_credential(client, NULL);
voxgig_value* result = output_provide_credential->vt->create(output_provide_credential, cmap(1,
    "mandatorName", v_str("example_mandatorName"))  // char*
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
| `city` | `char*` | No | City where the user resides. |
| `consumerId` | `char*` | No | User login or unique user identifier. |
| `consumerLanguage` | `char*` | No | Preferred language for the user (e.g., 'en'). |
| `country` | `char*` | No | User's country. |
| `dateOfBirth` | `char*` | No | User's date of birth (expected format: dd.MM.yyyy). |
| `driverLicenceNumber` | `char*` | No | User's driver's license number. |
| `email` | `char*` | Yes | User's email address (must be unique). |
| `firstName` | `char*` | No | User's first name. |
| `identificationNumber` | `char*` | No | User's identification number. |
| `lastName` | `char*` | No | User's last name. |
| `login` | `char*` | No | User login identifier (should be unique). |
| `module` | `char*` | No | Module identifier (if applicable). |
| `passportNumber` | `char*` | No | User's passport number. |
| `phone` | `char*` | No | User's phone number. |
| `responseCode` | `int64_t` | No | Response code (0 indicates success; non-zero indicates an error). |
| `responseMessage` | `char*` | No | Human-readable response message. |
| `salutation` | `char*` | No | User's salutation (e.g., Mr., Ms.). |
| `state` | `char*` | No | User's state or region. |
| `street1` | `char*` | No | Primary address line. |
| `street2` | `char*` | No | Secondary address line. |
| `zip` | `char*` | No | Postal code. |

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
| `consumerUUID` | `char*` | No |  |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `char*` | No |  |
| `roles` | `voxgig_value* (list)` | No |  |

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
| `businessRegistrationNumber` | `char*` | No |  |
| `consumerUUID` | `char*` | Yes |  |
| `emailConfirmationCode` | `char*` | No |  |
| `phoneNumber` | `char*` | No |  |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `char*` | No |  |

### Operations

#### `vt->create(Entity* e, voxgig_value* reqdata, voxgig_value* ctrl, PNError** err)`

Create a new entity with the given data. Returns the created entity data and sets `*err` on failure.

```c
Entity* output_resend_link = bluefintecsuserbackoffice_output_resend_link(client, NULL);
voxgig_value* result = output_resend_link->vt->create(output_resend_link, cmap(1,
    "consumerUUID", v_str("example_consumerUUID"))  // char*
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
| `consumerUuid` | `char*` | No |  |
| `phoneNumber` | `char*` | No |  |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `char*` | No |  |

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
| `consumerUuid` | `char*` | Yes |  |
| `consumerlanguage` | `char*` | No |  |
| `country` | `char*` | No |  |
| `dateOfBirth` | `char*` | No |  |
| `datetime_created` | `char*` | No |  |
| `driverLicenceNumber` | `char*` | No |  |
| `email` | `char*` | No |  |
| `firstName` | `char*` | No |  |
| `identificationNumber` | `char*` | No |  |
| `kycPassed` | `bool` | No |  |
| `lastName` | `char*` | No |  |
| `nationality` | `char*` | No |  |
| `passportNumber` | `char*` | No |  |
| `phoneNumber` | `char*` | No |  |
| `placeOfBirth` | `char*` | No |  |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `char*` | No |  |
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
    "consumerUuid", v_str("example_consumerUuid"))  // char*
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
| `consumerLanguage` | `char*` | No |  |
| `email` | `char*` | No |  |
| `firstName` | `char*` | No |  |
| `lastName` | `char*` | No |  |
| `phoneNumber` | `char*` | No |  |
| `responseCode` | `int64_t` | No |  |
| `responseMessage` | `char*` | No |  |

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
| `appName` | `char*` | No |  |
| `buildDate` | `char*` | No |  |
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

```c
BluefinTecsUserBackofficeSDK* client = bluefintecsuserbackoffice_sdk_new(cmap(1,
    "feature", cmap(12,
        "audit", cmap(1, "active", v_bool(true)),
        "clienttrack", cmap(1, "active", v_bool(true)),
        "debug", cmap(1, "active", v_bool(true)),
        "idempotency", cmap(1, "active", v_bool(true)),
        "log", cmap(1, "active", v_bool(true)),
        "metrics", cmap(1, "active", v_bool(true)),
        "paging", cmap(1, "active", v_bool(true)),
        "ratelimit", cmap(1, "active", v_bool(true)),
        "retry", cmap(1, "active", v_bool(true)),
        "telemetry", cmap(1, "active", v_bool(true)),
        "test", cmap(1, "active", v_bool(true)),
        "timeout", cmap(1, "active", v_bool(true)))
));
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


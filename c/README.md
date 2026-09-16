# BluefinTecsUserBackoffice C SDK



The C SDK for the BluefinTecsUserBackoffice API — an entity-oriented client following idiomatic C conventions (explicit structs, function-pointer vtables, and a trailing `PNError**` out-param for errors).

The SDK exposes the API as capitalised, semantic **Entities** — for example `bluefintecsuserbackoffice_output_activate_digital_module(client, NULL)` — each
carrying a small, uniform set of operations (`load`, `create`) instead of raw URL
paths and query strings. You work with named resources and verbs, which
keeps the cognitive load low.

> Other languages, the CLI, and MCP server live alongside this one — see
> the [top-level README](../README.md).


## Install
C has no central package registry — a release is the git tag
(`c/vX.Y.Z`, see [Releases](https://github.com/voxgig-sdk/bluefin-tecs-user-backoffice-sdk/releases)). Build from a
source checkout with the bundled `Makefile`; the voxgig struct library is
vendored under `utility/struct`, so there are no external dependencies to
fetch:

```bash
cd c && make          # builds libsdk.a
cd c && make test     # builds + runs the test binaries
```

Link your program against `libsdk.a` and include `core/api.h`:

```bash
cc -I c/core -I c/utility/struct \
   myapp.c c/libsdk.a -lm -o myapp
```


## Tutorial: your first API call

This tutorial walks through creating a client, listing entities, and
loading a specific record.

### 1. Create a client

```c
#include "core/api.h"

BluefinTecsUserBackofficeSDK* client = bluefintecsuserbackoffice_sdk_new(cmap(1,
    "apikey", v_str(getenv("BLUEFIN_TECS_USER_BACKOFFICE_APIKEY"))));
PNError* err = NULL;
```

### 4. Create, update, and remove

```c
Entity* output_activate_digital_module = bluefintecsuserbackoffice_output_activate_digital_module(client, NULL);
// Create — returns the bare created record
voxgig_value* created = output_activate_digital_module->vt->create(output_activate_digital_module, cmap(2, "responseCode", v_num(1), "responseMessage", v_str("example_responseMessage")), NULL, &err);

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

For endpoints not covered by entity operations:

```c
PNError* err = NULL;
voxgig_value* result = sdk_direct(client, cmap(3,
    "path", v_str("/api/resource/{id}"),
    "method", v_str("GET"),
    "params", cmap(1, "id", v_str("example"))), &err);

if (voxgig_as_bool(getp(result, "ok"))) {
    printf("%lld\n", (long long)to_int(getp(result, "status")));  // 200
    printf("%s\n", voxgig_to_json(getp(result, "data")));         // response body
} else {
    // A non-2xx response carries status + data (the error body); a
    // transport-level failure carries err instead. Only one is present.
    printf("%s\n", voxgig_to_json(getp(result, "err")));
}
```

`sdk_direct()` never sets `*err` for a non-2xx response — it always returns
a result map you branch on via `getp(result, "ok")`.

### Prepare a request without sending it

```c
PNError* err = NULL;
voxgig_value* fetchdef = sdk_prepare(client, cmap(3,
    "path", v_str("/api/resource/{id}"),
    "method", v_str("DELETE"),
    "params", cmap(1, "id", v_str("example"))), &err);

printf("%s\n", get_str(fetchdef, "url"));
printf("%s\n", get_str(fetchdef, "method"));
printf("%s\n", voxgig_to_json(getp(fetchdef, "headers")));
```

### Use test mode

Create a mock client for unit testing — no server required:

```c
BluefinTecsUserBackofficeSDK* client = test_sdk(NULL, NULL);
PNError* err = NULL;

// Entity ops return the bare record and set *err on failure.
Entity* output_get_logo = bluefintecsuserbackoffice_output_get_logo(client, NULL);
voxgig_value* output_get_logo_rec = output_get_logo->vt->load(output_get_logo, NULL, NULL, &err);
// output_get_logo_rec contains the mock response record
```

### Use a custom fetch function

Replace the HTTP transport with your own function (the same shape the test
transport uses):

```c
static voxgig_value* mock_fetch(void* ud, voxgig_value* args) {
    (void)ud; (void)args;
    return cmap(4,
        "status", v_num(200),
        "statusText", v_str("OK"),
        "headers", v_map(),
        "json", json_thunk(cmap(1, "id", v_str("mock01"))));
}

BluefinTecsUserBackofficeSDK* client = bluefintecsuserbackoffice_sdk_new(cmap(2,
    "base", v_str("http://localhost:8080"),
    "system", cmap(1, "fetch", vfn(mock_fetch, NULL))));
```

### Point at a different server

Override the base URL to reach a local or staging server:

```c
BluefinTecsUserBackofficeSDK* client = bluefintecsuserbackoffice_sdk_new(cmap(1,
    "base", v_str("http://localhost:8080")));
```

### Run live tests

Create a `.env.local` file at the project root:

```
BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE=TRUE
BLUEFIN_TECS_USER_BACKOFFICE_APIKEY=<your-key>
```

Then run:

```bash
cd c && make test
```


## Reference

### BluefinTecsUserBackofficeSDK

```c
#include "core/api.h"

BluefinTecsUserBackofficeSDK* client = bluefintecsuserbackoffice_sdk_new(options);
```

Creates a new SDK client. `options` is a `voxgig_value*` map (`NULL` for
none) carrying any of the following keys:

| Option | Value type | Description |
| --- | --- | --- |
| `apikey` | `string` | API key for authentication. |
| `base` | `string` | Base URL of the API server. |
| `prefix` | `string` | URL path prefix prepended to all requests. |
| `suffix` | `string` | URL path suffix appended to all requests. |
| `feature` | `map` | Feature activation flags. |
| `system` | `map` | System overrides (e.g. a custom `fetch`). |

### test_sdk

```c
BluefinTecsUserBackofficeSDK* client = test_sdk(testopts, sdkopts);
```

Creates a test-mode client with mock transport. Both arguments may be
`NULL`.

### BluefinTecsUserBackofficeSDK functions

| Function | Signature | Description |
| --- | --- | --- |
| `sdk_prepare` | `(BluefinTecsUserBackofficeSDK*, fetchargs, PNError**) -> voxgig_value*` | Build an HTTP request definition without sending. |
| `sdk_direct` | `(BluefinTecsUserBackofficeSDK*, fetchargs, PNError**) -> voxgig_value*` | Build and send an HTTP request. Returns a result map (branch on `ok`). |
| `bluefintecsuserbackoffice_output_activate_digital_module` | `(BluefinTecsUserBackofficeSDK*, entopts) -> Entity*` | Create an OutputActivateDigitalModule entity instance. |
| `bluefintecsuserbackoffice_output_activate_portal_module` | `(BluefinTecsUserBackofficeSDK*, entopts) -> Entity*` | Create an OutputActivatePortalModule entity instance. |
| `bluefintecsuserbackoffice_output_activate_store_module` | `(BluefinTecsUserBackofficeSDK*, entopts) -> Entity*` | Create an OutputActivateStoreModule entity instance. |
| `bluefintecsuserbackoffice_output_activate_user` | `(BluefinTecsUserBackofficeSDK*, entopts) -> Entity*` | Create an OutputActivateUser entity instance. |
| `bluefintecsuserbackoffice_output_assign_role` | `(BluefinTecsUserBackofficeSDK*, entopts) -> Entity*` | Create an OutputAssignRole entity instance. |
| `bluefintecsuserbackoffice_output_change_logo` | `(BluefinTecsUserBackofficeSDK*, entopts) -> Entity*` | Create an OutputChangeLogo entity instance. |
| `bluefintecsuserbackoffice_output_create_mandator` | `(BluefinTecsUserBackofficeSDK*, entopts) -> Entity*` | Create an OutputCreateMandator entity instance. |
| `bluefintecsuserbackoffice_output_create_service_user` | `(BluefinTecsUserBackofficeSDK*, entopts) -> Entity*` | Create an OutputCreateServiceUser entity instance. |
| `bluefintecsuserbackoffice_output_deactivate_user` | `(BluefinTecsUserBackofficeSDK*, entopts) -> Entity*` | Create an OutputDeactivateUser entity instance. |
| `bluefintecsuserbackoffice_output_get_kyc_document` | `(BluefinTecsUserBackofficeSDK*, entopts) -> Entity*` | Create an OutputGetKycDocument entity instance. |
| `bluefintecsuserbackoffice_output_get_logo` | `(BluefinTecsUserBackofficeSDK*, entopts) -> Entity*` | Create an OutputGetLogo entity instance. |
| `bluefintecsuserbackoffice_output_list_of_available_role` | `(BluefinTecsUserBackofficeSDK*, entopts) -> Entity*` | Create an OutputListOfAvailableRole entity instance. |
| `bluefintecsuserbackoffice_output_list_of_mandator` | `(BluefinTecsUserBackofficeSDK*, entopts) -> Entity*` | Create an OutputListOfMandator entity instance. |
| `bluefintecsuserbackoffice_output_list_of_module` | `(BluefinTecsUserBackofficeSDK*, entopts) -> Entity*` | Create an OutputListOfModule entity instance. |
| `bluefintecsuserbackoffice_output_list_of_role_group` | `(BluefinTecsUserBackofficeSDK*, entopts) -> Entity*` | Create an OutputListOfRoleGroup entity instance. |
| `bluefintecsuserbackoffice_output_list_of_transactions_history` | `(BluefinTecsUserBackofficeSDK*, entopts) -> Entity*` | Create an OutputListOfTransactionsHistory entity instance. |
| `bluefintecsuserbackoffice_output_list_of_user` | `(BluefinTecsUserBackofficeSDK*, entopts) -> Entity*` | Create an OutputListOfUser entity instance. |
| `bluefintecsuserbackoffice_output_provide_credential` | `(BluefinTecsUserBackofficeSDK*, entopts) -> Entity*` | Create an OutputProvideCredential entity instance. |
| `bluefintecsuserbackoffice_output_register_user` | `(BluefinTecsUserBackofficeSDK*, entopts) -> Entity*` | Create an OutputRegisterUser entity instance. |
| `bluefintecsuserbackoffice_output_remove_role` | `(BluefinTecsUserBackofficeSDK*, entopts) -> Entity*` | Create an OutputRemoveRole entity instance. |
| `bluefintecsuserbackoffice_output_resend_link` | `(BluefinTecsUserBackofficeSDK*, entopts) -> Entity*` | Create an OutputResendLink entity instance. |
| `bluefintecsuserbackoffice_output_reset_password` | `(BluefinTecsUserBackofficeSDK*, entopts) -> Entity*` | Create an OutputResetPassword entity instance. |
| `bluefintecsuserbackoffice_output_update_consumer` | `(BluefinTecsUserBackofficeSDK*, entopts) -> Entity*` | Create an OutputUpdateConsumer entity instance. |
| `bluefintecsuserbackoffice_output_update_profile` | `(BluefinTecsUserBackofficeSDK*, entopts) -> Entity*` | Create an OutputUpdateProfile entity instance. |
| `bluefintecsuserbackoffice_version` | `(BluefinTecsUserBackofficeSDK*, entopts) -> Entity*` | Create a Version entity instance. |

### Entity interface (vtable)

All entities share the same `EntityVT` vtable, reached via `e->vt->...`.

| Method | Signature | Description |
| --- | --- | --- |
| `load` | `(Entity*, reqmatch, ctrl, PNError**) -> voxgig_value*` | Load a single entity by match criteria. |
| `create` | `(Entity*, reqdata, ctrl, PNError**) -> voxgig_value*` | Create a new entity. |
| `data` | `(Entity*, args) -> voxgig_value*` | Get entity data (pass a map to set). |
| `matchv` | `(Entity*, args) -> voxgig_value*` | Get entity match criteria (pass a map to set). |
| `make` | `(Entity*) -> Entity*` | Create a new instance with the same options. |
| `get_name` | `(Entity*) -> const char*` | Return the entity name. |

### Result shape

Entity operations return the bare result data (a `voxgig_value` map for
single-entity ops, a List for `list`) and set `*err` to a `PNError*` on
failure. Always initialise `PNError* err = NULL;` and check it after the
call.

The `sdk_direct()` escape hatch never sets `*err` for a non-2xx response —
it returns a result map you branch on via `getp(result, "ok")`:

| Key | Type | Description |
| --- | --- | --- |
| `ok` | `bool` | `true` if the HTTP status is 2xx. |
| `status` | `number` | HTTP status code. |
| `headers` | `map` | Response headers. |
| `data` | `any` | Parsed JSON response body. |

On error, `ok` is `false` and `err` carries the error value.

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

Create an instance: `Entity* output_activate_digital_module = bluefintecsuserbackoffice_output_activate_digital_module(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `char*` |  |

#### Example: Create

```c
Entity* output_activate_digital_module = bluefintecsuserbackoffice_output_activate_digital_module(client, NULL);
voxgig_value* output_activate_digital_module_rec = output_activate_digital_module->vt->create(output_activate_digital_module, NULL, NULL, &err);
```


### OutputActivatePortalModule

Create an instance: `Entity* output_activate_portal_module = bluefintecsuserbackoffice_output_activate_portal_module(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clientSecret` | `char*` |  |
| `notificationEmail` | `char*` |  |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `char*` |  |

#### Example: Create

```c
Entity* output_activate_portal_module = bluefintecsuserbackoffice_output_activate_portal_module(client, NULL);
voxgig_value* output_activate_portal_module_rec = output_activate_portal_module->vt->create(output_activate_portal_module, cmap(2,
    "clientSecret", v_str("example_clientSecret"),  // char*
    "notificationEmail", v_str("example_notificationEmail"))  // char*
, NULL, &err);
```


### OutputActivateStoreModule

Create an instance: `Entity* output_activate_store_module = bluefintecsuserbackoffice_output_activate_store_module(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `char*` |  |

#### Example: Create

```c
Entity* output_activate_store_module = bluefintecsuserbackoffice_output_activate_store_module(client, NULL);
voxgig_value* output_activate_store_module_rec = output_activate_store_module->vt->create(output_activate_store_module, NULL, NULL, &err);
```


### OutputActivateUser

Create an instance: `Entity* output_activate_user = bluefintecsuserbackoffice_output_activate_user(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumerUUID` | `char*` |  |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `char*` |  |

#### Example: Create

```c
Entity* output_activate_user = bluefintecsuserbackoffice_output_activate_user(client, NULL);
voxgig_value* output_activate_user_rec = output_activate_user->vt->create(output_activate_user, NULL, NULL, &err);
```


### OutputAssignRole

Create an instance: `Entity* output_assign_role = bluefintecsuserbackoffice_output_assign_role(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumerUUID` | `char*` | Unique identifier of the consumer (user) to whom the role(s) will be assigned. |
| `responseCode` | `int64_t` | Response code: 0 indicates success; any non-zero value indicates an error. |
| `responseMessage` | `char*` | A human-readable message providing additional details about the outcome. |
| `roles` | `voxgig_value* (list)` | List of roles to assign to the consumer. |

#### Example: Create

```c
Entity* output_assign_role = bluefintecsuserbackoffice_output_assign_role(client, NULL);
voxgig_value* output_assign_role_rec = output_assign_role->vt->create(output_assign_role, cmap(2,
    "consumerUUID", v_str("example_consumerUUID"),  // char*
    "roles", v_list())  // voxgig_value* (list)
, NULL, &err);
```


### OutputChangeLogo

Create an instance: `Entity* output_change_logo = bluefintecsuserbackoffice_output_change_logo(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `contentAsBase64` | `char*` | The content of the image as base64 encoded string |
| `mimeType` | `char*` | The MIME type of the image |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `char*` |  |

#### Example: Create

```c
Entity* output_change_logo = bluefintecsuserbackoffice_output_change_logo(client, NULL);
voxgig_value* output_change_logo_rec = output_change_logo->vt->create(output_change_logo, cmap(2,
    "contentAsBase64", v_str("example_contentAsBase64"),  // char*
    "mimeType", v_str("example_mimeType"))  // char*
, NULL, &err);
```


### OutputCreateMandator

Create an instance: `Entity* output_create_mandator = bluefintecsuserbackoffice_output_create_mandator(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `city` | `char*` |  |
| `country` | `char*` |  |
| `dateOfBirth` | `char*` |  |
| `description` | `char*` |  |
| `driversLicenseNumber` | `char*` |  |
| `email` | `char*` |  |
| `firstName` | `char*` |  |
| `identificationNumber` | `char*` |  |
| `lastName` | `char*` |  |
| `login` | `char*` |  |
| `name` | `char*` |  |
| `passportNumber` | `char*` |  |
| `phone` | `char*` |  |
| `salutation` | `char*` |  |
| `state` | `char*` |  |
| `street1` | `char*` |  |
| `street2` | `char*` |  |
| `zipCode` | `char*` |  |

#### Example: Create

```c
Entity* output_create_mandator = bluefintecsuserbackoffice_output_create_mandator(client, NULL);
voxgig_value* output_create_mandator_rec = output_create_mandator->vt->create(output_create_mandator, cmap(3,
    "email", v_str("example_email"),  // char*
    "login", v_str("example_login"),  // char*
    "phone", v_str("example_phone"))  // char*
, NULL, &err);
```


### OutputCreateServiceUser

Create an instance: `Entity* output_create_service_user = bluefintecsuserbackoffice_output_create_service_user(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `mandatorName` | `char*` |  |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `char*` |  |

#### Example: Create

```c
Entity* output_create_service_user = bluefintecsuserbackoffice_output_create_service_user(client, NULL);
voxgig_value* output_create_service_user_rec = output_create_service_user->vt->create(output_create_service_user, cmap(1,
    "mandatorName", v_str("example_mandatorName"))  // char*
, NULL, &err);
```


### OutputDeactivateUser

Create an instance: `Entity* output_deactivate_user = bluefintecsuserbackoffice_output_deactivate_user(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumerUUID` | `char*` |  |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `char*` |  |

#### Example: Create

```c
Entity* output_deactivate_user = bluefintecsuserbackoffice_output_deactivate_user(client, NULL);
voxgig_value* output_deactivate_user_rec = output_deactivate_user->vt->create(output_deactivate_user, NULL, NULL, &err);
```


### OutputGetKycDocument

Create an instance: `Entity* output_get_kyc_document = bluefintecsuserbackoffice_output_get_kyc_document(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `caseID` | `char*` |  |
| `encodedDataBase64` | `char*` |  |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `char*` |  |

#### Example: Create

```c
Entity* output_get_kyc_document = bluefintecsuserbackoffice_output_get_kyc_document(client, NULL);
voxgig_value* output_get_kyc_document_rec = output_get_kyc_document->vt->create(output_get_kyc_document, NULL, NULL, &err);
```


### OutputGetLogo

Create an instance: `Entity* output_get_logo = bluefintecsuserbackoffice_output_get_logo(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->load(e, reqmatch, ctrl, &err)` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `contentAsBase64` | `char*` | The content of the image as base64 encoded string |
| `mimeType` | `char*` | The MIME type of the image |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `char*` |  |

#### Example: Load

```c
Entity* output_get_logo = bluefintecsuserbackoffice_output_get_logo(client, NULL);
voxgig_value* output_get_logo_rec = output_get_logo->vt->load(output_get_logo, NULL, NULL, &err);
```


### OutputListOfAvailableRole

Create an instance: `Entity* output_list_of_available_role = bluefintecsuserbackoffice_output_list_of_available_role(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `availableRoles` | `voxgig_value* (list)` |  |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `char*` |  |

#### Example: Create

```c
Entity* output_list_of_available_role = bluefintecsuserbackoffice_output_list_of_available_role(client, NULL);
voxgig_value* output_list_of_available_role_rec = output_list_of_available_role->vt->create(output_list_of_available_role, NULL, NULL, &err);
```


### OutputListOfMandator

Create an instance: `Entity* output_list_of_mandator = bluefintecsuserbackoffice_output_list_of_mandator(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `filter` | `voxgig_value* (map)` |  |
| `list` | `voxgig_value* (list)` |  |
| `pagination` | `voxgig_value* (map)` |  |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `char*` |  |
| `sorting` | `voxgig_value* (map)` |  |

#### Example: Create

```c
Entity* output_list_of_mandator = bluefintecsuserbackoffice_output_list_of_mandator(client, NULL);
voxgig_value* output_list_of_mandator_rec = output_list_of_mandator->vt->create(output_list_of_mandator, NULL, NULL, &err);
```


### OutputListOfModule

Create an instance: `Entity* output_list_of_module = bluefintecsuserbackoffice_output_list_of_module(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `list` | `voxgig_value* (list)` |  |
| `pagination` | `voxgig_value* (map)` |  |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `char*` |  |

#### Example: Create

```c
Entity* output_list_of_module = bluefintecsuserbackoffice_output_list_of_module(client, NULL);
voxgig_value* output_list_of_module_rec = output_list_of_module->vt->create(output_list_of_module, NULL, NULL, &err);
```


### OutputListOfRoleGroup

Create an instance: `Entity* output_list_of_role_group = bluefintecsuserbackoffice_output_list_of_role_group(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `filter` | `voxgig_value* (map)` |  |
| `groupRoles` | `voxgig_value* (list)` |  |
| `pagination` | `voxgig_value* (map)` |  |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `char*` |  |
| `sorting` | `voxgig_value* (map)` |  |

#### Example: Create

```c
Entity* output_list_of_role_group = bluefintecsuserbackoffice_output_list_of_role_group(client, NULL);
voxgig_value* output_list_of_role_group_rec = output_list_of_role_group->vt->create(output_list_of_role_group, NULL, NULL, &err);
```


### OutputListOfTransactionsHistory

Create an instance: `Entity* output_list_of_transactions_history = bluefintecsuserbackoffice_output_list_of_transactions_history(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `filter` | `voxgig_value* (map)` |  |
| `list` | `voxgig_value* (list)` |  |
| `pagination` | `voxgig_value* (map)` |  |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `char*` |  |
| `sorting` | `voxgig_value* (map)` |  |

#### Example: Create

```c
Entity* output_list_of_transactions_history = bluefintecsuserbackoffice_output_list_of_transactions_history(client, NULL);
voxgig_value* output_list_of_transactions_history_rec = output_list_of_transactions_history->vt->create(output_list_of_transactions_history, NULL, NULL, &err);
```


### OutputListOfUser

Create an instance: `Entity* output_list_of_user = bluefintecsuserbackoffice_output_list_of_user(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `filter` | `voxgig_value* (map)` |  |
| `list` | `voxgig_value* (list)` |  |
| `pagination` | `voxgig_value* (map)` |  |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `char*` |  |
| `sorting` | `voxgig_value* (map)` |  |

#### Example: Create

```c
Entity* output_list_of_user = bluefintecsuserbackoffice_output_list_of_user(client, NULL);
voxgig_value* output_list_of_user_rec = output_list_of_user->vt->create(output_list_of_user, NULL, NULL, &err);
```


### OutputProvideCredential

Create an instance: `Entity* output_provide_credential = bluefintecsuserbackoffice_output_provide_credential(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `mandatorName` | `char*` |  |
| `password` | `char*` |  |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `char*` |  |
| `username` | `char*` |  |

#### Example: Create

```c
Entity* output_provide_credential = bluefintecsuserbackoffice_output_provide_credential(client, NULL);
voxgig_value* output_provide_credential_rec = output_provide_credential->vt->create(output_provide_credential, cmap(1,
    "mandatorName", v_str("example_mandatorName"))  // char*
, NULL, &err);
```


### OutputRegisterUser

Create an instance: `Entity* output_register_user = bluefintecsuserbackoffice_output_register_user(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `city` | `char*` | City where the user resides. |
| `consumerId` | `char*` | User login or unique user identifier. |
| `consumerLanguage` | `char*` | Preferred language for the user (e.g., 'en'). |
| `country` | `char*` | User's country. |
| `dateOfBirth` | `char*` | User's date of birth (expected format: dd.MM.yyyy). |
| `driverLicenceNumber` | `char*` | User's driver's license number. |
| `email` | `char*` | User's email address (must be unique). |
| `firstName` | `char*` | User's first name. |
| `identificationNumber` | `char*` | User's identification number. |
| `lastName` | `char*` | User's last name. |
| `login` | `char*` | User login identifier (should be unique). |
| `module` | `char*` | Module identifier (if applicable). |
| `passportNumber` | `char*` | User's passport number. |
| `phone` | `char*` | User's phone number. |
| `responseCode` | `int64_t` | Response code (0 indicates success; non-zero indicates an error). |
| `responseMessage` | `char*` | Human-readable response message. |
| `salutation` | `char*` | User's salutation (e.g., Mr., Ms.). |
| `state` | `char*` | User's state or region. |
| `street1` | `char*` | Primary address line. |
| `street2` | `char*` | Secondary address line. |
| `zip` | `char*` | Postal code. |

#### Example: Create

```c
Entity* output_register_user = bluefintecsuserbackoffice_output_register_user(client, NULL);
voxgig_value* output_register_user_rec = output_register_user->vt->create(output_register_user, cmap(1,
    "email", v_str("example_email"))  // char*
, NULL, &err);
```


### OutputRemoveRole

Create an instance: `Entity* output_remove_role = bluefintecsuserbackoffice_output_remove_role(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumerUUID` | `char*` |  |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `char*` |  |
| `roles` | `voxgig_value* (list)` |  |

#### Example: Create

```c
Entity* output_remove_role = bluefintecsuserbackoffice_output_remove_role(client, NULL);
voxgig_value* output_remove_role_rec = output_remove_role->vt->create(output_remove_role, NULL, NULL, &err);
```


### OutputResendLink

Create an instance: `Entity* output_resend_link = bluefintecsuserbackoffice_output_resend_link(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `businessRegistrationNumber` | `char*` |  |
| `consumerUUID` | `char*` |  |
| `emailConfirmationCode` | `char*` |  |
| `phoneNumber` | `char*` |  |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `char*` |  |

#### Example: Create

```c
Entity* output_resend_link = bluefintecsuserbackoffice_output_resend_link(client, NULL);
voxgig_value* output_resend_link_rec = output_resend_link->vt->create(output_resend_link, cmap(1,
    "consumerUUID", v_str("example_consumerUUID"))  // char*
, NULL, &err);
```


### OutputResetPassword

Create an instance: `Entity* output_reset_password = bluefintecsuserbackoffice_output_reset_password(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumerUuid` | `char*` |  |
| `phoneNumber` | `char*` |  |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `char*` |  |

#### Example: Create

```c
Entity* output_reset_password = bluefintecsuserbackoffice_output_reset_password(client, NULL);
voxgig_value* output_reset_password_rec = output_reset_password->vt->create(output_reset_password, NULL, NULL, &err);
```


### OutputUpdateConsumer

Create an instance: `Entity* output_update_consumer = bluefintecsuserbackoffice_output_update_consumer(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `city` | `char*` |  |
| `consumerUuid` | `char*` |  |
| `consumerlanguage` | `char*` |  |
| `country` | `char*` |  |
| `dateOfBirth` | `char*` |  |
| `datetime_created` | `char*` |  |
| `driverLicenceNumber` | `char*` |  |
| `email` | `char*` |  |
| `firstName` | `char*` |  |
| `identificationNumber` | `char*` |  |
| `kycPassed` | `bool` |  |
| `lastName` | `char*` |  |
| `nationality` | `char*` |  |
| `passportNumber` | `char*` |  |
| `phoneNumber` | `char*` |  |
| `placeOfBirth` | `char*` |  |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `char*` |  |
| `state` | `char*` |  |
| `street1` | `char*` |  |
| `street2` | `char*` |  |
| `transactionhistory_id` | `char*` |  |
| `zip` | `char*` |  |

#### Example: Create

```c
Entity* output_update_consumer = bluefintecsuserbackoffice_output_update_consumer(client, NULL);
voxgig_value* output_update_consumer_rec = output_update_consumer->vt->create(output_update_consumer, cmap(1,
    "consumerUuid", v_str("example_consumerUuid"))  // char*
, NULL, &err);
```


### OutputUpdateProfile

Create an instance: `Entity* output_update_profile = bluefintecsuserbackoffice_output_update_profile(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->create(e, reqdata, ctrl, &err)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumerLanguage` | `char*` |  |
| `email` | `char*` |  |
| `firstName` | `char*` |  |
| `lastName` | `char*` |  |
| `phoneNumber` | `char*` |  |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `char*` |  |

#### Example: Create

```c
Entity* output_update_profile = bluefintecsuserbackoffice_output_update_profile(client, NULL);
voxgig_value* output_update_profile_rec = output_update_profile->vt->create(output_update_profile, NULL, NULL, &err);
```


### Version

Create an instance: `Entity* version = bluefintecsuserbackoffice_version(client, NULL);`

#### Operations

| Method | Description |
| --- | --- |
| `vt->load(e, reqmatch, ctrl, &err)` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `appName` | `char*` |  |
| `buildDate` | `char*` |  |
| `version` | `char*` |  |

#### Example: Load

```c
Entity* version = bluefintecsuserbackoffice_version(client, NULL);
voxgig_value* version_rec = version->vt->load(version, NULL, NULL, &err);
```

## Features

This SDK ships 12 optional features. Each is **inactive until you
switch it on**, so an SDK you have not configured behaves exactly as if none of
them existed — no retries, no cache, no logging, no measurable overhead.

Activate a feature by name in the client options, alongside the options shown
above:

| Feature | What it does |
|---|---|
| [`audit`](#audit) | Structured audit trail of operations |
| [`clienttrack`](#clienttrack) | Client identity and per-request correlation headers |
| [`debug`](#debug) | Request/response capture ring buffer for debugging |
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

### debug

Request/response capture ring buffer for debugging.

| Option | Default |
|---|---|
| `active` | `false` |
| `max` | `100` |
| `redact` | `['authorization', 'cookie', 'set-cookie', 'api-key', 'apikey', 'x-api-key', 'idempotency-key']` |

Set `feature.debug.active` to enable it, then override any of the options above.

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
- **DebugFeature**: Request/response capture ring buffer for debugging
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

### Data as `voxgig_value*`

The C SDK uses a single dynamic `voxgig_value*` type throughout rather than
a typed struct per entity. `voxgig_value` is the vendored voxgig struct
port (a JSON-shaped tagged union: string, number, bool, list, map, null,
undef). This mirrors the dynamic nature of the API and keeps the SDK
flexible — no code generation is needed when the API schema changes.

Build request maps with the `cmap` / `clist` / `v_str` / `v_num` /
`v_bool` helper builders, and read fields back with `getp` (or the typed
`get_str` / `get_bool` / `to_int`); use `to_map` to safely coerce a
value to a map.

Memory follows a retain-heavy, never-free discipline — pipeline values are
never released. This is safe (no use-after-free) and leaks are acceptable
for the short-lived SDK and test binaries.

### Error handling

Fallible functions return a `voxgig_value*` (or a struct pointer) and take a
trailing `PNError** err` out-param. On success `*err` is left `NULL`; on
failure `*err` points to a heap `PNError` carrying `code` and `msg`.
Always initialise `PNError* err = NULL;` and branch on it after each call.

### Project structure

```
c/
├── core/          -- Pipeline types, config, client (client.c), api.h + sdk.h
├── entity/        -- Per-entity implementations (one .c each)
├── feature/       -- Built-in features (base, test, log, ...)
├── utility/       -- Utilities + the vendored voxgig struct port (utility/struct)
├── tests/         -- Test binaries (each a standalone main())
└── Makefile       -- Builds libsdk.a and runs every tests/*.c
```

The public entry header is `core/api.h` — it includes `core/sdk.h` (the
umbrella runtime header) and declares each entity's constructor and SDK
accessor. Include it and link against `libsdk.a`.

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

# BluefinTecsUserBackoffice Python SDK



The Python SDK for the BluefinTecsUserBackoffice API — an entity-oriented client following Pythonic conventions.

The SDK exposes the API as capitalised, semantic **Entities** — for example `client.OutputActivateDigitalModule()` — each
carrying a small, uniform set of operations (`load`, `create`) instead of raw URL
paths and query strings. You work with named resources and verbs, which
keeps the cognitive load low.

> Other languages, the CLI, and MCP server live alongside this one — see
> the [top-level README](../README.md).


## Install
This package is not yet published to PyPI. Install it from the GitHub
release tag (`py/vX.Y.Z`, see [Releases](https://github.com/voxgig-sdk/bluefin-tecs-user-backoffice-sdk/releases)) or
from a source checkout:

```bash
pip install -e .
```


## Tutorial: your first API call

This tutorial walks through creating a client, listing entities, and
loading a specific record.

### 1. Create a client

```python
import os
from bluefintecsuserbackoffice_sdk import BluefinTecsUserBackofficeSDK

client = BluefinTecsUserBackofficeSDK({
    "apikey": os.environ.get("BLUEFIN_TECS_USER_BACKOFFICE_APIKEY"),
})
```

### 4. Create, update, and remove

```python
# Create — returns the bare created record (a dict)
created = client.OutputActivateDigitalModule().create({"response_code": 1, "response_message": "example_response_message"})

```


## Error handling

Entity operations raise on failure, so wrap them in `try` / `except`:

```python
try:
    outputgetlogo = client.OutputGetLogo().load()
    print(outputgetlogo)
except Exception as err:
    print(f"load failed: {err}")
```

`direct()` does **not** raise — it returns the result envelope. Branch
on `ok`; on failure `status` holds the HTTP status (for error responses)
and `err` holds a transport error, so read both defensively:

```python
result = client.direct({
    "path": "/api/resource/{id}",
    "method": "GET",
    "params": {"id": "example_id"},
})

if not result["ok"]:
    print("request failed:", result.get("status"), result.get("err"))
```


## How-to guides

### Make a direct HTTP request

For endpoints not covered by entity methods:

```python
result = client.direct({
    "path": "/api/resource/{id}",
    "method": "GET",
    "params": {"id": "example"},
})

if result["ok"]:
    print(result["status"])  # 200
    print(result["data"])    # response body
else:
    # A non-2xx response carries status + data (the error body); a
    # transport-level failure carries err instead. Only one is present, so
    # read both with .get() rather than indexing a key that may be absent.
    print(result.get("status"), result.get("err"))
```

### Prepare a request without sending it

```python
# prepare() returns the fetch definition and raises on error.
fetchdef = client.prepare({
    "path": "/api/resource/{id}",
    "method": "DELETE",
    "params": {"id": "example"},
})

print(fetchdef["url"])
print(fetchdef["method"])
print(fetchdef["headers"])
```

### Use test mode

Create a mock client for unit testing — no server required:

```python
client = BluefinTecsUserBackofficeSDK.test()

# Entity ops return the bare record and raise on error.
outputgetlogo = client.OutputGetLogo().load()
# outputgetlogo contains the mock response record
```

### Use a custom fetch function

Replace the HTTP transport with your own function:

```python
def mock_fetch(url, init):
    return {
        "status": 200,
        "statusText": "OK",
        "headers": {},
        "json": lambda: {"id": "mock01"},
    }, None

client = BluefinTecsUserBackofficeSDK({
    "base": "http://localhost:8080",
    "system": {
        "fetch": mock_fetch,
    },
})
```

### Run live tests

Create a `.env.local` file at the project root:

```
BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE=TRUE
BLUEFIN_TECS_USER_BACKOFFICE_APIKEY=<your-key>
```

Then run:

```bash
cd py && pytest test/
```


## Reference

### BluefinTecsUserBackofficeSDK

```python
from bluefintecsuserbackoffice_sdk import BluefinTecsUserBackofficeSDK

client = BluefinTecsUserBackofficeSDK(options)
```

Creates a new SDK client.

| Option | Type | Description |
| --- | --- | --- |
| `apikey` | `str` | API key for authentication. |
| `base` | `str` | Base URL of the API server. |
| `prefix` | `str` | URL path prefix prepended to all requests. |
| `suffix` | `str` | URL path suffix appended to all requests. |
| `feature` | `dict` | Feature activation flags. |
| `extend` | `list` | Additional Feature instances to load. |
| `system` | `dict` | System overrides (e.g. custom `fetch` function). |

### test

```python
client = BluefinTecsUserBackofficeSDK.test(testopts, sdkopts)
```

Creates a test-mode client with mock transport. Both arguments may be `None`.

### BluefinTecsUserBackofficeSDK methods

| Method | Signature | Description |
| --- | --- | --- |
| `options_map` | `() -> dict` | Deep copy of current SDK options. |
| `get_utility` | `() -> Utility` | Copy of the SDK utility object. |
| `prepare` | `(fetchargs) -> dict` | Build an HTTP request definition without sending. Raises on error. |
| `direct` | `(fetchargs) -> dict` | Build and send an HTTP request. Returns a result dict (branch on `ok`). |
| `OutputActivateDigitalModule` | `(data) -> OutputActivateDigitalModuleEntity` | Create an OutputActivateDigitalModule entity instance. |
| `OutputActivatePortalModule` | `(data) -> OutputActivatePortalModuleEntity` | Create an OutputActivatePortalModule entity instance. |
| `OutputActivateStoreModule` | `(data) -> OutputActivateStoreModuleEntity` | Create an OutputActivateStoreModule entity instance. |
| `OutputActivateUser` | `(data) -> OutputActivateUserEntity` | Create an OutputActivateUser entity instance. |
| `OutputAssignRole` | `(data) -> OutputAssignRoleEntity` | Create an OutputAssignRole entity instance. |
| `OutputChangeLogo` | `(data) -> OutputChangeLogoEntity` | Create an OutputChangeLogo entity instance. |
| `OutputCreateMandator` | `(data) -> OutputCreateMandatorEntity` | Create an OutputCreateMandator entity instance. |
| `OutputCreateServiceUser` | `(data) -> OutputCreateServiceUserEntity` | Create an OutputCreateServiceUser entity instance. |
| `OutputDeactivateUser` | `(data) -> OutputDeactivateUserEntity` | Create an OutputDeactivateUser entity instance. |
| `OutputGetKycDocument` | `(data) -> OutputGetKycDocumentEntity` | Create an OutputGetKycDocument entity instance. |
| `OutputGetLogo` | `(data) -> OutputGetLogoEntity` | Create an OutputGetLogo entity instance. |
| `OutputListOfAvailableRole` | `(data) -> OutputListOfAvailableRoleEntity` | Create an OutputListOfAvailableRole entity instance. |
| `OutputListOfMandator` | `(data) -> OutputListOfMandatorEntity` | Create an OutputListOfMandator entity instance. |
| `OutputListOfModule` | `(data) -> OutputListOfModuleEntity` | Create an OutputListOfModule entity instance. |
| `OutputListOfRoleGroup` | `(data) -> OutputListOfRoleGroupEntity` | Create an OutputListOfRoleGroup entity instance. |
| `OutputListOfTransactionsHistory` | `(data) -> OutputListOfTransactionsHistoryEntity` | Create an OutputListOfTransactionsHistory entity instance. |
| `OutputListOfUser` | `(data) -> OutputListOfUserEntity` | Create an OutputListOfUser entity instance. |
| `OutputProvideCredential` | `(data) -> OutputProvideCredentialEntity` | Create an OutputProvideCredential entity instance. |
| `OutputRegisterUser` | `(data) -> OutputRegisterUserEntity` | Create an OutputRegisterUser entity instance. |
| `OutputRemoveRole` | `(data) -> OutputRemoveRoleEntity` | Create an OutputRemoveRole entity instance. |
| `OutputResendLink` | `(data) -> OutputResendLinkEntity` | Create an OutputResendLink entity instance. |
| `OutputResetPassword` | `(data) -> OutputResetPasswordEntity` | Create an OutputResetPassword entity instance. |
| `OutputUpdateConsumer` | `(data) -> OutputUpdateConsumerEntity` | Create an OutputUpdateConsumer entity instance. |
| `OutputUpdateProfile` | `(data) -> OutputUpdateProfileEntity` | Create an OutputUpdateProfile entity instance. |
| `Version` | `(data) -> VersionEntity` | Create a Version entity instance. |

### Entity interface

All entities share the same interface.

| Method | Signature | Description |
| --- | --- | --- |
| `load` | `(reqmatch, ctrl) -> any` | Load a single entity by match criteria. Raises on error. |
| `create` | `(reqdata, ctrl) -> any` | Create a new entity. Raises on error. |
| `data_get` | `() -> dict` | Get entity data. |
| `data_set` | `(data)` | Set entity data. |
| `match_get` | `() -> dict` | Get entity match criteria. |
| `match_set` | `(match)` | Set entity match criteria. |
| `make` | `() -> Entity` | Create a new instance with the same options. |
| `get_name` | `() -> str` | Return the entity name. |

### Result shape

Entity operations return the bare result data (a `dict` for single-entity
ops, a `list` for `list`) and raise on error. Wrap calls in
`try`/`except` to handle failures.

The `direct()` escape hatch never raises — it returns a result `dict`
you branch on via `result["ok"]`:

| Key | Type | Description |
| --- | --- | --- |
| `ok` | `bool` | `True` if the HTTP status is 2xx. |
| `status` | `int` | HTTP status code. |
| `headers` | `dict` | Response headers. |
| `data` | `any` | Parsed JSON response body. |

On error, `ok` is `False` and `err` contains the error value.

### Entities

#### OutputActivateDigitalModule

| Field | Description |
| --- | --- |
| `response_code` |  |
| `response_message` |  |

Operations: Create.

API path: `/activateDigitalModule`

#### OutputActivatePortalModule

| Field | Description |
| --- | --- |
| `client_secret` |  |
| `notification_email` |  |
| `response_code` |  |
| `response_message` |  |

Operations: Create.

API path: `/activateMerchantPortalModule`

#### OutputActivateStoreModule

| Field | Description |
| --- | --- |
| `response_code` |  |
| `response_message` |  |

Operations: Create.

API path: `/activateAppStoreModule`

#### OutputActivateUser

| Field | Description |
| --- | --- |
| `consumer_uuid` |  |
| `response_code` |  |
| `response_message` |  |

Operations: Create.

API path: `/activateUser`

#### OutputAssignRole

| Field | Description |
| --- | --- |
| `consumer_uuid` |  |
| `response_code` |  |
| `response_message` |  |
| `role` |  |

Operations: Create.

API path: `/assignRoles`

#### OutputChangeLogo

| Field | Description |
| --- | --- |
| `content_as_base64` |  |
| `mime_type` |  |
| `response_code` |  |
| `response_message` |  |

Operations: Create.

API path: `/changeLogo`

#### OutputCreateMandator

| Field | Description |
| --- | --- |
| `city` |  |
| `country` |  |
| `date_of_birth` |  |
| `description` |  |
| `drivers_license_number` |  |
| `email` |  |
| `first_name` |  |
| `identification_number` |  |
| `last_name` |  |
| `login` |  |
| `mandator` |  |
| `name` |  |
| `passport_number` |  |
| `phone` |  |
| `response_code` |  |
| `response_message` |  |
| `salutation` |  |
| `state` |  |
| `street1` |  |
| `street2` |  |
| `zip_code` |  |

Operations: Create.

API path: `/createMandator`

#### OutputCreateServiceUser

| Field | Description |
| --- | --- |
| `mandator_name` |  |
| `response_code` |  |
| `response_message` |  |

Operations: Create.

API path: `/createServiceUser`

#### OutputDeactivateUser

| Field | Description |
| --- | --- |
| `consumer_uuid` |  |
| `response_code` |  |
| `response_message` |  |

Operations: Create.

API path: `/deactivateUser`

#### OutputGetKycDocument

| Field | Description |
| --- | --- |
| `case_id` |  |
| `encoded_data_base64` |  |
| `response_code` |  |
| `response_message` |  |

Operations: Create.

API path: `/getKycDocument`

#### OutputGetLogo

| Field | Description |
| --- | --- |
| `content_as_base64` |  |
| `mime_type` |  |
| `response_code` |  |
| `response_message` |  |

Operations: Load.

API path: `/getLogo`

#### OutputListOfAvailableRole

| Field | Description |
| --- | --- |
| `available_role` |  |
| `response_code` |  |
| `response_message` |  |

Operations: Create.

API path: `/listOfAvailableRoles`

#### OutputListOfMandator

| Field | Description |
| --- | --- |
| `filter` |  |
| `list` |  |
| `pagination` |  |
| `response_code` |  |
| `response_message` |  |
| `sorting` |  |

Operations: Create.

API path: `/listOfMandators`

#### OutputListOfModule

| Field | Description |
| --- | --- |
| `list` |  |
| `pagination` |  |
| `response_code` |  |
| `response_message` |  |

Operations: Create.

API path: `/listOfModules`

#### OutputListOfRoleGroup

| Field | Description |
| --- | --- |
| `filter` |  |
| `group_role` |  |
| `pagination` |  |
| `response_code` |  |
| `response_message` |  |
| `sorting` |  |

Operations: Create.

API path: `/listOfRoleGroups`

#### OutputListOfTransactionsHistory

| Field | Description |
| --- | --- |
| `filter` |  |
| `list` |  |
| `pagination` |  |
| `response_code` |  |
| `response_message` |  |
| `sorting` |  |

Operations: Create.

API path: `/listOfTransactionsHistory`

#### OutputListOfUser

| Field | Description |
| --- | --- |
| `filter` |  |
| `list` |  |
| `pagination` |  |
| `response_code` |  |
| `response_message` |  |
| `sorting` |  |

Operations: Create.

API path: `/listOfUsers`

#### OutputProvideCredential

| Field | Description |
| --- | --- |
| `mandator_name` |  |
| `password` |  |
| `response_code` |  |
| `response_message` |  |
| `username` |  |

Operations: Create.

API path: `/provideCredentials`

#### OutputRegisterUser

| Field | Description |
| --- | --- |
| `city` |  |
| `consumer_id` |  |
| `consumer_language` |  |
| `country` |  |
| `date_of_birth` |  |
| `driver_licence_number` |  |
| `email` |  |
| `first_name` |  |
| `identification_number` |  |
| `last_name` |  |
| `login` |  |
| `module` |  |
| `passport_number` |  |
| `phone` |  |
| `response_code` |  |
| `response_message` |  |
| `salutation` |  |
| `state` |  |
| `street1` |  |
| `street2` |  |
| `zip` |  |

Operations: Create.

API path: `/registerUser`

#### OutputRemoveRole

| Field | Description |
| --- | --- |
| `consumer_uuid` |  |
| `response_code` |  |
| `response_message` |  |
| `role` |  |

Operations: Create.

API path: `/removeRoles`

#### OutputResendLink

| Field | Description |
| --- | --- |
| `business_registration_number` |  |
| `consumer_uuid` |  |
| `email_confirmation_code` |  |
| `phone_number` |  |
| `response_code` |  |
| `response_message` |  |

Operations: Create.

API path: `/resendLink`

#### OutputResetPassword

| Field | Description |
| --- | --- |
| `consumer_uuid` |  |
| `phone_number` |  |
| `response_code` |  |
| `response_message` |  |

Operations: Create.

API path: `/resetPassword`

#### OutputUpdateConsumer

| Field | Description |
| --- | --- |
| `city` |  |
| `consumer_uuid` |  |
| `consumerlanguage` |  |
| `country` |  |
| `date_of_birth` |  |
| `datetime_created` |  |
| `driver_licence_number` |  |
| `email` |  |
| `first_name` |  |
| `identification_number` |  |
| `kyc_passed` |  |
| `last_name` |  |
| `nationality` |  |
| `passport_number` |  |
| `phone_number` |  |
| `place_of_birth` |  |
| `response_code` |  |
| `response_message` |  |
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
| `consumer_language` |  |
| `email` |  |
| `first_name` |  |
| `last_name` |  |
| `phone_number` |  |
| `response_code` |  |
| `response_message` |  |

Operations: Create.

API path: `/updateProfile`

#### Version

| Field | Description |
| --- | --- |
| `app_name` |  |
| `build_date` |  |
| `version` |  |

Operations: Load.

API path: `/version`



## Entities


### OutputActivateDigitalModule

Create an instance: `output_activate_digital_module = client.OutputActivateDigitalModule()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `response_code` | `int` |  |
| `response_message` | `str` |  |

#### Example: Create

```python
output_activate_digital_module = client.OutputActivateDigitalModule().create({
})
```


### OutputActivatePortalModule

Create an instance: `output_activate_portal_module = client.OutputActivatePortalModule()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `client_secret` | `str` |  |
| `notification_email` | `str` |  |
| `response_code` | `int` |  |
| `response_message` | `str` |  |

#### Example: Create

```python
output_activate_portal_module = client.OutputActivatePortalModule().create({
    "client_secret": "example_client_secret",  # str
    "notification_email": "example_notification_email",  # str
})
```


### OutputActivateStoreModule

Create an instance: `output_activate_store_module = client.OutputActivateStoreModule()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `response_code` | `int` |  |
| `response_message` | `str` |  |

#### Example: Create

```python
output_activate_store_module = client.OutputActivateStoreModule().create({
})
```


### OutputActivateUser

Create an instance: `output_activate_user = client.OutputActivateUser()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumer_uuid` | `str` |  |
| `response_code` | `int` |  |
| `response_message` | `str` |  |

#### Example: Create

```python
output_activate_user = client.OutputActivateUser().create({
})
```


### OutputAssignRole

Create an instance: `output_assign_role = client.OutputAssignRole()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumer_uuid` | `str` |  |
| `response_code` | `int` |  |
| `response_message` | `str` |  |
| `role` | `list` |  |

#### Example: Create

```python
output_assign_role = client.OutputAssignRole().create({
    "consumer_uuid": "example_consumer_uuid",  # str
    "role": [],  # list
})
```


### OutputChangeLogo

Create an instance: `output_change_logo = client.OutputChangeLogo()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `content_as_base64` | `str` |  |
| `mime_type` | `str` |  |
| `response_code` | `int` |  |
| `response_message` | `str` |  |

#### Example: Create

```python
output_change_logo = client.OutputChangeLogo().create({
    "content_as_base64": "example_content_as_base64",  # str
    "mime_type": "example_mime_type",  # str
})
```


### OutputCreateMandator

Create an instance: `output_create_mandator = client.OutputCreateMandator()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `city` | `str` |  |
| `country` | `str` |  |
| `date_of_birth` | `str` |  |
| `description` | `str` |  |
| `drivers_license_number` | `str` |  |
| `email` | `str` |  |
| `first_name` | `str` |  |
| `identification_number` | `str` |  |
| `last_name` | `str` |  |
| `login` | `str` |  |
| `mandator` | `dict` |  |
| `name` | `str` |  |
| `passport_number` | `str` |  |
| `phone` | `str` |  |
| `response_code` | `int` |  |
| `response_message` | `str` |  |
| `salutation` | `str` |  |
| `state` | `str` |  |
| `street1` | `str` |  |
| `street2` | `str` |  |
| `zip_code` | `str` |  |

#### Example: Create

```python
output_create_mandator = client.OutputCreateMandator().create({
    "description": "example_description",  # str
    "email": "example_email",  # str
    "login": "example_login",  # str
    "name": "example_name",  # str
    "phone": "example_phone",  # str
})
```


### OutputCreateServiceUser

Create an instance: `output_create_service_user = client.OutputCreateServiceUser()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `mandator_name` | `str` |  |
| `response_code` | `int` |  |
| `response_message` | `str` |  |

#### Example: Create

```python
output_create_service_user = client.OutputCreateServiceUser().create({
    "mandator_name": "example_mandator_name",  # str
})
```


### OutputDeactivateUser

Create an instance: `output_deactivate_user = client.OutputDeactivateUser()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumer_uuid` | `str` |  |
| `response_code` | `int` |  |
| `response_message` | `str` |  |

#### Example: Create

```python
output_deactivate_user = client.OutputDeactivateUser().create({
})
```


### OutputGetKycDocument

Create an instance: `output_get_kyc_document = client.OutputGetKycDocument()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `case_id` | `str` |  |
| `encoded_data_base64` | `str` |  |
| `response_code` | `int` |  |
| `response_message` | `str` |  |

#### Example: Create

```python
output_get_kyc_document = client.OutputGetKycDocument().create({
})
```


### OutputGetLogo

Create an instance: `output_get_logo = client.OutputGetLogo()`

#### Operations

| Method | Description |
| --- | --- |
| `load(match)` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `content_as_base64` | `str` |  |
| `mime_type` | `str` |  |
| `response_code` | `int` |  |
| `response_message` | `str` |  |

#### Example: Load

```python
output_get_logo = client.OutputGetLogo().load()
```


### OutputListOfAvailableRole

Create an instance: `output_list_of_available_role = client.OutputListOfAvailableRole()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `available_role` | `list` |  |
| `response_code` | `int` |  |
| `response_message` | `str` |  |

#### Example: Create

```python
output_list_of_available_role = client.OutputListOfAvailableRole().create({
})
```


### OutputListOfMandator

Create an instance: `output_list_of_mandator = client.OutputListOfMandator()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `filter` | `dict` |  |
| `list` | `list` |  |
| `pagination` | `dict` |  |
| `response_code` | `int` |  |
| `response_message` | `str` |  |
| `sorting` | `dict` |  |

#### Example: Create

```python
output_list_of_mandator = client.OutputListOfMandator().create({
})
```


### OutputListOfModule

Create an instance: `output_list_of_module = client.OutputListOfModule()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `list` | `list` |  |
| `pagination` | `dict` |  |
| `response_code` | `int` |  |
| `response_message` | `str` |  |

#### Example: Create

```python
output_list_of_module = client.OutputListOfModule().create({
})
```


### OutputListOfRoleGroup

Create an instance: `output_list_of_role_group = client.OutputListOfRoleGroup()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `filter` | `dict` |  |
| `group_role` | `list` |  |
| `pagination` | `dict` |  |
| `response_code` | `int` |  |
| `response_message` | `str` |  |
| `sorting` | `dict` |  |

#### Example: Create

```python
output_list_of_role_group = client.OutputListOfRoleGroup().create({
})
```


### OutputListOfTransactionsHistory

Create an instance: `output_list_of_transactions_history = client.OutputListOfTransactionsHistory()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `filter` | `dict` |  |
| `list` | `list` |  |
| `pagination` | `dict` |  |
| `response_code` | `int` |  |
| `response_message` | `str` |  |
| `sorting` | `dict` |  |

#### Example: Create

```python
output_list_of_transactions_history = client.OutputListOfTransactionsHistory().create({
})
```


### OutputListOfUser

Create an instance: `output_list_of_user = client.OutputListOfUser()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `filter` | `dict` |  |
| `list` | `list` |  |
| `pagination` | `dict` |  |
| `response_code` | `int` |  |
| `response_message` | `str` |  |
| `sorting` | `dict` |  |

#### Example: Create

```python
output_list_of_user = client.OutputListOfUser().create({
})
```


### OutputProvideCredential

Create an instance: `output_provide_credential = client.OutputProvideCredential()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `mandator_name` | `str` |  |
| `password` | `str` |  |
| `response_code` | `int` |  |
| `response_message` | `str` |  |
| `username` | `str` |  |

#### Example: Create

```python
output_provide_credential = client.OutputProvideCredential().create({
    "mandator_name": "example_mandator_name",  # str
})
```


### OutputRegisterUser

Create an instance: `output_register_user = client.OutputRegisterUser()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `city` | `str` |  |
| `consumer_id` | `str` |  |
| `consumer_language` | `str` |  |
| `country` | `str` |  |
| `date_of_birth` | `str` |  |
| `driver_licence_number` | `str` |  |
| `email` | `str` |  |
| `first_name` | `str` |  |
| `identification_number` | `str` |  |
| `last_name` | `str` |  |
| `login` | `str` |  |
| `module` | `str` |  |
| `passport_number` | `str` |  |
| `phone` | `str` |  |
| `response_code` | `int` |  |
| `response_message` | `str` |  |
| `salutation` | `str` |  |
| `state` | `str` |  |
| `street1` | `str` |  |
| `street2` | `str` |  |
| `zip` | `str` |  |

#### Example: Create

```python
output_register_user = client.OutputRegisterUser().create({
    "email": "example_email",  # str
})
```


### OutputRemoveRole

Create an instance: `output_remove_role = client.OutputRemoveRole()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumer_uuid` | `str` |  |
| `response_code` | `int` |  |
| `response_message` | `str` |  |
| `role` | `list` |  |

#### Example: Create

```python
output_remove_role = client.OutputRemoveRole().create({
})
```


### OutputResendLink

Create an instance: `output_resend_link = client.OutputResendLink()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `business_registration_number` | `str` |  |
| `consumer_uuid` | `str` |  |
| `email_confirmation_code` | `str` |  |
| `phone_number` | `str` |  |
| `response_code` | `int` |  |
| `response_message` | `str` |  |

#### Example: Create

```python
output_resend_link = client.OutputResendLink().create({
    "consumer_uuid": "example_consumer_uuid",  # str
})
```


### OutputResetPassword

Create an instance: `output_reset_password = client.OutputResetPassword()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumer_uuid` | `str` |  |
| `phone_number` | `str` |  |
| `response_code` | `int` |  |
| `response_message` | `str` |  |

#### Example: Create

```python
output_reset_password = client.OutputResetPassword().create({
})
```


### OutputUpdateConsumer

Create an instance: `output_update_consumer = client.OutputUpdateConsumer()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `city` | `str` |  |
| `consumer_uuid` | `str` |  |
| `consumerlanguage` | `str` |  |
| `country` | `str` |  |
| `date_of_birth` | `str` |  |
| `datetime_created` | `str` |  |
| `driver_licence_number` | `str` |  |
| `email` | `str` |  |
| `first_name` | `str` |  |
| `identification_number` | `str` |  |
| `kyc_passed` | `bool` |  |
| `last_name` | `str` |  |
| `nationality` | `str` |  |
| `passport_number` | `str` |  |
| `phone_number` | `str` |  |
| `place_of_birth` | `str` |  |
| `response_code` | `int` |  |
| `response_message` | `str` |  |
| `state` | `str` |  |
| `street1` | `str` |  |
| `street2` | `str` |  |
| `transactionhistory_id` | `str` |  |
| `zip` | `str` |  |

#### Example: Create

```python
output_update_consumer = client.OutputUpdateConsumer().create({
    "consumer_uuid": "example_consumer_uuid",  # str
})
```


### OutputUpdateProfile

Create an instance: `output_update_profile = client.OutputUpdateProfile()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumer_language` | `str` |  |
| `email` | `str` |  |
| `first_name` | `str` |  |
| `last_name` | `str` |  |
| `phone_number` | `str` |  |
| `response_code` | `int` |  |
| `response_message` | `str` |  |

#### Example: Create

```python
output_update_profile = client.OutputUpdateProfile().create({
})
```


### Version

Create an instance: `version = client.Version()`

#### Operations

| Method | Description |
| --- | --- |
| `load(match)` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `app_name` | `str` |  |
| `build_date` | `str` |  |
| `version` | `str` |  |

#### Example: Load

```python
version = client.Version().load()
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

Features are the extension mechanism. A feature is a Python class
with hook methods named after pipeline stages (e.g. `PrePoint`,
`PreSpec`). Each method receives the context.

The SDK ships with built-in features:

- **TestFeature**: In-memory mock transport for testing without a live server

Features are initialized in order. Hooks fire in the order features
were added, so later features can override earlier ones.

### Data as dicts

The Python SDK uses plain dicts throughout rather than typed
objects. This mirrors the dynamic nature of the API and keeps the
SDK flexible — no code generation is needed when the API schema
changes.

Use `helpers.to_map()` to safely validate that a value is a dict.

### Module structure

```
py/
├── bluefintecsuserbackoffice_sdk.py         -- Main SDK module
├── config.py                    -- Configuration
├── features.py                  -- Feature factory
├── core/                        -- Core types and context
├── entity/                      -- Entity implementations
├── feature/                     -- Built-in features (Base, Test, Log)
├── utility/                     -- Utility functions and struct library
└── test/                        -- Test suites
```

The main module (`bluefintecsuserbackoffice_sdk`) exports the SDK class.
Import entity or utility modules directly only when needed.

### Entity state

Entity instances are stateful. After a successful `load`, the entity
stores the returned data and match criteria internally.

```python
outputgetlogo = client.OutputGetLogo()
outputgetlogo.load()

# outputgetlogo.data_get() now returns the outputgetlogo data from the last load
# outputgetlogo.match_get() returns the last match criteria
```

Call `make()` to create a fresh instance with the same configuration
but no stored state.

### Direct vs entity access

The entity interface handles URL construction, parameter placement,
and response parsing automatically. Use it for standard CRUD operations.

`direct()` gives full control over the HTTP request. Use it for
non-standard endpoints, bulk operations, or any path not modelled as
an entity. `prepare()` builds the request without sending it — useful
for debugging or custom transport.


## Full Reference

See [REFERENCE.md](REFERENCE.md) for complete API reference
documentation including all method signatures, entity field schemas,
and detailed usage examples.

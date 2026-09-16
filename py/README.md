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
# Create — returns the ENTITY (call data_get() for the record)
created = client.OutputActivateDigitalModule().create({"responseCode": 1, "responseMessage": "example_responseMessage"})

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

# Entity ops return the ENTITY and raises on error;
# call data_get() for the record.
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

Entity operations return the ENTITY (call data_get() for the record) (a `dict` for single-entity
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

Create an instance: `output_activate_digital_module = client.OutputActivateDigitalModule()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `responseCode` | `int` |  |
| `responseMessage` | `str` |  |

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
| `clientSecret` | `str` |  |
| `notificationEmail` | `str` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `str` |  |

#### Example: Create

```python
output_activate_portal_module = client.OutputActivatePortalModule().create({
    "clientSecret": "example_clientSecret",  # str
    "notificationEmail": "example_notificationEmail",  # str
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
| `responseCode` | `int` |  |
| `responseMessage` | `str` |  |

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
| `consumerUUID` | `str` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `str` |  |

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
| `consumerUUID` | `str` | Unique identifier of the consumer (user) to whom the role(s) will be assigned. |
| `responseCode` | `int` | Response code: 0 indicates success; any non-zero value indicates an error. |
| `responseMessage` | `str` | A human-readable message providing additional details about the outcome. |
| `roles` | `list` | List of roles to assign to the consumer. |

#### Example: Create

```python
output_assign_role = client.OutputAssignRole().create({
    "consumerUUID": "example_consumerUUID",  # str
    "roles": [],  # list
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
| `contentAsBase64` | `str` | The content of the image as base64 encoded string |
| `mimeType` | `str` | The MIME type of the image |
| `responseCode` | `int` |  |
| `responseMessage` | `str` |  |

#### Example: Create

```python
output_change_logo = client.OutputChangeLogo().create({
    "contentAsBase64": "example_contentAsBase64",  # str
    "mimeType": "example_mimeType",  # str
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
| `dateOfBirth` | `str` |  |
| `description` | `str` |  |
| `driversLicenseNumber` | `str` |  |
| `email` | `str` |  |
| `firstName` | `str` |  |
| `identificationNumber` | `str` |  |
| `lastName` | `str` |  |
| `login` | `str` |  |
| `name` | `str` |  |
| `passportNumber` | `str` |  |
| `phone` | `str` |  |
| `salutation` | `str` |  |
| `state` | `str` |  |
| `street1` | `str` |  |
| `street2` | `str` |  |
| `zipCode` | `str` |  |

#### Example: Create

```python
output_create_mandator = client.OutputCreateMandator().create({
    "email": "example_email",  # str
    "login": "example_login",  # str
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
| `mandatorName` | `str` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `str` |  |

#### Example: Create

```python
output_create_service_user = client.OutputCreateServiceUser().create({
    "mandatorName": "example_mandatorName",  # str
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
| `consumerUUID` | `str` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `str` |  |

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
| `caseID` | `str` |  |
| `encodedDataBase64` | `str` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `str` |  |

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
| `contentAsBase64` | `str` | The content of the image as base64 encoded string |
| `mimeType` | `str` | The MIME type of the image |
| `responseCode` | `int` |  |
| `responseMessage` | `str` |  |

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
| `availableRoles` | `list` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `str` |  |

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
| `responseCode` | `int` |  |
| `responseMessage` | `str` |  |
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
| `responseCode` | `int` |  |
| `responseMessage` | `str` |  |

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
| `groupRoles` | `list` |  |
| `pagination` | `dict` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `str` |  |
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
| `responseCode` | `int` |  |
| `responseMessage` | `str` |  |
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
| `responseCode` | `int` |  |
| `responseMessage` | `str` |  |
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
| `mandatorName` | `str` |  |
| `password` | `str` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `str` |  |
| `username` | `str` |  |

#### Example: Create

```python
output_provide_credential = client.OutputProvideCredential().create({
    "mandatorName": "example_mandatorName",  # str
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
| `city` | `str` | City where the user resides. |
| `consumerId` | `str` | User login or unique user identifier. |
| `consumerLanguage` | `str` | Preferred language for the user (e.g., 'en'). |
| `country` | `str` | User's country. |
| `dateOfBirth` | `str` | User's date of birth (expected format: dd.MM.yyyy). |
| `driverLicenceNumber` | `str` | User's driver's license number. |
| `email` | `str` | User's email address (must be unique). |
| `firstName` | `str` | User's first name. |
| `identificationNumber` | `str` | User's identification number. |
| `lastName` | `str` | User's last name. |
| `login` | `str` | User login identifier (should be unique). |
| `module` | `str` | Module identifier (if applicable). |
| `passportNumber` | `str` | User's passport number. |
| `phone` | `str` | User's phone number. |
| `responseCode` | `int` | Response code (0 indicates success; non-zero indicates an error). |
| `responseMessage` | `str` | Human-readable response message. |
| `salutation` | `str` | User's salutation (e.g., Mr., Ms.). |
| `state` | `str` | User's state or region. |
| `street1` | `str` | Primary address line. |
| `street2` | `str` | Secondary address line. |
| `zip` | `str` | Postal code. |

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
| `consumerUUID` | `str` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `str` |  |
| `roles` | `list` |  |

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
| `businessRegistrationNumber` | `str` |  |
| `consumerUUID` | `str` |  |
| `emailConfirmationCode` | `str` |  |
| `phoneNumber` | `str` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `str` |  |

#### Example: Create

```python
output_resend_link = client.OutputResendLink().create({
    "consumerUUID": "example_consumerUUID",  # str
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
| `consumerUuid` | `str` |  |
| `phoneNumber` | `str` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `str` |  |

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
| `consumerUuid` | `str` |  |
| `consumerlanguage` | `str` |  |
| `country` | `str` |  |
| `dateOfBirth` | `str` |  |
| `datetime_created` | `str` |  |
| `driverLicenceNumber` | `str` |  |
| `email` | `str` |  |
| `firstName` | `str` |  |
| `identificationNumber` | `str` |  |
| `kycPassed` | `bool` |  |
| `lastName` | `str` |  |
| `nationality` | `str` |  |
| `passportNumber` | `str` |  |
| `phoneNumber` | `str` |  |
| `placeOfBirth` | `str` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `str` |  |
| `state` | `str` |  |
| `street1` | `str` |  |
| `street2` | `str` |  |
| `transactionhistory_id` | `str` |  |
| `zip` | `str` |  |

#### Example: Create

```python
output_update_consumer = client.OutputUpdateConsumer().create({
    "consumerUuid": "example_consumerUuid",  # str
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
| `consumerLanguage` | `str` |  |
| `email` | `str` |  |
| `firstName` | `str` |  |
| `lastName` | `str` |  |
| `phoneNumber` | `str` |  |
| `responseCode` | `int` |  |
| `responseMessage` | `str` |  |

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
| `appName` | `str` |  |
| `buildDate` | `str` |  |
| `version` | `str` |  |

#### Example: Load

```python
version = client.Version().load()
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

Features are the extension mechanism. A feature is a Python class
with hook methods named after pipeline stages (e.g. `PrePoint`,
`PreSpec`). Each method receives the context.

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

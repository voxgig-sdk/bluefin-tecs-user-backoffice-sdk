# BluefinTecsUserBackoffice Python SDK Reference

Complete API reference for the BluefinTecsUserBackoffice Python SDK.


## BluefinTecsUserBackofficeSDK

### Constructor

```python
from bluefintecsuserbackoffice_sdk import BluefinTecsUserBackofficeSDK

client = BluefinTecsUserBackofficeSDK(options)
```

Create a new SDK client instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `options` | `dict` | SDK configuration options. |
| `options["apikey"]` | `str` | API key for authentication. |
| `options["base"]` | `str` | Base URL for API requests. |
| `options["prefix"]` | `str` | URL prefix appended after base. |
| `options["suffix"]` | `str` | URL suffix appended after path. |
| `options["headers"]` | `dict` | Custom headers for all requests. |
| `options["feature"]` | `dict` | Feature configuration. |
| `options["system"]` | `dict` | System overrides (e.g. custom fetch). |


### Static Methods

#### `BluefinTecsUserBackofficeSDK.test(testopts=None, sdkopts=None)`

Create a test client with mock features active. Both arguments may be `None`.

```python
client = BluefinTecsUserBackofficeSDK.test()
```


### Instance Methods

#### `OutputActivateDigitalModule(data=None)`

Create a new `OutputActivateDigitalModuleEntity` instance. Pass `None` for no initial data.

#### `OutputActivatePortalModule(data=None)`

Create a new `OutputActivatePortalModuleEntity` instance. Pass `None` for no initial data.

#### `OutputActivateStoreModule(data=None)`

Create a new `OutputActivateStoreModuleEntity` instance. Pass `None` for no initial data.

#### `OutputActivateUser(data=None)`

Create a new `OutputActivateUserEntity` instance. Pass `None` for no initial data.

#### `OutputAssignRole(data=None)`

Create a new `OutputAssignRoleEntity` instance. Pass `None` for no initial data.

#### `OutputChangeLogo(data=None)`

Create a new `OutputChangeLogoEntity` instance. Pass `None` for no initial data.

#### `OutputCreateMandator(data=None)`

Create a new `OutputCreateMandatorEntity` instance. Pass `None` for no initial data.

#### `OutputCreateServiceUser(data=None)`

Create a new `OutputCreateServiceUserEntity` instance. Pass `None` for no initial data.

#### `OutputDeactivateUser(data=None)`

Create a new `OutputDeactivateUserEntity` instance. Pass `None` for no initial data.

#### `OutputGetKycDocument(data=None)`

Create a new `OutputGetKycDocumentEntity` instance. Pass `None` for no initial data.

#### `OutputGetLogo(data=None)`

Create a new `OutputGetLogoEntity` instance. Pass `None` for no initial data.

#### `OutputListOfAvailableRole(data=None)`

Create a new `OutputListOfAvailableRoleEntity` instance. Pass `None` for no initial data.

#### `OutputListOfMandator(data=None)`

Create a new `OutputListOfMandatorEntity` instance. Pass `None` for no initial data.

#### `OutputListOfModule(data=None)`

Create a new `OutputListOfModuleEntity` instance. Pass `None` for no initial data.

#### `OutputListOfRoleGroup(data=None)`

Create a new `OutputListOfRoleGroupEntity` instance. Pass `None` for no initial data.

#### `OutputListOfTransactionsHistory(data=None)`

Create a new `OutputListOfTransactionsHistoryEntity` instance. Pass `None` for no initial data.

#### `OutputListOfUser(data=None)`

Create a new `OutputListOfUserEntity` instance. Pass `None` for no initial data.

#### `OutputProvideCredential(data=None)`

Create a new `OutputProvideCredentialEntity` instance. Pass `None` for no initial data.

#### `OutputRegisterUser(data=None)`

Create a new `OutputRegisterUserEntity` instance. Pass `None` for no initial data.

#### `OutputRemoveRole(data=None)`

Create a new `OutputRemoveRoleEntity` instance. Pass `None` for no initial data.

#### `OutputResendLink(data=None)`

Create a new `OutputResendLinkEntity` instance. Pass `None` for no initial data.

#### `OutputResetPassword(data=None)`

Create a new `OutputResetPasswordEntity` instance. Pass `None` for no initial data.

#### `OutputUpdateConsumer(data=None)`

Create a new `OutputUpdateConsumerEntity` instance. Pass `None` for no initial data.

#### `OutputUpdateProfile(data=None)`

Create a new `OutputUpdateProfileEntity` instance. Pass `None` for no initial data.

#### `Version(data=None)`

Create a new `VersionEntity` instance. Pass `None` for no initial data.

#### `options_map() -> dict`

Return a deep copy of the current SDK options.

#### `get_utility() -> Utility`

Return a copy of the SDK utility object.

#### `direct(fetchargs=None) -> dict`

Make a direct HTTP request to any API endpoint. Returns a result `dict` with `ok`, `status`, `headers`, and `data` (or `err` on failure). This escape hatch never raises — branch on `result["ok"]`.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `fetchargs["path"]` | `str` | URL path with optional `{param}` placeholders. |
| `fetchargs["method"]` | `str` | HTTP method (default: `"GET"`). |
| `fetchargs["params"]` | `dict` | Path parameter values. |
| `fetchargs["query"]` | `dict` | Query string parameters. |
| `fetchargs["headers"]` | `dict` | Request headers (merged with defaults). |
| `fetchargs["body"]` | `any` | Request body (dicts are JSON-serialized). |

**Returns:** `result_dict`

#### `prepare(fetchargs=None) -> dict`

Prepare a fetch definition without sending. Returns the `fetchdef` and raises on error.


---

## OutputActivateDigitalModuleEntity

```python
output_activate_digital_module = client.OutputActivateDigitalModule()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `responseCode` | `int` | No |  |
| `responseMessage` | `str` | No |  |

### Operations

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.OutputActivateDigitalModule().create({
})
```

### Common Methods

#### `data_get() -> dict`

Get the entity data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> dict`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputActivateDigitalModuleEntity` instance with the same options.

#### `get_name() -> str`

Return the entity name.


---

## OutputActivatePortalModuleEntity

```python
output_activate_portal_module = client.OutputActivatePortalModule()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clientSecret` | `str` | Yes |  |
| `notificationEmail` | `str` | Yes |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `str` | No |  |

### Operations

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.OutputActivatePortalModule().create({
    "clientSecret": "example_clientSecret",  # str
    "notificationEmail": "example_notificationEmail",  # str
})
```

### Common Methods

#### `data_get() -> dict`

Get the entity data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> dict`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputActivatePortalModuleEntity` instance with the same options.

#### `get_name() -> str`

Return the entity name.


---

## OutputActivateStoreModuleEntity

```python
output_activate_store_module = client.OutputActivateStoreModule()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `responseCode` | `int` | No |  |
| `responseMessage` | `str` | No |  |

### Operations

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.OutputActivateStoreModule().create({
})
```

### Common Methods

#### `data_get() -> dict`

Get the entity data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> dict`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputActivateStoreModuleEntity` instance with the same options.

#### `get_name() -> str`

Return the entity name.


---

## OutputActivateUserEntity

```python
output_activate_user = client.OutputActivateUser()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumerUUID` | `str` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `str` | No |  |

### Operations

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.OutputActivateUser().create({
})
```

### Common Methods

#### `data_get() -> dict`

Get the entity data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> dict`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputActivateUserEntity` instance with the same options.

#### `get_name() -> str`

Return the entity name.


---

## OutputAssignRoleEntity

```python
output_assign_role = client.OutputAssignRole()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumerUUID` | `str` | Yes | Unique identifier of the consumer (user) to whom the role(s) will be assigned. |
| `responseCode` | `int` | No | Response code: 0 indicates success; any non-zero value indicates an error. |
| `responseMessage` | `str` | No | A human-readable message providing additional details about the outcome. |
| `roles` | `list` | Yes | List of roles to assign to the consumer. |

### Operations

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.OutputAssignRole().create({
    "consumerUUID": "example_consumerUUID",  # str
    "roles": [],  # list
})
```

### Common Methods

#### `data_get() -> dict`

Get the entity data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> dict`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputAssignRoleEntity` instance with the same options.

#### `get_name() -> str`

Return the entity name.


---

## OutputChangeLogoEntity

```python
output_change_logo = client.OutputChangeLogo()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `contentAsBase64` | `str` | Yes | The content of the image as base64 encoded string |
| `mimeType` | `str` | Yes | The MIME type of the image |
| `responseCode` | `int` | No |  |
| `responseMessage` | `str` | No |  |

### Operations

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.OutputChangeLogo().create({
    "contentAsBase64": "example_contentAsBase64",  # str
    "mimeType": "example_mimeType",  # str
})
```

### Common Methods

#### `data_get() -> dict`

Get the entity data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> dict`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputChangeLogoEntity` instance with the same options.

#### `get_name() -> str`

Return the entity name.


---

## OutputCreateMandatorEntity

```python
output_create_mandator = client.OutputCreateMandator()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `city` | `str` | No |  |
| `country` | `str` | No |  |
| `dateOfBirth` | `str` | No |  |
| `description` | `str` | No |  |
| `driversLicenseNumber` | `str` | No |  |
| `email` | `str` | Yes |  |
| `firstName` | `str` | No |  |
| `identificationNumber` | `str` | No |  |
| `lastName` | `str` | No |  |
| `login` | `str` | Yes |  |
| `name` | `str` | No |  |
| `passportNumber` | `str` | No |  |
| `phone` | `str` | Yes |  |
| `salutation` | `str` | No |  |
| `state` | `str` | No |  |
| `street1` | `str` | No |  |
| `street2` | `str` | No |  |
| `zipCode` | `str` | No |  |

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

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.OutputCreateMandator().create({
    "email": "example_email",  # str
    "login": "example_login",  # str
    "phone": "example_phone",  # str
})
```

### Common Methods

#### `data_get() -> dict`

Get the entity data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> dict`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputCreateMandatorEntity` instance with the same options.

#### `get_name() -> str`

Return the entity name.


---

## OutputCreateServiceUserEntity

```python
output_create_service_user = client.OutputCreateServiceUser()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `mandatorName` | `str` | Yes |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `str` | No |  |

### Operations

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.OutputCreateServiceUser().create({
    "mandatorName": "example_mandatorName",  # str
})
```

### Common Methods

#### `data_get() -> dict`

Get the entity data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> dict`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputCreateServiceUserEntity` instance with the same options.

#### `get_name() -> str`

Return the entity name.


---

## OutputDeactivateUserEntity

```python
output_deactivate_user = client.OutputDeactivateUser()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumerUUID` | `str` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `str` | No |  |

### Operations

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.OutputDeactivateUser().create({
})
```

### Common Methods

#### `data_get() -> dict`

Get the entity data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> dict`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputDeactivateUserEntity` instance with the same options.

#### `get_name() -> str`

Return the entity name.


---

## OutputGetKycDocumentEntity

```python
output_get_kyc_document = client.OutputGetKycDocument()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `caseID` | `str` | No |  |
| `encodedDataBase64` | `str` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `str` | No |  |

### Operations

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.OutputGetKycDocument().create({
})
```

### Common Methods

#### `data_get() -> dict`

Get the entity data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> dict`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputGetKycDocumentEntity` instance with the same options.

#### `get_name() -> str`

Return the entity name.


---

## OutputGetLogoEntity

```python
output_get_logo = client.OutputGetLogo()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `contentAsBase64` | `str` | Yes | The content of the image as base64 encoded string |
| `mimeType` | `str` | Yes | The MIME type of the image |
| `responseCode` | `int` | No |  |
| `responseMessage` | `str` | No |  |

### Operations

#### `load(reqmatch, ctrl=None) -> dict`

Load a single entity matching the given criteria. Returns the entity data and raises on error.

```python
result = client.OutputGetLogo().load()
```

### Common Methods

#### `data_get() -> dict`

Get the entity data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> dict`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputGetLogoEntity` instance with the same options.

#### `get_name() -> str`

Return the entity name.


---

## OutputListOfAvailableRoleEntity

```python
output_list_of_available_role = client.OutputListOfAvailableRole()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `availableRoles` | `list` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `str` | No |  |

### Operations

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.OutputListOfAvailableRole().create({
})
```

### Common Methods

#### `data_get() -> dict`

Get the entity data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> dict`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputListOfAvailableRoleEntity` instance with the same options.

#### `get_name() -> str`

Return the entity name.


---

## OutputListOfMandatorEntity

```python
output_list_of_mandator = client.OutputListOfMandator()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `filter` | `dict` | No |  |
| `list` | `list` | No |  |
| `pagination` | `dict` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `str` | No |  |
| `sorting` | `dict` | No |  |

### Operations

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.OutputListOfMandator().create({
})
```

### Common Methods

#### `data_get() -> dict`

Get the entity data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> dict`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputListOfMandatorEntity` instance with the same options.

#### `get_name() -> str`

Return the entity name.


---

## OutputListOfModuleEntity

```python
output_list_of_module = client.OutputListOfModule()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `list` | `list` | No |  |
| `pagination` | `dict` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `str` | No |  |

### Operations

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.OutputListOfModule().create({
})
```

### Common Methods

#### `data_get() -> dict`

Get the entity data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> dict`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputListOfModuleEntity` instance with the same options.

#### `get_name() -> str`

Return the entity name.


---

## OutputListOfRoleGroupEntity

```python
output_list_of_role_group = client.OutputListOfRoleGroup()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `filter` | `dict` | No |  |
| `groupRoles` | `list` | No |  |
| `pagination` | `dict` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `str` | No |  |
| `sorting` | `dict` | No |  |

### Operations

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.OutputListOfRoleGroup().create({
})
```

### Common Methods

#### `data_get() -> dict`

Get the entity data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> dict`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputListOfRoleGroupEntity` instance with the same options.

#### `get_name() -> str`

Return the entity name.


---

## OutputListOfTransactionsHistoryEntity

```python
output_list_of_transactions_history = client.OutputListOfTransactionsHistory()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `filter` | `dict` | No |  |
| `list` | `list` | No |  |
| `pagination` | `dict` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `str` | No |  |
| `sorting` | `dict` | No |  |

### Operations

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.OutputListOfTransactionsHistory().create({
})
```

### Common Methods

#### `data_get() -> dict`

Get the entity data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> dict`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputListOfTransactionsHistoryEntity` instance with the same options.

#### `get_name() -> str`

Return the entity name.


---

## OutputListOfUserEntity

```python
output_list_of_user = client.OutputListOfUser()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `filter` | `dict` | No |  |
| `list` | `list` | No |  |
| `pagination` | `dict` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `str` | No |  |
| `sorting` | `dict` | No |  |

### Operations

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.OutputListOfUser().create({
})
```

### Common Methods

#### `data_get() -> dict`

Get the entity data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> dict`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputListOfUserEntity` instance with the same options.

#### `get_name() -> str`

Return the entity name.


---

## OutputProvideCredentialEntity

```python
output_provide_credential = client.OutputProvideCredential()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `mandatorName` | `str` | Yes |  |
| `password` | `str` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `str` | No |  |
| `username` | `str` | No |  |

### Operations

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.OutputProvideCredential().create({
    "mandatorName": "example_mandatorName",  # str
})
```

### Common Methods

#### `data_get() -> dict`

Get the entity data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> dict`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputProvideCredentialEntity` instance with the same options.

#### `get_name() -> str`

Return the entity name.


---

## OutputRegisterUserEntity

```python
output_register_user = client.OutputRegisterUser()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `city` | `str` | No | City where the user resides. |
| `consumerId` | `str` | No | User login or unique user identifier. |
| `consumerLanguage` | `str` | No | Preferred language for the user (e.g., 'en'). |
| `country` | `str` | No | User's country. |
| `dateOfBirth` | `str` | No | User's date of birth (expected format: dd.MM.yyyy). |
| `driverLicenceNumber` | `str` | No | User's driver's license number. |
| `email` | `str` | Yes | User's email address (must be unique). |
| `firstName` | `str` | No | User's first name. |
| `identificationNumber` | `str` | No | User's identification number. |
| `lastName` | `str` | No | User's last name. |
| `login` | `str` | No | User login identifier (should be unique). |
| `module` | `str` | No | Module identifier (if applicable). |
| `passportNumber` | `str` | No | User's passport number. |
| `phone` | `str` | No | User's phone number. |
| `responseCode` | `int` | No | Response code (0 indicates success; non-zero indicates an error). |
| `responseMessage` | `str` | No | Human-readable response message. |
| `salutation` | `str` | No | User's salutation (e.g., Mr., Ms.). |
| `state` | `str` | No | User's state or region. |
| `street1` | `str` | No | Primary address line. |
| `street2` | `str` | No | Secondary address line. |
| `zip` | `str` | No | Postal code. |

### Operations

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.OutputRegisterUser().create({
    "email": "example_email",  # str
})
```

### Common Methods

#### `data_get() -> dict`

Get the entity data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> dict`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputRegisterUserEntity` instance with the same options.

#### `get_name() -> str`

Return the entity name.


---

## OutputRemoveRoleEntity

```python
output_remove_role = client.OutputRemoveRole()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumerUUID` | `str` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `str` | No |  |
| `roles` | `list` | No |  |

### Operations

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.OutputRemoveRole().create({
})
```

### Common Methods

#### `data_get() -> dict`

Get the entity data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> dict`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputRemoveRoleEntity` instance with the same options.

#### `get_name() -> str`

Return the entity name.


---

## OutputResendLinkEntity

```python
output_resend_link = client.OutputResendLink()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `businessRegistrationNumber` | `str` | No |  |
| `consumerUUID` | `str` | Yes |  |
| `emailConfirmationCode` | `str` | No |  |
| `phoneNumber` | `str` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `str` | No |  |

### Operations

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.OutputResendLink().create({
    "consumerUUID": "example_consumerUUID",  # str
})
```

### Common Methods

#### `data_get() -> dict`

Get the entity data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> dict`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputResendLinkEntity` instance with the same options.

#### `get_name() -> str`

Return the entity name.


---

## OutputResetPasswordEntity

```python
output_reset_password = client.OutputResetPassword()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumerUuid` | `str` | No |  |
| `phoneNumber` | `str` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `str` | No |  |

### Operations

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.OutputResetPassword().create({
})
```

### Common Methods

#### `data_get() -> dict`

Get the entity data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> dict`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputResetPasswordEntity` instance with the same options.

#### `get_name() -> str`

Return the entity name.


---

## OutputUpdateConsumerEntity

```python
output_update_consumer = client.OutputUpdateConsumer()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `city` | `str` | No |  |
| `consumerUuid` | `str` | Yes |  |
| `consumerlanguage` | `str` | No |  |
| `country` | `str` | No |  |
| `dateOfBirth` | `str` | No |  |
| `datetime_created` | `str` | No |  |
| `driverLicenceNumber` | `str` | No |  |
| `email` | `str` | No |  |
| `firstName` | `str` | No |  |
| `identificationNumber` | `str` | No |  |
| `kycPassed` | `bool` | No |  |
| `lastName` | `str` | No |  |
| `nationality` | `str` | No |  |
| `passportNumber` | `str` | No |  |
| `phoneNumber` | `str` | No |  |
| `placeOfBirth` | `str` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `str` | No |  |
| `state` | `str` | No |  |
| `street1` | `str` | No |  |
| `street2` | `str` | No |  |
| `transactionhistory_id` | `str` | No |  |
| `zip` | `str` | No |  |

### Operations

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.OutputUpdateConsumer().create({
    "consumerUuid": "example_consumerUuid",  # str
})
```

### Common Methods

#### `data_get() -> dict`

Get the entity data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> dict`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputUpdateConsumerEntity` instance with the same options.

#### `get_name() -> str`

Return the entity name.


---

## OutputUpdateProfileEntity

```python
output_update_profile = client.OutputUpdateProfile()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumerLanguage` | `str` | No |  |
| `email` | `str` | No |  |
| `firstName` | `str` | No |  |
| `lastName` | `str` | No |  |
| `phoneNumber` | `str` | No |  |
| `responseCode` | `int` | No |  |
| `responseMessage` | `str` | No |  |

### Operations

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.OutputUpdateProfile().create({
})
```

### Common Methods

#### `data_get() -> dict`

Get the entity data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> dict`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `OutputUpdateProfileEntity` instance with the same options.

#### `get_name() -> str`

Return the entity name.


---

## VersionEntity

```python
version = client.Version()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `appName` | `str` | No |  |
| `buildDate` | `str` | No |  |
| `version` | `str` | No |  |

### Operations

#### `load(reqmatch, ctrl=None) -> dict`

Load a single entity matching the given criteria. Returns the entity data and raises on error.

```python
result = client.Version().load()
```

### Common Methods

#### `data_get() -> dict`

Get the entity data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> dict`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `VersionEntity` instance with the same options.

#### `get_name() -> str`

Return the entity name.


---

## Features

| Feature | Version | Description |
| --- | --- | --- |
| `audit` | 0.0.1 | Structured audit trail of operations |
| `clienttrack` | 0.0.1 | Client identity and per-request correlation headers |
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

```python
client = BluefinTecsUserBackofficeSDK({
    "feature": {
        "audit": {"active": True},
        "clienttrack": {"active": True},
        "idempotency": {"active": True},
        "log": {"active": True},
        "metrics": {"active": True},
        "paging": {"active": True},
        "ratelimit": {"active": True},
        "retry": {"active": True},
        "telemetry": {"active": True},
        "test": {"active": True},
        "timeout": {"active": True},
    },
})
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

`audit`, `clienttrack`, `idempotency`, `log`, `metrics`, `paging`, `telemetry`, `test` attach to pipeline hooks
rather than the transport, so their order does not affect what they observe.

#### `audit`

Structured audit trail of operations.

**Configuration**

| Option | Default |
|---|---|
| `active` | `false` |
| `actor` | `'anonymous'` |
| `max` | `1000` |

Options above are those the model carries a default for. A feature may
also accept callback options — a `sink` to receive each record, for
instance — which have no default and are covered in the full feature
reference.

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

Options above are those the model carries a default for. A feature may
also accept callback options — a `sink` to receive each record, for
instance — which have no default and are covered in the full feature
reference.

**Usage**

Set `feature.clienttrack.active` to true in the client options, and override any option above in the same entry. Every option keeps
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

Options above are those the model carries a default for. A feature may
also accept callback options — a `sink` to receive each record, for
instance — which have no default and are covered in the full feature
reference.

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

Options above are those the model carries a default for. A feature may
also accept callback options — a `sink` to receive each record, for
instance — which have no default and are covered in the full feature
reference.

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

Options above are those the model carries a default for. A feature may
also accept callback options — a `sink` to receive each record, for
instance — which have no default and are covered in the full feature
reference.

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

Options above are those the model carries a default for. A feature may
also accept callback options — a `sink` to receive each record, for
instance — which have no default and are covered in the full feature
reference.

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

Options above are those the model carries a default for. A feature may
also accept callback options — a `sink` to receive each record, for
instance — which have no default and are covered in the full feature
reference.

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

Options above are those the model carries a default for. A feature may
also accept callback options — a `sink` to receive each record, for
instance — which have no default and are covered in the full feature
reference.

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

Options above are those the model carries a default for. A feature may
also accept callback options — a `sink` to receive each record, for
instance — which have no default and are covered in the full feature
reference.

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

Options above are those the model carries a default for. A feature may
also accept callback options — a `sink` to receive each record, for
instance — which have no default and are covered in the full feature
reference.

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

Options above are those the model carries a default for. A feature may
also accept callback options — a `sink` to receive each record, for
instance — which have no default and are covered in the full feature
reference.

**Usage**

Set `feature.timeout.active` to true in the client options, and override any option above in the same entry. Every option keeps
its default unless you name it.

**Considerations**

- Wraps the transport: its place in the activation order decides what it
  sees. See [Ordering](#ordering) above.
- Inactive by default: leaving it out costs nothing at runtime.


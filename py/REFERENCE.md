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
| `response_code` | `int` | No |  |
| `response_message` | `str` | No |  |

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
| `client_secret` | `str` | Yes |  |
| `notification_email` | `str` | Yes |  |
| `response_code` | `int` | No |  |
| `response_message` | `str` | No |  |

### Operations

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.OutputActivatePortalModule().create({
    "client_secret": "example_client_secret",  # str
    "notification_email": "example_notification_email",  # str
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
| `response_code` | `int` | No |  |
| `response_message` | `str` | No |  |

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
| `consumer_uuid` | `str` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `str` | No |  |

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
| `consumer_uuid` | `str` | Yes |  |
| `response_code` | `int` | No |  |
| `response_message` | `str` | No |  |
| `role` | `list` | Yes |  |

### Operations

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.OutputAssignRole().create({
    "consumer_uuid": "example_consumer_uuid",  # str
    "role": [],  # list
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
| `content_as_base64` | `str` | Yes |  |
| `mime_type` | `str` | Yes |  |
| `response_code` | `int` | No |  |
| `response_message` | `str` | No |  |

### Operations

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.OutputChangeLogo().create({
    "content_as_base64": "example_content_as_base64",  # str
    "mime_type": "example_mime_type",  # str
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
| `date_of_birth` | `str` | No |  |
| `description` | `str` | Yes |  |
| `drivers_license_number` | `str` | No |  |
| `email` | `str` | Yes |  |
| `first_name` | `str` | No |  |
| `identification_number` | `str` | No |  |
| `last_name` | `str` | No |  |
| `login` | `str` | Yes |  |
| `mandator` | `dict` | No |  |
| `name` | `str` | Yes |  |
| `passport_number` | `str` | No |  |
| `phone` | `str` | Yes |  |
| `response_code` | `int` | No |  |
| `response_message` | `str` | No |  |
| `salutation` | `str` | No |  |
| `state` | `str` | No |  |
| `street1` | `str` | No |  |
| `street2` | `str` | No |  |
| `zip_code` | `str` | No |  |

### Operations

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.OutputCreateMandator().create({
    "description": "example_description",  # str
    "email": "example_email",  # str
    "login": "example_login",  # str
    "name": "example_name",  # str
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
| `mandator_name` | `str` | Yes |  |
| `response_code` | `int` | No |  |
| `response_message` | `str` | No |  |

### Operations

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.OutputCreateServiceUser().create({
    "mandator_name": "example_mandator_name",  # str
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
| `consumer_uuid` | `str` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `str` | No |  |

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
| `case_id` | `str` | No |  |
| `encoded_data_base64` | `str` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `str` | No |  |

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
| `content_as_base64` | `str` | Yes |  |
| `mime_type` | `str` | Yes |  |
| `response_code` | `int` | No |  |
| `response_message` | `str` | No |  |

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
| `available_role` | `list` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `str` | No |  |

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
| `response_code` | `int` | No |  |
| `response_message` | `str` | No |  |
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
| `response_code` | `int` | No |  |
| `response_message` | `str` | No |  |

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
| `group_role` | `list` | No |  |
| `pagination` | `dict` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `str` | No |  |
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
| `response_code` | `int` | No |  |
| `response_message` | `str` | No |  |
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
| `response_code` | `int` | No |  |
| `response_message` | `str` | No |  |
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
| `mandator_name` | `str` | Yes |  |
| `password` | `str` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `str` | No |  |
| `username` | `str` | No |  |

### Operations

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.OutputProvideCredential().create({
    "mandator_name": "example_mandator_name",  # str
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
| `city` | `str` | No |  |
| `consumer_id` | `str` | No |  |
| `consumer_language` | `str` | No |  |
| `country` | `str` | No |  |
| `date_of_birth` | `str` | No |  |
| `driver_licence_number` | `str` | No |  |
| `email` | `str` | Yes |  |
| `first_name` | `str` | No |  |
| `identification_number` | `str` | No |  |
| `last_name` | `str` | No |  |
| `login` | `str` | No |  |
| `module` | `str` | No |  |
| `passport_number` | `str` | No |  |
| `phone` | `str` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `str` | No |  |
| `salutation` | `str` | No |  |
| `state` | `str` | No |  |
| `street1` | `str` | No |  |
| `street2` | `str` | No |  |
| `zip` | `str` | No |  |

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
| `consumer_uuid` | `str` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `str` | No |  |
| `role` | `list` | No |  |

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
| `business_registration_number` | `str` | No |  |
| `consumer_uuid` | `str` | Yes |  |
| `email_confirmation_code` | `str` | No |  |
| `phone_number` | `str` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `str` | No |  |

### Operations

#### `create(reqdata, ctrl=None) -> dict`

Create a new entity with the given data. Returns the created entity data and raises on error.

```python
result = client.OutputResendLink().create({
    "consumer_uuid": "example_consumer_uuid",  # str
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
| `consumer_uuid` | `str` | No |  |
| `phone_number` | `str` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `str` | No |  |

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
| `consumer_uuid` | `str` | Yes |  |
| `consumerlanguage` | `str` | No |  |
| `country` | `str` | No |  |
| `date_of_birth` | `str` | No |  |
| `datetime_created` | `str` | No |  |
| `driver_licence_number` | `str` | No |  |
| `email` | `str` | No |  |
| `first_name` | `str` | No |  |
| `identification_number` | `str` | No |  |
| `kyc_passed` | `bool` | No |  |
| `last_name` | `str` | No |  |
| `nationality` | `str` | No |  |
| `passport_number` | `str` | No |  |
| `phone_number` | `str` | No |  |
| `place_of_birth` | `str` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `str` | No |  |
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
    "consumer_uuid": "example_consumer_uuid",  # str
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
| `consumer_language` | `str` | No |  |
| `email` | `str` | No |  |
| `first_name` | `str` | No |  |
| `last_name` | `str` | No |  |
| `phone_number` | `str` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `str` | No |  |

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
| `app_name` | `str` | No |  |
| `build_date` | `str` | No |  |
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
| `test` | 0.0.1 | In-memory mock transport for testing without a live server |


Features are activated via the `feature` option:

```python
client = BluefinTecsUserBackofficeSDK({
    "feature": {
        "test": {"active": True},
    },
})
```


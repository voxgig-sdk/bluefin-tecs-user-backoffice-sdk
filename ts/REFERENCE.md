# BluefinTecsUserBackoffice TypeScript SDK Reference

Complete API reference for the BluefinTecsUserBackoffice TypeScript SDK.


## BluefinTecsUserBackofficeSDK

### Constructor

```ts
new BluefinTecsUserBackofficeSDK(options?: object)
```

Create a new SDK client instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `options` | `object` | SDK configuration options. |
| `options.apikey` | `string` | API key for authentication. |
| `options.base` | `string` | Base URL for API requests. |
| `options.prefix` | `string` | URL prefix appended after base. |
| `options.suffix` | `string` | URL suffix appended after path. |
| `options.headers` | `object` | Custom headers for all requests. |
| `options.feature` | `object` | Feature configuration. |
| `options.system` | `object` | System overrides (e.g. custom fetch). |


### Static Methods

#### `BluefinTecsUserBackofficeSDK.test(testopts?, sdkopts?)`

Create a test client with mock features active.

```ts
const client = BluefinTecsUserBackofficeSDK.test()
```

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `testopts` | `object` | Test feature options. |
| `sdkopts` | `object` | Additional SDK options merged with test defaults. |

**Returns:** `BluefinTecsUserBackofficeSDK` instance in test mode.


### Instance Methods

#### `OutputActivateDigitalModule(data?: object)`

Create a new `OutputActivateDigitalModule` entity instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `data` | `object` | Initial entity data. |

**Returns:** `OutputActivateDigitalModuleEntity` instance.

#### `OutputActivatePortalModule(data?: object)`

Create a new `OutputActivatePortalModule` entity instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `data` | `object` | Initial entity data. |

**Returns:** `OutputActivatePortalModuleEntity` instance.

#### `OutputActivateStoreModule(data?: object)`

Create a new `OutputActivateStoreModule` entity instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `data` | `object` | Initial entity data. |

**Returns:** `OutputActivateStoreModuleEntity` instance.

#### `OutputActivateUser(data?: object)`

Create a new `OutputActivateUser` entity instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `data` | `object` | Initial entity data. |

**Returns:** `OutputActivateUserEntity` instance.

#### `OutputAssignRole(data?: object)`

Create a new `OutputAssignRole` entity instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `data` | `object` | Initial entity data. |

**Returns:** `OutputAssignRoleEntity` instance.

#### `OutputChangeLogo(data?: object)`

Create a new `OutputChangeLogo` entity instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `data` | `object` | Initial entity data. |

**Returns:** `OutputChangeLogoEntity` instance.

#### `OutputCreateMandator(data?: object)`

Create a new `OutputCreateMandator` entity instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `data` | `object` | Initial entity data. |

**Returns:** `OutputCreateMandatorEntity` instance.

#### `OutputCreateServiceUser(data?: object)`

Create a new `OutputCreateServiceUser` entity instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `data` | `object` | Initial entity data. |

**Returns:** `OutputCreateServiceUserEntity` instance.

#### `OutputDeactivateUser(data?: object)`

Create a new `OutputDeactivateUser` entity instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `data` | `object` | Initial entity data. |

**Returns:** `OutputDeactivateUserEntity` instance.

#### `OutputGetKycDocument(data?: object)`

Create a new `OutputGetKycDocument` entity instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `data` | `object` | Initial entity data. |

**Returns:** `OutputGetKycDocumentEntity` instance.

#### `OutputGetLogo(data?: object)`

Create a new `OutputGetLogo` entity instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `data` | `object` | Initial entity data. |

**Returns:** `OutputGetLogoEntity` instance.

#### `OutputListOfAvailableRole(data?: object)`

Create a new `OutputListOfAvailableRole` entity instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `data` | `object` | Initial entity data. |

**Returns:** `OutputListOfAvailableRoleEntity` instance.

#### `OutputListOfMandator(data?: object)`

Create a new `OutputListOfMandator` entity instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `data` | `object` | Initial entity data. |

**Returns:** `OutputListOfMandatorEntity` instance.

#### `OutputListOfModule(data?: object)`

Create a new `OutputListOfModule` entity instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `data` | `object` | Initial entity data. |

**Returns:** `OutputListOfModuleEntity` instance.

#### `OutputListOfRoleGroup(data?: object)`

Create a new `OutputListOfRoleGroup` entity instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `data` | `object` | Initial entity data. |

**Returns:** `OutputListOfRoleGroupEntity` instance.

#### `OutputListOfTransactionsHistory(data?: object)`

Create a new `OutputListOfTransactionsHistory` entity instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `data` | `object` | Initial entity data. |

**Returns:** `OutputListOfTransactionsHistoryEntity` instance.

#### `OutputListOfUser(data?: object)`

Create a new `OutputListOfUser` entity instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `data` | `object` | Initial entity data. |

**Returns:** `OutputListOfUserEntity` instance.

#### `OutputProvideCredential(data?: object)`

Create a new `OutputProvideCredential` entity instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `data` | `object` | Initial entity data. |

**Returns:** `OutputProvideCredentialEntity` instance.

#### `OutputRegisterUser(data?: object)`

Create a new `OutputRegisterUser` entity instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `data` | `object` | Initial entity data. |

**Returns:** `OutputRegisterUserEntity` instance.

#### `OutputRemoveRole(data?: object)`

Create a new `OutputRemoveRole` entity instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `data` | `object` | Initial entity data. |

**Returns:** `OutputRemoveRoleEntity` instance.

#### `OutputResendLink(data?: object)`

Create a new `OutputResendLink` entity instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `data` | `object` | Initial entity data. |

**Returns:** `OutputResendLinkEntity` instance.

#### `OutputResetPassword(data?: object)`

Create a new `OutputResetPassword` entity instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `data` | `object` | Initial entity data. |

**Returns:** `OutputResetPasswordEntity` instance.

#### `OutputUpdateConsumer(data?: object)`

Create a new `OutputUpdateConsumer` entity instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `data` | `object` | Initial entity data. |

**Returns:** `OutputUpdateConsumerEntity` instance.

#### `OutputUpdateProfile(data?: object)`

Create a new `OutputUpdateProfile` entity instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `data` | `object` | Initial entity data. |

**Returns:** `OutputUpdateProfileEntity` instance.

#### `Version(data?: object)`

Create a new `Version` entity instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `data` | `object` | Initial entity data. |

**Returns:** `VersionEntity` instance.

#### `options()`

Return a deep copy of the current SDK options.

**Returns:** `object`

#### `utility()`

Return a copy of the SDK utility object.

**Returns:** `object`

#### `direct(fetchargs?: object)`

Make a direct HTTP request to any API endpoint.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `fetchargs.path` | `string` | URL path with optional `{param}` placeholders. |
| `fetchargs.method` | `string` | HTTP method (default: `GET`). |
| `fetchargs.params` | `object` | Path parameter values for `{param}` substitution. |
| `fetchargs.query` | `object` | Query string parameters. |
| `fetchargs.headers` | `object` | Request headers (merged with defaults). |
| `fetchargs.body` | `any` | Request body (objects are JSON-serialized). |
| `fetchargs.ctrl` | `object` | Control options (e.g. `{ explain: true }`). |

**Returns:** `Promise<{ ok, status, headers, data } | Error>`

#### `prepare(fetchargs?: object)`

Prepare a fetch definition without sending the request. Accepts the
same parameters as `direct()`.

**Returns:** `Promise<{ url, method, headers, body } | Error>`

#### `tester(testopts?, sdkopts?)`

Alias for `BluefinTecsUserBackofficeSDK.test()`.

**Returns:** `BluefinTecsUserBackofficeSDK` instance in test mode.


---

## OutputActivateDigitalModuleEntity

```ts
const output_activate_digital_module = client.OutputActivateDigitalModule()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `create(data: object, ctrl?: object)`

Create a new entity with the given data.

```ts
const result = await client.OutputActivateDigitalModule().create({
})
```

### Common Methods

#### `data(data?: object)`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `match(match?: object)`

Get or set the entity match criteria. Works the same as `data()`.

#### `make()`

Create a new `OutputActivateDigitalModuleEntity` instance with the same client and
options.

#### `client()`

Return the parent `BluefinTecsUserBackofficeSDK` instance.

#### `entopts()`

Return a copy of the entity options.


---

## OutputActivatePortalModuleEntity

```ts
const output_activate_portal_module = client.OutputActivatePortalModule()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `clientSecret` | `string` | Yes |  |
| `notificationEmail` | `string` | Yes |  |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `create(data: object, ctrl?: object)`

Create a new entity with the given data.

```ts
const result = await client.OutputActivatePortalModule().create({
  clientSecret: 'example_clientSecret',
  notificationEmail: 'example_notificationEmail',
})
```

### Common Methods

#### `data(data?: object)`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `match(match?: object)`

Get or set the entity match criteria. Works the same as `data()`.

#### `make()`

Create a new `OutputActivatePortalModuleEntity` instance with the same client and
options.

#### `client()`

Return the parent `BluefinTecsUserBackofficeSDK` instance.

#### `entopts()`

Return a copy of the entity options.


---

## OutputActivateStoreModuleEntity

```ts
const output_activate_store_module = client.OutputActivateStoreModule()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `create(data: object, ctrl?: object)`

Create a new entity with the given data.

```ts
const result = await client.OutputActivateStoreModule().create({
})
```

### Common Methods

#### `data(data?: object)`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `match(match?: object)`

Get or set the entity match criteria. Works the same as `data()`.

#### `make()`

Create a new `OutputActivateStoreModuleEntity` instance with the same client and
options.

#### `client()`

Return the parent `BluefinTecsUserBackofficeSDK` instance.

#### `entopts()`

Return a copy of the entity options.


---

## OutputActivateUserEntity

```ts
const output_activate_user = client.OutputActivateUser()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumerUUID` | `string` | No |  |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `create(data: object, ctrl?: object)`

Create a new entity with the given data.

```ts
const result = await client.OutputActivateUser().create({
})
```

### Common Methods

#### `data(data?: object)`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `match(match?: object)`

Get or set the entity match criteria. Works the same as `data()`.

#### `make()`

Create a new `OutputActivateUserEntity` instance with the same client and
options.

#### `client()`

Return the parent `BluefinTecsUserBackofficeSDK` instance.

#### `entopts()`

Return a copy of the entity options.


---

## OutputAssignRoleEntity

```ts
const output_assign_role = client.OutputAssignRole()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumerUUID` | `string` | Yes | Unique identifier of the consumer (user) to whom the role(s) will be assigned. |
| `responseCode` | `number` | No | Response code: 0 indicates success; any non-zero value indicates an error. |
| `responseMessage` | `string` | No | A human-readable message providing additional details about the outcome. |
| `roles` | `any[]` | Yes | List of roles to assign to the consumer. |

### Operations

#### `create(data: object, ctrl?: object)`

Create a new entity with the given data.

```ts
const result = await client.OutputAssignRole().create({
  consumerUUID: 'example_consumerUUID',
  roles: [],
})
```

### Common Methods

#### `data(data?: object)`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `match(match?: object)`

Get or set the entity match criteria. Works the same as `data()`.

#### `make()`

Create a new `OutputAssignRoleEntity` instance with the same client and
options.

#### `client()`

Return the parent `BluefinTecsUserBackofficeSDK` instance.

#### `entopts()`

Return a copy of the entity options.


---

## OutputChangeLogoEntity

```ts
const output_change_logo = client.OutputChangeLogo()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `contentAsBase64` | `string` | Yes | The content of the image as base64 encoded string |
| `mimeType` | `string` | Yes | The MIME type of the image |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `create(data: object, ctrl?: object)`

Create a new entity with the given data.

```ts
const result = await client.OutputChangeLogo().create({
  contentAsBase64: 'example_contentAsBase64',
  mimeType: 'example_mimeType',
})
```

### Common Methods

#### `data(data?: object)`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `match(match?: object)`

Get or set the entity match criteria. Works the same as `data()`.

#### `make()`

Create a new `OutputChangeLogoEntity` instance with the same client and
options.

#### `client()`

Return the parent `BluefinTecsUserBackofficeSDK` instance.

#### `entopts()`

Return a copy of the entity options.


---

## OutputCreateMandatorEntity

```ts
const output_create_mandator = client.OutputCreateMandator()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `city` | `string` | No |  |
| `country` | `string` | No |  |
| `dateOfBirth` | `string` | No |  |
| `description` | `string` | No |  |
| `driversLicenseNumber` | `string` | No |  |
| `email` | `string` | Yes |  |
| `firstName` | `string` | No |  |
| `identificationNumber` | `string` | No |  |
| `lastName` | `string` | No |  |
| `login` | `string` | Yes |  |
| `name` | `string` | No |  |
| `passportNumber` | `string` | No |  |
| `phone` | `string` | Yes |  |
| `salutation` | `string` | No |  |
| `state` | `string` | No |  |
| `street1` | `string` | No |  |
| `street2` | `string` | No |  |
| `zipCode` | `string` | No |  |

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

#### `create(data: object, ctrl?: object)`

Create a new entity with the given data.

```ts
const result = await client.OutputCreateMandator().create({
  email: 'example_email',
  login: 'example_login',
  phone: 'example_phone',
})
```

### Common Methods

#### `data(data?: object)`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `match(match?: object)`

Get or set the entity match criteria. Works the same as `data()`.

#### `make()`

Create a new `OutputCreateMandatorEntity` instance with the same client and
options.

#### `client()`

Return the parent `BluefinTecsUserBackofficeSDK` instance.

#### `entopts()`

Return a copy of the entity options.


---

## OutputCreateServiceUserEntity

```ts
const output_create_service_user = client.OutputCreateServiceUser()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `mandatorName` | `string` | Yes |  |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `create(data: object, ctrl?: object)`

Create a new entity with the given data.

```ts
const result = await client.OutputCreateServiceUser().create({
  mandatorName: 'example_mandatorName',
})
```

### Common Methods

#### `data(data?: object)`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `match(match?: object)`

Get or set the entity match criteria. Works the same as `data()`.

#### `make()`

Create a new `OutputCreateServiceUserEntity` instance with the same client and
options.

#### `client()`

Return the parent `BluefinTecsUserBackofficeSDK` instance.

#### `entopts()`

Return a copy of the entity options.


---

## OutputDeactivateUserEntity

```ts
const output_deactivate_user = client.OutputDeactivateUser()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumerUUID` | `string` | No |  |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `create(data: object, ctrl?: object)`

Create a new entity with the given data.

```ts
const result = await client.OutputDeactivateUser().create({
})
```

### Common Methods

#### `data(data?: object)`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `match(match?: object)`

Get or set the entity match criteria. Works the same as `data()`.

#### `make()`

Create a new `OutputDeactivateUserEntity` instance with the same client and
options.

#### `client()`

Return the parent `BluefinTecsUserBackofficeSDK` instance.

#### `entopts()`

Return a copy of the entity options.


---

## OutputGetKycDocumentEntity

```ts
const output_get_kyc_document = client.OutputGetKycDocument()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `caseID` | `string` | No |  |
| `encodedDataBase64` | `string` | No |  |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `create(data: object, ctrl?: object)`

Create a new entity with the given data.

```ts
const result = await client.OutputGetKycDocument().create({
})
```

### Common Methods

#### `data(data?: object)`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `match(match?: object)`

Get or set the entity match criteria. Works the same as `data()`.

#### `make()`

Create a new `OutputGetKycDocumentEntity` instance with the same client and
options.

#### `client()`

Return the parent `BluefinTecsUserBackofficeSDK` instance.

#### `entopts()`

Return a copy of the entity options.


---

## OutputGetLogoEntity

```ts
const output_get_logo = client.OutputGetLogo()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `contentAsBase64` | `string` | Yes | The content of the image as base64 encoded string |
| `mimeType` | `string` | Yes | The MIME type of the image |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `load(match: object, ctrl?: object)`

Load a single entity matching the given criteria.

```ts
const result = await client.OutputGetLogo().load()
```

### Common Methods

#### `data(data?: object)`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `match(match?: object)`

Get or set the entity match criteria. Works the same as `data()`.

#### `make()`

Create a new `OutputGetLogoEntity` instance with the same client and
options.

#### `client()`

Return the parent `BluefinTecsUserBackofficeSDK` instance.

#### `entopts()`

Return a copy of the entity options.


---

## OutputListOfAvailableRoleEntity

```ts
const output_list_of_available_role = client.OutputListOfAvailableRole()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `availableRoles` | `any[]` | No |  |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `create(data: object, ctrl?: object)`

Create a new entity with the given data.

```ts
const result = await client.OutputListOfAvailableRole().create({
})
```

### Common Methods

#### `data(data?: object)`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `match(match?: object)`

Get or set the entity match criteria. Works the same as `data()`.

#### `make()`

Create a new `OutputListOfAvailableRoleEntity` instance with the same client and
options.

#### `client()`

Return the parent `BluefinTecsUserBackofficeSDK` instance.

#### `entopts()`

Return a copy of the entity options.


---

## OutputListOfMandatorEntity

```ts
const output_list_of_mandator = client.OutputListOfMandator()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `filter` | `Record<string, any>` | No |  |
| `list` | `any[]` | No |  |
| `pagination` | `Record<string, any>` | No |  |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |
| `sorting` | `Record<string, any>` | No |  |

### Operations

#### `create(data: object, ctrl?: object)`

Create a new entity with the given data.

```ts
const result = await client.OutputListOfMandator().create({
})
```

### Common Methods

#### `data(data?: object)`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `match(match?: object)`

Get or set the entity match criteria. Works the same as `data()`.

#### `make()`

Create a new `OutputListOfMandatorEntity` instance with the same client and
options.

#### `client()`

Return the parent `BluefinTecsUserBackofficeSDK` instance.

#### `entopts()`

Return a copy of the entity options.


---

## OutputListOfModuleEntity

```ts
const output_list_of_module = client.OutputListOfModule()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `list` | `any[]` | No |  |
| `pagination` | `Record<string, any>` | No |  |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `create(data: object, ctrl?: object)`

Create a new entity with the given data.

```ts
const result = await client.OutputListOfModule().create({
})
```

### Common Methods

#### `data(data?: object)`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `match(match?: object)`

Get or set the entity match criteria. Works the same as `data()`.

#### `make()`

Create a new `OutputListOfModuleEntity` instance with the same client and
options.

#### `client()`

Return the parent `BluefinTecsUserBackofficeSDK` instance.

#### `entopts()`

Return a copy of the entity options.


---

## OutputListOfRoleGroupEntity

```ts
const output_list_of_role_group = client.OutputListOfRoleGroup()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `filter` | `Record<string, any>` | No |  |
| `groupRoles` | `any[]` | No |  |
| `pagination` | `Record<string, any>` | No |  |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |
| `sorting` | `Record<string, any>` | No |  |

### Operations

#### `create(data: object, ctrl?: object)`

Create a new entity with the given data.

```ts
const result = await client.OutputListOfRoleGroup().create({
})
```

### Common Methods

#### `data(data?: object)`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `match(match?: object)`

Get or set the entity match criteria. Works the same as `data()`.

#### `make()`

Create a new `OutputListOfRoleGroupEntity` instance with the same client and
options.

#### `client()`

Return the parent `BluefinTecsUserBackofficeSDK` instance.

#### `entopts()`

Return a copy of the entity options.


---

## OutputListOfTransactionsHistoryEntity

```ts
const output_list_of_transactions_history = client.OutputListOfTransactionsHistory()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `filter` | `Record<string, any>` | No |  |
| `list` | `any[]` | No |  |
| `pagination` | `Record<string, any>` | No |  |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |
| `sorting` | `Record<string, any>` | No |  |

### Operations

#### `create(data: object, ctrl?: object)`

Create a new entity with the given data.

```ts
const result = await client.OutputListOfTransactionsHistory().create({
})
```

### Common Methods

#### `data(data?: object)`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `match(match?: object)`

Get or set the entity match criteria. Works the same as `data()`.

#### `make()`

Create a new `OutputListOfTransactionsHistoryEntity` instance with the same client and
options.

#### `client()`

Return the parent `BluefinTecsUserBackofficeSDK` instance.

#### `entopts()`

Return a copy of the entity options.


---

## OutputListOfUserEntity

```ts
const output_list_of_user = client.OutputListOfUser()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `filter` | `Record<string, any>` | No |  |
| `list` | `any[]` | No |  |
| `pagination` | `Record<string, any>` | No |  |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |
| `sorting` | `Record<string, any>` | No |  |

### Operations

#### `create(data: object, ctrl?: object)`

Create a new entity with the given data.

```ts
const result = await client.OutputListOfUser().create({
})
```

### Common Methods

#### `data(data?: object)`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `match(match?: object)`

Get or set the entity match criteria. Works the same as `data()`.

#### `make()`

Create a new `OutputListOfUserEntity` instance with the same client and
options.

#### `client()`

Return the parent `BluefinTecsUserBackofficeSDK` instance.

#### `entopts()`

Return a copy of the entity options.


---

## OutputProvideCredentialEntity

```ts
const output_provide_credential = client.OutputProvideCredential()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `mandatorName` | `string` | Yes |  |
| `password` | `string` | No |  |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |
| `username` | `string` | No |  |

### Operations

#### `create(data: object, ctrl?: object)`

Create a new entity with the given data.

```ts
const result = await client.OutputProvideCredential().create({
  mandatorName: 'example_mandatorName',
})
```

### Common Methods

#### `data(data?: object)`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `match(match?: object)`

Get or set the entity match criteria. Works the same as `data()`.

#### `make()`

Create a new `OutputProvideCredentialEntity` instance with the same client and
options.

#### `client()`

Return the parent `BluefinTecsUserBackofficeSDK` instance.

#### `entopts()`

Return a copy of the entity options.


---

## OutputRegisterUserEntity

```ts
const output_register_user = client.OutputRegisterUser()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `city` | `string` | No | City where the user resides. |
| `consumerId` | `string` | No | User login or unique user identifier. |
| `consumerLanguage` | `string` | No | Preferred language for the user (e.g., 'en'). |
| `country` | `string` | No | User's country. |
| `dateOfBirth` | `string` | No | User's date of birth (expected format: dd.MM.yyyy). |
| `driverLicenceNumber` | `string` | No | User's driver's license number. |
| `email` | `string` | Yes | User's email address (must be unique). |
| `firstName` | `string` | No | User's first name. |
| `identificationNumber` | `string` | No | User's identification number. |
| `lastName` | `string` | No | User's last name. |
| `login` | `string` | No | User login identifier (should be unique). |
| `module` | `string` | No | Module identifier (if applicable). |
| `passportNumber` | `string` | No | User's passport number. |
| `phone` | `string` | No | User's phone number. |
| `responseCode` | `number` | No | Response code (0 indicates success; non-zero indicates an error). |
| `responseMessage` | `string` | No | Human-readable response message. |
| `salutation` | `string` | No | User's salutation (e.g., Mr., Ms.). |
| `state` | `string` | No | User's state or region. |
| `street1` | `string` | No | Primary address line. |
| `street2` | `string` | No | Secondary address line. |
| `zip` | `string` | No | Postal code. |

### Operations

#### `create(data: object, ctrl?: object)`

Create a new entity with the given data.

```ts
const result = await client.OutputRegisterUser().create({
  email: 'example_email',
})
```

### Common Methods

#### `data(data?: object)`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `match(match?: object)`

Get or set the entity match criteria. Works the same as `data()`.

#### `make()`

Create a new `OutputRegisterUserEntity` instance with the same client and
options.

#### `client()`

Return the parent `BluefinTecsUserBackofficeSDK` instance.

#### `entopts()`

Return a copy of the entity options.


---

## OutputRemoveRoleEntity

```ts
const output_remove_role = client.OutputRemoveRole()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumerUUID` | `string` | No |  |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |
| `roles` | `any[]` | No |  |

### Operations

#### `create(data: object, ctrl?: object)`

Create a new entity with the given data.

```ts
const result = await client.OutputRemoveRole().create({
})
```

### Common Methods

#### `data(data?: object)`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `match(match?: object)`

Get or set the entity match criteria. Works the same as `data()`.

#### `make()`

Create a new `OutputRemoveRoleEntity` instance with the same client and
options.

#### `client()`

Return the parent `BluefinTecsUserBackofficeSDK` instance.

#### `entopts()`

Return a copy of the entity options.


---

## OutputResendLinkEntity

```ts
const output_resend_link = client.OutputResendLink()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `businessRegistrationNumber` | `string` | No |  |
| `consumerUUID` | `string` | Yes |  |
| `emailConfirmationCode` | `string` | No |  |
| `phoneNumber` | `string` | No |  |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `create(data: object, ctrl?: object)`

Create a new entity with the given data.

```ts
const result = await client.OutputResendLink().create({
  consumerUUID: 'example_consumerUUID',
})
```

### Common Methods

#### `data(data?: object)`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `match(match?: object)`

Get or set the entity match criteria. Works the same as `data()`.

#### `make()`

Create a new `OutputResendLinkEntity` instance with the same client and
options.

#### `client()`

Return the parent `BluefinTecsUserBackofficeSDK` instance.

#### `entopts()`

Return a copy of the entity options.


---

## OutputResetPasswordEntity

```ts
const output_reset_password = client.OutputResetPassword()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumerUuid` | `string` | No |  |
| `phoneNumber` | `string` | No |  |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `create(data: object, ctrl?: object)`

Create a new entity with the given data.

```ts
const result = await client.OutputResetPassword().create({
})
```

### Common Methods

#### `data(data?: object)`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `match(match?: object)`

Get or set the entity match criteria. Works the same as `data()`.

#### `make()`

Create a new `OutputResetPasswordEntity` instance with the same client and
options.

#### `client()`

Return the parent `BluefinTecsUserBackofficeSDK` instance.

#### `entopts()`

Return a copy of the entity options.


---

## OutputUpdateConsumerEntity

```ts
const output_update_consumer = client.OutputUpdateConsumer()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `city` | `string` | No |  |
| `consumerUuid` | `string` | Yes |  |
| `consumerlanguage` | `string` | No |  |
| `country` | `string` | No |  |
| `dateOfBirth` | `string` | No |  |
| `datetime_created` | `string` | No |  |
| `driverLicenceNumber` | `string` | No |  |
| `email` | `string` | No |  |
| `firstName` | `string` | No |  |
| `identificationNumber` | `string` | No |  |
| `kycPassed` | `boolean` | No |  |
| `lastName` | `string` | No |  |
| `nationality` | `string` | No |  |
| `passportNumber` | `string` | No |  |
| `phoneNumber` | `string` | No |  |
| `placeOfBirth` | `string` | No |  |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |
| `state` | `string` | No |  |
| `street1` | `string` | No |  |
| `street2` | `string` | No |  |
| `transactionhistory_id` | `string` | No |  |
| `zip` | `string` | No |  |

### Operations

#### `create(data: object, ctrl?: object)`

Create a new entity with the given data.

```ts
const result = await client.OutputUpdateConsumer().create({
  consumerUuid: 'example_consumerUuid',
})
```

### Common Methods

#### `data(data?: object)`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `match(match?: object)`

Get or set the entity match criteria. Works the same as `data()`.

#### `make()`

Create a new `OutputUpdateConsumerEntity` instance with the same client and
options.

#### `client()`

Return the parent `BluefinTecsUserBackofficeSDK` instance.

#### `entopts()`

Return a copy of the entity options.


---

## OutputUpdateProfileEntity

```ts
const output_update_profile = client.OutputUpdateProfile()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumerLanguage` | `string` | No |  |
| `email` | `string` | No |  |
| `firstName` | `string` | No |  |
| `lastName` | `string` | No |  |
| `phoneNumber` | `string` | No |  |
| `responseCode` | `number` | No |  |
| `responseMessage` | `string` | No |  |

### Operations

#### `create(data: object, ctrl?: object)`

Create a new entity with the given data.

```ts
const result = await client.OutputUpdateProfile().create({
})
```

### Common Methods

#### `data(data?: object)`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `match(match?: object)`

Get or set the entity match criteria. Works the same as `data()`.

#### `make()`

Create a new `OutputUpdateProfileEntity` instance with the same client and
options.

#### `client()`

Return the parent `BluefinTecsUserBackofficeSDK` instance.

#### `entopts()`

Return a copy of the entity options.


---

## VersionEntity

```ts
const version = client.Version()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `appName` | `string` | No |  |
| `buildDate` | `string` | No |  |
| `version` | `string` | No |  |

### Operations

#### `load(match: object, ctrl?: object)`

Load a single entity matching the given criteria.

```ts
const result = await client.Version().load()
```

### Common Methods

#### `data(data?: object)`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `match(match?: object)`

Get or set the entity match criteria. Works the same as `data()`.

#### `make()`

Create a new `VersionEntity` instance with the same client and
options.

#### `client()`

Return the parent `BluefinTecsUserBackofficeSDK` instance.

#### `entopts()`

Return a copy of the entity options.


---

## Features

| Feature | Version | Description |
| --- | --- | --- |
| `test` | 0.0.1 | In-memory mock transport for testing without a live server |


Features are activated via the `feature` option:

```ts
const client = new BluefinTecsUserBackofficeSDK({
  feature: {
    test: { active: true },
  }
})
```


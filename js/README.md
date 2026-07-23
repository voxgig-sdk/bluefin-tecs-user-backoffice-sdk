# BluefinTecsUserBackoffice JavaScript SDK



The JavaScript SDK for the BluefinTecsUserBackoffice API — an entity-oriented client with full async/await support.

The API is exposed as capitalised, semantic **Entities** — e.g.
`client.OutputActivateDigitalModule()` — each with a small set of operations (`load`, `create`)
instead of raw URL paths and query parameters. This keeps the surface
predictable and low-friction for both humans and AI agents.

> Other languages, the CLI, and MCP server live alongside this one — see
> the [top-level README](../README.md).


## Install
```js
npm install bluefin-tecs-user-backoffice
```
## Tutorial: your first API call

This tutorial walks through creating a client, listing entities, and
loading a specific record.


### Create a Client

```js
const { BluefinTecsUserBackofficeSDK } = require('@voxgig-sdk/bluefin-tecs-user-backoffice-js')

const client = new BluefinTecsUserBackofficeSDK({
  apikey: process.env.BLUEFIN_TECS_USER_BACKOFFICE_APIKEY,
})
```

### Create a OutputActivateDigitalModule

```js
const created = await client.OutputActivateDigitalModule().create({
  response_code: 1,
  response_message: 'example_response_message',
})
console.log(created)
```

### Direct API Access

Use `client.direct()` to call any API endpoint directly:

```js
const result = await client.direct({
  path: '/custom/endpoint/{id}',
  method: 'GET',
  params: { id: 'abc123' },
})

if (result.ok) {
  console.log(result.data)
}
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

For endpoints not covered by entity methods:

```js
const result = await client.direct({
  path: '/api/resource/{id}',
  method: 'GET',
  params: { id: 'example' },
})

if (result instanceof Error) {
  throw result
}
if (result.ok) {
  console.log(result.status)  // 200
  console.log(result.data)    // response body
}
```

### Prepare a request without sending it

```js
const fetchdef = await client.prepare({
  path: '/api/resource/{id}',
  method: 'DELETE',
  params: { id: 'example' },
})

// Inspect before sending
console.log(fetchdef.url)
console.log(fetchdef.method)
console.log(fetchdef.headers)
```

### Use test mode

Create a mock client for unit testing — no server required:

```js
const client = BluefinTecsUserBackofficeSDK.test()

const outputgetlogo = await client.OutputGetLogo().load()
// outputgetlogo is a bare entity populated with mock response data
console.log(outputgetlogo)
```

You can also use the instance method:

```js
const client = new BluefinTecsUserBackofficeSDK({ apikey: '...' })
const testClient = client.tester()
```

### Retain entity state across calls

Entity instances remember their last match and data:

```js
const entity = client.OutputGetLogo()

// First call runs the operation and stores its result
await entity.load()

// Subsequent calls reuse the stored state
const data = entity.data()
console.log(data)
```

### Add custom middleware

Pass features via the `extend` option:

```js
const logger = {
  hooks: {
    PreRequest: (ctx) => {
      console.log('Requesting:', ctx.spec.method, ctx.spec.path)
    },
    PreResponse: (ctx) => {
      console.log('Status:', ctx.out.request?.status)
    },
  },
}

const client = new BluefinTecsUserBackofficeSDK({
  apikey: '...',
  extend: [logger],
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
cd js && npm test
```


## Reference

### BluefinTecsUserBackofficeSDK

#### Constructor

```js
new BluefinTecsUserBackofficeSDK(options?)
```

| Option | Type | Description |
| --- | --- | --- |
| `apikey` | `string` | API key for authentication. |
| `base` | `string` | Base URL of the API server. |
| `prefix` | `string` | URL path prefix prepended to all requests. |
| `suffix` | `string` | URL path suffix appended to all requests. |
| `feature` | `object` | Feature activation flags (e.g. `{ test: { active: true } }`). |
| `extend` | `Feature[]` | Additional feature instances to load. |

#### Methods

| Method | Returns | Description |
| --- | --- | --- |
| `options()` | `object` | Deep copy of current SDK options. |
| `utility()` | `Utility` | Deep copy of the SDK utility object. |
| `prepare(fetchargs?)` | `Promise<FetchDef>` | Build an HTTP request definition without sending it. |
| `direct(fetchargs?)` | `Promise<DirectResult>` | Build and send an HTTP request. |
| `OutputActivateDigitalModule(data?)` | `OutputActivateDigitalModuleEntity` | Create an OutputActivateDigitalModule entity instance. |
| `OutputActivatePortalModule(data?)` | `OutputActivatePortalModuleEntity` | Create an OutputActivatePortalModule entity instance. |
| `OutputActivateStoreModule(data?)` | `OutputActivateStoreModuleEntity` | Create an OutputActivateStoreModule entity instance. |
| `OutputActivateUser(data?)` | `OutputActivateUserEntity` | Create an OutputActivateUser entity instance. |
| `OutputAssignRole(data?)` | `OutputAssignRoleEntity` | Create an OutputAssignRole entity instance. |
| `OutputChangeLogo(data?)` | `OutputChangeLogoEntity` | Create an OutputChangeLogo entity instance. |
| `OutputCreateMandator(data?)` | `OutputCreateMandatorEntity` | Create an OutputCreateMandator entity instance. |
| `OutputCreateServiceUser(data?)` | `OutputCreateServiceUserEntity` | Create an OutputCreateServiceUser entity instance. |
| `OutputDeactivateUser(data?)` | `OutputDeactivateUserEntity` | Create an OutputDeactivateUser entity instance. |
| `OutputGetKycDocument(data?)` | `OutputGetKycDocumentEntity` | Create an OutputGetKycDocument entity instance. |
| `OutputGetLogo(data?)` | `OutputGetLogoEntity` | Create an OutputGetLogo entity instance. |
| `OutputListOfAvailableRole(data?)` | `OutputListOfAvailableRoleEntity` | Create an OutputListOfAvailableRole entity instance. |
| `OutputListOfMandator(data?)` | `OutputListOfMandatorEntity` | Create an OutputListOfMandator entity instance. |
| `OutputListOfModule(data?)` | `OutputListOfModuleEntity` | Create an OutputListOfModule entity instance. |
| `OutputListOfRoleGroup(data?)` | `OutputListOfRoleGroupEntity` | Create an OutputListOfRoleGroup entity instance. |
| `OutputListOfTransactionsHistory(data?)` | `OutputListOfTransactionsHistoryEntity` | Create an OutputListOfTransactionsHistory entity instance. |
| `OutputListOfUser(data?)` | `OutputListOfUserEntity` | Create an OutputListOfUser entity instance. |
| `OutputProvideCredential(data?)` | `OutputProvideCredentialEntity` | Create an OutputProvideCredential entity instance. |
| `OutputRegisterUser(data?)` | `OutputRegisterUserEntity` | Create an OutputRegisterUser entity instance. |
| `OutputRemoveRole(data?)` | `OutputRemoveRoleEntity` | Create an OutputRemoveRole entity instance. |
| `OutputResendLink(data?)` | `OutputResendLinkEntity` | Create an OutputResendLink entity instance. |
| `OutputResetPassword(data?)` | `OutputResetPasswordEntity` | Create an OutputResetPassword entity instance. |
| `OutputUpdateConsumer(data?)` | `OutputUpdateConsumerEntity` | Create an OutputUpdateConsumer entity instance. |
| `OutputUpdateProfile(data?)` | `OutputUpdateProfileEntity` | Create an OutputUpdateProfile entity instance. |
| `Version(data?)` | `VersionEntity` | Create a Version entity instance. |
| `tester(testopts?, sdkopts?)` | `BluefinTecsUserBackofficeSDK` | Create a test-mode client instance. |

#### Static methods

| Method | Returns | Description |
| --- | --- | --- |
| `BluefinTecsUserBackofficeSDK.test(testopts?, sdkopts?)` | `BluefinTecsUserBackofficeSDK` | Create a test-mode client. |

### Entity interface

All entities share the same interface.

#### Methods

| Method | Signature | Description |
| --- | --- | --- |
| `load` | `load(reqmatch?, ctrl?): Promise<Entity>` | Load a single entity by match criteria. |
| `create` | `create(reqdata?, ctrl?): Promise<Entity>` | Create a new entity. |
| `data` | `data(data?: Partial<Entity>): Entity` | Get or set entity data. |
| `match` | `match(match?: Partial<Entity>): Partial<Entity>` | Get or set entity match criteria. |
| `make` | `make(): Entity` | Create a new instance with the same options. |
| `client` | `client(): BluefinTecsUserBackofficeSDK` | Return the parent SDK client. |
| `entopts` | `entopts(): object` | Return a copy of the entity options. |

#### Return values

Entity operations resolve to the entity data directly — there is no
result envelope:

- `load` and `create` resolve to a single entity object.

On a failed request these methods **throw**, so wrap calls in
`try`/`catch` to handle errors. Only `direct()` returns the result
envelope described below.

### DirectResult shape

The `direct()` method returns:

```js
{
  ok: true,
  status: 200,
  headers: {},
  data: {}
}
```

On error, `ok` is `false` and an `err` property contains the error.

### FetchDef shape

The `prepare()` method returns:

```js
{
  url: 'string',
  method: 'string',
  headers: {},
  body: undefined
}
```

### Entities

#### OutputActivateDigitalModule

| Field | Description |
| --- | --- |
| `response_code` |  |
| `response_message` |  |

Operations: create.

API path: `/activateDigitalModule`

#### OutputActivatePortalModule

| Field | Description |
| --- | --- |
| `client_secret` |  |
| `notification_email` |  |
| `response_code` |  |
| `response_message` |  |

Operations: create.

API path: `/activateMerchantPortalModule`

#### OutputActivateStoreModule

| Field | Description |
| --- | --- |
| `response_code` |  |
| `response_message` |  |

Operations: create.

API path: `/activateAppStoreModule`

#### OutputActivateUser

| Field | Description |
| --- | --- |
| `consumer_uuid` |  |
| `response_code` |  |
| `response_message` |  |

Operations: create.

API path: `/activateUser`

#### OutputAssignRole

| Field | Description |
| --- | --- |
| `consumer_uuid` |  |
| `response_code` |  |
| `response_message` |  |
| `role` |  |

Operations: create.

API path: `/assignRoles`

#### OutputChangeLogo

| Field | Description |
| --- | --- |
| `content_as_base64` |  |
| `mime_type` |  |
| `response_code` |  |
| `response_message` |  |

Operations: create.

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

Operations: create.

API path: `/createMandator`

#### OutputCreateServiceUser

| Field | Description |
| --- | --- |
| `mandator_name` |  |
| `response_code` |  |
| `response_message` |  |

Operations: create.

API path: `/createServiceUser`

#### OutputDeactivateUser

| Field | Description |
| --- | --- |
| `consumer_uuid` |  |
| `response_code` |  |
| `response_message` |  |

Operations: create.

API path: `/deactivateUser`

#### OutputGetKycDocument

| Field | Description |
| --- | --- |
| `case_id` |  |
| `encoded_data_base64` |  |
| `response_code` |  |
| `response_message` |  |

Operations: create.

API path: `/getKycDocument`

#### OutputGetLogo

| Field | Description |
| --- | --- |
| `content_as_base64` |  |
| `mime_type` |  |
| `response_code` |  |
| `response_message` |  |

Operations: load.

API path: `/getLogo`

#### OutputListOfAvailableRole

| Field | Description |
| --- | --- |
| `available_role` |  |
| `response_code` |  |
| `response_message` |  |

Operations: create.

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

Operations: create.

API path: `/listOfMandators`

#### OutputListOfModule

| Field | Description |
| --- | --- |
| `list` |  |
| `pagination` |  |
| `response_code` |  |
| `response_message` |  |

Operations: create.

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

Operations: create.

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

Operations: create.

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

Operations: create.

API path: `/listOfUsers`

#### OutputProvideCredential

| Field | Description |
| --- | --- |
| `mandator_name` |  |
| `password` |  |
| `response_code` |  |
| `response_message` |  |
| `username` |  |

Operations: create.

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

Operations: create.

API path: `/registerUser`

#### OutputRemoveRole

| Field | Description |
| --- | --- |
| `consumer_uuid` |  |
| `response_code` |  |
| `response_message` |  |
| `role` |  |

Operations: create.

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

Operations: create.

API path: `/resendLink`

#### OutputResetPassword

| Field | Description |
| --- | --- |
| `consumer_uuid` |  |
| `phone_number` |  |
| `response_code` |  |
| `response_message` |  |

Operations: create.

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

Operations: create.

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

Operations: create.

API path: `/updateProfile`

#### Version

| Field | Description |
| --- | --- |
| `app_name` |  |
| `build_date` |  |
| `version` |  |

Operations: load.

API path: `/version`



## Entities


### OutputActivateDigitalModule

Create an instance: `const output_activate_digital_module = client.OutputActivateDigitalModule()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `response_code` | `number` |  |
| `response_message` | `string` |  |

#### Example: Create

```ts
const output_activate_digital_module = await client.OutputActivateDigitalModule().create({
})
```


### OutputActivatePortalModule

Create an instance: `const output_activate_portal_module = client.OutputActivatePortalModule()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `client_secret` | `string` |  |
| `notification_email` | `string` |  |
| `response_code` | `number` |  |
| `response_message` | `string` |  |

#### Example: Create

```ts
const output_activate_portal_module = await client.OutputActivatePortalModule().create({
  client_secret: 'example_client_secret',
  notification_email: 'example_notification_email',
})
```


### OutputActivateStoreModule

Create an instance: `const output_activate_store_module = client.OutputActivateStoreModule()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `response_code` | `number` |  |
| `response_message` | `string` |  |

#### Example: Create

```ts
const output_activate_store_module = await client.OutputActivateStoreModule().create({
})
```


### OutputActivateUser

Create an instance: `const output_activate_user = client.OutputActivateUser()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumer_uuid` | `string` |  |
| `response_code` | `number` |  |
| `response_message` | `string` |  |

#### Example: Create

```ts
const output_activate_user = await client.OutputActivateUser().create({
})
```


### OutputAssignRole

Create an instance: `const output_assign_role = client.OutputAssignRole()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumer_uuid` | `string` |  |
| `response_code` | `number` |  |
| `response_message` | `string` |  |
| `role` | `Array` |  |

#### Example: Create

```ts
const output_assign_role = await client.OutputAssignRole().create({
  consumer_uuid: 'example_consumer_uuid',
  role: [],
})
```


### OutputChangeLogo

Create an instance: `const output_change_logo = client.OutputChangeLogo()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `content_as_base64` | `string` |  |
| `mime_type` | `string` |  |
| `response_code` | `number` |  |
| `response_message` | `string` |  |

#### Example: Create

```ts
const output_change_logo = await client.OutputChangeLogo().create({
  content_as_base64: 'example_content_as_base64',
  mime_type: 'example_mime_type',
})
```


### OutputCreateMandator

Create an instance: `const output_create_mandator = client.OutputCreateMandator()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `city` | `string` |  |
| `country` | `string` |  |
| `date_of_birth` | `string` |  |
| `description` | `string` |  |
| `drivers_license_number` | `string` |  |
| `email` | `string` |  |
| `first_name` | `string` |  |
| `identification_number` | `string` |  |
| `last_name` | `string` |  |
| `login` | `string` |  |
| `mandator` | `Object` |  |
| `name` | `string` |  |
| `passport_number` | `string` |  |
| `phone` | `string` |  |
| `response_code` | `number` |  |
| `response_message` | `string` |  |
| `salutation` | `string` |  |
| `state` | `string` |  |
| `street1` | `string` |  |
| `street2` | `string` |  |
| `zip_code` | `string` |  |

#### Example: Create

```ts
const output_create_mandator = await client.OutputCreateMandator().create({
  description: 'example_description',
  email: 'example_email',
  login: 'example_login',
  name: 'example_name',
  phone: 'example_phone',
})
```


### OutputCreateServiceUser

Create an instance: `const output_create_service_user = client.OutputCreateServiceUser()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `mandator_name` | `string` |  |
| `response_code` | `number` |  |
| `response_message` | `string` |  |

#### Example: Create

```ts
const output_create_service_user = await client.OutputCreateServiceUser().create({
  mandator_name: 'example_mandator_name',
})
```


### OutputDeactivateUser

Create an instance: `const output_deactivate_user = client.OutputDeactivateUser()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumer_uuid` | `string` |  |
| `response_code` | `number` |  |
| `response_message` | `string` |  |

#### Example: Create

```ts
const output_deactivate_user = await client.OutputDeactivateUser().create({
})
```


### OutputGetKycDocument

Create an instance: `const output_get_kyc_document = client.OutputGetKycDocument()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `case_id` | `string` |  |
| `encoded_data_base64` | `string` |  |
| `response_code` | `number` |  |
| `response_message` | `string` |  |

#### Example: Create

```ts
const output_get_kyc_document = await client.OutputGetKycDocument().create({
})
```


### OutputGetLogo

Create an instance: `const output_get_logo = client.OutputGetLogo()`

#### Operations

| Method | Description |
| --- | --- |
| `load(match)` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `content_as_base64` | `string` |  |
| `mime_type` | `string` |  |
| `response_code` | `number` |  |
| `response_message` | `string` |  |

#### Example: Load

```ts
const output_get_logo = await client.OutputGetLogo().load()
```


### OutputListOfAvailableRole

Create an instance: `const output_list_of_available_role = client.OutputListOfAvailableRole()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `available_role` | `Array` |  |
| `response_code` | `number` |  |
| `response_message` | `string` |  |

#### Example: Create

```ts
const output_list_of_available_role = await client.OutputListOfAvailableRole().create({
})
```


### OutputListOfMandator

Create an instance: `const output_list_of_mandator = client.OutputListOfMandator()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `filter` | `Object` |  |
| `list` | `Array` |  |
| `pagination` | `Object` |  |
| `response_code` | `number` |  |
| `response_message` | `string` |  |
| `sorting` | `Object` |  |

#### Example: Create

```ts
const output_list_of_mandator = await client.OutputListOfMandator().create({
})
```


### OutputListOfModule

Create an instance: `const output_list_of_module = client.OutputListOfModule()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `list` | `Array` |  |
| `pagination` | `Object` |  |
| `response_code` | `number` |  |
| `response_message` | `string` |  |

#### Example: Create

```ts
const output_list_of_module = await client.OutputListOfModule().create({
})
```


### OutputListOfRoleGroup

Create an instance: `const output_list_of_role_group = client.OutputListOfRoleGroup()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `filter` | `Object` |  |
| `group_role` | `Array` |  |
| `pagination` | `Object` |  |
| `response_code` | `number` |  |
| `response_message` | `string` |  |
| `sorting` | `Object` |  |

#### Example: Create

```ts
const output_list_of_role_group = await client.OutputListOfRoleGroup().create({
})
```


### OutputListOfTransactionsHistory

Create an instance: `const output_list_of_transactions_history = client.OutputListOfTransactionsHistory()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `filter` | `Object` |  |
| `list` | `Array` |  |
| `pagination` | `Object` |  |
| `response_code` | `number` |  |
| `response_message` | `string` |  |
| `sorting` | `Object` |  |

#### Example: Create

```ts
const output_list_of_transactions_history = await client.OutputListOfTransactionsHistory().create({
})
```


### OutputListOfUser

Create an instance: `const output_list_of_user = client.OutputListOfUser()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `filter` | `Object` |  |
| `list` | `Array` |  |
| `pagination` | `Object` |  |
| `response_code` | `number` |  |
| `response_message` | `string` |  |
| `sorting` | `Object` |  |

#### Example: Create

```ts
const output_list_of_user = await client.OutputListOfUser().create({
})
```


### OutputProvideCredential

Create an instance: `const output_provide_credential = client.OutputProvideCredential()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `mandator_name` | `string` |  |
| `password` | `string` |  |
| `response_code` | `number` |  |
| `response_message` | `string` |  |
| `username` | `string` |  |

#### Example: Create

```ts
const output_provide_credential = await client.OutputProvideCredential().create({
  mandator_name: 'example_mandator_name',
})
```


### OutputRegisterUser

Create an instance: `const output_register_user = client.OutputRegisterUser()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `city` | `string` |  |
| `consumer_id` | `string` |  |
| `consumer_language` | `string` |  |
| `country` | `string` |  |
| `date_of_birth` | `string` |  |
| `driver_licence_number` | `string` |  |
| `email` | `string` |  |
| `first_name` | `string` |  |
| `identification_number` | `string` |  |
| `last_name` | `string` |  |
| `login` | `string` |  |
| `module` | `string` |  |
| `passport_number` | `string` |  |
| `phone` | `string` |  |
| `response_code` | `number` |  |
| `response_message` | `string` |  |
| `salutation` | `string` |  |
| `state` | `string` |  |
| `street1` | `string` |  |
| `street2` | `string` |  |
| `zip` | `string` |  |

#### Example: Create

```ts
const output_register_user = await client.OutputRegisterUser().create({
  email: 'example_email',
})
```


### OutputRemoveRole

Create an instance: `const output_remove_role = client.OutputRemoveRole()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumer_uuid` | `string` |  |
| `response_code` | `number` |  |
| `response_message` | `string` |  |
| `role` | `Array` |  |

#### Example: Create

```ts
const output_remove_role = await client.OutputRemoveRole().create({
})
```


### OutputResendLink

Create an instance: `const output_resend_link = client.OutputResendLink()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `business_registration_number` | `string` |  |
| `consumer_uuid` | `string` |  |
| `email_confirmation_code` | `string` |  |
| `phone_number` | `string` |  |
| `response_code` | `number` |  |
| `response_message` | `string` |  |

#### Example: Create

```ts
const output_resend_link = await client.OutputResendLink().create({
  consumer_uuid: 'example_consumer_uuid',
})
```


### OutputResetPassword

Create an instance: `const output_reset_password = client.OutputResetPassword()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumer_uuid` | `string` |  |
| `phone_number` | `string` |  |
| `response_code` | `number` |  |
| `response_message` | `string` |  |

#### Example: Create

```ts
const output_reset_password = await client.OutputResetPassword().create({
})
```


### OutputUpdateConsumer

Create an instance: `const output_update_consumer = client.OutputUpdateConsumer()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `city` | `string` |  |
| `consumer_uuid` | `string` |  |
| `consumerlanguage` | `string` |  |
| `country` | `string` |  |
| `date_of_birth` | `string` |  |
| `datetime_created` | `string` |  |
| `driver_licence_number` | `string` |  |
| `email` | `string` |  |
| `first_name` | `string` |  |
| `identification_number` | `string` |  |
| `kyc_passed` | `boolean` |  |
| `last_name` | `string` |  |
| `nationality` | `string` |  |
| `passport_number` | `string` |  |
| `phone_number` | `string` |  |
| `place_of_birth` | `string` |  |
| `response_code` | `number` |  |
| `response_message` | `string` |  |
| `state` | `string` |  |
| `street1` | `string` |  |
| `street2` | `string` |  |
| `transactionhistory_id` | `string` |  |
| `zip` | `string` |  |

#### Example: Create

```ts
const output_update_consumer = await client.OutputUpdateConsumer().create({
  consumer_uuid: 'example_consumer_uuid',
})
```


### OutputUpdateProfile

Create an instance: `const output_update_profile = client.OutputUpdateProfile()`

#### Operations

| Method | Description |
| --- | --- |
| `create(data)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumer_language` | `string` |  |
| `email` | `string` |  |
| `first_name` | `string` |  |
| `last_name` | `string` |  |
| `phone_number` | `string` |  |
| `response_code` | `number` |  |
| `response_message` | `string` |  |

#### Example: Create

```ts
const output_update_profile = await client.OutputUpdateProfile().create({
})
```


### Version

Create an instance: `const version = client.Version()`

#### Operations

| Method | Description |
| --- | --- |
| `load(match)` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `app_name` | `string` |  |
| `build_date` | `string` |  |
| `version` | `string` |  |

#### Example: Load

```ts
const version = await client.Version().load()
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

Features are the extension mechanism. A feature is an object with a
`hooks` map. Each hook key is a pipeline stage name, and the value is
a function that receives the context.

The SDK ships with built-in features:

- **TestFeature**: In-memory mock transport for testing without a live server

Features are initialized in order. Hooks fire in the order features
were added, so later features can override earlier ones.

### Module structure

```
bluefin-tecs-user-backoffice/
├── src/
│   ├── BluefinTecsUserBackofficeSDK.js        # Main SDK class
│   ├── entity/             # Entity implementations
│   ├── feature/            # Built-in features (Base, Test, Log)
│   └── utility/            # Utility functions
└── test/                   # Test suites
```

Import the SDK from the package root:

```js
const { BluefinTecsUserBackofficeSDK } = require('@voxgig-sdk/bluefin-tecs-user-backoffice-js')
```

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

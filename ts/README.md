# BluefinTecsUserBackoffice TypeScript SDK



The TypeScript SDK for the BluefinTecsUserBackoffice API — a type-safe, entity-oriented client with full async/await support.

The API is exposed as capitalised, semantic **Entities** — e.g.
`client.OutputActivateDigitalModule()` — each with a small set of operations (`load`, `create`)
instead of raw URL paths and query parameters. This keeps the surface
predictable and low-friction for both humans and AI agents.

> Also generated from this model: `c`, `clojure`, `cpp`, `csharp`, `dart`, `elixir`, `go`, `go-cli`, `go-mcp`, `java`, `js`, `kotlin`, `lua`, `ocaml`, `perl`, `php`, `py`, `rb`, `rust`, `scala`, `swift`, `zig` — see
> the [top-level README](../README.md).


## Install
This package is not yet published to npm. Install it from the GitHub
release tag (`ts/vX.Y.Z`):

- Releases: [https://github.com/voxgig-sdk/bluefin-tecs-user-backoffice-sdk/releases](https://github.com/voxgig-sdk/bluefin-tecs-user-backoffice-sdk/releases)


## Tutorial: your first API call

This tutorial walks through creating a client, listing entities, and
loading a specific record.

### 1. Create a client

```ts
import { BluefinTecsUserBackofficeSDK } from '@voxgig-sdk/bluefin-tecs-user-backoffice'

const client = new BluefinTecsUserBackofficeSDK({
  apikey: process.env.BLUEFIN_TECS_USER_BACKOFFICE_APIKEY,
})
```

### 4. Create, update, and remove

```ts
// Create — returns the created OutputActivateDigitalModule ENTITY (.data() for the record)
const created = await client.OutputActivateDigitalModule().create({
  responseCode: 1,
  responseMessage: 'example_responseMessage',
})

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

```ts
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

```ts
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

```ts
const client = BluefinTecsUserBackofficeSDK.test()

const outputgetlogo = await client.OutputGetLogo().load()
// outputgetlogo is the entity, populated with mock response data
// — call outputgetlogo.data() for the record itself
console.log(outputgetlogo)
```

You can also use the instance method:

```ts
const client = new BluefinTecsUserBackofficeSDK({ apikey: '...' })
const testClient = client.tester()
```

### Retain entity state across calls

Entity instances remember their last match and data:

```ts
const entity = client.OutputGetLogo()

// First call runs the operation and stores its result
await entity.load()

// Subsequent calls reuse the stored state
const data = entity.data()
console.log(data)
```

### Add custom middleware

Pass features via the `extend` option:

```ts
const logger = {
  hooks: {
    PreRequest: (ctx: any) => {
      console.log('Requesting:', ctx.spec.method, ctx.spec.path)
    },
    PreResponse: (ctx: any) => {
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
cd ts && npm test
```


## Reference

### BluefinTecsUserBackofficeSDK

#### Constructor

```ts
new BluefinTecsUserBackofficeSDK(options?: {
  apikey?: string
  base?: string
  prefix?: string
  suffix?: string
  feature?: Record<string, { active: boolean }>
  extend?: Feature[]
})
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

```ts
{
  ok: boolean
  status: number
  headers: object
  data: any
}
```

On error, `ok` is `false` and an `err` property contains the error.

### FetchDef shape

The `prepare()` method returns:

```ts
{
  url: string
  method: string
  headers: Record<string, string>
  body?: any
}
```

### Entities

#### OutputActivateDigitalModule

| Field | Description |
| --- | --- |
| `responseCode` |  |
| `responseMessage` |  |

Operations: create.

API path: `/activateDigitalModule`

#### OutputActivatePortalModule

| Field | Description |
| --- | --- |
| `clientSecret` |  |
| `notificationEmail` |  |
| `responseCode` |  |
| `responseMessage` |  |

Operations: create.

API path: `/activateMerchantPortalModule`

#### OutputActivateStoreModule

| Field | Description |
| --- | --- |
| `responseCode` |  |
| `responseMessage` |  |

Operations: create.

API path: `/activateAppStoreModule`

#### OutputActivateUser

| Field | Description |
| --- | --- |
| `consumerUUID` |  |
| `responseCode` |  |
| `responseMessage` |  |

Operations: create.

API path: `/activateUser`

#### OutputAssignRole

| Field | Description |
| --- | --- |
| `consumerUUID` | Unique identifier of the consumer (user) to whom the role(s) will be assigned. |
| `responseCode` | Response code: 0 indicates success; any non-zero value indicates an error. |
| `responseMessage` | A human-readable message providing additional details about the outcome. |
| `roles` | List of roles to assign to the consumer. |

Operations: create.

API path: `/assignRoles`

#### OutputChangeLogo

| Field | Description |
| --- | --- |
| `contentAsBase64` | The content of the image as base64 encoded string |
| `mimeType` | The MIME type of the image |
| `responseCode` |  |
| `responseMessage` |  |

Operations: create.

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

Operations: create.

API path: `/createMandator`

#### OutputCreateServiceUser

| Field | Description |
| --- | --- |
| `mandatorName` |  |
| `responseCode` |  |
| `responseMessage` |  |

Operations: create.

API path: `/createServiceUser`

#### OutputDeactivateUser

| Field | Description |
| --- | --- |
| `consumerUUID` |  |
| `responseCode` |  |
| `responseMessage` |  |

Operations: create.

API path: `/deactivateUser`

#### OutputGetKycDocument

| Field | Description |
| --- | --- |
| `caseID` |  |
| `encodedDataBase64` |  |
| `responseCode` |  |
| `responseMessage` |  |

Operations: create.

API path: `/getKycDocument`

#### OutputGetLogo

| Field | Description |
| --- | --- |
| `contentAsBase64` | The content of the image as base64 encoded string |
| `mimeType` | The MIME type of the image |
| `responseCode` |  |
| `responseMessage` |  |

Operations: load.

API path: `/getLogo`

#### OutputListOfAvailableRole

| Field | Description |
| --- | --- |
| `availableRoles` |  |
| `responseCode` |  |
| `responseMessage` |  |

Operations: create.

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

Operations: create.

API path: `/listOfMandators`

#### OutputListOfModule

| Field | Description |
| --- | --- |
| `list` |  |
| `pagination` |  |
| `responseCode` |  |
| `responseMessage` |  |

Operations: create.

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

Operations: create.

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

Operations: create.

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

Operations: create.

API path: `/listOfUsers`

#### OutputProvideCredential

| Field | Description |
| --- | --- |
| `mandatorName` |  |
| `password` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `username` |  |

Operations: create.

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

Operations: create.

API path: `/registerUser`

#### OutputRemoveRole

| Field | Description |
| --- | --- |
| `consumerUUID` |  |
| `responseCode` |  |
| `responseMessage` |  |
| `roles` |  |

Operations: create.

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

Operations: create.

API path: `/resendLink`

#### OutputResetPassword

| Field | Description |
| --- | --- |
| `consumerUuid` |  |
| `phoneNumber` |  |
| `responseCode` |  |
| `responseMessage` |  |

Operations: create.

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

Operations: create.

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

Operations: create.

API path: `/updateProfile`

#### Version

| Field | Description |
| --- | --- |
| `appName` |  |
| `buildDate` |  |
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
| `responseCode` | `number` |  |
| `responseMessage` | `string` |  |

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
| `clientSecret` | `string` |  |
| `notificationEmail` | `string` |  |
| `responseCode` | `number` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```ts
const output_activate_portal_module = await client.OutputActivatePortalModule().create({
  clientSecret: 'example_clientSecret',
  notificationEmail: 'example_notificationEmail',
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
| `responseCode` | `number` |  |
| `responseMessage` | `string` |  |

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
| `consumerUUID` | `string` |  |
| `responseCode` | `number` |  |
| `responseMessage` | `string` |  |

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
| `consumerUUID` | `string` | Unique identifier of the consumer (user) to whom the role(s) will be assigned. |
| `responseCode` | `number` | Response code: 0 indicates success; any non-zero value indicates an error. |
| `responseMessage` | `string` | A human-readable message providing additional details about the outcome. |
| `roles` | `any[]` | List of roles to assign to the consumer. |

#### Example: Create

```ts
const output_assign_role = await client.OutputAssignRole().create({
  consumerUUID: 'example_consumerUUID',
  roles: [],
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
| `contentAsBase64` | `string` | The content of the image as base64 encoded string |
| `mimeType` | `string` | The MIME type of the image |
| `responseCode` | `number` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```ts
const output_change_logo = await client.OutputChangeLogo().create({
  contentAsBase64: 'example_contentAsBase64',
  mimeType: 'example_mimeType',
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
| `dateOfBirth` | `string` |  |
| `description` | `string` |  |
| `driversLicenseNumber` | `string` |  |
| `email` | `string` |  |
| `firstName` | `string` |  |
| `identificationNumber` | `string` |  |
| `lastName` | `string` |  |
| `login` | `string` |  |
| `name` | `string` |  |
| `passportNumber` | `string` |  |
| `phone` | `string` |  |
| `salutation` | `string` |  |
| `state` | `string` |  |
| `street1` | `string` |  |
| `street2` | `string` |  |
| `zipCode` | `string` |  |

#### Example: Create

```ts
const output_create_mandator = await client.OutputCreateMandator().create({
  email: 'example_email',
  login: 'example_login',
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
| `mandatorName` | `string` |  |
| `responseCode` | `number` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```ts
const output_create_service_user = await client.OutputCreateServiceUser().create({
  mandatorName: 'example_mandatorName',
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
| `consumerUUID` | `string` |  |
| `responseCode` | `number` |  |
| `responseMessage` | `string` |  |

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
| `caseID` | `string` |  |
| `encodedDataBase64` | `string` |  |
| `responseCode` | `number` |  |
| `responseMessage` | `string` |  |

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
| `contentAsBase64` | `string` | The content of the image as base64 encoded string |
| `mimeType` | `string` | The MIME type of the image |
| `responseCode` | `number` |  |
| `responseMessage` | `string` |  |

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
| `availableRoles` | `any[]` |  |
| `responseCode` | `number` |  |
| `responseMessage` | `string` |  |

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
| `filter` | `Record<string, any>` |  |
| `list` | `any[]` |  |
| `pagination` | `Record<string, any>` |  |
| `responseCode` | `number` |  |
| `responseMessage` | `string` |  |
| `sorting` | `Record<string, any>` |  |

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
| `list` | `any[]` |  |
| `pagination` | `Record<string, any>` |  |
| `responseCode` | `number` |  |
| `responseMessage` | `string` |  |

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
| `filter` | `Record<string, any>` |  |
| `groupRoles` | `any[]` |  |
| `pagination` | `Record<string, any>` |  |
| `responseCode` | `number` |  |
| `responseMessage` | `string` |  |
| `sorting` | `Record<string, any>` |  |

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
| `filter` | `Record<string, any>` |  |
| `list` | `any[]` |  |
| `pagination` | `Record<string, any>` |  |
| `responseCode` | `number` |  |
| `responseMessage` | `string` |  |
| `sorting` | `Record<string, any>` |  |

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
| `filter` | `Record<string, any>` |  |
| `list` | `any[]` |  |
| `pagination` | `Record<string, any>` |  |
| `responseCode` | `number` |  |
| `responseMessage` | `string` |  |
| `sorting` | `Record<string, any>` |  |

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
| `mandatorName` | `string` |  |
| `password` | `string` |  |
| `responseCode` | `number` |  |
| `responseMessage` | `string` |  |
| `username` | `string` |  |

#### Example: Create

```ts
const output_provide_credential = await client.OutputProvideCredential().create({
  mandatorName: 'example_mandatorName',
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
| `city` | `string` | City where the user resides. |
| `consumerId` | `string` | User login or unique user identifier. |
| `consumerLanguage` | `string` | Preferred language for the user (e.g., 'en'). |
| `country` | `string` | User's country. |
| `dateOfBirth` | `string` | User's date of birth (expected format: dd.MM.yyyy). |
| `driverLicenceNumber` | `string` | User's driver's license number. |
| `email` | `string` | User's email address (must be unique). |
| `firstName` | `string` | User's first name. |
| `identificationNumber` | `string` | User's identification number. |
| `lastName` | `string` | User's last name. |
| `login` | `string` | User login identifier (should be unique). |
| `module` | `string` | Module identifier (if applicable). |
| `passportNumber` | `string` | User's passport number. |
| `phone` | `string` | User's phone number. |
| `responseCode` | `number` | Response code (0 indicates success; non-zero indicates an error). |
| `responseMessage` | `string` | Human-readable response message. |
| `salutation` | `string` | User's salutation (e.g., Mr., Ms.). |
| `state` | `string` | User's state or region. |
| `street1` | `string` | Primary address line. |
| `street2` | `string` | Secondary address line. |
| `zip` | `string` | Postal code. |

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
| `consumerUUID` | `string` |  |
| `responseCode` | `number` |  |
| `responseMessage` | `string` |  |
| `roles` | `any[]` |  |

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
| `businessRegistrationNumber` | `string` |  |
| `consumerUUID` | `string` |  |
| `emailConfirmationCode` | `string` |  |
| `phoneNumber` | `string` |  |
| `responseCode` | `number` |  |
| `responseMessage` | `string` |  |

#### Example: Create

```ts
const output_resend_link = await client.OutputResendLink().create({
  consumerUUID: 'example_consumerUUID',
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
| `consumerUuid` | `string` |  |
| `phoneNumber` | `string` |  |
| `responseCode` | `number` |  |
| `responseMessage` | `string` |  |

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
| `consumerUuid` | `string` |  |
| `consumerlanguage` | `string` |  |
| `country` | `string` |  |
| `dateOfBirth` | `string` |  |
| `datetime_created` | `string` |  |
| `driverLicenceNumber` | `string` |  |
| `email` | `string` |  |
| `firstName` | `string` |  |
| `identificationNumber` | `string` |  |
| `kycPassed` | `boolean` |  |
| `lastName` | `string` |  |
| `nationality` | `string` |  |
| `passportNumber` | `string` |  |
| `phoneNumber` | `string` |  |
| `placeOfBirth` | `string` |  |
| `responseCode` | `number` |  |
| `responseMessage` | `string` |  |
| `state` | `string` |  |
| `street1` | `string` |  |
| `street2` | `string` |  |
| `transactionhistory_id` | `string` |  |
| `zip` | `string` |  |

#### Example: Create

```ts
const output_update_consumer = await client.OutputUpdateConsumer().create({
  consumerUuid: 'example_consumerUuid',
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
| `consumerLanguage` | `string` |  |
| `email` | `string` |  |
| `firstName` | `string` |  |
| `lastName` | `string` |  |
| `phoneNumber` | `string` |  |
| `responseCode` | `number` |  |
| `responseMessage` | `string` |  |

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
| `appName` | `string` |  |
| `buildDate` | `string` |  |
| `version` | `string` |  |

#### Example: Load

```ts
const version = await client.Version().load()
```

## Features

This SDK ships 11 optional features. Each is **inactive until you
switch it on**, so an SDK you have not configured behaves exactly as if none of
them existed — no retries, no cache, no logging, no measurable overhead.

Activate a feature by name in the client options, alongside the options shown
above:

| Feature | What it does |
|---|---|
| [`audit`](#audit) | Structured audit trail of operations |
| [`clienttrack`](#clienttrack) | Client identity and per-request correlation headers |
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

### Module structure

```
bluefin-tecs-user-backoffice/
├── src/
│   ├── BluefinTecsUserBackofficeSDK.ts        # Main SDK class
│   ├── entity/             # Entity implementations
│   ├── feature/            # Built-in features (Base, Test, Log)
│   └── utility/            # Utility functions
├── test/                   # Test suites
└── dist/                   # Compiled output
```

Import the SDK from the package root:

```ts
import { BluefinTecsUserBackofficeSDK } from '@voxgig-sdk/bluefin-tecs-user-backoffice'
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

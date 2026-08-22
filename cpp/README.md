# BluefinTecsUserBackoffice C++ SDK



The C++ SDK for the BluefinTecsUserBackoffice API — a header-only,
entity-oriented client following idiomatic modern C++ (C++17) conventions.

The SDK exposes the API as capitalised, semantic **Entities** — for example `client->output_activate_digital_module()` — each
carrying a small, uniform set of operations (`load`, `create`) instead of raw URL
paths and query strings. You work with named resources and verbs, which
keeps the cognitive load low. Every value flows through a single dynamic
`sdk::Value` type (a JSON-like variant), so there is no schema-driven code to
regenerate when the API changes.

> Other languages, the CLI, and MCP server live alongside this one — see
> the [top-level README](../README.md).


## Install
The C++ SDK is **header-only** — there is no package to install
from a registry. Vendor the `cpp/` directory into your project (or add the
repository as a git submodule) and put it on your compiler's include path.
Releases are cut as the git tag `cpp/vX.Y.Z` (see
[Releases](https://github.com/voxgig-sdk/bluefin-tecs-user-backoffice-sdk/releases)).

```bash
# Add the SDK as a submodule (or copy the cpp/ directory into your tree).
git submodule add <repo-url> third_party/bluefintecsuserbackoffice-sdk
```

Then include the umbrella header and compile with C++17:

```cpp
#include "core/sdk.hpp"
```

```bash
g++ -std=c++17 -Ithird_party/bluefintecsuserbackoffice-sdk/cpp your_app.cpp -o your_app
```


## Tutorial: your first API call

This tutorial walks through creating a client, listing entities, and
loading a specific record.

### 1. Create a client

```cpp
#include <cstdlib>
#include "core/sdk.hpp"

using namespace sdk;

const char* apikey = std::getenv("BLUEFIN_TECS_USER_BACKOFFICE_APIKEY");
auto client = std::make_shared<BluefinTecsUserBackofficeSDK>(vmap({
    {"apikey", Value(apikey ? apikey : "")},
}));
```

### 4. Create, update, and remove

```cpp
// Create — returns the bare created record.
Value created = client->output_activate_digital_module()->create(vmap({{"responseCode", Value(1)}, {"responseMessage", Value("example_responseMessage")}}), Value::undef());

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

```cpp
Value result = client->direct(vmap({
    {"path", Value("/api/resource/{id}")},
    {"method", Value("GET")},
    {"params", vmap({{"id", Value("example")}})},
}));

if (getp(result, "ok") == Value(true)) {
  std::cout << Helpers::toInt(getp(result, "status")) << std::endl;  // 200
  std::cout << Struct::jsonify(getp(result, "data")) << std::endl;   // response body
} else {
  // A non-2xx response carries status + data (the error body); a
  // transport-level failure carries err instead. Only one is present.
  std::cerr << Helpers::toInt(getp(result, "status")) << " "
            << Struct::jsonify(getp(result, "err")) << std::endl;
}
```

`direct()` is the escape hatch: it never throws — branch on
`getp(result, "ok")`.

### Prepare a request without sending it

```cpp
// prepare() returns the fetch definition and throws on error.
Value fetchdef = client->prepare(vmap({
    {"path", Value("/api/resource/{id}")},
    {"method", Value("DELETE")},
    {"params", vmap({{"id", Value("example")}})},
}));

std::cout << Struct::stringify(getp(fetchdef, "url")) << std::endl;
std::cout << Struct::stringify(getp(fetchdef, "method")) << std::endl;
std::cout << Struct::jsonify(getp(fetchdef, "headers")) << std::endl;
```

### Use test mode

Create a mock client for unit testing — no server required. The test
feature installs an in-memory mock transport:

```cpp
auto client = BluefinTecsUserBackofficeSDK::testSDK();

// Entity ops return the bare record and throw on error.
Value output_get_logo = client->output_get_logo()->load(Value::undef(), Value::undef());
// output_get_logo contains the mock response record
std::cout << Struct::jsonify(output_get_logo) << std::endl;
```

You can seed the mock store by passing test options — see the generated
`test/` suite for worked examples.

### Run live tests

Create a `.env.local` file at the project root:

```
BLUEFIN_TECS_USER_BACKOFFICE_TEST_LIVE=TRUE
BLUEFIN_TECS_USER_BACKOFFICE_APIKEY=<your-key>
```

Then build and run the test suite:

```bash
cd cpp && make test
```


## Reference

### BluefinTecsUserBackofficeSDK

```cpp
#include "core/sdk.hpp"

using namespace sdk;

auto client = std::make_shared<BluefinTecsUserBackofficeSDK>(options);
```

Creates a new SDK client. `options` is an `sdk::Value` map.

| Option | Type | Description |
| --- | --- | --- |
| `apikey` | `std::string` | API key for authentication. |
| `base` | `std::string` | Base URL of the API server. |
| `prefix` | `std::string` | URL path prefix prepended to all requests. |
| `suffix` | `std::string` | URL path suffix appended to all requests. |
| `feature` | `Value` | Feature activation flags. |
| `system` | `Value` | System overrides. |

### testSDK

```cpp
auto client = BluefinTecsUserBackofficeSDK::testSDK(testopts, sdkopts);
```

Creates a test-mode client with mock transport. Both arguments may be
`Value::undef()`; a no-arg `BluefinTecsUserBackofficeSDK::testSDK()` overload is
also provided.

### BluefinTecsUserBackofficeSDK methods

| Method | Signature | Description |
| --- | --- | --- |
| `optionsMap` | `() -> Value` | Deep copy of current SDK options. |
| `getUtility` | `() -> UtilityPtr` | Copy of the SDK utility object. |
| `prepare` | `(fetchargs) -> Value` | Build an HTTP request definition without sending. Throws on error. |
| `direct` | `(fetchargs) -> Value` | Build and send an HTTP request. Returns a result Value (branch on `ok`). |
| `output_activate_digital_module` | `(entopts) -> std::shared_ptr<OutputActivateDigitalModuleEntity>` | Create an OutputActivateDigitalModule entity instance. |
| `output_activate_portal_module` | `(entopts) -> std::shared_ptr<OutputActivatePortalModuleEntity>` | Create an OutputActivatePortalModule entity instance. |
| `output_activate_store_module` | `(entopts) -> std::shared_ptr<OutputActivateStoreModuleEntity>` | Create an OutputActivateStoreModule entity instance. |
| `output_activate_user` | `(entopts) -> std::shared_ptr<OutputActivateUserEntity>` | Create an OutputActivateUser entity instance. |
| `output_assign_role` | `(entopts) -> std::shared_ptr<OutputAssignRoleEntity>` | Create an OutputAssignRole entity instance. |
| `output_change_logo` | `(entopts) -> std::shared_ptr<OutputChangeLogoEntity>` | Create an OutputChangeLogo entity instance. |
| `output_create_mandator` | `(entopts) -> std::shared_ptr<OutputCreateMandatorEntity>` | Create an OutputCreateMandator entity instance. |
| `output_create_service_user` | `(entopts) -> std::shared_ptr<OutputCreateServiceUserEntity>` | Create an OutputCreateServiceUser entity instance. |
| `output_deactivate_user` | `(entopts) -> std::shared_ptr<OutputDeactivateUserEntity>` | Create an OutputDeactivateUser entity instance. |
| `output_get_kyc_document` | `(entopts) -> std::shared_ptr<OutputGetKycDocumentEntity>` | Create an OutputGetKycDocument entity instance. |
| `output_get_logo` | `(entopts) -> std::shared_ptr<OutputGetLogoEntity>` | Create an OutputGetLogo entity instance. |
| `output_list_of_available_role` | `(entopts) -> std::shared_ptr<OutputListOfAvailableRoleEntity>` | Create an OutputListOfAvailableRole entity instance. |
| `output_list_of_mandator` | `(entopts) -> std::shared_ptr<OutputListOfMandatorEntity>` | Create an OutputListOfMandator entity instance. |
| `output_list_of_module` | `(entopts) -> std::shared_ptr<OutputListOfModuleEntity>` | Create an OutputListOfModule entity instance. |
| `output_list_of_role_group` | `(entopts) -> std::shared_ptr<OutputListOfRoleGroupEntity>` | Create an OutputListOfRoleGroup entity instance. |
| `output_list_of_transactions_history` | `(entopts) -> std::shared_ptr<OutputListOfTransactionsHistoryEntity>` | Create an OutputListOfTransactionsHistory entity instance. |
| `output_list_of_user` | `(entopts) -> std::shared_ptr<OutputListOfUserEntity>` | Create an OutputListOfUser entity instance. |
| `output_provide_credential` | `(entopts) -> std::shared_ptr<OutputProvideCredentialEntity>` | Create an OutputProvideCredential entity instance. |
| `output_register_user` | `(entopts) -> std::shared_ptr<OutputRegisterUserEntity>` | Create an OutputRegisterUser entity instance. |
| `output_remove_role` | `(entopts) -> std::shared_ptr<OutputRemoveRoleEntity>` | Create an OutputRemoveRole entity instance. |
| `output_resend_link` | `(entopts) -> std::shared_ptr<OutputResendLinkEntity>` | Create an OutputResendLink entity instance. |
| `output_reset_password` | `(entopts) -> std::shared_ptr<OutputResetPasswordEntity>` | Create an OutputResetPassword entity instance. |
| `output_update_consumer` | `(entopts) -> std::shared_ptr<OutputUpdateConsumerEntity>` | Create an OutputUpdateConsumer entity instance. |
| `output_update_profile` | `(entopts) -> std::shared_ptr<OutputUpdateProfileEntity>` | Create an OutputUpdateProfile entity instance. |
| `version` | `(entopts) -> std::shared_ptr<VersionEntity>` | Create a Version entity instance. |

### Entity interface

All entities share the same interface.

| Method | Signature | Description |
| --- | --- | --- |
| `load` | `(reqmatch, ctrl) -> Value` | Load a single entity by match criteria. Throws on error. |
| `create` | `(reqdata, ctrl) -> Value` | Create a new entity. Throws on error. |
| `data` | `(arg) -> Value` | Get (no arg) or set (with arg) entity data. |
| `match` | `(arg) -> Value` | Get (no arg) or set (with arg) entity match criteria. |
| `make` | `() -> EntityPtr` | Create a new instance with the same options. |
| `getName` | `() -> std::string` | Return the entity name. |

### Result shape

Entity operations return the bare result data (a map `Value` for
single-entity ops, a list `Value` for `list`) and throw
`sdk::SdkErrorPtr` on error. Wrap calls in `try`/`catch` to handle
failures.

The `direct()` escape hatch never throws — it returns a result `Value`
you branch on via `getp(result, "ok")`:

| Key | Type | Description |
| --- | --- | --- |
| `ok` | `bool` | `true` if the HTTP status is 2xx. |
| `status` | `int` | HTTP status code. |
| `headers` | `Value` | Response headers. |
| `data` | `Value` | Parsed JSON response body. |

On error, `ok` is `false` and `err` contains the error value.

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

Create an instance: `auto output_activate_digital_module = client->output_activate_digital_module();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `std::string` |  |

#### Example: Create

```cpp
Value output_activate_digital_module = client->output_activate_digital_module()->create(vmap({
}), Value::undef());
```


### OutputActivatePortalModule

Create an instance: `auto output_activate_portal_module = client->output_activate_portal_module();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `clientSecret` | `std::string` |  |
| `notificationEmail` | `std::string` |  |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `std::string` |  |

#### Example: Create

```cpp
Value output_activate_portal_module = client->output_activate_portal_module()->create(vmap({
    {"clientSecret", Value("example_clientSecret")},  // std::string
    {"notificationEmail", Value("example_notificationEmail")},  // std::string
}), Value::undef());
```


### OutputActivateStoreModule

Create an instance: `auto output_activate_store_module = client->output_activate_store_module();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `std::string` |  |

#### Example: Create

```cpp
Value output_activate_store_module = client->output_activate_store_module()->create(vmap({
}), Value::undef());
```


### OutputActivateUser

Create an instance: `auto output_activate_user = client->output_activate_user();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumerUUID` | `std::string` |  |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `std::string` |  |

#### Example: Create

```cpp
Value output_activate_user = client->output_activate_user()->create(vmap({
}), Value::undef());
```


### OutputAssignRole

Create an instance: `auto output_assign_role = client->output_assign_role();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumerUUID` | `std::string` | Unique identifier of the consumer (user) to whom the role(s) will be assigned. |
| `responseCode` | `int64_t` | Response code: 0 indicates success; any non-zero value indicates an error. |
| `responseMessage` | `std::string` | A human-readable message providing additional details about the outcome. |
| `roles` | `std::vector<Value>` | List of roles to assign to the consumer. |

#### Example: Create

```cpp
Value output_assign_role = client->output_assign_role()->create(vmap({
    {"consumerUUID", Value("example_consumerUUID")},  // std::string
    {"roles", vlist()},  // std::vector<Value>
}), Value::undef());
```


### OutputChangeLogo

Create an instance: `auto output_change_logo = client->output_change_logo();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `contentAsBase64` | `std::string` | The content of the image as base64 encoded string |
| `mimeType` | `std::string` | The MIME type of the image |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `std::string` |  |

#### Example: Create

```cpp
Value output_change_logo = client->output_change_logo()->create(vmap({
    {"contentAsBase64", Value("example_contentAsBase64")},  // std::string
    {"mimeType", Value("example_mimeType")},  // std::string
}), Value::undef());
```


### OutputCreateMandator

Create an instance: `auto output_create_mandator = client->output_create_mandator();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `city` | `std::string` |  |
| `country` | `std::string` |  |
| `dateOfBirth` | `std::string` |  |
| `description` | `std::string` |  |
| `driversLicenseNumber` | `std::string` |  |
| `email` | `std::string` |  |
| `firstName` | `std::string` |  |
| `identificationNumber` | `std::string` |  |
| `lastName` | `std::string` |  |
| `login` | `std::string` |  |
| `name` | `std::string` |  |
| `passportNumber` | `std::string` |  |
| `phone` | `std::string` |  |
| `salutation` | `std::string` |  |
| `state` | `std::string` |  |
| `street1` | `std::string` |  |
| `street2` | `std::string` |  |
| `zipCode` | `std::string` |  |

#### Example: Create

```cpp
Value output_create_mandator = client->output_create_mandator()->create(vmap({
    {"email", Value("example_email")},  // std::string
    {"login", Value("example_login")},  // std::string
    {"phone", Value("example_phone")},  // std::string
}), Value::undef());
```


### OutputCreateServiceUser

Create an instance: `auto output_create_service_user = client->output_create_service_user();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `mandatorName` | `std::string` |  |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `std::string` |  |

#### Example: Create

```cpp
Value output_create_service_user = client->output_create_service_user()->create(vmap({
    {"mandatorName", Value("example_mandatorName")},  // std::string
}), Value::undef());
```


### OutputDeactivateUser

Create an instance: `auto output_deactivate_user = client->output_deactivate_user();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumerUUID` | `std::string` |  |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `std::string` |  |

#### Example: Create

```cpp
Value output_deactivate_user = client->output_deactivate_user()->create(vmap({
}), Value::undef());
```


### OutputGetKycDocument

Create an instance: `auto output_get_kyc_document = client->output_get_kyc_document();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `caseID` | `std::string` |  |
| `encodedDataBase64` | `std::string` |  |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `std::string` |  |

#### Example: Create

```cpp
Value output_get_kyc_document = client->output_get_kyc_document()->create(vmap({
}), Value::undef());
```


### OutputGetLogo

Create an instance: `auto output_get_logo = client->output_get_logo();`

#### Operations

| Method | Description |
| --- | --- |
| `load(match, ctrl)` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `contentAsBase64` | `std::string` | The content of the image as base64 encoded string |
| `mimeType` | `std::string` | The MIME type of the image |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `std::string` |  |

#### Example: Load

```cpp
Value output_get_logo = client->output_get_logo()->load(Value::undef(), Value::undef());
```


### OutputListOfAvailableRole

Create an instance: `auto output_list_of_available_role = client->output_list_of_available_role();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `availableRoles` | `std::vector<Value>` |  |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `std::string` |  |

#### Example: Create

```cpp
Value output_list_of_available_role = client->output_list_of_available_role()->create(vmap({
}), Value::undef());
```


### OutputListOfMandator

Create an instance: `auto output_list_of_mandator = client->output_list_of_mandator();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `filter` | `std::map<std::string, Value>` |  |
| `list` | `std::vector<Value>` |  |
| `pagination` | `std::map<std::string, Value>` |  |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `std::string` |  |
| `sorting` | `std::map<std::string, Value>` |  |

#### Example: Create

```cpp
Value output_list_of_mandator = client->output_list_of_mandator()->create(vmap({
}), Value::undef());
```


### OutputListOfModule

Create an instance: `auto output_list_of_module = client->output_list_of_module();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `list` | `std::vector<Value>` |  |
| `pagination` | `std::map<std::string, Value>` |  |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `std::string` |  |

#### Example: Create

```cpp
Value output_list_of_module = client->output_list_of_module()->create(vmap({
}), Value::undef());
```


### OutputListOfRoleGroup

Create an instance: `auto output_list_of_role_group = client->output_list_of_role_group();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `filter` | `std::map<std::string, Value>` |  |
| `groupRoles` | `std::vector<Value>` |  |
| `pagination` | `std::map<std::string, Value>` |  |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `std::string` |  |
| `sorting` | `std::map<std::string, Value>` |  |

#### Example: Create

```cpp
Value output_list_of_role_group = client->output_list_of_role_group()->create(vmap({
}), Value::undef());
```


### OutputListOfTransactionsHistory

Create an instance: `auto output_list_of_transactions_history = client->output_list_of_transactions_history();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `filter` | `std::map<std::string, Value>` |  |
| `list` | `std::vector<Value>` |  |
| `pagination` | `std::map<std::string, Value>` |  |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `std::string` |  |
| `sorting` | `std::map<std::string, Value>` |  |

#### Example: Create

```cpp
Value output_list_of_transactions_history = client->output_list_of_transactions_history()->create(vmap({
}), Value::undef());
```


### OutputListOfUser

Create an instance: `auto output_list_of_user = client->output_list_of_user();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `filter` | `std::map<std::string, Value>` |  |
| `list` | `std::vector<Value>` |  |
| `pagination` | `std::map<std::string, Value>` |  |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `std::string` |  |
| `sorting` | `std::map<std::string, Value>` |  |

#### Example: Create

```cpp
Value output_list_of_user = client->output_list_of_user()->create(vmap({
}), Value::undef());
```


### OutputProvideCredential

Create an instance: `auto output_provide_credential = client->output_provide_credential();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `mandatorName` | `std::string` |  |
| `password` | `std::string` |  |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `std::string` |  |
| `username` | `std::string` |  |

#### Example: Create

```cpp
Value output_provide_credential = client->output_provide_credential()->create(vmap({
    {"mandatorName", Value("example_mandatorName")},  // std::string
}), Value::undef());
```


### OutputRegisterUser

Create an instance: `auto output_register_user = client->output_register_user();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `city` | `std::string` | City where the user resides. |
| `consumerId` | `std::string` | User login or unique user identifier. |
| `consumerLanguage` | `std::string` | Preferred language for the user (e.g., 'en'). |
| `country` | `std::string` | User's country. |
| `dateOfBirth` | `std::string` | User's date of birth (expected format: dd.MM.yyyy). |
| `driverLicenceNumber` | `std::string` | User's driver's license number. |
| `email` | `std::string` | User's email address (must be unique). |
| `firstName` | `std::string` | User's first name. |
| `identificationNumber` | `std::string` | User's identification number. |
| `lastName` | `std::string` | User's last name. |
| `login` | `std::string` | User login identifier (should be unique). |
| `module` | `std::string` | Module identifier (if applicable). |
| `passportNumber` | `std::string` | User's passport number. |
| `phone` | `std::string` | User's phone number. |
| `responseCode` | `int64_t` | Response code (0 indicates success; non-zero indicates an error). |
| `responseMessage` | `std::string` | Human-readable response message. |
| `salutation` | `std::string` | User's salutation (e.g., Mr., Ms.). |
| `state` | `std::string` | User's state or region. |
| `street1` | `std::string` | Primary address line. |
| `street2` | `std::string` | Secondary address line. |
| `zip` | `std::string` | Postal code. |

#### Example: Create

```cpp
Value output_register_user = client->output_register_user()->create(vmap({
    {"email", Value("example_email")},  // std::string
}), Value::undef());
```


### OutputRemoveRole

Create an instance: `auto output_remove_role = client->output_remove_role();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumerUUID` | `std::string` |  |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `std::string` |  |
| `roles` | `std::vector<Value>` |  |

#### Example: Create

```cpp
Value output_remove_role = client->output_remove_role()->create(vmap({
}), Value::undef());
```


### OutputResendLink

Create an instance: `auto output_resend_link = client->output_resend_link();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `businessRegistrationNumber` | `std::string` |  |
| `consumerUUID` | `std::string` |  |
| `emailConfirmationCode` | `std::string` |  |
| `phoneNumber` | `std::string` |  |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `std::string` |  |

#### Example: Create

```cpp
Value output_resend_link = client->output_resend_link()->create(vmap({
    {"consumerUUID", Value("example_consumerUUID")},  // std::string
}), Value::undef());
```


### OutputResetPassword

Create an instance: `auto output_reset_password = client->output_reset_password();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumerUuid` | `std::string` |  |
| `phoneNumber` | `std::string` |  |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `std::string` |  |

#### Example: Create

```cpp
Value output_reset_password = client->output_reset_password()->create(vmap({
}), Value::undef());
```


### OutputUpdateConsumer

Create an instance: `auto output_update_consumer = client->output_update_consumer();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `city` | `std::string` |  |
| `consumerUuid` | `std::string` |  |
| `consumerlanguage` | `std::string` |  |
| `country` | `std::string` |  |
| `dateOfBirth` | `std::string` |  |
| `datetime_created` | `std::string` |  |
| `driverLicenceNumber` | `std::string` |  |
| `email` | `std::string` |  |
| `firstName` | `std::string` |  |
| `identificationNumber` | `std::string` |  |
| `kycPassed` | `bool` |  |
| `lastName` | `std::string` |  |
| `nationality` | `std::string` |  |
| `passportNumber` | `std::string` |  |
| `phoneNumber` | `std::string` |  |
| `placeOfBirth` | `std::string` |  |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `std::string` |  |
| `state` | `std::string` |  |
| `street1` | `std::string` |  |
| `street2` | `std::string` |  |
| `transactionhistory_id` | `std::string` |  |
| `zip` | `std::string` |  |

#### Example: Create

```cpp
Value output_update_consumer = client->output_update_consumer()->create(vmap({
    {"consumerUuid", Value("example_consumerUuid")},  // std::string
}), Value::undef());
```


### OutputUpdateProfile

Create an instance: `auto output_update_profile = client->output_update_profile();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `consumerLanguage` | `std::string` |  |
| `email` | `std::string` |  |
| `firstName` | `std::string` |  |
| `lastName` | `std::string` |  |
| `phoneNumber` | `std::string` |  |
| `responseCode` | `int64_t` |  |
| `responseMessage` | `std::string` |  |

#### Example: Create

```cpp
Value output_update_profile = client->output_update_profile()->create(vmap({
}), Value::undef());
```


### Version

Create an instance: `auto version = client->version();`

#### Operations

| Method | Description |
| --- | --- |
| `load(match, ctrl)` | Load a single entity by match criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `appName` | `std::string` |  |
| `buildDate` | `std::string` |  |
| `version` | `std::string` |  |

#### Example: Load

```cpp
Value version = client->version()->load(Value::undef(), Value::undef());
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

### Data as `Value`

The C++ SDK uses a single dynamic `sdk::Value` type (a JSON-like variant
over string / number / bool / list / map) throughout rather than generated
typed structs. This mirrors the dynamic nature of the API and keeps the
SDK flexible — no code generation is needed when the API schema changes.

Build maps with `sdk::vmap({{"key", sdk::Value("v")}})` and lists with
`sdk::vlist({...})`; read fields back with `sdk::getp(value, "key")`. Use
`sdk::to_map()` to safely coerce a value that should be a map, and
`sdk::Struct::jsonify(value)` to render it as JSON.

### Directory structure

```
cpp/
├── core/                        -- Runtime type graph, config, generated client
├── entity/                      -- Per-entity client headers
├── feature/                     -- Built-in features (Base, Test, Log, ...)
├── utility/                     -- Operation pipeline + vendored struct library
├── test/                        -- Test suites
├── Makefile                     -- Build & run the tests (C++17)
└── VERSION                      -- SDK version
```

Include the umbrella header `core/sdk.hpp` to pull in the whole SDK: the
runtime types, the pipeline utilities, the vendored struct, the generated
config, the per-entity clients and the generated `BluefinTecsUserBackofficeSDK`
client class. Everything lives in the `sdk` namespace.

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

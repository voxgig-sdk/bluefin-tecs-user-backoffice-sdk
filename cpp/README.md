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
Value created = client->output_activate_digital_module()->create(vmap({{"response_code", Value(1)}, {"response_message", Value("example_response_message")}}), Value::undef());

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

Create an instance: `auto output_activate_digital_module = client->output_activate_digital_module();`

#### Operations

| Method | Description |
| --- | --- |
| `create(data, ctrl)` | Create a new entity with the given data. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `response_code` | `int64_t` |  |
| `response_message` | `std::string` |  |

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
| `client_secret` | `std::string` |  |
| `notification_email` | `std::string` |  |
| `response_code` | `int64_t` |  |
| `response_message` | `std::string` |  |

#### Example: Create

```cpp
Value output_activate_portal_module = client->output_activate_portal_module()->create(vmap({
    {"client_secret", Value("example_client_secret")},  // std::string
    {"notification_email", Value("example_notification_email")},  // std::string
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
| `response_code` | `int64_t` |  |
| `response_message` | `std::string` |  |

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
| `consumer_uuid` | `std::string` |  |
| `response_code` | `int64_t` |  |
| `response_message` | `std::string` |  |

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
| `consumer_uuid` | `std::string` |  |
| `response_code` | `int64_t` |  |
| `response_message` | `std::string` |  |
| `role` | `std::vector<Value>` |  |

#### Example: Create

```cpp
Value output_assign_role = client->output_assign_role()->create(vmap({
    {"consumer_uuid", Value("example_consumer_uuid")},  // std::string
    {"role", vlist()},  // std::vector<Value>
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
| `content_as_base64` | `std::string` |  |
| `mime_type` | `std::string` |  |
| `response_code` | `int64_t` |  |
| `response_message` | `std::string` |  |

#### Example: Create

```cpp
Value output_change_logo = client->output_change_logo()->create(vmap({
    {"content_as_base64", Value("example_content_as_base64")},  // std::string
    {"mime_type", Value("example_mime_type")},  // std::string
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
| `date_of_birth` | `std::string` |  |
| `description` | `std::string` |  |
| `drivers_license_number` | `std::string` |  |
| `email` | `std::string` |  |
| `first_name` | `std::string` |  |
| `identification_number` | `std::string` |  |
| `last_name` | `std::string` |  |
| `login` | `std::string` |  |
| `mandator` | `std::map<std::string, Value>` |  |
| `name` | `std::string` |  |
| `passport_number` | `std::string` |  |
| `phone` | `std::string` |  |
| `response_code` | `int64_t` |  |
| `response_message` | `std::string` |  |
| `salutation` | `std::string` |  |
| `state` | `std::string` |  |
| `street1` | `std::string` |  |
| `street2` | `std::string` |  |
| `zip_code` | `std::string` |  |

#### Example: Create

```cpp
Value output_create_mandator = client->output_create_mandator()->create(vmap({
    {"description", Value("example_description")},  // std::string
    {"email", Value("example_email")},  // std::string
    {"login", Value("example_login")},  // std::string
    {"name", Value("example_name")},  // std::string
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
| `mandator_name` | `std::string` |  |
| `response_code` | `int64_t` |  |
| `response_message` | `std::string` |  |

#### Example: Create

```cpp
Value output_create_service_user = client->output_create_service_user()->create(vmap({
    {"mandator_name", Value("example_mandator_name")},  // std::string
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
| `consumer_uuid` | `std::string` |  |
| `response_code` | `int64_t` |  |
| `response_message` | `std::string` |  |

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
| `case_id` | `std::string` |  |
| `encoded_data_base64` | `std::string` |  |
| `response_code` | `int64_t` |  |
| `response_message` | `std::string` |  |

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
| `content_as_base64` | `std::string` |  |
| `mime_type` | `std::string` |  |
| `response_code` | `int64_t` |  |
| `response_message` | `std::string` |  |

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
| `available_role` | `std::vector<Value>` |  |
| `response_code` | `int64_t` |  |
| `response_message` | `std::string` |  |

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
| `response_code` | `int64_t` |  |
| `response_message` | `std::string` |  |
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
| `response_code` | `int64_t` |  |
| `response_message` | `std::string` |  |

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
| `group_role` | `std::vector<Value>` |  |
| `pagination` | `std::map<std::string, Value>` |  |
| `response_code` | `int64_t` |  |
| `response_message` | `std::string` |  |
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
| `response_code` | `int64_t` |  |
| `response_message` | `std::string` |  |
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
| `response_code` | `int64_t` |  |
| `response_message` | `std::string` |  |
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
| `mandator_name` | `std::string` |  |
| `password` | `std::string` |  |
| `response_code` | `int64_t` |  |
| `response_message` | `std::string` |  |
| `username` | `std::string` |  |

#### Example: Create

```cpp
Value output_provide_credential = client->output_provide_credential()->create(vmap({
    {"mandator_name", Value("example_mandator_name")},  // std::string
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
| `city` | `std::string` |  |
| `consumer_id` | `std::string` |  |
| `consumer_language` | `std::string` |  |
| `country` | `std::string` |  |
| `date_of_birth` | `std::string` |  |
| `driver_licence_number` | `std::string` |  |
| `email` | `std::string` |  |
| `first_name` | `std::string` |  |
| `identification_number` | `std::string` |  |
| `last_name` | `std::string` |  |
| `login` | `std::string` |  |
| `module` | `std::string` |  |
| `passport_number` | `std::string` |  |
| `phone` | `std::string` |  |
| `response_code` | `int64_t` |  |
| `response_message` | `std::string` |  |
| `salutation` | `std::string` |  |
| `state` | `std::string` |  |
| `street1` | `std::string` |  |
| `street2` | `std::string` |  |
| `zip` | `std::string` |  |

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
| `consumer_uuid` | `std::string` |  |
| `response_code` | `int64_t` |  |
| `response_message` | `std::string` |  |
| `role` | `std::vector<Value>` |  |

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
| `business_registration_number` | `std::string` |  |
| `consumer_uuid` | `std::string` |  |
| `email_confirmation_code` | `std::string` |  |
| `phone_number` | `std::string` |  |
| `response_code` | `int64_t` |  |
| `response_message` | `std::string` |  |

#### Example: Create

```cpp
Value output_resend_link = client->output_resend_link()->create(vmap({
    {"consumer_uuid", Value("example_consumer_uuid")},  // std::string
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
| `consumer_uuid` | `std::string` |  |
| `phone_number` | `std::string` |  |
| `response_code` | `int64_t` |  |
| `response_message` | `std::string` |  |

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
| `consumer_uuid` | `std::string` |  |
| `consumerlanguage` | `std::string` |  |
| `country` | `std::string` |  |
| `date_of_birth` | `std::string` |  |
| `datetime_created` | `std::string` |  |
| `driver_licence_number` | `std::string` |  |
| `email` | `std::string` |  |
| `first_name` | `std::string` |  |
| `identification_number` | `std::string` |  |
| `kyc_passed` | `bool` |  |
| `last_name` | `std::string` |  |
| `nationality` | `std::string` |  |
| `passport_number` | `std::string` |  |
| `phone_number` | `std::string` |  |
| `place_of_birth` | `std::string` |  |
| `response_code` | `int64_t` |  |
| `response_message` | `std::string` |  |
| `state` | `std::string` |  |
| `street1` | `std::string` |  |
| `street2` | `std::string` |  |
| `transactionhistory_id` | `std::string` |  |
| `zip` | `std::string` |  |

#### Example: Create

```cpp
Value output_update_consumer = client->output_update_consumer()->create(vmap({
    {"consumer_uuid", Value("example_consumer_uuid")},  // std::string
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
| `consumer_language` | `std::string` |  |
| `email` | `std::string` |  |
| `first_name` | `std::string` |  |
| `last_name` | `std::string` |  |
| `phone_number` | `std::string` |  |
| `response_code` | `int64_t` |  |
| `response_message` | `std::string` |  |

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
| `app_name` | `std::string` |  |
| `build_date` | `std::string` |  |
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

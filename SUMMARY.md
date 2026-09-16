# User Back Office Web Service Documentation

Web service for user registration and management.

## Start here

This guide introduces the API, the client libraries, and the companion tools in this repository. Start with the API capabilities, choose a client for your application, and use the linked reference when you need exact request and response details.

The selected API surface contains 25 entities and 25 HTTP routes. There are 23 SDK targets and 2 companion tools.

An entity groups related API operations. An operation can have several routes with different inputs or authentication requirements. The SDK exposes the entity and its operations using the conventions of the selected language.

## What the API provides

### [OutputActivateDigitalModule](docs/api/output_activate_digital_module.html)

Results: OK.

SDK operations: `create`.

### [OutputActivatePortalModule](docs/api/output_activate_portal_module.html)

Results: OK.

SDK operations: `create`.

### [OutputActivateStoreModule](docs/api/output_activate_store_module.html)

Results: OK.

SDK operations: `create`.

### [OutputActivateUser](docs/api/output_activate_user.html)

Results: OK.

SDK operations: `create`.

### [OutputAssignRole](docs/api/output_assign_role.html)

Results: Role assignment successful.

SDK operations: `create`.

Key fields to recognise:

- `consumerUUID`: Unique identifier of the consumer (user) to whom the role(s) will be assigned.
- `responseCode`: Response code: 0 indicates success; any non-zero value indicates an error.
- `responseMessage`: A human-readable message providing additional details about the outcome.
- `roles`: List of roles to assign to the consumer.

### [OutputChangeLogo](docs/api/output_change_logo.html)

Results: OK.

SDK operations: `create`.

Key fields to recognise:

- `contentAsBase64`: The content of the image as base64 encoded string
- `mimeType`: The MIME type of the image

### [OutputCreateMandator](docs/api/output_create_mandator.html)

Results: OK.

SDK operations: `create`.

### [OutputCreateServiceUser](docs/api/output_create_service_user.html)

Results: OK.

SDK operations: `create`.

### [OutputDeactivateUser](docs/api/output_deactivate_user.html)

Results: OK.

SDK operations: `create`.

### [OutputGetKycDocument](docs/api/output_get_kyc_document.html)

Results: OK.

SDK operations: `create`.

### [OutputGetLogo](docs/api/output_get_logo.html)

Results: OK.

SDK operations: `load`.

Key fields to recognise:

- `contentAsBase64`: The content of the image as base64 encoded string
- `mimeType`: The MIME type of the image

### [OutputListOfAvailableRole](docs/api/output_list_of_available_role.html)

Results: OK.

SDK operations: `create`.

### [OutputListOfMandator](docs/api/output_list_of_mandator.html)

Results: OK.

SDK operations: `create`.

### [OutputListOfModule](docs/api/output_list_of_module.html)

Results: OK.

SDK operations: `create`.

### [OutputListOfRoleGroup](docs/api/output_list_of_role_group.html)

Results: OK.

SDK operations: `create`.

### [OutputListOfTransactionsHistory](docs/api/output_list_of_transactions_history.html)

Results: OK.

SDK operations: `create`.

### [OutputListOfUser](docs/api/output_list_of_user.html)

Results: OK.

SDK operations: `create`.

### [OutputProvideCredential](docs/api/output_provide_credential.html)

Results: OK.

SDK operations: `create`.

### [OutputRegisterUser](docs/api/output_register_user.html)

Results: User registered successfully.

SDK operations: `create`.

Key fields to recognise:

- `city`: City where the user resides.
- `consumerId`: User login or unique user identifier.
- `consumerLanguage`: Preferred language for the user (for example, &#39;en&#39;).
- `country`: User&#39;s country.
- `dateOfBirth`: User&#39;s date of birth (expected format: dd.MM.yyyy).

### [OutputRemoveRole](docs/api/output_remove_role.html)

Results: OK.

SDK operations: `create`.

### [OutputResendLink](docs/api/output_resend_link.html)

Results: OK.

SDK operations: `create`.

### [OutputResetPassword](docs/api/output_reset_password.html)

Results: OK.

SDK operations: `create`.

### [OutputUpdateConsumer](docs/api/output_update_consumer.html)

Results: OK.

SDK operations: `create`.

### [OutputUpdateProfile](docs/api/output_update_profile.html)

Results: OK.

SDK operations: `create`.

### [Version](docs/api/version.html)

Results: OK.

SDK operations: `load`.

### Route map

Use this map to locate a capability. Consult the entity reference before supplying request data; routes for the same operation can require different fields.

| Entity | SDK operation | HTTP route | Authentication |
| --- | --- | --- | --- |
| [OutputActivateDigitalModule](docs/api/output_activate_digital_module.html) | `create` | `POST /activateDigitalModule` | Required |
| [OutputActivatePortalModule](docs/api/output_activate_portal_module.html) | `create` | `POST /activateMerchantPortalModule` | Required |
| [OutputActivateStoreModule](docs/api/output_activate_store_module.html) | `create` | `POST /activateAppStoreModule` | Required |
| [OutputActivateUser](docs/api/output_activate_user.html) | `create` | `POST /activateUser` | Required |
| [OutputAssignRole](docs/api/output_assign_role.html) | `create` | `POST /assignRoles` | Required |
| [OutputChangeLogo](docs/api/output_change_logo.html) | `create` | `POST /changeLogo` | Required |
| [OutputCreateMandator](docs/api/output_create_mandator.html) | `create` | `POST /createMandator` | Required |
| [OutputCreateServiceUser](docs/api/output_create_service_user.html) | `create` | `POST /createServiceUser` | Required |
| [OutputDeactivateUser](docs/api/output_deactivate_user.html) | `create` | `POST /deactivateUser` | Required |
| [OutputGetKycDocument](docs/api/output_get_kyc_document.html) | `create` | `POST /getKycDocument` | Required |
| [OutputGetLogo](docs/api/output_get_logo.html) | `load` | `GET /getLogo` | Required |
| [OutputListOfAvailableRole](docs/api/output_list_of_available_role.html) | `create` | `POST /listOfAvailableRoles` | Required |
| [OutputListOfMandator](docs/api/output_list_of_mandator.html) | `create` | `POST /listOfMandators` | Required |
| [OutputListOfModule](docs/api/output_list_of_module.html) | `create` | `POST /listOfModules` | Required |
| [OutputListOfRoleGroup](docs/api/output_list_of_role_group.html) | `create` | `POST /listOfRoleGroups` | Required |
| [OutputListOfTransactionsHistory](docs/api/output_list_of_transactions_history.html) | `create` | `POST /listOfTransactionsHistory` | Required |
| [OutputListOfUser](docs/api/output_list_of_user.html) | `create` | `POST /listOfUsers` | Required |
| [OutputProvideCredential](docs/api/output_provide_credential.html) | `create` | `POST /provideCredentials` | Required |
| [OutputRegisterUser](docs/api/output_register_user.html) | `create` | `POST /registerUser` | Required |
| [OutputRemoveRole](docs/api/output_remove_role.html) | `create` | `POST /removeRoles` | Required |
| [OutputResendLink](docs/api/output_resend_link.html) | `create` | `POST /resendLink` | Required |
| [OutputResetPassword](docs/api/output_reset_password.html) | `create` | `POST /resetPassword` | Required |
| [OutputUpdateConsumer](docs/api/output_update_consumer.html) | `create` | `POST /updateConsumer` | Required |
| [OutputUpdateProfile](docs/api/output_update_profile.html) | `create` | `POST /updateProfile` | Required |
| [Version](docs/api/version.html) | `load` | `GET /version` | See reference |

## Connect to the API

- Generated server url: `https://test.tecs.at/usermanagement-backofficews`

The default credential is sent in the `Authorization` header with the `Bearer` prefix.

Check authentication for the route you plan to call. A route that declares no authentication can be used without credentials; this does not change the requirements of other routes. Keep credentials in environment variables or a configured secret provider, and keep them out of source control and logs.

## Make a first request

1. Choose the API server and an operation that matches your task.
2. Check the operation’s required input and authentication. Use values valid for your account and environment.
3. Send one request and inspect the returned data before adding retries, concurrency, or a larger batch.

For an SDK call, install or build the chosen client, create a client instance with its documented configuration, and call the required entity operation. Language references describe the argument shape, asynchronous behaviour, and returned values.

## Choose an SDK

Choose the language already used by your application or service. The clients represent the same API model, while package setup, naming, and return types follow each language. Check the selected client’s reference and tests before integrating it into an existing application.

| Client | Repository directory | Distribution |
| --- | --- | --- |
| [C](docs/sdks/c.html) | `c/` | Build from source |
| [Clojure](docs/sdks/clojure.html) | `clojure/` | Build from source |
| [C++](docs/sdks/cpp.html) | `cpp/` | Build from source |
| [C#](docs/sdks/csharp.html) | `csharp/` | Build from source |
| [Dart](docs/sdks/dart.html) | `dart/` | Build from source |
| [Elixir](docs/sdks/elixir.html) | `elixir/` | Build from source |
| [Golang](docs/sdks/go.html) | `go/` | Build from source |
| [Haskell](docs/sdks/haskell.html) | `haskell/` | Build from source |
| [Java](docs/sdks/java.html) | `java/` | Build from source |
| [JavaScript](docs/sdks/js.html) | `js/` | Build from source |
| [Kotlin](docs/sdks/kotlin.html) | `kotlin/` | Build from source |
| [Lean](docs/sdks/lean.html) | `lean/` | Build from source |
| [Lua](docs/sdks/lua.html) | `lua/` | Build from source |
| [OCaml](docs/sdks/ocaml.html) | `ocaml/` | Build from source |
| [Perl](docs/sdks/perl.html) | `perl/` | Build from source |
| [PHP](docs/sdks/php.html) | `php/` | Build from source |
| [Python](docs/sdks/py.html) | `py/` | Build from source |
| [Ruby](docs/sdks/rb.html) | `rb/` | Build from source |
| [Rust](docs/sdks/rust.html) | `rust/` | Build from source |
| [Scala](docs/sdks/scala.html) | `scala/` | Build from source |
| [Swift](docs/sdks/swift.html) | `swift/` | Build from source |
| [TypeScript](docs/sdks/ts.html) | `ts/` | Build from source |
| [Zig](docs/sdks/zig.html) | `zig/` | Build from source |

Build-from-source entries are not marked as published in the project model. Follow the build instructions in that target’s README, then consume the resulting package using your language’s local dependency mechanism. Published entries give the installation command recorded for that client.

## Companion tools

These targets provide another way to use the API. Their available commands or tools can cover a smaller set of operations than the client libraries.

### [Go CLI](docs/tools/go-cli.html)

Use the command-line interface for shell-based tasks and scripts.

Repository directory: `go-cli/`. Not published. Build from the go-cli directory.


### [Go MCP server](docs/tools/go-mcp.html)

Use the MCP server to expose supported API operations to an MCP client.

Repository directory: `go-mcp/`. Not published. Build from the go-mcp directory.

- `bluefin-tecs-user-backoffice_list`: List records for an entity. No active entity supports this operation.
- `bluefin-tecs-user-backoffice_load`: Load one record for an entity. Supported entities: `output_get_logo`, `version`.

## Operational features

Features supply behaviour around API calls, such as request handling, diagnostics, or local testing. Inclusion in this project does not mean a feature is enabled at runtime. Check the selected SDK’s supported features and configuration defaults, then enable the behaviour your application needs.

- [`audit`](docs/features/audit.html): Structured audit trail of operations
- [`clienttrack`](docs/features/clienttrack.html): Client identity and per-request correlation headers
- [`debug`](docs/features/debug.html): Request/response capture ring buffer for debugging
- [`idempotency`](docs/features/idempotency.html): Idempotency keys for safe retries of mutating operations
- [`log`](docs/features/log.html): Structured request and response logging
- [`metrics`](docs/features/metrics.html): Statistics capture: per-operation counters and latency
- [`paging`](docs/features/paging.html): Pagination signals for list operations
- [`ratelimit`](docs/features/ratelimit.html): Client-side rate limiting via a token bucket
- [`retry`](docs/features/retry.html): Automatic retry of transient failures with exponential backoff
- [`telemetry`](docs/features/telemetry.html): Distributed tracing spans with W3C trace-context propagation
- [`test`](docs/features/test.html): In-memory mock transport for testing without a live server
- [`timeout`](docs/features/timeout.html): Per-request timeout with transport abort

Start with the default client configuration. Add request limits and diagnostics as needed, test error paths, and review retry behaviour before using operations that change data. A retry can repeat an operation unless the API provides a suitable guarantee.

## Continue with the documentation

- Follow the [first-call guide](docs/guides/first-call.html) for the setup sequence.
- Read the [authentication guide](docs/guides/authentication.html) before using protected routes.
- Use the [API reference](docs/api/index.html) for request schemas, response formats, and status codes.
- Check the chosen SDK or companion tool reference for its configuration and supported operations.


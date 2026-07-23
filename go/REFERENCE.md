# BluefinTecsUserBackoffice Golang SDK Reference

Complete API reference for the BluefinTecsUserBackoffice Golang SDK.


## BluefinTecsUserBackofficeSDK

### Constructor

```go
func NewBluefinTecsUserBackofficeSDK(options map[string]any) *BluefinTecsUserBackofficeSDK
```

Create a new SDK client instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `options` | `map[string]any` | SDK configuration options. |
| `options["apikey"]` | `string` | API key for authentication. |
| `options["base"]` | `string` | Base URL for API requests. |
| `options["prefix"]` | `string` | URL prefix appended after base. |
| `options["suffix"]` | `string` | URL suffix appended after path. |
| `options["headers"]` | `map[string]any` | Custom headers for all requests. |
| `options["feature"]` | `map[string]any` | Feature configuration. |
| `options["system"]` | `map[string]any` | System overrides (e.g. custom fetch). |


### Static Methods

#### `Test() *BluefinTecsUserBackofficeSDK`

No-arg convenience constructor for the common no-options test case.

```go
client := sdk.Test()
```

#### `TestSDK(testopts, sdkopts map[string]any) *BluefinTecsUserBackofficeSDK`

Test client with options. Both arguments may be `nil`.

```go
client := sdk.TestSDK(testopts, sdkopts)
```


### Instance Methods

#### `OutputActivateDigitalModule(data map[string]any) BluefinTecsUserBackofficeEntity`

Create a new `OutputActivateDigitalModule` entity instance. Pass `nil` for no initial data.

#### `OutputActivatePortalModule(data map[string]any) BluefinTecsUserBackofficeEntity`

Create a new `OutputActivatePortalModule` entity instance. Pass `nil` for no initial data.

#### `OutputActivateStoreModule(data map[string]any) BluefinTecsUserBackofficeEntity`

Create a new `OutputActivateStoreModule` entity instance. Pass `nil` for no initial data.

#### `OutputActivateUser(data map[string]any) BluefinTecsUserBackofficeEntity`

Create a new `OutputActivateUser` entity instance. Pass `nil` for no initial data.

#### `OutputAssignRole(data map[string]any) BluefinTecsUserBackofficeEntity`

Create a new `OutputAssignRole` entity instance. Pass `nil` for no initial data.

#### `OutputChangeLogo(data map[string]any) BluefinTecsUserBackofficeEntity`

Create a new `OutputChangeLogo` entity instance. Pass `nil` for no initial data.

#### `OutputCreateMandator(data map[string]any) BluefinTecsUserBackofficeEntity`

Create a new `OutputCreateMandator` entity instance. Pass `nil` for no initial data.

#### `OutputCreateServiceUser(data map[string]any) BluefinTecsUserBackofficeEntity`

Create a new `OutputCreateServiceUser` entity instance. Pass `nil` for no initial data.

#### `OutputDeactivateUser(data map[string]any) BluefinTecsUserBackofficeEntity`

Create a new `OutputDeactivateUser` entity instance. Pass `nil` for no initial data.

#### `OutputGetKycDocument(data map[string]any) BluefinTecsUserBackofficeEntity`

Create a new `OutputGetKycDocument` entity instance. Pass `nil` for no initial data.

#### `OutputGetLogo(data map[string]any) BluefinTecsUserBackofficeEntity`

Create a new `OutputGetLogo` entity instance. Pass `nil` for no initial data.

#### `OutputListOfAvailableRole(data map[string]any) BluefinTecsUserBackofficeEntity`

Create a new `OutputListOfAvailableRole` entity instance. Pass `nil` for no initial data.

#### `OutputListOfMandator(data map[string]any) BluefinTecsUserBackofficeEntity`

Create a new `OutputListOfMandator` entity instance. Pass `nil` for no initial data.

#### `OutputListOfModule(data map[string]any) BluefinTecsUserBackofficeEntity`

Create a new `OutputListOfModule` entity instance. Pass `nil` for no initial data.

#### `OutputListOfRoleGroup(data map[string]any) BluefinTecsUserBackofficeEntity`

Create a new `OutputListOfRoleGroup` entity instance. Pass `nil` for no initial data.

#### `OutputListOfTransactionsHistory(data map[string]any) BluefinTecsUserBackofficeEntity`

Create a new `OutputListOfTransactionsHistory` entity instance. Pass `nil` for no initial data.

#### `OutputListOfUser(data map[string]any) BluefinTecsUserBackofficeEntity`

Create a new `OutputListOfUser` entity instance. Pass `nil` for no initial data.

#### `OutputProvideCredential(data map[string]any) BluefinTecsUserBackofficeEntity`

Create a new `OutputProvideCredential` entity instance. Pass `nil` for no initial data.

#### `OutputRegisterUser(data map[string]any) BluefinTecsUserBackofficeEntity`

Create a new `OutputRegisterUser` entity instance. Pass `nil` for no initial data.

#### `OutputRemoveRole(data map[string]any) BluefinTecsUserBackofficeEntity`

Create a new `OutputRemoveRole` entity instance. Pass `nil` for no initial data.

#### `OutputResendLink(data map[string]any) BluefinTecsUserBackofficeEntity`

Create a new `OutputResendLink` entity instance. Pass `nil` for no initial data.

#### `OutputResetPassword(data map[string]any) BluefinTecsUserBackofficeEntity`

Create a new `OutputResetPassword` entity instance. Pass `nil` for no initial data.

#### `OutputUpdateConsumer(data map[string]any) BluefinTecsUserBackofficeEntity`

Create a new `OutputUpdateConsumer` entity instance. Pass `nil` for no initial data.

#### `OutputUpdateProfile(data map[string]any) BluefinTecsUserBackofficeEntity`

Create a new `OutputUpdateProfile` entity instance. Pass `nil` for no initial data.

#### `Version(data map[string]any) BluefinTecsUserBackofficeEntity`

Create a new `Version` entity instance. Pass `nil` for no initial data.

#### `OptionsMap() map[string]any`

Return a deep copy of the current SDK options.

#### `GetUtility() *Utility`

Return a copy of the SDK utility object.

#### `Direct(fetchargs map[string]any) (map[string]any, error)`

Make a direct HTTP request to any API endpoint.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `fetchargs["path"]` | `string` | URL path with optional `{param}` placeholders. |
| `fetchargs["method"]` | `string` | HTTP method (default: `"GET"`). |
| `fetchargs["params"]` | `map[string]any` | Path parameter values for `{param}` substitution. |
| `fetchargs["query"]` | `map[string]any` | Query string parameters. |
| `fetchargs["headers"]` | `map[string]any` | Request headers (merged with defaults). |
| `fetchargs["body"]` | `any` | Request body (maps are JSON-serialized). |
| `fetchargs["ctrl"]` | `map[string]any` | Control options (e.g. `map[string]any{"explain": true}`). |

**Returns:** `(map[string]any, error)`

#### `Prepare(fetchargs map[string]any) (map[string]any, error)`

Prepare a fetch definition without sending the request. Accepts the
same parameters as `Direct()`.

**Returns:** `(map[string]any, error)`


---

## OutputActivateDigitalModuleEntity

```go
outputActivateDigitalModule := client.OutputActivateDigitalModule(nil)
fmt.Println(outputActivateDigitalModule.GetName()) // "output_activate_digital_module"
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |

### Operations

#### `Create(reqdata, ctrl map[string]any) (any, error)`

Create a new entity with the given data.

```go
result, err := client.OutputActivateDigitalModule(nil).Create(map[string]any{
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```

### Common Methods

#### `Data(args ...any) any`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `Match(args ...any) any`

Get or set the entity match criteria. Works the same as `Data()`.

#### `Make() Entity`

Create a new `OutputActivateDigitalModuleEntity` instance with the same client and
options.

#### `GetName() string`

Return the entity name.


---

## OutputActivatePortalModuleEntity

```go
outputActivatePortalModule := client.OutputActivatePortalModule(nil)
fmt.Println(outputActivatePortalModule.GetName()) // "output_activate_portal_module"
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `client_secret` | `string` | Yes |  |
| `notification_email` | `string` | Yes |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |

### Operations

#### `Create(reqdata, ctrl map[string]any) (any, error)`

Create a new entity with the given data.

```go
result, err := client.OutputActivatePortalModule(nil).Create(map[string]any{
    "client_secret": "example_client_secret",
    "notification_email": "example_notification_email",
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```

### Common Methods

#### `Data(args ...any) any`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `Match(args ...any) any`

Get or set the entity match criteria. Works the same as `Data()`.

#### `Make() Entity`

Create a new `OutputActivatePortalModuleEntity` instance with the same client and
options.

#### `GetName() string`

Return the entity name.


---

## OutputActivateStoreModuleEntity

```go
outputActivateStoreModule := client.OutputActivateStoreModule(nil)
fmt.Println(outputActivateStoreModule.GetName()) // "output_activate_store_module"
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |

### Operations

#### `Create(reqdata, ctrl map[string]any) (any, error)`

Create a new entity with the given data.

```go
result, err := client.OutputActivateStoreModule(nil).Create(map[string]any{
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```

### Common Methods

#### `Data(args ...any) any`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `Match(args ...any) any`

Get or set the entity match criteria. Works the same as `Data()`.

#### `Make() Entity`

Create a new `OutputActivateStoreModuleEntity` instance with the same client and
options.

#### `GetName() string`

Return the entity name.


---

## OutputActivateUserEntity

```go
outputActivateUser := client.OutputActivateUser(nil)
fmt.Println(outputActivateUser.GetName()) // "output_activate_user"
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumer_uuid` | `string` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |

### Operations

#### `Create(reqdata, ctrl map[string]any) (any, error)`

Create a new entity with the given data.

```go
result, err := client.OutputActivateUser(nil).Create(map[string]any{
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```

### Common Methods

#### `Data(args ...any) any`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `Match(args ...any) any`

Get or set the entity match criteria. Works the same as `Data()`.

#### `Make() Entity`

Create a new `OutputActivateUserEntity` instance with the same client and
options.

#### `GetName() string`

Return the entity name.


---

## OutputAssignRoleEntity

```go
outputAssignRole := client.OutputAssignRole(nil)
fmt.Println(outputAssignRole.GetName()) // "output_assign_role"
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumer_uuid` | `string` | Yes |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |
| `role` | `[]any` | Yes |  |

### Operations

#### `Create(reqdata, ctrl map[string]any) (any, error)`

Create a new entity with the given data.

```go
result, err := client.OutputAssignRole(nil).Create(map[string]any{
    "consumer_uuid": "example_consumer_uuid",
    "role": []any{},
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```

### Common Methods

#### `Data(args ...any) any`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `Match(args ...any) any`

Get or set the entity match criteria. Works the same as `Data()`.

#### `Make() Entity`

Create a new `OutputAssignRoleEntity` instance with the same client and
options.

#### `GetName() string`

Return the entity name.


---

## OutputChangeLogoEntity

```go
outputChangeLogo := client.OutputChangeLogo(nil)
fmt.Println(outputChangeLogo.GetName()) // "output_change_logo"
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `content_as_base64` | `string` | Yes |  |
| `mime_type` | `string` | Yes |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |

### Operations

#### `Create(reqdata, ctrl map[string]any) (any, error)`

Create a new entity with the given data.

```go
result, err := client.OutputChangeLogo(nil).Create(map[string]any{
    "content_as_base64": "example_content_as_base64",
    "mime_type": "example_mime_type",
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```

### Common Methods

#### `Data(args ...any) any`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `Match(args ...any) any`

Get or set the entity match criteria. Works the same as `Data()`.

#### `Make() Entity`

Create a new `OutputChangeLogoEntity` instance with the same client and
options.

#### `GetName() string`

Return the entity name.


---

## OutputCreateMandatorEntity

```go
outputCreateMandator := client.OutputCreateMandator(nil)
fmt.Println(outputCreateMandator.GetName()) // "output_create_mandator"
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `city` | `string` | No |  |
| `country` | `string` | No |  |
| `date_of_birth` | `string` | No |  |
| `description` | `string` | Yes |  |
| `drivers_license_number` | `string` | No |  |
| `email` | `string` | Yes |  |
| `first_name` | `string` | No |  |
| `identification_number` | `string` | No |  |
| `last_name` | `string` | No |  |
| `login` | `string` | Yes |  |
| `mandator` | `map[string]any` | No |  |
| `name` | `string` | Yes |  |
| `passport_number` | `string` | No |  |
| `phone` | `string` | Yes |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |
| `salutation` | `string` | No |  |
| `state` | `string` | No |  |
| `street1` | `string` | No |  |
| `street2` | `string` | No |  |
| `zip_code` | `string` | No |  |

### Operations

#### `Create(reqdata, ctrl map[string]any) (any, error)`

Create a new entity with the given data.

```go
result, err := client.OutputCreateMandator(nil).Create(map[string]any{
    "description": "example_description",
    "email": "example_email",
    "login": "example_login",
    "name": "example_name",
    "phone": "example_phone",
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```

### Common Methods

#### `Data(args ...any) any`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `Match(args ...any) any`

Get or set the entity match criteria. Works the same as `Data()`.

#### `Make() Entity`

Create a new `OutputCreateMandatorEntity` instance with the same client and
options.

#### `GetName() string`

Return the entity name.


---

## OutputCreateServiceUserEntity

```go
outputCreateServiceUser := client.OutputCreateServiceUser(nil)
fmt.Println(outputCreateServiceUser.GetName()) // "output_create_service_user"
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `mandator_name` | `string` | Yes |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |

### Operations

#### `Create(reqdata, ctrl map[string]any) (any, error)`

Create a new entity with the given data.

```go
result, err := client.OutputCreateServiceUser(nil).Create(map[string]any{
    "mandator_name": "example_mandator_name",
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```

### Common Methods

#### `Data(args ...any) any`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `Match(args ...any) any`

Get or set the entity match criteria. Works the same as `Data()`.

#### `Make() Entity`

Create a new `OutputCreateServiceUserEntity` instance with the same client and
options.

#### `GetName() string`

Return the entity name.


---

## OutputDeactivateUserEntity

```go
outputDeactivateUser := client.OutputDeactivateUser(nil)
fmt.Println(outputDeactivateUser.GetName()) // "output_deactivate_user"
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumer_uuid` | `string` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |

### Operations

#### `Create(reqdata, ctrl map[string]any) (any, error)`

Create a new entity with the given data.

```go
result, err := client.OutputDeactivateUser(nil).Create(map[string]any{
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```

### Common Methods

#### `Data(args ...any) any`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `Match(args ...any) any`

Get or set the entity match criteria. Works the same as `Data()`.

#### `Make() Entity`

Create a new `OutputDeactivateUserEntity` instance with the same client and
options.

#### `GetName() string`

Return the entity name.


---

## OutputGetKycDocumentEntity

```go
outputGetKycDocument := client.OutputGetKycDocument(nil)
fmt.Println(outputGetKycDocument.GetName()) // "output_get_kyc_document"
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `case_id` | `string` | No |  |
| `encoded_data_base64` | `string` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |

### Operations

#### `Create(reqdata, ctrl map[string]any) (any, error)`

Create a new entity with the given data.

```go
result, err := client.OutputGetKycDocument(nil).Create(map[string]any{
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```

### Common Methods

#### `Data(args ...any) any`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `Match(args ...any) any`

Get or set the entity match criteria. Works the same as `Data()`.

#### `Make() Entity`

Create a new `OutputGetKycDocumentEntity` instance with the same client and
options.

#### `GetName() string`

Return the entity name.


---

## OutputGetLogoEntity

```go
outputGetLogo := client.OutputGetLogo(nil)
fmt.Println(outputGetLogo.GetName()) // "output_get_logo"
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `content_as_base64` | `string` | Yes |  |
| `mime_type` | `string` | Yes |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |

### Operations

#### `Load(reqmatch, ctrl map[string]any) (any, error)`

Load a single entity matching the given criteria.

```go
result, err := client.OutputGetLogo(nil).Load(nil, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```

### Common Methods

#### `Data(args ...any) any`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `Match(args ...any) any`

Get or set the entity match criteria. Works the same as `Data()`.

#### `Make() Entity`

Create a new `OutputGetLogoEntity` instance with the same client and
options.

#### `GetName() string`

Return the entity name.


---

## OutputListOfAvailableRoleEntity

```go
outputListOfAvailableRole := client.OutputListOfAvailableRole(nil)
fmt.Println(outputListOfAvailableRole.GetName()) // "output_list_of_available_role"
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `available_role` | `[]any` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |

### Operations

#### `Create(reqdata, ctrl map[string]any) (any, error)`

Create a new entity with the given data.

```go
result, err := client.OutputListOfAvailableRole(nil).Create(map[string]any{
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```

### Common Methods

#### `Data(args ...any) any`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `Match(args ...any) any`

Get or set the entity match criteria. Works the same as `Data()`.

#### `Make() Entity`

Create a new `OutputListOfAvailableRoleEntity` instance with the same client and
options.

#### `GetName() string`

Return the entity name.


---

## OutputListOfMandatorEntity

```go
outputListOfMandator := client.OutputListOfMandator(nil)
fmt.Println(outputListOfMandator.GetName()) // "output_list_of_mandator"
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `filter` | `map[string]any` | No |  |
| `list` | `[]any` | No |  |
| `pagination` | `map[string]any` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |
| `sorting` | `map[string]any` | No |  |

### Operations

#### `Create(reqdata, ctrl map[string]any) (any, error)`

Create a new entity with the given data.

```go
result, err := client.OutputListOfMandator(nil).Create(map[string]any{
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```

### Common Methods

#### `Data(args ...any) any`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `Match(args ...any) any`

Get or set the entity match criteria. Works the same as `Data()`.

#### `Make() Entity`

Create a new `OutputListOfMandatorEntity` instance with the same client and
options.

#### `GetName() string`

Return the entity name.


---

## OutputListOfModuleEntity

```go
outputListOfModule := client.OutputListOfModule(nil)
fmt.Println(outputListOfModule.GetName()) // "output_list_of_module"
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `list` | `[]any` | No |  |
| `pagination` | `map[string]any` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |

### Operations

#### `Create(reqdata, ctrl map[string]any) (any, error)`

Create a new entity with the given data.

```go
result, err := client.OutputListOfModule(nil).Create(map[string]any{
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```

### Common Methods

#### `Data(args ...any) any`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `Match(args ...any) any`

Get or set the entity match criteria. Works the same as `Data()`.

#### `Make() Entity`

Create a new `OutputListOfModuleEntity` instance with the same client and
options.

#### `GetName() string`

Return the entity name.


---

## OutputListOfRoleGroupEntity

```go
outputListOfRoleGroup := client.OutputListOfRoleGroup(nil)
fmt.Println(outputListOfRoleGroup.GetName()) // "output_list_of_role_group"
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `filter` | `map[string]any` | No |  |
| `group_role` | `[]any` | No |  |
| `pagination` | `map[string]any` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |
| `sorting` | `map[string]any` | No |  |

### Operations

#### `Create(reqdata, ctrl map[string]any) (any, error)`

Create a new entity with the given data.

```go
result, err := client.OutputListOfRoleGroup(nil).Create(map[string]any{
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```

### Common Methods

#### `Data(args ...any) any`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `Match(args ...any) any`

Get or set the entity match criteria. Works the same as `Data()`.

#### `Make() Entity`

Create a new `OutputListOfRoleGroupEntity` instance with the same client and
options.

#### `GetName() string`

Return the entity name.


---

## OutputListOfTransactionsHistoryEntity

```go
outputListOfTransactionsHistory := client.OutputListOfTransactionsHistory(nil)
fmt.Println(outputListOfTransactionsHistory.GetName()) // "output_list_of_transactions_history"
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `filter` | `map[string]any` | No |  |
| `list` | `[]any` | No |  |
| `pagination` | `map[string]any` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |
| `sorting` | `map[string]any` | No |  |

### Operations

#### `Create(reqdata, ctrl map[string]any) (any, error)`

Create a new entity with the given data.

```go
result, err := client.OutputListOfTransactionsHistory(nil).Create(map[string]any{
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```

### Common Methods

#### `Data(args ...any) any`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `Match(args ...any) any`

Get or set the entity match criteria. Works the same as `Data()`.

#### `Make() Entity`

Create a new `OutputListOfTransactionsHistoryEntity` instance with the same client and
options.

#### `GetName() string`

Return the entity name.


---

## OutputListOfUserEntity

```go
outputListOfUser := client.OutputListOfUser(nil)
fmt.Println(outputListOfUser.GetName()) // "output_list_of_user"
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `filter` | `map[string]any` | No |  |
| `list` | `[]any` | No |  |
| `pagination` | `map[string]any` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |
| `sorting` | `map[string]any` | No |  |

### Operations

#### `Create(reqdata, ctrl map[string]any) (any, error)`

Create a new entity with the given data.

```go
result, err := client.OutputListOfUser(nil).Create(map[string]any{
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```

### Common Methods

#### `Data(args ...any) any`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `Match(args ...any) any`

Get or set the entity match criteria. Works the same as `Data()`.

#### `Make() Entity`

Create a new `OutputListOfUserEntity` instance with the same client and
options.

#### `GetName() string`

Return the entity name.


---

## OutputProvideCredentialEntity

```go
outputProvideCredential := client.OutputProvideCredential(nil)
fmt.Println(outputProvideCredential.GetName()) // "output_provide_credential"
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `mandator_name` | `string` | Yes |  |
| `password` | `string` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |
| `username` | `string` | No |  |

### Operations

#### `Create(reqdata, ctrl map[string]any) (any, error)`

Create a new entity with the given data.

```go
result, err := client.OutputProvideCredential(nil).Create(map[string]any{
    "mandator_name": "example_mandator_name",
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```

### Common Methods

#### `Data(args ...any) any`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `Match(args ...any) any`

Get or set the entity match criteria. Works the same as `Data()`.

#### `Make() Entity`

Create a new `OutputProvideCredentialEntity` instance with the same client and
options.

#### `GetName() string`

Return the entity name.


---

## OutputRegisterUserEntity

```go
outputRegisterUser := client.OutputRegisterUser(nil)
fmt.Println(outputRegisterUser.GetName()) // "output_register_user"
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `city` | `string` | No |  |
| `consumer_id` | `string` | No |  |
| `consumer_language` | `string` | No |  |
| `country` | `string` | No |  |
| `date_of_birth` | `string` | No |  |
| `driver_licence_number` | `string` | No |  |
| `email` | `string` | Yes |  |
| `first_name` | `string` | No |  |
| `identification_number` | `string` | No |  |
| `last_name` | `string` | No |  |
| `login` | `string` | No |  |
| `module` | `string` | No |  |
| `passport_number` | `string` | No |  |
| `phone` | `string` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |
| `salutation` | `string` | No |  |
| `state` | `string` | No |  |
| `street1` | `string` | No |  |
| `street2` | `string` | No |  |
| `zip` | `string` | No |  |

### Operations

#### `Create(reqdata, ctrl map[string]any) (any, error)`

Create a new entity with the given data.

```go
result, err := client.OutputRegisterUser(nil).Create(map[string]any{
    "email": "example_email",
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```

### Common Methods

#### `Data(args ...any) any`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `Match(args ...any) any`

Get or set the entity match criteria. Works the same as `Data()`.

#### `Make() Entity`

Create a new `OutputRegisterUserEntity` instance with the same client and
options.

#### `GetName() string`

Return the entity name.


---

## OutputRemoveRoleEntity

```go
outputRemoveRole := client.OutputRemoveRole(nil)
fmt.Println(outputRemoveRole.GetName()) // "output_remove_role"
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumer_uuid` | `string` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |
| `role` | `[]any` | No |  |

### Operations

#### `Create(reqdata, ctrl map[string]any) (any, error)`

Create a new entity with the given data.

```go
result, err := client.OutputRemoveRole(nil).Create(map[string]any{
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```

### Common Methods

#### `Data(args ...any) any`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `Match(args ...any) any`

Get or set the entity match criteria. Works the same as `Data()`.

#### `Make() Entity`

Create a new `OutputRemoveRoleEntity` instance with the same client and
options.

#### `GetName() string`

Return the entity name.


---

## OutputResendLinkEntity

```go
outputResendLink := client.OutputResendLink(nil)
fmt.Println(outputResendLink.GetName()) // "output_resend_link"
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `business_registration_number` | `string` | No |  |
| `consumer_uuid` | `string` | Yes |  |
| `email_confirmation_code` | `string` | No |  |
| `phone_number` | `string` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |

### Operations

#### `Create(reqdata, ctrl map[string]any) (any, error)`

Create a new entity with the given data.

```go
result, err := client.OutputResendLink(nil).Create(map[string]any{
    "consumer_uuid": "example_consumer_uuid",
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```

### Common Methods

#### `Data(args ...any) any`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `Match(args ...any) any`

Get or set the entity match criteria. Works the same as `Data()`.

#### `Make() Entity`

Create a new `OutputResendLinkEntity` instance with the same client and
options.

#### `GetName() string`

Return the entity name.


---

## OutputResetPasswordEntity

```go
outputResetPassword := client.OutputResetPassword(nil)
fmt.Println(outputResetPassword.GetName()) // "output_reset_password"
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumer_uuid` | `string` | No |  |
| `phone_number` | `string` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |

### Operations

#### `Create(reqdata, ctrl map[string]any) (any, error)`

Create a new entity with the given data.

```go
result, err := client.OutputResetPassword(nil).Create(map[string]any{
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```

### Common Methods

#### `Data(args ...any) any`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `Match(args ...any) any`

Get or set the entity match criteria. Works the same as `Data()`.

#### `Make() Entity`

Create a new `OutputResetPasswordEntity` instance with the same client and
options.

#### `GetName() string`

Return the entity name.


---

## OutputUpdateConsumerEntity

```go
outputUpdateConsumer := client.OutputUpdateConsumer(nil)
fmt.Println(outputUpdateConsumer.GetName()) // "output_update_consumer"
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `city` | `string` | No |  |
| `consumer_uuid` | `string` | Yes |  |
| `consumerlanguage` | `string` | No |  |
| `country` | `string` | No |  |
| `date_of_birth` | `string` | No |  |
| `datetime_created` | `string` | No |  |
| `driver_licence_number` | `string` | No |  |
| `email` | `string` | No |  |
| `first_name` | `string` | No |  |
| `identification_number` | `string` | No |  |
| `kyc_passed` | `bool` | No |  |
| `last_name` | `string` | No |  |
| `nationality` | `string` | No |  |
| `passport_number` | `string` | No |  |
| `phone_number` | `string` | No |  |
| `place_of_birth` | `string` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |
| `state` | `string` | No |  |
| `street1` | `string` | No |  |
| `street2` | `string` | No |  |
| `transactionhistory_id` | `string` | No |  |
| `zip` | `string` | No |  |

### Operations

#### `Create(reqdata, ctrl map[string]any) (any, error)`

Create a new entity with the given data.

```go
result, err := client.OutputUpdateConsumer(nil).Create(map[string]any{
    "consumer_uuid": "example_consumer_uuid",
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```

### Common Methods

#### `Data(args ...any) any`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `Match(args ...any) any`

Get or set the entity match criteria. Works the same as `Data()`.

#### `Make() Entity`

Create a new `OutputUpdateConsumerEntity` instance with the same client and
options.

#### `GetName() string`

Return the entity name.


---

## OutputUpdateProfileEntity

```go
outputUpdateProfile := client.OutputUpdateProfile(nil)
fmt.Println(outputUpdateProfile.GetName()) // "output_update_profile"
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `consumer_language` | `string` | No |  |
| `email` | `string` | No |  |
| `first_name` | `string` | No |  |
| `last_name` | `string` | No |  |
| `phone_number` | `string` | No |  |
| `response_code` | `int` | No |  |
| `response_message` | `string` | No |  |

### Operations

#### `Create(reqdata, ctrl map[string]any) (any, error)`

Create a new entity with the given data.

```go
result, err := client.OutputUpdateProfile(nil).Create(map[string]any{
}, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```

### Common Methods

#### `Data(args ...any) any`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `Match(args ...any) any`

Get or set the entity match criteria. Works the same as `Data()`.

#### `Make() Entity`

Create a new `OutputUpdateProfileEntity` instance with the same client and
options.

#### `GetName() string`

Return the entity name.


---

## VersionEntity

```go
version := client.Version(nil)
fmt.Println(version.GetName()) // "version"
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `app_name` | `string` | No |  |
| `build_date` | `string` | No |  |
| `version` | `string` | No |  |

### Operations

#### `Load(reqmatch, ctrl map[string]any) (any, error)`

Load a single entity matching the given criteria.

```go
result, err := client.Version(nil).Load(nil, nil)
if err != nil {
    panic(err)
}
fmt.Println(result)
```

### Common Methods

#### `Data(args ...any) any`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `Match(args ...any) any`

Get or set the entity match criteria. Works the same as `Data()`.

#### `Make() Entity`

Create a new `VersionEntity` instance with the same client and
options.

#### `GetName() string`

Return the entity name.


---

## Features

| Feature | Version | Description |
| --- | --- | --- |
| `test` | 0.0.1 | In-memory mock transport for testing without a live server |


Features are activated via the `feature` option:

```go
client := sdk.NewBluefinTecsUserBackofficeSDK(map[string]any{
    "feature": map[string]any{
        "test": map[string]any{"active": true},
    },
})
```


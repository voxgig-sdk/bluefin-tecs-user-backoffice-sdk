// BluefinTecsUserBackoffice SDK - generated model configuration and feature
// factory. GENERATED from the API model - do not edit by hand.

namespace BluefinTecsUserBackofficeSdk;

public static class SdkConfig
{
    public static Dictionary<string, object?> MakeConfig()
    {
        return new Dictionary<string, object?>
        {
            ["main"] = new Dictionary<string, object?>
            {
                ["name"] = "BluefinTecsUserBackoffice",
                ["slug"] = "bluefin-tecs-user-backoffice",
                ["version"] = "0.1.1",
                ["target"] = "csharp",
            },
            ["feature"] = new Dictionary<string, object?>
            {
                ["audit"] = new Dictionary<string, object?>
                {
                    ["options"] = new Dictionary<string, object?>
                    {
                        ["active"] = false,
                        ["actor"] = "anonymous",
                        ["max"] = 1000,
                    },
                    ["optspec"] = new Dictionary<string, object?>
                    {
                        ["now"] = "`$FUNCTION`",
                        ["sink"] = "`$FUNCTION`",
                    },
                    ["strict"] = false,
                    ["transport"] = "none",
                },
                ["clienttrack"] = new Dictionary<string, object?>
                {
                    ["options"] = new Dictionary<string, object?>
                    {
                        ["active"] = false,
                        ["clientVersion"] = "0.0.1",
                    },
                    ["optspec"] = new Dictionary<string, object?>
                    {
                        ["clientName"] = "`$STRING`",
                        ["clientVersion"] = "`$STRING`",
                        ["headers"] = "`$MAP`",
                        ["idgen"] = "`$FUNCTION`",
                        ["sessionId"] = "`$STRING`",
                    },
                    ["strict"] = false,
                    ["transport"] = "none",
                },
                ["debug"] = new Dictionary<string, object?>
                {
                    ["options"] = new Dictionary<string, object?>
                    {
                        ["active"] = false,
                        ["max"] = 100,
                        ["redact"] = new List<object?>
                        {
                            "authorization",
                            "cookie",
                            "set-cookie",
                            "api-key",
                            "apikey",
                            "x-api-key",
                            "idempotency-key",
                        },
                    },
                    ["optspec"] = new Dictionary<string, object?>
                    {
                        ["now"] = "`$FUNCTION`",
                        ["onEntry"] = "`$FUNCTION`",
                    },
                    ["strict"] = false,
                    ["transport"] = "none",
                },
                ["idempotency"] = new Dictionary<string, object?>
                {
                    ["options"] = new Dictionary<string, object?>
                    {
                        ["active"] = false,
                        ["header"] = "Idempotency-Key",
                        ["methods"] = new List<object?>
                        {
                            "POST",
                            "PUT",
                            "PATCH",
                            "DELETE",
                        },
                        ["ops"] = new List<object?>
                        {
                            "create",
                            "update",
                            "remove",
                        },
                    },
                    ["optspec"] = new Dictionary<string, object?>
                    {
                        ["keygen"] = "`$FUNCTION`",
                    },
                    ["strict"] = false,
                    ["transport"] = "none",
                },
                ["log"] = new Dictionary<string, object?>
                {
                    ["options"] = new Dictionary<string, object?>
                    {
                        ["active"] = true,
                    },
                    ["optspec"] = new Dictionary<string, object?>
                    {
                        ["level"] = "`$STRING`",
                        ["logger"] = "`$ANY`",
                    },
                    ["strict"] = false,
                    ["transport"] = "none",
                },
                ["metrics"] = new Dictionary<string, object?>
                {
                    ["options"] = new Dictionary<string, object?>
                    {
                        ["active"] = false,
                    },
                    ["optspec"] = new Dictionary<string, object?>
                    {
                        ["now"] = "`$FUNCTION`",
                    },
                    ["strict"] = false,
                    ["transport"] = "none",
                },
                ["paging"] = new Dictionary<string, object?>
                {
                    ["options"] = new Dictionary<string, object?>
                    {
                        ["active"] = false,
                        ["afterVar"] = "after",
                        ["cursorParam"] = "cursor",
                        ["firstVar"] = "first",
                        ["limitParam"] = "limit",
                        ["pageParam"] = "page",
                        ["startPage"] = 1,
                    },
                    ["optspec"] = new Dictionary<string, object?>
                    {
                        ["limit"] = "`$NUMBER`",
                        ["ops"] = "`$LIST`",
                    },
                    ["strict"] = false,
                    ["transport"] = "none",
                },
                ["ratelimit"] = new Dictionary<string, object?>
                {
                    ["options"] = new Dictionary<string, object?>
                    {
                        ["active"] = false,
                        ["burst"] = 5,
                        ["rate"] = 5,
                    },
                    ["optspec"] = new Dictionary<string, object?>
                    {
                        ["now"] = "`$FUNCTION`",
                        ["sleep"] = "`$FUNCTION`",
                    },
                    ["strict"] = false,
                    ["transport"] = "wrap",
                },
                ["retry"] = new Dictionary<string, object?>
                {
                    ["options"] = new Dictionary<string, object?>
                    {
                        ["active"] = false,
                        ["factor"] = 2,
                        ["maxDelay"] = 2000,
                        ["minDelay"] = 50,
                        ["retries"] = 2,
                        ["statuses"] = new List<object?>
                        {
                            408,
                            425,
                            429,
                            500,
                            502,
                            503,
                            504,
                        },
                    },
                    ["optspec"] = new Dictionary<string, object?>
                    {
                        ["jitter"] = "`$BOOLEAN`",
                        ["sleep"] = "`$FUNCTION`",
                    },
                    ["strict"] = false,
                    ["transport"] = "wrap",
                },
                ["telemetry"] = new Dictionary<string, object?>
                {
                    ["options"] = new Dictionary<string, object?>
                    {
                        ["active"] = false,
                    },
                    ["optspec"] = new Dictionary<string, object?>
                    {
                        ["exporter"] = "`$FUNCTION`",
                        ["headers"] = "`$MAP`",
                        ["idgen"] = "`$FUNCTION`",
                        ["now"] = "`$FUNCTION`",
                    },
                    ["strict"] = false,
                    ["transport"] = "none",
                },
                ["test"] = new Dictionary<string, object?>
                {
                    ["options"] = new Dictionary<string, object?>
                    {
                        ["active"] = false,
                    },
                    ["optspec"] = new Dictionary<string, object?>
                    {
                        ["entity"] = "`$MAP`",
                        ["net"] = "`$MAP`",
                    },
                    ["strict"] = false,
                    ["transport"] = "base",
                },
                ["timeout"] = new Dictionary<string, object?>
                {
                    ["options"] = new Dictionary<string, object?>
                    {
                        ["active"] = false,
                        ["ms"] = 30000,
                    },
                    ["optspec"] = new Dictionary<string, object?>
                    {
                        ["clearTimer"] = "`$FUNCTION`",
                        ["setTimer"] = "`$FUNCTION`",
                    },
                    ["strict"] = false,
                    ["transport"] = "wrap",
                },
            },
            ["options"] = new Dictionary<string, object?>
            {
                ["base"] = "https://test.tecs.at/usermanagement-backofficews",
                ["auth"] = new Dictionary<string, object?>
                {
                    ["prefix"] = "Bearer",
                },
                ["headers"] = new Dictionary<string, object?>
                {
                    ["content-type"] = "application/json",
                },
                ["entity"] = new Dictionary<string, object?>
                {
                    ["output_activate_digital_module"] = new Dictionary<string, object?>(),
                    ["output_activate_portal_module"] = new Dictionary<string, object?>(),
                    ["output_activate_store_module"] = new Dictionary<string, object?>(),
                    ["output_activate_user"] = new Dictionary<string, object?>(),
                    ["output_assign_role"] = new Dictionary<string, object?>(),
                    ["output_change_logo"] = new Dictionary<string, object?>(),
                    ["output_create_mandator"] = new Dictionary<string, object?>(),
                    ["output_create_service_user"] = new Dictionary<string, object?>(),
                    ["output_deactivate_user"] = new Dictionary<string, object?>(),
                    ["output_get_kyc_document"] = new Dictionary<string, object?>(),
                    ["output_get_logo"] = new Dictionary<string, object?>(),
                    ["output_list_of_available_role"] = new Dictionary<string, object?>(),
                    ["output_list_of_mandator"] = new Dictionary<string, object?>(),
                    ["output_list_of_module"] = new Dictionary<string, object?>(),
                    ["output_list_of_role_group"] = new Dictionary<string, object?>(),
                    ["output_list_of_transactions_history"] = new Dictionary<string, object?>(),
                    ["output_list_of_user"] = new Dictionary<string, object?>(),
                    ["output_provide_credential"] = new Dictionary<string, object?>(),
                    ["output_register_user"] = new Dictionary<string, object?>(),
                    ["output_remove_role"] = new Dictionary<string, object?>(),
                    ["output_resend_link"] = new Dictionary<string, object?>(),
                    ["output_reset_password"] = new Dictionary<string, object?>(),
                    ["output_update_consumer"] = new Dictionary<string, object?>(),
                    ["output_update_profile"] = new Dictionary<string, object?>(),
                    ["version"] = new Dictionary<string, object?>(),
                },
            },
            ["entity"] = new Dictionary<string, object?>
            {
                ["output_activate_digital_module"] = new Dictionary<string, object?>
                {
                    ["fields"] = new List<object?>
                    {
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseCode",
                            ["title"] = "Response Code",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseMessage",
                            ["title"] = "Response Message",
                            ["type"] = "`$STRING`",
                        },
                    },
                    ["name"] = "output_activate_digital_module",
                    ["op"] = new Dictionary<string, object?>
                    {
                        ["create"] = new Dictionary<string, object?>
                        {
                            ["input"] = "data",
                            ["name"] = "create",
                            ["points"] = new List<object?>
                            {
                                new Dictionary<string, object?>
                                {
                                    ["kind"] = "http",
                                    ["method"] = "POST",
                                    ["orig"] = "/activateDigitalModule",
                                    ["segments"] = new List<object?>
                                    {
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "activateDigitalModule",
                                        },
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "activateDigitalModule",
                                    },
                                    ["rename"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["args"] = new Dictionary<string, object?>
                                    {
                                        ["header"] = new List<object?>
                                        {
                                            new Dictionary<string, object?>
                                            {
                                                ["name"] = "authorization",
                                                ["orig"] = "authorization",
                                                ["type"] = "`$STRING`",
                                                ["kind"] = "header",
                                                ["reqd"] = true,
                                            },
                                        },
                                    },
                                    ["select"] = new Dictionary<string, object?>
                                    {
                                        ["exist"] = new List<object?>
                                        {
                                            "authorization",
                                        },
                                    },
                                },
                            },
                        },
                    },
                    ["relations"] = new Dictionary<string, object?>
                    {
                        ["ancestors"] = new List<object?>(),
                    },
                },
                ["output_activate_portal_module"] = new Dictionary<string, object?>
                {
                    ["fields"] = new List<object?>
                    {
                        new Dictionary<string, object?>
                        {
                            ["name"] = "clientSecret",
                            ["title"] = "Client Secret",
                            ["type"] = "`$STRING`",
                            ["req"] = true,
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "notificationEmail",
                            ["title"] = "Notification Email",
                            ["type"] = "`$STRING`",
                            ["req"] = true,
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseCode",
                            ["title"] = "Response Code",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseMessage",
                            ["title"] = "Response Message",
                            ["type"] = "`$STRING`",
                        },
                    },
                    ["name"] = "output_activate_portal_module",
                    ["op"] = new Dictionary<string, object?>
                    {
                        ["create"] = new Dictionary<string, object?>
                        {
                            ["input"] = "data",
                            ["name"] = "create",
                            ["points"] = new List<object?>
                            {
                                new Dictionary<string, object?>
                                {
                                    ["kind"] = "http",
                                    ["method"] = "POST",
                                    ["orig"] = "/activateMerchantPortalModule",
                                    ["segments"] = new List<object?>
                                    {
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "activateMerchantPortalModule",
                                        },
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "activateMerchantPortalModule",
                                    },
                                    ["rename"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["args"] = new Dictionary<string, object?>
                                    {
                                        ["header"] = new List<object?>
                                        {
                                            new Dictionary<string, object?>
                                            {
                                                ["name"] = "authorization",
                                                ["orig"] = "authorization",
                                                ["type"] = "`$STRING`",
                                                ["kind"] = "header",
                                                ["reqd"] = true,
                                            },
                                        },
                                    },
                                    ["select"] = new Dictionary<string, object?>
                                    {
                                        ["exist"] = new List<object?>
                                        {
                                            "authorization",
                                        },
                                    },
                                },
                            },
                        },
                    },
                    ["relations"] = new Dictionary<string, object?>
                    {
                        ["ancestors"] = new List<object?>(),
                    },
                },
                ["output_activate_store_module"] = new Dictionary<string, object?>
                {
                    ["fields"] = new List<object?>
                    {
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseCode",
                            ["title"] = "Response Code",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseMessage",
                            ["title"] = "Response Message",
                            ["type"] = "`$STRING`",
                        },
                    },
                    ["name"] = "output_activate_store_module",
                    ["op"] = new Dictionary<string, object?>
                    {
                        ["create"] = new Dictionary<string, object?>
                        {
                            ["input"] = "data",
                            ["name"] = "create",
                            ["points"] = new List<object?>
                            {
                                new Dictionary<string, object?>
                                {
                                    ["kind"] = "http",
                                    ["method"] = "POST",
                                    ["orig"] = "/activateAppStoreModule",
                                    ["segments"] = new List<object?>
                                    {
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "activateAppStoreModule",
                                        },
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "activateAppStoreModule",
                                    },
                                    ["rename"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["args"] = new Dictionary<string, object?>
                                    {
                                        ["header"] = new List<object?>
                                        {
                                            new Dictionary<string, object?>
                                            {
                                                ["name"] = "authorization",
                                                ["orig"] = "authorization",
                                                ["type"] = "`$STRING`",
                                                ["kind"] = "header",
                                                ["reqd"] = true,
                                            },
                                        },
                                    },
                                    ["select"] = new Dictionary<string, object?>
                                    {
                                        ["exist"] = new List<object?>
                                        {
                                            "authorization",
                                        },
                                    },
                                },
                            },
                        },
                    },
                    ["relations"] = new Dictionary<string, object?>
                    {
                        ["ancestors"] = new List<object?>(),
                    },
                },
                ["output_activate_user"] = new Dictionary<string, object?>
                {
                    ["fields"] = new List<object?>
                    {
                        new Dictionary<string, object?>
                        {
                            ["name"] = "consumerUUID",
                            ["title"] = "Consumer Uuid",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseCode",
                            ["title"] = "Response Code",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseMessage",
                            ["title"] = "Response Message",
                            ["type"] = "`$STRING`",
                        },
                    },
                    ["name"] = "output_activate_user",
                    ["op"] = new Dictionary<string, object?>
                    {
                        ["create"] = new Dictionary<string, object?>
                        {
                            ["input"] = "data",
                            ["name"] = "create",
                            ["points"] = new List<object?>
                            {
                                new Dictionary<string, object?>
                                {
                                    ["kind"] = "http",
                                    ["method"] = "POST",
                                    ["orig"] = "/activateUser",
                                    ["segments"] = new List<object?>
                                    {
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "activateUser",
                                        },
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "activateUser",
                                    },
                                    ["rename"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["args"] = new Dictionary<string, object?>
                                    {
                                        ["header"] = new List<object?>
                                        {
                                            new Dictionary<string, object?>
                                            {
                                                ["name"] = "authorization",
                                                ["orig"] = "authorization",
                                                ["type"] = "`$STRING`",
                                                ["kind"] = "header",
                                                ["reqd"] = true,
                                            },
                                        },
                                    },
                                    ["select"] = new Dictionary<string, object?>
                                    {
                                        ["exist"] = new List<object?>
                                        {
                                            "authorization",
                                        },
                                    },
                                },
                            },
                        },
                    },
                    ["relations"] = new Dictionary<string, object?>
                    {
                        ["ancestors"] = new List<object?>(),
                    },
                },
                ["output_assign_role"] = new Dictionary<string, object?>
                {
                    ["fields"] = new List<object?>
                    {
                        new Dictionary<string, object?>
                        {
                            ["name"] = "consumerUUID",
                            ["title"] = "Consumer Uuid",
                            ["type"] = "`$STRING`",
                            ["req"] = true,
                            ["short"] = "Unique identifier of the consumer (user) to whom the role(s) will be assigned.",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseCode",
                            ["title"] = "Response Code",
                            ["type"] = "`$INTEGER`",
                            ["short"] = "Response code: 0 indicates success; any non-zero value indicates an error.",
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseMessage",
                            ["title"] = "Response Message",
                            ["type"] = "`$STRING`",
                            ["short"] = "A human-readable message providing additional details about the outcome.",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "roles",
                            ["title"] = "Roles",
                            ["type"] = "`$ARRAY`",
                            ["req"] = true,
                            ["short"] = "List of roles to assign to the consumer.",
                        },
                    },
                    ["name"] = "output_assign_role",
                    ["op"] = new Dictionary<string, object?>
                    {
                        ["create"] = new Dictionary<string, object?>
                        {
                            ["input"] = "data",
                            ["name"] = "create",
                            ["points"] = new List<object?>
                            {
                                new Dictionary<string, object?>
                                {
                                    ["kind"] = "http",
                                    ["method"] = "POST",
                                    ["orig"] = "/assignRoles",
                                    ["segments"] = new List<object?>
                                    {
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "assignRoles",
                                        },
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "assignRoles",
                                    },
                                    ["rename"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["args"] = new Dictionary<string, object?>
                                    {
                                        ["header"] = new List<object?>
                                        {
                                            new Dictionary<string, object?>
                                            {
                                                ["name"] = "authorization",
                                                ["orig"] = "authorization",
                                                ["type"] = "`$STRING`",
                                                ["kind"] = "header",
                                                ["reqd"] = true,
                                            },
                                        },
                                    },
                                    ["select"] = new Dictionary<string, object?>
                                    {
                                        ["exist"] = new List<object?>
                                        {
                                            "authorization",
                                        },
                                    },
                                },
                            },
                        },
                    },
                    ["relations"] = new Dictionary<string, object?>
                    {
                        ["ancestors"] = new List<object?>(),
                    },
                },
                ["output_change_logo"] = new Dictionary<string, object?>
                {
                    ["fields"] = new List<object?>
                    {
                        new Dictionary<string, object?>
                        {
                            ["name"] = "contentAsBase64",
                            ["title"] = "Content As Base64",
                            ["type"] = "`$STRING`",
                            ["req"] = true,
                            ["short"] = "The content of the image as base64 encoded string",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "mimeType",
                            ["title"] = "Mime Type",
                            ["type"] = "`$STRING`",
                            ["req"] = true,
                            ["short"] = "The MIME type of the image",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseCode",
                            ["title"] = "Response Code",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseMessage",
                            ["title"] = "Response Message",
                            ["type"] = "`$STRING`",
                        },
                    },
                    ["name"] = "output_change_logo",
                    ["op"] = new Dictionary<string, object?>
                    {
                        ["create"] = new Dictionary<string, object?>
                        {
                            ["input"] = "data",
                            ["name"] = "create",
                            ["points"] = new List<object?>
                            {
                                new Dictionary<string, object?>
                                {
                                    ["kind"] = "http",
                                    ["method"] = "POST",
                                    ["orig"] = "/changeLogo",
                                    ["segments"] = new List<object?>
                                    {
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "changeLogo",
                                        },
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "changeLogo",
                                    },
                                    ["rename"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["args"] = new Dictionary<string, object?>
                                    {
                                        ["header"] = new List<object?>
                                        {
                                            new Dictionary<string, object?>
                                            {
                                                ["name"] = "authorization",
                                                ["orig"] = "authorization",
                                                ["type"] = "`$STRING`",
                                                ["kind"] = "header",
                                                ["reqd"] = true,
                                            },
                                        },
                                    },
                                    ["select"] = new Dictionary<string, object?>
                                    {
                                        ["exist"] = new List<object?>
                                        {
                                            "authorization",
                                        },
                                    },
                                },
                            },
                        },
                    },
                    ["relations"] = new Dictionary<string, object?>
                    {
                        ["ancestors"] = new List<object?>(),
                    },
                },
                ["output_create_mandator"] = new Dictionary<string, object?>
                {
                    ["fields"] = new List<object?>
                    {
                        new Dictionary<string, object?>
                        {
                            ["name"] = "city",
                            ["title"] = "City",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "country",
                            ["title"] = "Country",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "dateOfBirth",
                            ["title"] = "Date Of Birth",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "description",
                            ["title"] = "Description",
                            ["type"] = "`$STRING`",
                            ["op"] = new Dictionary<string, object?>
                            {
                                ["create"] = new Dictionary<string, object?>
                                {
                                    ["req"] = true,
                                    ["type"] = "`$STRING`",
                                },
                            },
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "driversLicenseNumber",
                            ["title"] = "Drivers License Number",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "email",
                            ["title"] = "Email",
                            ["type"] = "`$STRING`",
                            ["req"] = true,
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "firstName",
                            ["title"] = "First Name",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "identificationNumber",
                            ["title"] = "Identification Number",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "lastName",
                            ["title"] = "Last Name",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "login",
                            ["title"] = "Login",
                            ["type"] = "`$STRING`",
                            ["req"] = true,
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "name",
                            ["title"] = "Name",
                            ["type"] = "`$STRING`",
                            ["op"] = new Dictionary<string, object?>
                            {
                                ["create"] = new Dictionary<string, object?>
                                {
                                    ["req"] = true,
                                    ["type"] = "`$STRING`",
                                },
                            },
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "passportNumber",
                            ["title"] = "Passport Number",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "phone",
                            ["title"] = "Phone",
                            ["type"] = "`$STRING`",
                            ["req"] = true,
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "salutation",
                            ["title"] = "Salutation",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "state",
                            ["title"] = "State",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "street1",
                            ["title"] = "Street1",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "street2",
                            ["title"] = "Street2",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "zipCode",
                            ["title"] = "Zip Code",
                            ["type"] = "`$STRING`",
                        },
                    },
                    ["name"] = "output_create_mandator",
                    ["op"] = new Dictionary<string, object?>
                    {
                        ["create"] = new Dictionary<string, object?>
                        {
                            ["input"] = "data",
                            ["name"] = "create",
                            ["points"] = new List<object?>
                            {
                                new Dictionary<string, object?>
                                {
                                    ["kind"] = "http",
                                    ["method"] = "POST",
                                    ["orig"] = "/createMandator",
                                    ["segments"] = new List<object?>
                                    {
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "createMandator",
                                        },
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "createMandator",
                                    },
                                    ["rename"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body.mandator`",
                                    },
                                    ["args"] = new Dictionary<string, object?>
                                    {
                                        ["header"] = new List<object?>
                                        {
                                            new Dictionary<string, object?>
                                            {
                                                ["name"] = "authorization",
                                                ["orig"] = "authorization",
                                                ["type"] = "`$STRING`",
                                                ["kind"] = "header",
                                                ["reqd"] = true,
                                            },
                                        },
                                    },
                                    ["select"] = new Dictionary<string, object?>
                                    {
                                        ["exist"] = new List<object?>
                                        {
                                            "authorization",
                                        },
                                    },
                                },
                            },
                        },
                    },
                    ["relations"] = new Dictionary<string, object?>
                    {
                        ["ancestors"] = new List<object?>(),
                    },
                },
                ["output_create_service_user"] = new Dictionary<string, object?>
                {
                    ["fields"] = new List<object?>
                    {
                        new Dictionary<string, object?>
                        {
                            ["name"] = "mandatorName",
                            ["title"] = "Mandator Name",
                            ["type"] = "`$STRING`",
                            ["req"] = true,
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseCode",
                            ["title"] = "Response Code",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseMessage",
                            ["title"] = "Response Message",
                            ["type"] = "`$STRING`",
                        },
                    },
                    ["name"] = "output_create_service_user",
                    ["op"] = new Dictionary<string, object?>
                    {
                        ["create"] = new Dictionary<string, object?>
                        {
                            ["input"] = "data",
                            ["name"] = "create",
                            ["points"] = new List<object?>
                            {
                                new Dictionary<string, object?>
                                {
                                    ["kind"] = "http",
                                    ["method"] = "POST",
                                    ["orig"] = "/createServiceUser",
                                    ["segments"] = new List<object?>
                                    {
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "createServiceUser",
                                        },
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "createServiceUser",
                                    },
                                    ["rename"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["args"] = new Dictionary<string, object?>
                                    {
                                        ["header"] = new List<object?>
                                        {
                                            new Dictionary<string, object?>
                                            {
                                                ["name"] = "authorization",
                                                ["orig"] = "authorization",
                                                ["type"] = "`$STRING`",
                                                ["kind"] = "header",
                                                ["reqd"] = true,
                                            },
                                        },
                                    },
                                    ["select"] = new Dictionary<string, object?>
                                    {
                                        ["exist"] = new List<object?>
                                        {
                                            "authorization",
                                        },
                                    },
                                },
                            },
                        },
                    },
                    ["relations"] = new Dictionary<string, object?>
                    {
                        ["ancestors"] = new List<object?>(),
                    },
                },
                ["output_deactivate_user"] = new Dictionary<string, object?>
                {
                    ["fields"] = new List<object?>
                    {
                        new Dictionary<string, object?>
                        {
                            ["name"] = "consumerUUID",
                            ["title"] = "Consumer Uuid",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseCode",
                            ["title"] = "Response Code",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseMessage",
                            ["title"] = "Response Message",
                            ["type"] = "`$STRING`",
                        },
                    },
                    ["name"] = "output_deactivate_user",
                    ["op"] = new Dictionary<string, object?>
                    {
                        ["create"] = new Dictionary<string, object?>
                        {
                            ["input"] = "data",
                            ["name"] = "create",
                            ["points"] = new List<object?>
                            {
                                new Dictionary<string, object?>
                                {
                                    ["kind"] = "http",
                                    ["method"] = "POST",
                                    ["orig"] = "/deactivateUser",
                                    ["segments"] = new List<object?>
                                    {
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "deactivateUser",
                                        },
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "deactivateUser",
                                    },
                                    ["rename"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["args"] = new Dictionary<string, object?>
                                    {
                                        ["header"] = new List<object?>
                                        {
                                            new Dictionary<string, object?>
                                            {
                                                ["name"] = "authorization",
                                                ["orig"] = "authorization",
                                                ["type"] = "`$STRING`",
                                                ["kind"] = "header",
                                                ["reqd"] = true,
                                            },
                                        },
                                    },
                                    ["select"] = new Dictionary<string, object?>
                                    {
                                        ["exist"] = new List<object?>
                                        {
                                            "authorization",
                                        },
                                    },
                                },
                            },
                        },
                    },
                    ["relations"] = new Dictionary<string, object?>
                    {
                        ["ancestors"] = new List<object?>(),
                    },
                },
                ["output_get_kyc_document"] = new Dictionary<string, object?>
                {
                    ["fields"] = new List<object?>
                    {
                        new Dictionary<string, object?>
                        {
                            ["name"] = "caseID",
                            ["title"] = "Case Id",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "encodedDataBase64",
                            ["title"] = "Encoded Data Base64",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseCode",
                            ["title"] = "Response Code",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseMessage",
                            ["title"] = "Response Message",
                            ["type"] = "`$STRING`",
                        },
                    },
                    ["name"] = "output_get_kyc_document",
                    ["op"] = new Dictionary<string, object?>
                    {
                        ["create"] = new Dictionary<string, object?>
                        {
                            ["input"] = "data",
                            ["name"] = "create",
                            ["points"] = new List<object?>
                            {
                                new Dictionary<string, object?>
                                {
                                    ["kind"] = "http",
                                    ["method"] = "POST",
                                    ["orig"] = "/getKycDocument",
                                    ["segments"] = new List<object?>
                                    {
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "getKycDocument",
                                        },
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "getKycDocument",
                                    },
                                    ["rename"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["args"] = new Dictionary<string, object?>
                                    {
                                        ["header"] = new List<object?>
                                        {
                                            new Dictionary<string, object?>
                                            {
                                                ["name"] = "authorization",
                                                ["orig"] = "authorization",
                                                ["type"] = "`$STRING`",
                                                ["kind"] = "header",
                                                ["reqd"] = true,
                                            },
                                        },
                                    },
                                    ["select"] = new Dictionary<string, object?>
                                    {
                                        ["exist"] = new List<object?>
                                        {
                                            "authorization",
                                        },
                                    },
                                },
                            },
                        },
                    },
                    ["relations"] = new Dictionary<string, object?>
                    {
                        ["ancestors"] = new List<object?>(),
                    },
                },
                ["output_get_logo"] = new Dictionary<string, object?>
                {
                    ["fields"] = new List<object?>
                    {
                        new Dictionary<string, object?>
                        {
                            ["name"] = "contentAsBase64",
                            ["title"] = "Content As Base64",
                            ["type"] = "`$STRING`",
                            ["req"] = true,
                            ["short"] = "The content of the image as base64 encoded string",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "mimeType",
                            ["title"] = "Mime Type",
                            ["type"] = "`$STRING`",
                            ["req"] = true,
                            ["short"] = "The MIME type of the image",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseCode",
                            ["title"] = "Response Code",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseMessage",
                            ["title"] = "Response Message",
                            ["type"] = "`$STRING`",
                        },
                    },
                    ["name"] = "output_get_logo",
                    ["op"] = new Dictionary<string, object?>
                    {
                        ["load"] = new Dictionary<string, object?>
                        {
                            ["input"] = "data",
                            ["name"] = "load",
                            ["points"] = new List<object?>
                            {
                                new Dictionary<string, object?>
                                {
                                    ["kind"] = "http",
                                    ["method"] = "GET",
                                    ["orig"] = "/getLogo",
                                    ["segments"] = new List<object?>
                                    {
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "getLogo",
                                        },
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "getLogo",
                                    },
                                    ["rename"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["args"] = new Dictionary<string, object?>
                                    {
                                        ["header"] = new List<object?>
                                        {
                                            new Dictionary<string, object?>
                                            {
                                                ["name"] = "authorization",
                                                ["orig"] = "authorization",
                                                ["type"] = "`$STRING`",
                                                ["kind"] = "header",
                                                ["reqd"] = true,
                                            },
                                        },
                                    },
                                    ["select"] = new Dictionary<string, object?>
                                    {
                                        ["exist"] = new List<object?>
                                        {
                                            "authorization",
                                        },
                                    },
                                },
                            },
                        },
                    },
                    ["relations"] = new Dictionary<string, object?>
                    {
                        ["ancestors"] = new List<object?>(),
                    },
                },
                ["output_list_of_available_role"] = new Dictionary<string, object?>
                {
                    ["fields"] = new List<object?>
                    {
                        new Dictionary<string, object?>
                        {
                            ["name"] = "availableRoles",
                            ["title"] = "Available Roles",
                            ["type"] = "`$ARRAY`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseCode",
                            ["title"] = "Response Code",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseMessage",
                            ["title"] = "Response Message",
                            ["type"] = "`$STRING`",
                        },
                    },
                    ["name"] = "output_list_of_available_role",
                    ["op"] = new Dictionary<string, object?>
                    {
                        ["create"] = new Dictionary<string, object?>
                        {
                            ["input"] = "data",
                            ["name"] = "create",
                            ["points"] = new List<object?>
                            {
                                new Dictionary<string, object?>
                                {
                                    ["kind"] = "http",
                                    ["method"] = "POST",
                                    ["orig"] = "/listOfAvailableRoles",
                                    ["segments"] = new List<object?>
                                    {
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "listOfAvailableRoles",
                                        },
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "listOfAvailableRoles",
                                    },
                                    ["rename"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["args"] = new Dictionary<string, object?>
                                    {
                                        ["header"] = new List<object?>
                                        {
                                            new Dictionary<string, object?>
                                            {
                                                ["name"] = "authorization",
                                                ["orig"] = "authorization",
                                                ["type"] = "`$STRING`",
                                                ["kind"] = "header",
                                                ["reqd"] = true,
                                            },
                                        },
                                    },
                                    ["select"] = new Dictionary<string, object?>
                                    {
                                        ["exist"] = new List<object?>
                                        {
                                            "authorization",
                                        },
                                    },
                                },
                            },
                        },
                    },
                    ["relations"] = new Dictionary<string, object?>
                    {
                        ["ancestors"] = new List<object?>(),
                    },
                },
                ["output_list_of_mandator"] = new Dictionary<string, object?>
                {
                    ["fields"] = new List<object?>
                    {
                        new Dictionary<string, object?>
                        {
                            ["name"] = "filter",
                            ["title"] = "Filter",
                            ["type"] = "`$OBJECT`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "list",
                            ["title"] = "List",
                            ["type"] = "`$ARRAY`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "pagination",
                            ["title"] = "Pagination",
                            ["type"] = "`$OBJECT`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseCode",
                            ["title"] = "Response Code",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseMessage",
                            ["title"] = "Response Message",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "sorting",
                            ["title"] = "Sorting",
                            ["type"] = "`$OBJECT`",
                        },
                    },
                    ["name"] = "output_list_of_mandator",
                    ["op"] = new Dictionary<string, object?>
                    {
                        ["create"] = new Dictionary<string, object?>
                        {
                            ["input"] = "data",
                            ["name"] = "create",
                            ["points"] = new List<object?>
                            {
                                new Dictionary<string, object?>
                                {
                                    ["kind"] = "http",
                                    ["method"] = "POST",
                                    ["orig"] = "/listOfMandators",
                                    ["segments"] = new List<object?>
                                    {
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "listOfMandators",
                                        },
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "listOfMandators",
                                    },
                                    ["rename"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["args"] = new Dictionary<string, object?>
                                    {
                                        ["header"] = new List<object?>
                                        {
                                            new Dictionary<string, object?>
                                            {
                                                ["name"] = "authorization",
                                                ["orig"] = "authorization",
                                                ["type"] = "`$STRING`",
                                                ["kind"] = "header",
                                                ["reqd"] = true,
                                            },
                                        },
                                    },
                                    ["select"] = new Dictionary<string, object?>
                                    {
                                        ["exist"] = new List<object?>
                                        {
                                            "authorization",
                                        },
                                    },
                                },
                            },
                        },
                    },
                    ["relations"] = new Dictionary<string, object?>
                    {
                        ["ancestors"] = new List<object?>(),
                    },
                },
                ["output_list_of_module"] = new Dictionary<string, object?>
                {
                    ["fields"] = new List<object?>
                    {
                        new Dictionary<string, object?>
                        {
                            ["name"] = "list",
                            ["title"] = "List",
                            ["type"] = "`$ARRAY`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "pagination",
                            ["title"] = "Pagination",
                            ["type"] = "`$OBJECT`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseCode",
                            ["title"] = "Response Code",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseMessage",
                            ["title"] = "Response Message",
                            ["type"] = "`$STRING`",
                        },
                    },
                    ["name"] = "output_list_of_module",
                    ["op"] = new Dictionary<string, object?>
                    {
                        ["create"] = new Dictionary<string, object?>
                        {
                            ["input"] = "data",
                            ["name"] = "create",
                            ["points"] = new List<object?>
                            {
                                new Dictionary<string, object?>
                                {
                                    ["kind"] = "http",
                                    ["method"] = "POST",
                                    ["orig"] = "/listOfModules",
                                    ["segments"] = new List<object?>
                                    {
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "listOfModules",
                                        },
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "listOfModules",
                                    },
                                    ["rename"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["args"] = new Dictionary<string, object?>
                                    {
                                        ["header"] = new List<object?>
                                        {
                                            new Dictionary<string, object?>
                                            {
                                                ["name"] = "authorization",
                                                ["orig"] = "authorization",
                                                ["type"] = "`$STRING`",
                                                ["kind"] = "header",
                                                ["reqd"] = true,
                                            },
                                        },
                                    },
                                    ["select"] = new Dictionary<string, object?>
                                    {
                                        ["exist"] = new List<object?>
                                        {
                                            "authorization",
                                        },
                                    },
                                },
                            },
                        },
                    },
                    ["relations"] = new Dictionary<string, object?>
                    {
                        ["ancestors"] = new List<object?>(),
                    },
                },
                ["output_list_of_role_group"] = new Dictionary<string, object?>
                {
                    ["fields"] = new List<object?>
                    {
                        new Dictionary<string, object?>
                        {
                            ["name"] = "filter",
                            ["title"] = "Filter",
                            ["type"] = "`$OBJECT`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "groupRoles",
                            ["title"] = "Group Roles",
                            ["type"] = "`$ARRAY`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "pagination",
                            ["title"] = "Pagination",
                            ["type"] = "`$OBJECT`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseCode",
                            ["title"] = "Response Code",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseMessage",
                            ["title"] = "Response Message",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "sorting",
                            ["title"] = "Sorting",
                            ["type"] = "`$OBJECT`",
                        },
                    },
                    ["name"] = "output_list_of_role_group",
                    ["op"] = new Dictionary<string, object?>
                    {
                        ["create"] = new Dictionary<string, object?>
                        {
                            ["input"] = "data",
                            ["name"] = "create",
                            ["points"] = new List<object?>
                            {
                                new Dictionary<string, object?>
                                {
                                    ["kind"] = "http",
                                    ["method"] = "POST",
                                    ["orig"] = "/listOfRoleGroups",
                                    ["segments"] = new List<object?>
                                    {
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "listOfRoleGroups",
                                        },
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "listOfRoleGroups",
                                    },
                                    ["rename"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["args"] = new Dictionary<string, object?>
                                    {
                                        ["header"] = new List<object?>
                                        {
                                            new Dictionary<string, object?>
                                            {
                                                ["name"] = "authorization",
                                                ["orig"] = "authorization",
                                                ["type"] = "`$STRING`",
                                                ["kind"] = "header",
                                                ["reqd"] = true,
                                            },
                                        },
                                    },
                                    ["select"] = new Dictionary<string, object?>
                                    {
                                        ["exist"] = new List<object?>
                                        {
                                            "authorization",
                                        },
                                    },
                                },
                            },
                        },
                    },
                    ["relations"] = new Dictionary<string, object?>
                    {
                        ["ancestors"] = new List<object?>(),
                    },
                },
                ["output_list_of_transactions_history"] = new Dictionary<string, object?>
                {
                    ["fields"] = new List<object?>
                    {
                        new Dictionary<string, object?>
                        {
                            ["name"] = "filter",
                            ["title"] = "Filter",
                            ["type"] = "`$OBJECT`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "list",
                            ["title"] = "List",
                            ["type"] = "`$ARRAY`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "pagination",
                            ["title"] = "Pagination",
                            ["type"] = "`$OBJECT`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseCode",
                            ["title"] = "Response Code",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseMessage",
                            ["title"] = "Response Message",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "sorting",
                            ["title"] = "Sorting",
                            ["type"] = "`$OBJECT`",
                        },
                    },
                    ["name"] = "output_list_of_transactions_history",
                    ["op"] = new Dictionary<string, object?>
                    {
                        ["create"] = new Dictionary<string, object?>
                        {
                            ["input"] = "data",
                            ["name"] = "create",
                            ["points"] = new List<object?>
                            {
                                new Dictionary<string, object?>
                                {
                                    ["kind"] = "http",
                                    ["method"] = "POST",
                                    ["orig"] = "/listOfTransactionsHistory",
                                    ["segments"] = new List<object?>
                                    {
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "listOfTransactionsHistory",
                                        },
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "listOfTransactionsHistory",
                                    },
                                    ["rename"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["args"] = new Dictionary<string, object?>
                                    {
                                        ["header"] = new List<object?>
                                        {
                                            new Dictionary<string, object?>
                                            {
                                                ["name"] = "authorization",
                                                ["orig"] = "authorization",
                                                ["type"] = "`$STRING`",
                                                ["kind"] = "header",
                                                ["reqd"] = true,
                                            },
                                        },
                                    },
                                    ["select"] = new Dictionary<string, object?>
                                    {
                                        ["exist"] = new List<object?>
                                        {
                                            "authorization",
                                        },
                                    },
                                },
                            },
                        },
                    },
                    ["relations"] = new Dictionary<string, object?>
                    {
                        ["ancestors"] = new List<object?>(),
                    },
                },
                ["output_list_of_user"] = new Dictionary<string, object?>
                {
                    ["fields"] = new List<object?>
                    {
                        new Dictionary<string, object?>
                        {
                            ["name"] = "filter",
                            ["title"] = "Filter",
                            ["type"] = "`$OBJECT`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "list",
                            ["title"] = "List",
                            ["type"] = "`$ARRAY`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "pagination",
                            ["title"] = "Pagination",
                            ["type"] = "`$OBJECT`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseCode",
                            ["title"] = "Response Code",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseMessage",
                            ["title"] = "Response Message",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "sorting",
                            ["title"] = "Sorting",
                            ["type"] = "`$OBJECT`",
                        },
                    },
                    ["name"] = "output_list_of_user",
                    ["op"] = new Dictionary<string, object?>
                    {
                        ["create"] = new Dictionary<string, object?>
                        {
                            ["input"] = "data",
                            ["name"] = "create",
                            ["points"] = new List<object?>
                            {
                                new Dictionary<string, object?>
                                {
                                    ["kind"] = "http",
                                    ["method"] = "POST",
                                    ["orig"] = "/listOfUsers",
                                    ["segments"] = new List<object?>
                                    {
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "listOfUsers",
                                        },
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "listOfUsers",
                                    },
                                    ["rename"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["args"] = new Dictionary<string, object?>
                                    {
                                        ["header"] = new List<object?>
                                        {
                                            new Dictionary<string, object?>
                                            {
                                                ["name"] = "authorization",
                                                ["orig"] = "authorization",
                                                ["type"] = "`$STRING`",
                                                ["kind"] = "header",
                                                ["reqd"] = true,
                                            },
                                        },
                                    },
                                    ["select"] = new Dictionary<string, object?>
                                    {
                                        ["exist"] = new List<object?>
                                        {
                                            "authorization",
                                        },
                                    },
                                },
                            },
                        },
                    },
                    ["relations"] = new Dictionary<string, object?>
                    {
                        ["ancestors"] = new List<object?>(),
                    },
                },
                ["output_provide_credential"] = new Dictionary<string, object?>
                {
                    ["fields"] = new List<object?>
                    {
                        new Dictionary<string, object?>
                        {
                            ["name"] = "mandatorName",
                            ["title"] = "Mandator Name",
                            ["type"] = "`$STRING`",
                            ["req"] = true,
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "password",
                            ["title"] = "Password",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseCode",
                            ["title"] = "Response Code",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseMessage",
                            ["title"] = "Response Message",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "username",
                            ["title"] = "Username",
                            ["type"] = "`$STRING`",
                        },
                    },
                    ["name"] = "output_provide_credential",
                    ["op"] = new Dictionary<string, object?>
                    {
                        ["create"] = new Dictionary<string, object?>
                        {
                            ["input"] = "data",
                            ["name"] = "create",
                            ["points"] = new List<object?>
                            {
                                new Dictionary<string, object?>
                                {
                                    ["kind"] = "http",
                                    ["method"] = "POST",
                                    ["orig"] = "/provideCredentials",
                                    ["segments"] = new List<object?>
                                    {
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "provideCredentials",
                                        },
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "provideCredentials",
                                    },
                                    ["rename"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["args"] = new Dictionary<string, object?>
                                    {
                                        ["header"] = new List<object?>
                                        {
                                            new Dictionary<string, object?>
                                            {
                                                ["name"] = "authorization",
                                                ["orig"] = "authorization",
                                                ["type"] = "`$STRING`",
                                                ["kind"] = "header",
                                                ["reqd"] = true,
                                            },
                                        },
                                    },
                                    ["select"] = new Dictionary<string, object?>
                                    {
                                        ["exist"] = new List<object?>
                                        {
                                            "authorization",
                                        },
                                    },
                                },
                            },
                        },
                    },
                    ["relations"] = new Dictionary<string, object?>
                    {
                        ["ancestors"] = new List<object?>(),
                    },
                },
                ["output_register_user"] = new Dictionary<string, object?>
                {
                    ["fields"] = new List<object?>
                    {
                        new Dictionary<string, object?>
                        {
                            ["name"] = "city",
                            ["title"] = "City",
                            ["type"] = "`$STRING`",
                            ["short"] = "City where the user resides.",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "consumerId",
                            ["title"] = "Consumer Id",
                            ["type"] = "`$STRING`",
                            ["short"] = "User login or unique user identifier.",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "consumerLanguage",
                            ["title"] = "Consumer Language",
                            ["type"] = "`$STRING`",
                            ["short"] = "Preferred language for the user (e.g., 'en').",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "country",
                            ["title"] = "Country",
                            ["type"] = "`$STRING`",
                            ["short"] = "User's country.",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "dateOfBirth",
                            ["title"] = "Date Of Birth",
                            ["type"] = "`$STRING`",
                            ["short"] = "User's date of birth (expected format: dd.MM.yyyy).",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "driverLicenceNumber",
                            ["title"] = "Driver Licence Number",
                            ["type"] = "`$STRING`",
                            ["short"] = "User's driver's license number.",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "email",
                            ["title"] = "Email",
                            ["type"] = "`$STRING`",
                            ["req"] = true,
                            ["short"] = "User's email address (must be unique).",
                            ["format"] = "email",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "firstName",
                            ["title"] = "First Name",
                            ["type"] = "`$STRING`",
                            ["short"] = "User's first name.",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "identificationNumber",
                            ["title"] = "Identification Number",
                            ["type"] = "`$STRING`",
                            ["short"] = "User's identification number.",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "lastName",
                            ["title"] = "Last Name",
                            ["type"] = "`$STRING`",
                            ["short"] = "User's last name.",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "login",
                            ["title"] = "Login",
                            ["type"] = "`$STRING`",
                            ["short"] = "User login identifier (should be unique).",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "module",
                            ["title"] = "Module",
                            ["type"] = "`$STRING`",
                            ["short"] = "Module identifier (if applicable).",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "passportNumber",
                            ["title"] = "Passport Number",
                            ["type"] = "`$STRING`",
                            ["short"] = "User's passport number.",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "phone",
                            ["title"] = "Phone",
                            ["type"] = "`$STRING`",
                            ["short"] = "User's phone number.",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseCode",
                            ["title"] = "Response Code",
                            ["type"] = "`$INTEGER`",
                            ["short"] = "Response code (0 indicates success; non-zero indicates an error).",
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseMessage",
                            ["title"] = "Response Message",
                            ["type"] = "`$STRING`",
                            ["short"] = "Human-readable response message.",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "salutation",
                            ["title"] = "Salutation",
                            ["type"] = "`$STRING`",
                            ["short"] = "User's salutation (e.g., Mr., Ms.).",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "state",
                            ["title"] = "State",
                            ["type"] = "`$STRING`",
                            ["short"] = "User's state or region.",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "street1",
                            ["title"] = "Street1",
                            ["type"] = "`$STRING`",
                            ["short"] = "Primary address line.",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "street2",
                            ["title"] = "Street2",
                            ["type"] = "`$STRING`",
                            ["short"] = "Secondary address line.",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "zip",
                            ["title"] = "Zip",
                            ["type"] = "`$STRING`",
                            ["short"] = "Postal code.",
                        },
                    },
                    ["name"] = "output_register_user",
                    ["op"] = new Dictionary<string, object?>
                    {
                        ["create"] = new Dictionary<string, object?>
                        {
                            ["input"] = "data",
                            ["name"] = "create",
                            ["points"] = new List<object?>
                            {
                                new Dictionary<string, object?>
                                {
                                    ["kind"] = "http",
                                    ["method"] = "POST",
                                    ["orig"] = "/registerUser",
                                    ["segments"] = new List<object?>
                                    {
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "registerUser",
                                        },
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "registerUser",
                                    },
                                    ["rename"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["args"] = new Dictionary<string, object?>
                                    {
                                        ["header"] = new List<object?>
                                        {
                                            new Dictionary<string, object?>
                                            {
                                                ["name"] = "authorization",
                                                ["orig"] = "authorization",
                                                ["type"] = "`$STRING`",
                                                ["kind"] = "header",
                                                ["reqd"] = true,
                                            },
                                        },
                                    },
                                    ["select"] = new Dictionary<string, object?>
                                    {
                                        ["exist"] = new List<object?>
                                        {
                                            "authorization",
                                        },
                                    },
                                },
                            },
                        },
                    },
                    ["relations"] = new Dictionary<string, object?>
                    {
                        ["ancestors"] = new List<object?>(),
                    },
                },
                ["output_remove_role"] = new Dictionary<string, object?>
                {
                    ["fields"] = new List<object?>
                    {
                        new Dictionary<string, object?>
                        {
                            ["name"] = "consumerUUID",
                            ["title"] = "Consumer Uuid",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseCode",
                            ["title"] = "Response Code",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseMessage",
                            ["title"] = "Response Message",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "roles",
                            ["title"] = "Roles",
                            ["type"] = "`$ARRAY`",
                        },
                    },
                    ["name"] = "output_remove_role",
                    ["op"] = new Dictionary<string, object?>
                    {
                        ["create"] = new Dictionary<string, object?>
                        {
                            ["input"] = "data",
                            ["name"] = "create",
                            ["points"] = new List<object?>
                            {
                                new Dictionary<string, object?>
                                {
                                    ["kind"] = "http",
                                    ["method"] = "POST",
                                    ["orig"] = "/removeRoles",
                                    ["segments"] = new List<object?>
                                    {
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "removeRoles",
                                        },
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "removeRoles",
                                    },
                                    ["rename"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["args"] = new Dictionary<string, object?>
                                    {
                                        ["header"] = new List<object?>
                                        {
                                            new Dictionary<string, object?>
                                            {
                                                ["name"] = "authorization",
                                                ["orig"] = "authorization",
                                                ["type"] = "`$STRING`",
                                                ["kind"] = "header",
                                                ["reqd"] = true,
                                            },
                                        },
                                    },
                                    ["select"] = new Dictionary<string, object?>
                                    {
                                        ["exist"] = new List<object?>
                                        {
                                            "authorization",
                                        },
                                    },
                                },
                            },
                        },
                    },
                    ["relations"] = new Dictionary<string, object?>
                    {
                        ["ancestors"] = new List<object?>(),
                    },
                },
                ["output_resend_link"] = new Dictionary<string, object?>
                {
                    ["fields"] = new List<object?>
                    {
                        new Dictionary<string, object?>
                        {
                            ["name"] = "businessRegistrationNumber",
                            ["title"] = "Business Registration Number",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "consumerUUID",
                            ["title"] = "Consumer Uuid",
                            ["type"] = "`$STRING`",
                            ["req"] = true,
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "emailConfirmationCode",
                            ["title"] = "Email Confirmation Code",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "phoneNumber",
                            ["title"] = "Phone Number",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseCode",
                            ["title"] = "Response Code",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseMessage",
                            ["title"] = "Response Message",
                            ["type"] = "`$STRING`",
                        },
                    },
                    ["name"] = "output_resend_link",
                    ["op"] = new Dictionary<string, object?>
                    {
                        ["create"] = new Dictionary<string, object?>
                        {
                            ["input"] = "data",
                            ["name"] = "create",
                            ["points"] = new List<object?>
                            {
                                new Dictionary<string, object?>
                                {
                                    ["kind"] = "http",
                                    ["method"] = "POST",
                                    ["orig"] = "/resendLink",
                                    ["segments"] = new List<object?>
                                    {
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "resendLink",
                                        },
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "resendLink",
                                    },
                                    ["rename"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["args"] = new Dictionary<string, object?>
                                    {
                                        ["header"] = new List<object?>
                                        {
                                            new Dictionary<string, object?>
                                            {
                                                ["name"] = "authorization",
                                                ["orig"] = "authorization",
                                                ["type"] = "`$STRING`",
                                                ["kind"] = "header",
                                            },
                                        },
                                    },
                                    ["select"] = new Dictionary<string, object?>
                                    {
                                        ["exist"] = new List<object?>
                                        {
                                            "authorization",
                                        },
                                    },
                                },
                            },
                        },
                    },
                    ["relations"] = new Dictionary<string, object?>
                    {
                        ["ancestors"] = new List<object?>(),
                    },
                },
                ["output_reset_password"] = new Dictionary<string, object?>
                {
                    ["fields"] = new List<object?>
                    {
                        new Dictionary<string, object?>
                        {
                            ["name"] = "consumerUuid",
                            ["title"] = "Consumer Uuid",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "phoneNumber",
                            ["title"] = "Phone Number",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseCode",
                            ["title"] = "Response Code",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseMessage",
                            ["title"] = "Response Message",
                            ["type"] = "`$STRING`",
                        },
                    },
                    ["name"] = "output_reset_password",
                    ["op"] = new Dictionary<string, object?>
                    {
                        ["create"] = new Dictionary<string, object?>
                        {
                            ["input"] = "data",
                            ["name"] = "create",
                            ["points"] = new List<object?>
                            {
                                new Dictionary<string, object?>
                                {
                                    ["kind"] = "http",
                                    ["method"] = "POST",
                                    ["orig"] = "/resetPassword",
                                    ["segments"] = new List<object?>
                                    {
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "resetPassword",
                                        },
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "resetPassword",
                                    },
                                    ["rename"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["args"] = new Dictionary<string, object?>
                                    {
                                        ["header"] = new List<object?>
                                        {
                                            new Dictionary<string, object?>
                                            {
                                                ["name"] = "authorization",
                                                ["orig"] = "authorization",
                                                ["type"] = "`$STRING`",
                                                ["kind"] = "header",
                                                ["reqd"] = true,
                                            },
                                        },
                                    },
                                    ["select"] = new Dictionary<string, object?>
                                    {
                                        ["exist"] = new List<object?>
                                        {
                                            "authorization",
                                        },
                                    },
                                },
                            },
                        },
                    },
                    ["relations"] = new Dictionary<string, object?>
                    {
                        ["ancestors"] = new List<object?>(),
                    },
                },
                ["output_update_consumer"] = new Dictionary<string, object?>
                {
                    ["fields"] = new List<object?>
                    {
                        new Dictionary<string, object?>
                        {
                            ["name"] = "city",
                            ["title"] = "City",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "consumerUuid",
                            ["title"] = "Consumer Uuid",
                            ["type"] = "`$STRING`",
                            ["req"] = true,
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "consumerlanguage",
                            ["title"] = "Consumerlanguage",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "country",
                            ["title"] = "Country",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "dateOfBirth",
                            ["title"] = "Date Of Birth",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "datetime_created",
                            ["title"] = "Datetime Created",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "driverLicenceNumber",
                            ["title"] = "Driver Licence Number",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "email",
                            ["title"] = "Email",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "firstName",
                            ["title"] = "First Name",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "identificationNumber",
                            ["title"] = "Identification Number",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "kycPassed",
                            ["title"] = "Kyc Passed",
                            ["type"] = "`$BOOLEAN`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "lastName",
                            ["title"] = "Last Name",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "nationality",
                            ["title"] = "Nationality",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "passportNumber",
                            ["title"] = "Passport Number",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "phoneNumber",
                            ["title"] = "Phone Number",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "placeOfBirth",
                            ["title"] = "Place Of Birth",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseCode",
                            ["title"] = "Response Code",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseMessage",
                            ["title"] = "Response Message",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "state",
                            ["title"] = "State",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "street1",
                            ["title"] = "Street1",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "street2",
                            ["title"] = "Street2",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "transactionhistory_id",
                            ["title"] = "Transactionhistory Id",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "zip",
                            ["title"] = "Zip",
                            ["type"] = "`$STRING`",
                        },
                    },
                    ["name"] = "output_update_consumer",
                    ["op"] = new Dictionary<string, object?>
                    {
                        ["create"] = new Dictionary<string, object?>
                        {
                            ["input"] = "data",
                            ["name"] = "create",
                            ["points"] = new List<object?>
                            {
                                new Dictionary<string, object?>
                                {
                                    ["kind"] = "http",
                                    ["method"] = "POST",
                                    ["orig"] = "/updateConsumer",
                                    ["segments"] = new List<object?>
                                    {
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "updateConsumer",
                                        },
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "updateConsumer",
                                    },
                                    ["rename"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["args"] = new Dictionary<string, object?>
                                    {
                                        ["header"] = new List<object?>
                                        {
                                            new Dictionary<string, object?>
                                            {
                                                ["name"] = "authorization",
                                                ["orig"] = "authorization",
                                                ["type"] = "`$STRING`",
                                                ["kind"] = "header",
                                            },
                                        },
                                    },
                                    ["select"] = new Dictionary<string, object?>
                                    {
                                        ["exist"] = new List<object?>
                                        {
                                            "authorization",
                                        },
                                    },
                                },
                            },
                        },
                    },
                    ["relations"] = new Dictionary<string, object?>
                    {
                        ["ancestors"] = new List<object?>(),
                    },
                },
                ["output_update_profile"] = new Dictionary<string, object?>
                {
                    ["fields"] = new List<object?>
                    {
                        new Dictionary<string, object?>
                        {
                            ["name"] = "consumerLanguage",
                            ["title"] = "Consumer Language",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "email",
                            ["title"] = "Email",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "firstName",
                            ["title"] = "First Name",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "lastName",
                            ["title"] = "Last Name",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "phoneNumber",
                            ["title"] = "Phone Number",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseCode",
                            ["title"] = "Response Code",
                            ["type"] = "`$INTEGER`",
                            ["format"] = "int32",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseMessage",
                            ["title"] = "Response Message",
                            ["type"] = "`$STRING`",
                        },
                    },
                    ["name"] = "output_update_profile",
                    ["op"] = new Dictionary<string, object?>
                    {
                        ["create"] = new Dictionary<string, object?>
                        {
                            ["input"] = "data",
                            ["name"] = "create",
                            ["points"] = new List<object?>
                            {
                                new Dictionary<string, object?>
                                {
                                    ["kind"] = "http",
                                    ["method"] = "POST",
                                    ["orig"] = "/updateProfile",
                                    ["segments"] = new List<object?>
                                    {
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "updateProfile",
                                        },
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "updateProfile",
                                    },
                                    ["rename"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["args"] = new Dictionary<string, object?>
                                    {
                                        ["header"] = new List<object?>
                                        {
                                            new Dictionary<string, object?>
                                            {
                                                ["name"] = "authorization",
                                                ["orig"] = "authorization",
                                                ["type"] = "`$STRING`",
                                                ["kind"] = "header",
                                            },
                                        },
                                    },
                                    ["select"] = new Dictionary<string, object?>
                                    {
                                        ["exist"] = new List<object?>
                                        {
                                            "authorization",
                                        },
                                    },
                                },
                            },
                        },
                    },
                    ["relations"] = new Dictionary<string, object?>
                    {
                        ["ancestors"] = new List<object?>(),
                    },
                },
                ["version"] = new Dictionary<string, object?>
                {
                    ["fields"] = new List<object?>
                    {
                        new Dictionary<string, object?>
                        {
                            ["name"] = "appName",
                            ["title"] = "App Name",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "buildDate",
                            ["title"] = "Build Date",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "version",
                            ["title"] = "Version",
                            ["type"] = "`$STRING`",
                        },
                    },
                    ["name"] = "version",
                    ["op"] = new Dictionary<string, object?>
                    {
                        ["load"] = new Dictionary<string, object?>
                        {
                            ["input"] = "data",
                            ["name"] = "load",
                            ["points"] = new List<object?>
                            {
                                new Dictionary<string, object?>
                                {
                                    ["kind"] = "http",
                                    ["method"] = "GET",
                                    ["orig"] = "/version",
                                    ["segments"] = new List<object?>
                                    {
                                        new Dictionary<string, object?>
                                        {
                                            ["lit"] = "version",
                                        },
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "version",
                                    },
                                    ["rename"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["args"] = new Dictionary<string, object?>(),
                                    ["select"] = new Dictionary<string, object?>(),
                                },
                            },
                        },
                    },
                    ["relations"] = new Dictionary<string, object?>
                    {
                        ["ancestors"] = new List<object?>(),
                    },
                },
            },
        };
    }

    private static readonly Lazy<Dictionary<string, object?>> SharedConfigVal =
        new(MakeConfig);

    // The process-wide config, built once on first use.
    //
    // The returned dictionary is SHARED: treat it as read-only. Callers that
    // need to mutate should use MakeConfig, which always returns a fresh copy.
    public static Dictionary<string, object?> SharedConfig()
    {
        return SharedConfigVal.Value;
    }

    public static List<object?> FeaturePlugins(string name)
    {
        switch (name)
        {
            default:
                return new List<object?>();
        }
    }

    public static Feature.BaseFeature MakeFeature(string name)
    {
        switch (name)
        {
            case "audit":
                return new Feature.AuditFeature();
            case "clienttrack":
                return new Feature.ClienttrackFeature();
            case "debug":
                return new Feature.DebugFeature();
            case "idempotency":
                return new Feature.IdempotencyFeature();
            case "log":
                return new Feature.LogFeature();
            case "metrics":
                return new Feature.MetricsFeature();
            case "paging":
                return new Feature.PagingFeature();
            case "ratelimit":
                return new Feature.RatelimitFeature();
            case "retry":
                return new Feature.RetryFeature();
            case "telemetry":
                return new Feature.TelemetryFeature();
            case "test":
                return new Feature.TestFeature();
            case "timeout":
                return new Feature.TimeoutFeature();
            default:
                return new Feature.BaseFeature();
        }
    }
}

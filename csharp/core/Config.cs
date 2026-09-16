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
                            ["format"] = "int32",
                            ["name"] = "responseCode",
                            ["type"] = "`$INTEGER`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseMessage",
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
                                    ["args"] = new Dictionary<string, object?>
                                    {
                                        ["header"] = new List<object?>
                                        {
                                            new Dictionary<string, object?>
                                            {
                                                ["kind"] = "header",
                                                ["name"] = "authorization",
                                                ["orig"] = "authorization",
                                                ["reqd"] = true,
                                                ["type"] = "`$STRING`",
                                            },
                                        },
                                    },
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
                                    ["select"] = new Dictionary<string, object?>
                                    {
                                        ["exist"] = new List<object?>
                                        {
                                            "authorization",
                                        },
                                    },
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "activateDigitalModule",
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
                            ["req"] = true,
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "notificationEmail",
                            ["req"] = true,
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["format"] = "int32",
                            ["name"] = "responseCode",
                            ["type"] = "`$INTEGER`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseMessage",
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
                                    ["args"] = new Dictionary<string, object?>
                                    {
                                        ["header"] = new List<object?>
                                        {
                                            new Dictionary<string, object?>
                                            {
                                                ["kind"] = "header",
                                                ["name"] = "authorization",
                                                ["orig"] = "authorization",
                                                ["reqd"] = true,
                                                ["type"] = "`$STRING`",
                                            },
                                        },
                                    },
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
                                    ["select"] = new Dictionary<string, object?>
                                    {
                                        ["exist"] = new List<object?>
                                        {
                                            "authorization",
                                        },
                                    },
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "activateMerchantPortalModule",
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
                            ["format"] = "int32",
                            ["name"] = "responseCode",
                            ["type"] = "`$INTEGER`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseMessage",
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
                                    ["args"] = new Dictionary<string, object?>
                                    {
                                        ["header"] = new List<object?>
                                        {
                                            new Dictionary<string, object?>
                                            {
                                                ["kind"] = "header",
                                                ["name"] = "authorization",
                                                ["orig"] = "authorization",
                                                ["reqd"] = true,
                                                ["type"] = "`$STRING`",
                                            },
                                        },
                                    },
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
                                    ["select"] = new Dictionary<string, object?>
                                    {
                                        ["exist"] = new List<object?>
                                        {
                                            "authorization",
                                        },
                                    },
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "activateAppStoreModule",
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
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["format"] = "int32",
                            ["name"] = "responseCode",
                            ["type"] = "`$INTEGER`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseMessage",
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
                                    ["args"] = new Dictionary<string, object?>
                                    {
                                        ["header"] = new List<object?>
                                        {
                                            new Dictionary<string, object?>
                                            {
                                                ["kind"] = "header",
                                                ["name"] = "authorization",
                                                ["orig"] = "authorization",
                                                ["reqd"] = true,
                                                ["type"] = "`$STRING`",
                                            },
                                        },
                                    },
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
                                    ["select"] = new Dictionary<string, object?>
                                    {
                                        ["exist"] = new List<object?>
                                        {
                                            "authorization",
                                        },
                                    },
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "activateUser",
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
                            ["req"] = true,
                            ["short"] = "Unique identifier of the consumer (user) to whom the role(s) will be assigned.",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["format"] = "int32",
                            ["name"] = "responseCode",
                            ["short"] = "Response code: 0 indicates success; any non-zero value indicates an error.",
                            ["type"] = "`$INTEGER`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseMessage",
                            ["short"] = "A human-readable message providing additional details about the outcome.",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "roles",
                            ["req"] = true,
                            ["short"] = "List of roles to assign to the consumer.",
                            ["type"] = "`$ARRAY`",
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
                                    ["args"] = new Dictionary<string, object?>
                                    {
                                        ["header"] = new List<object?>
                                        {
                                            new Dictionary<string, object?>
                                            {
                                                ["kind"] = "header",
                                                ["name"] = "authorization",
                                                ["orig"] = "authorization",
                                                ["reqd"] = true,
                                                ["type"] = "`$STRING`",
                                            },
                                        },
                                    },
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
                                    ["select"] = new Dictionary<string, object?>
                                    {
                                        ["exist"] = new List<object?>
                                        {
                                            "authorization",
                                        },
                                    },
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "assignRoles",
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
                            ["req"] = true,
                            ["short"] = "The content of the image as base64 encoded string",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "mimeType",
                            ["req"] = true,
                            ["short"] = "The MIME type of the image",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["format"] = "int32",
                            ["name"] = "responseCode",
                            ["type"] = "`$INTEGER`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseMessage",
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
                                    ["args"] = new Dictionary<string, object?>
                                    {
                                        ["header"] = new List<object?>
                                        {
                                            new Dictionary<string, object?>
                                            {
                                                ["kind"] = "header",
                                                ["name"] = "authorization",
                                                ["orig"] = "authorization",
                                                ["reqd"] = true,
                                                ["type"] = "`$STRING`",
                                            },
                                        },
                                    },
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
                                    ["select"] = new Dictionary<string, object?>
                                    {
                                        ["exist"] = new List<object?>
                                        {
                                            "authorization",
                                        },
                                    },
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "changeLogo",
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
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "country",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "dateOfBirth",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "description",
                            ["op"] = new Dictionary<string, object?>
                            {
                                ["create"] = new Dictionary<string, object?>
                                {
                                    ["req"] = true,
                                    ["type"] = "`$STRING`",
                                },
                            },
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "driversLicenseNumber",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "email",
                            ["req"] = true,
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "firstName",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "identificationNumber",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "lastName",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "login",
                            ["req"] = true,
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "name",
                            ["op"] = new Dictionary<string, object?>
                            {
                                ["create"] = new Dictionary<string, object?>
                                {
                                    ["req"] = true,
                                    ["type"] = "`$STRING`",
                                },
                            },
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "passportNumber",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "phone",
                            ["req"] = true,
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "salutation",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "state",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "street1",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "street2",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "zipCode",
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
                                    ["args"] = new Dictionary<string, object?>
                                    {
                                        ["header"] = new List<object?>
                                        {
                                            new Dictionary<string, object?>
                                            {
                                                ["kind"] = "header",
                                                ["name"] = "authorization",
                                                ["orig"] = "authorization",
                                                ["reqd"] = true,
                                                ["type"] = "`$STRING`",
                                            },
                                        },
                                    },
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
                                    ["select"] = new Dictionary<string, object?>
                                    {
                                        ["exist"] = new List<object?>
                                        {
                                            "authorization",
                                        },
                                    },
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body.mandator`",
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "createMandator",
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
                            ["req"] = true,
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["format"] = "int32",
                            ["name"] = "responseCode",
                            ["type"] = "`$INTEGER`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseMessage",
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
                                    ["args"] = new Dictionary<string, object?>
                                    {
                                        ["header"] = new List<object?>
                                        {
                                            new Dictionary<string, object?>
                                            {
                                                ["kind"] = "header",
                                                ["name"] = "authorization",
                                                ["orig"] = "authorization",
                                                ["reqd"] = true,
                                                ["type"] = "`$STRING`",
                                            },
                                        },
                                    },
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
                                    ["select"] = new Dictionary<string, object?>
                                    {
                                        ["exist"] = new List<object?>
                                        {
                                            "authorization",
                                        },
                                    },
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "createServiceUser",
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
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["format"] = "int32",
                            ["name"] = "responseCode",
                            ["type"] = "`$INTEGER`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseMessage",
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
                                    ["args"] = new Dictionary<string, object?>
                                    {
                                        ["header"] = new List<object?>
                                        {
                                            new Dictionary<string, object?>
                                            {
                                                ["kind"] = "header",
                                                ["name"] = "authorization",
                                                ["orig"] = "authorization",
                                                ["reqd"] = true,
                                                ["type"] = "`$STRING`",
                                            },
                                        },
                                    },
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
                                    ["select"] = new Dictionary<string, object?>
                                    {
                                        ["exist"] = new List<object?>
                                        {
                                            "authorization",
                                        },
                                    },
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "deactivateUser",
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
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "encodedDataBase64",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["format"] = "int32",
                            ["name"] = "responseCode",
                            ["type"] = "`$INTEGER`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseMessage",
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
                                    ["args"] = new Dictionary<string, object?>
                                    {
                                        ["header"] = new List<object?>
                                        {
                                            new Dictionary<string, object?>
                                            {
                                                ["kind"] = "header",
                                                ["name"] = "authorization",
                                                ["orig"] = "authorization",
                                                ["reqd"] = true,
                                                ["type"] = "`$STRING`",
                                            },
                                        },
                                    },
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
                                    ["select"] = new Dictionary<string, object?>
                                    {
                                        ["exist"] = new List<object?>
                                        {
                                            "authorization",
                                        },
                                    },
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "getKycDocument",
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
                            ["req"] = true,
                            ["short"] = "The content of the image as base64 encoded string",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "mimeType",
                            ["req"] = true,
                            ["short"] = "The MIME type of the image",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["format"] = "int32",
                            ["name"] = "responseCode",
                            ["type"] = "`$INTEGER`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseMessage",
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
                                    ["args"] = new Dictionary<string, object?>
                                    {
                                        ["header"] = new List<object?>
                                        {
                                            new Dictionary<string, object?>
                                            {
                                                ["kind"] = "header",
                                                ["name"] = "authorization",
                                                ["orig"] = "authorization",
                                                ["reqd"] = true,
                                                ["type"] = "`$STRING`",
                                            },
                                        },
                                    },
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
                                    ["select"] = new Dictionary<string, object?>
                                    {
                                        ["exist"] = new List<object?>
                                        {
                                            "authorization",
                                        },
                                    },
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "getLogo",
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
                            ["type"] = "`$ARRAY`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["format"] = "int32",
                            ["name"] = "responseCode",
                            ["type"] = "`$INTEGER`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseMessage",
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
                                    ["args"] = new Dictionary<string, object?>
                                    {
                                        ["header"] = new List<object?>
                                        {
                                            new Dictionary<string, object?>
                                            {
                                                ["kind"] = "header",
                                                ["name"] = "authorization",
                                                ["orig"] = "authorization",
                                                ["reqd"] = true,
                                                ["type"] = "`$STRING`",
                                            },
                                        },
                                    },
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
                                    ["select"] = new Dictionary<string, object?>
                                    {
                                        ["exist"] = new List<object?>
                                        {
                                            "authorization",
                                        },
                                    },
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "listOfAvailableRoles",
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
                            ["type"] = "`$OBJECT`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "list",
                            ["type"] = "`$ARRAY`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "pagination",
                            ["type"] = "`$OBJECT`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["format"] = "int32",
                            ["name"] = "responseCode",
                            ["type"] = "`$INTEGER`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseMessage",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "sorting",
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
                                    ["args"] = new Dictionary<string, object?>
                                    {
                                        ["header"] = new List<object?>
                                        {
                                            new Dictionary<string, object?>
                                            {
                                                ["kind"] = "header",
                                                ["name"] = "authorization",
                                                ["orig"] = "authorization",
                                                ["reqd"] = true,
                                                ["type"] = "`$STRING`",
                                            },
                                        },
                                    },
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
                                    ["select"] = new Dictionary<string, object?>
                                    {
                                        ["exist"] = new List<object?>
                                        {
                                            "authorization",
                                        },
                                    },
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "listOfMandators",
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
                            ["type"] = "`$ARRAY`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "pagination",
                            ["type"] = "`$OBJECT`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["format"] = "int32",
                            ["name"] = "responseCode",
                            ["type"] = "`$INTEGER`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseMessage",
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
                                    ["args"] = new Dictionary<string, object?>
                                    {
                                        ["header"] = new List<object?>
                                        {
                                            new Dictionary<string, object?>
                                            {
                                                ["kind"] = "header",
                                                ["name"] = "authorization",
                                                ["orig"] = "authorization",
                                                ["reqd"] = true,
                                                ["type"] = "`$STRING`",
                                            },
                                        },
                                    },
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
                                    ["select"] = new Dictionary<string, object?>
                                    {
                                        ["exist"] = new List<object?>
                                        {
                                            "authorization",
                                        },
                                    },
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "listOfModules",
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
                            ["type"] = "`$OBJECT`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "groupRoles",
                            ["type"] = "`$ARRAY`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "pagination",
                            ["type"] = "`$OBJECT`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["format"] = "int32",
                            ["name"] = "responseCode",
                            ["type"] = "`$INTEGER`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseMessage",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "sorting",
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
                                    ["args"] = new Dictionary<string, object?>
                                    {
                                        ["header"] = new List<object?>
                                        {
                                            new Dictionary<string, object?>
                                            {
                                                ["kind"] = "header",
                                                ["name"] = "authorization",
                                                ["orig"] = "authorization",
                                                ["reqd"] = true,
                                                ["type"] = "`$STRING`",
                                            },
                                        },
                                    },
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
                                    ["select"] = new Dictionary<string, object?>
                                    {
                                        ["exist"] = new List<object?>
                                        {
                                            "authorization",
                                        },
                                    },
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "listOfRoleGroups",
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
                            ["type"] = "`$OBJECT`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "list",
                            ["type"] = "`$ARRAY`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "pagination",
                            ["type"] = "`$OBJECT`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["format"] = "int32",
                            ["name"] = "responseCode",
                            ["type"] = "`$INTEGER`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseMessage",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "sorting",
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
                                    ["args"] = new Dictionary<string, object?>
                                    {
                                        ["header"] = new List<object?>
                                        {
                                            new Dictionary<string, object?>
                                            {
                                                ["kind"] = "header",
                                                ["name"] = "authorization",
                                                ["orig"] = "authorization",
                                                ["reqd"] = true,
                                                ["type"] = "`$STRING`",
                                            },
                                        },
                                    },
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
                                    ["select"] = new Dictionary<string, object?>
                                    {
                                        ["exist"] = new List<object?>
                                        {
                                            "authorization",
                                        },
                                    },
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "listOfTransactionsHistory",
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
                            ["type"] = "`$OBJECT`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "list",
                            ["type"] = "`$ARRAY`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "pagination",
                            ["type"] = "`$OBJECT`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["format"] = "int32",
                            ["name"] = "responseCode",
                            ["type"] = "`$INTEGER`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseMessage",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "sorting",
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
                                    ["args"] = new Dictionary<string, object?>
                                    {
                                        ["header"] = new List<object?>
                                        {
                                            new Dictionary<string, object?>
                                            {
                                                ["kind"] = "header",
                                                ["name"] = "authorization",
                                                ["orig"] = "authorization",
                                                ["reqd"] = true,
                                                ["type"] = "`$STRING`",
                                            },
                                        },
                                    },
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
                                    ["select"] = new Dictionary<string, object?>
                                    {
                                        ["exist"] = new List<object?>
                                        {
                                            "authorization",
                                        },
                                    },
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "listOfUsers",
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
                            ["req"] = true,
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "password",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["format"] = "int32",
                            ["name"] = "responseCode",
                            ["type"] = "`$INTEGER`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseMessage",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "username",
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
                                    ["args"] = new Dictionary<string, object?>
                                    {
                                        ["header"] = new List<object?>
                                        {
                                            new Dictionary<string, object?>
                                            {
                                                ["kind"] = "header",
                                                ["name"] = "authorization",
                                                ["orig"] = "authorization",
                                                ["reqd"] = true,
                                                ["type"] = "`$STRING`",
                                            },
                                        },
                                    },
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
                                    ["select"] = new Dictionary<string, object?>
                                    {
                                        ["exist"] = new List<object?>
                                        {
                                            "authorization",
                                        },
                                    },
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "provideCredentials",
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
                            ["short"] = "City where the user resides.",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "consumerId",
                            ["short"] = "User login or unique user identifier.",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "consumerLanguage",
                            ["short"] = "Preferred language for the user (e.g., 'en').",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "country",
                            ["short"] = "User's country.",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "dateOfBirth",
                            ["short"] = "User's date of birth (expected format: dd.MM.yyyy).",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "driverLicenceNumber",
                            ["short"] = "User's driver's license number.",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["format"] = "email",
                            ["name"] = "email",
                            ["req"] = true,
                            ["short"] = "User's email address (must be unique).",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "firstName",
                            ["short"] = "User's first name.",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "identificationNumber",
                            ["short"] = "User's identification number.",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "lastName",
                            ["short"] = "User's last name.",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "login",
                            ["short"] = "User login identifier (should be unique).",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "module",
                            ["short"] = "Module identifier (if applicable).",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "passportNumber",
                            ["short"] = "User's passport number.",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "phone",
                            ["short"] = "User's phone number.",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["format"] = "int32",
                            ["name"] = "responseCode",
                            ["short"] = "Response code (0 indicates success; non-zero indicates an error).",
                            ["type"] = "`$INTEGER`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseMessage",
                            ["short"] = "Human-readable response message.",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "salutation",
                            ["short"] = "User's salutation (e.g., Mr., Ms.).",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "state",
                            ["short"] = "User's state or region.",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "street1",
                            ["short"] = "Primary address line.",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "street2",
                            ["short"] = "Secondary address line.",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "zip",
                            ["short"] = "Postal code.",
                            ["type"] = "`$STRING`",
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
                                    ["args"] = new Dictionary<string, object?>
                                    {
                                        ["header"] = new List<object?>
                                        {
                                            new Dictionary<string, object?>
                                            {
                                                ["kind"] = "header",
                                                ["name"] = "authorization",
                                                ["orig"] = "authorization",
                                                ["reqd"] = true,
                                                ["type"] = "`$STRING`",
                                            },
                                        },
                                    },
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
                                    ["select"] = new Dictionary<string, object?>
                                    {
                                        ["exist"] = new List<object?>
                                        {
                                            "authorization",
                                        },
                                    },
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "registerUser",
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
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["format"] = "int32",
                            ["name"] = "responseCode",
                            ["type"] = "`$INTEGER`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseMessage",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "roles",
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
                                    ["args"] = new Dictionary<string, object?>
                                    {
                                        ["header"] = new List<object?>
                                        {
                                            new Dictionary<string, object?>
                                            {
                                                ["kind"] = "header",
                                                ["name"] = "authorization",
                                                ["orig"] = "authorization",
                                                ["reqd"] = true,
                                                ["type"] = "`$STRING`",
                                            },
                                        },
                                    },
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
                                    ["select"] = new Dictionary<string, object?>
                                    {
                                        ["exist"] = new List<object?>
                                        {
                                            "authorization",
                                        },
                                    },
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "removeRoles",
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
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "consumerUUID",
                            ["req"] = true,
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "emailConfirmationCode",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "phoneNumber",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["format"] = "int32",
                            ["name"] = "responseCode",
                            ["type"] = "`$INTEGER`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseMessage",
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
                                    ["args"] = new Dictionary<string, object?>
                                    {
                                        ["header"] = new List<object?>
                                        {
                                            new Dictionary<string, object?>
                                            {
                                                ["kind"] = "header",
                                                ["name"] = "authorization",
                                                ["orig"] = "authorization",
                                                ["type"] = "`$STRING`",
                                            },
                                        },
                                    },
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
                                    ["select"] = new Dictionary<string, object?>
                                    {
                                        ["exist"] = new List<object?>
                                        {
                                            "authorization",
                                        },
                                    },
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "resendLink",
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
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "phoneNumber",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["format"] = "int32",
                            ["name"] = "responseCode",
                            ["type"] = "`$INTEGER`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseMessage",
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
                                    ["args"] = new Dictionary<string, object?>
                                    {
                                        ["header"] = new List<object?>
                                        {
                                            new Dictionary<string, object?>
                                            {
                                                ["kind"] = "header",
                                                ["name"] = "authorization",
                                                ["orig"] = "authorization",
                                                ["reqd"] = true,
                                                ["type"] = "`$STRING`",
                                            },
                                        },
                                    },
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
                                    ["select"] = new Dictionary<string, object?>
                                    {
                                        ["exist"] = new List<object?>
                                        {
                                            "authorization",
                                        },
                                    },
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "resetPassword",
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
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "consumerUuid",
                            ["req"] = true,
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "consumerlanguage",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "country",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "dateOfBirth",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "datetime_created",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "driverLicenceNumber",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "email",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "firstName",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "identificationNumber",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "kycPassed",
                            ["type"] = "`$BOOLEAN`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "lastName",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "nationality",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "passportNumber",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "phoneNumber",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "placeOfBirth",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["format"] = "int32",
                            ["name"] = "responseCode",
                            ["type"] = "`$INTEGER`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseMessage",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "state",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "street1",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "street2",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "transactionhistory_id",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "zip",
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
                                    ["args"] = new Dictionary<string, object?>
                                    {
                                        ["header"] = new List<object?>
                                        {
                                            new Dictionary<string, object?>
                                            {
                                                ["kind"] = "header",
                                                ["name"] = "authorization",
                                                ["orig"] = "authorization",
                                                ["type"] = "`$STRING`",
                                            },
                                        },
                                    },
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
                                    ["select"] = new Dictionary<string, object?>
                                    {
                                        ["exist"] = new List<object?>
                                        {
                                            "authorization",
                                        },
                                    },
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "updateConsumer",
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
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "email",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "firstName",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "lastName",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "phoneNumber",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["format"] = "int32",
                            ["name"] = "responseCode",
                            ["type"] = "`$INTEGER`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "responseMessage",
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
                                    ["args"] = new Dictionary<string, object?>
                                    {
                                        ["header"] = new List<object?>
                                        {
                                            new Dictionary<string, object?>
                                            {
                                                ["kind"] = "header",
                                                ["name"] = "authorization",
                                                ["orig"] = "authorization",
                                                ["type"] = "`$STRING`",
                                            },
                                        },
                                    },
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
                                    ["select"] = new Dictionary<string, object?>
                                    {
                                        ["exist"] = new List<object?>
                                        {
                                            "authorization",
                                        },
                                    },
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "updateProfile",
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
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "buildDate",
                            ["type"] = "`$STRING`",
                        },
                        new Dictionary<string, object?>
                        {
                            ["name"] = "version",
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
                                    ["args"] = new Dictionary<string, object?>(),
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
                                    ["select"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
                                    },
                                    ["parts"] = new List<object?>
                                    {
                                        "version",
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

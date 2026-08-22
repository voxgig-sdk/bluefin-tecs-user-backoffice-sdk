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
                ["test"] = new Dictionary<string, object?>
                {
                    ["options"] = new Dictionary<string, object?>
                    {
                        ["active"] = false,
                    },
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
                                    ["parts"] = new List<object?>
                                    {
                                        "activateDigitalModule",
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
                                    ["parts"] = new List<object?>
                                    {
                                        "activateMerchantPortalModule",
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
                                    ["parts"] = new List<object?>
                                    {
                                        "activateAppStoreModule",
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
                                    ["parts"] = new List<object?>
                                    {
                                        "activateUser",
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
                                    ["parts"] = new List<object?>
                                    {
                                        "assignRoles",
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
                                    ["parts"] = new List<object?>
                                    {
                                        "changeLogo",
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
                                    ["parts"] = new List<object?>
                                    {
                                        "createMandator",
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
                                    ["parts"] = new List<object?>
                                    {
                                        "createServiceUser",
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
                                    ["parts"] = new List<object?>
                                    {
                                        "deactivateUser",
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
                                    ["parts"] = new List<object?>
                                    {
                                        "getKycDocument",
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
                                    ["parts"] = new List<object?>
                                    {
                                        "getLogo",
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
                                    ["parts"] = new List<object?>
                                    {
                                        "listOfAvailableRoles",
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
                                    ["parts"] = new List<object?>
                                    {
                                        "listOfMandators",
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
                                    ["parts"] = new List<object?>
                                    {
                                        "listOfModules",
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
                                    ["parts"] = new List<object?>
                                    {
                                        "listOfRoleGroups",
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
                                    ["parts"] = new List<object?>
                                    {
                                        "listOfTransactionsHistory",
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
                                    ["parts"] = new List<object?>
                                    {
                                        "listOfUsers",
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
                                    ["parts"] = new List<object?>
                                    {
                                        "provideCredentials",
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
                                    ["parts"] = new List<object?>
                                    {
                                        "registerUser",
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
                                    ["parts"] = new List<object?>
                                    {
                                        "removeRoles",
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
                                    ["parts"] = new List<object?>
                                    {
                                        "resendLink",
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
                                    ["parts"] = new List<object?>
                                    {
                                        "resetPassword",
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
                                    ["parts"] = new List<object?>
                                    {
                                        "updateConsumer",
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
                                    ["parts"] = new List<object?>
                                    {
                                        "updateProfile",
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
                                    ["parts"] = new List<object?>
                                    {
                                        "version",
                                    },
                                    ["select"] = new Dictionary<string, object?>(),
                                    ["transform"] = new Dictionary<string, object?>
                                    {
                                        ["req"] = "`reqdata`",
                                        ["res"] = "`body`",
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

    public static Feature.BaseFeature MakeFeature(string name)
    {
        switch (name)
        {
            case "test":
                return new Feature.TestFeature();
            default:
                return new Feature.BaseFeature();
        }
    }
}

-- BluefinTecsUserBackoffice SDK configuration

-- Build a fresh, fully materialised config table. Every call rebuilds the
-- whole structure, so prefer require("config_shared") unless you need a
-- private copy you intend to mutate.
local function make_config()
  return {
    main = {
      name = "BluefinTecsUserBackoffice",
      slug = "bluefin-tecs-user-backoffice",
      version = "0.1.1",
      target = "lua",
    },
    feature = {
      ["audit"] = {
        ["options"] = {
          ["active"] = false,
          ["actor"] = "anonymous",
          ["max"] = 1000,
        },
        ["optspec"] = {
          ["now"] = "`$FUNCTION`",
          ["sink"] = "`$FUNCTION`",
        },
        ["strict"] = false,
        ["transport"] = "none",
      },
      ["clienttrack"] = {
        ["options"] = {
          ["active"] = false,
          ["clientVersion"] = "0.0.1",
        },
        ["optspec"] = {
          ["clientName"] = "`$STRING`",
          ["clientVersion"] = "`$STRING`",
          ["headers"] = "`$MAP`",
          ["idgen"] = "`$FUNCTION`",
          ["sessionId"] = "`$STRING`",
        },
        ["strict"] = false,
        ["transport"] = "none",
      },
      ["debug"] = {
        ["options"] = {
          ["active"] = false,
          ["max"] = 100,
          ["redact"] = {
            "authorization",
            "cookie",
            "set-cookie",
            "api-key",
            "apikey",
            "x-api-key",
            "idempotency-key",
          },
        },
        ["optspec"] = {
          ["now"] = "`$FUNCTION`",
          ["onEntry"] = "`$FUNCTION`",
        },
        ["strict"] = false,
        ["transport"] = "none",
      },
      ["idempotency"] = {
        ["options"] = {
          ["active"] = false,
          ["header"] = "Idempotency-Key",
          ["methods"] = {
            "POST",
            "PUT",
            "PATCH",
            "DELETE",
          },
          ["ops"] = {
            "create",
            "update",
            "remove",
          },
        },
        ["optspec"] = {
          ["keygen"] = "`$FUNCTION`",
        },
        ["strict"] = false,
        ["transport"] = "none",
      },
      ["log"] = {
        ["options"] = {
          ["active"] = true,
        },
        ["optspec"] = {
          ["level"] = "`$STRING`",
          ["logger"] = "`$ANY`",
        },
        ["strict"] = false,
        ["transport"] = "none",
      },
      ["metrics"] = {
        ["options"] = {
          ["active"] = false,
        },
        ["optspec"] = {
          ["now"] = "`$FUNCTION`",
        },
        ["strict"] = false,
        ["transport"] = "none",
      },
      ["paging"] = {
        ["options"] = {
          ["active"] = false,
          ["afterVar"] = "after",
          ["cursorParam"] = "cursor",
          ["firstVar"] = "first",
          ["limitParam"] = "limit",
          ["pageParam"] = "page",
          ["startPage"] = 1,
        },
        ["optspec"] = {
          ["limit"] = "`$NUMBER`",
          ["ops"] = "`$LIST`",
        },
        ["strict"] = false,
        ["transport"] = "none",
      },
      ["ratelimit"] = {
        ["options"] = {
          ["active"] = false,
          ["burst"] = 5,
          ["rate"] = 5,
        },
        ["optspec"] = {
          ["now"] = "`$FUNCTION`",
          ["sleep"] = "`$FUNCTION`",
        },
        ["strict"] = false,
        ["transport"] = "wrap",
      },
      ["retry"] = {
        ["options"] = {
          ["active"] = false,
          ["factor"] = 2,
          ["maxDelay"] = 2000,
          ["minDelay"] = 50,
          ["retries"] = 2,
          ["statuses"] = {
            408,
            425,
            429,
            500,
            502,
            503,
            504,
          },
        },
        ["optspec"] = {
          ["jitter"] = "`$BOOLEAN`",
          ["sleep"] = "`$FUNCTION`",
        },
        ["strict"] = false,
        ["transport"] = "wrap",
      },
      ["telemetry"] = {
        ["options"] = {
          ["active"] = false,
        },
        ["optspec"] = {
          ["exporter"] = "`$FUNCTION`",
          ["headers"] = "`$MAP`",
          ["idgen"] = "`$FUNCTION`",
          ["now"] = "`$FUNCTION`",
        },
        ["strict"] = false,
        ["transport"] = "none",
      },
      ["test"] = {
        ["options"] = {
          ["active"] = false,
        },
        ["optspec"] = {
          ["entity"] = "`$MAP`",
          ["net"] = "`$MAP`",
        },
        ["strict"] = false,
        ["transport"] = "base",
      },
      ["timeout"] = {
        ["options"] = {
          ["active"] = false,
          ["ms"] = 30000,
        },
        ["optspec"] = {
          ["clearTimer"] = "`$FUNCTION`",
          ["setTimer"] = "`$FUNCTION`",
        },
        ["strict"] = false,
        ["transport"] = "wrap",
      },
    },
    options = {
      base = "https://test.tecs.at/usermanagement-backofficews",
      auth = {
        prefix = "Bearer",
      },
      headers = {
        ["content-type"] = "application/json",
      },
      entity = {
        ["output_activate_digital_module"] = {},
        ["output_activate_portal_module"] = {},
        ["output_activate_store_module"] = {},
        ["output_activate_user"] = {},
        ["output_assign_role"] = {},
        ["output_change_logo"] = {},
        ["output_create_mandator"] = {},
        ["output_create_service_user"] = {},
        ["output_deactivate_user"] = {},
        ["output_get_kyc_document"] = {},
        ["output_get_logo"] = {},
        ["output_list_of_available_role"] = {},
        ["output_list_of_mandator"] = {},
        ["output_list_of_module"] = {},
        ["output_list_of_role_group"] = {},
        ["output_list_of_transactions_history"] = {},
        ["output_list_of_user"] = {},
        ["output_provide_credential"] = {},
        ["output_register_user"] = {},
        ["output_remove_role"] = {},
        ["output_resend_link"] = {},
        ["output_reset_password"] = {},
        ["output_update_consumer"] = {},
        ["output_update_profile"] = {},
        ["version"] = {},
      },
    },
    entity = {
      ["output_activate_digital_module"] = {
        ["fields"] = {
          {
            ["name"] = "responseCode",
            ["title"] = "Response Code",
            ["type"] = "`$INTEGER`",
            ["format"] = "int32",
          },
          {
            ["name"] = "responseMessage",
            ["title"] = "Response Message",
            ["type"] = "`$STRING`",
          },
        },
        ["name"] = "output_activate_digital_module",
        ["op"] = {
          ["create"] = {
            ["input"] = "data",
            ["name"] = "create",
            ["points"] = {
              {
                ["kind"] = "http",
                ["method"] = "POST",
                ["orig"] = "/activateDigitalModule",
                ["segments"] = {
                  {
                    ["lit"] = "activateDigitalModule",
                  },
                },
                ["parts"] = {
                  "activateDigitalModule",
                },
                ["rename"] = {},
                ["transform"] = {
                  ["req"] = "`reqdata`",
                  ["res"] = "`body`",
                },
                ["args"] = {
                  ["header"] = {
                    {
                      ["name"] = "authorization",
                      ["orig"] = "authorization",
                      ["type"] = "`$STRING`",
                      ["kind"] = "header",
                      ["reqd"] = true,
                    },
                  },
                },
                ["select"] = {
                  ["exist"] = {
                    "authorization",
                  },
                },
              },
            },
          },
        },
        ["relations"] = {
          ["ancestors"] = {},
        },
      },
      ["output_activate_portal_module"] = {
        ["fields"] = {
          {
            ["name"] = "clientSecret",
            ["title"] = "Client Secret",
            ["type"] = "`$STRING`",
            ["req"] = true,
          },
          {
            ["name"] = "notificationEmail",
            ["title"] = "Notification Email",
            ["type"] = "`$STRING`",
            ["req"] = true,
          },
          {
            ["name"] = "responseCode",
            ["title"] = "Response Code",
            ["type"] = "`$INTEGER`",
            ["format"] = "int32",
          },
          {
            ["name"] = "responseMessage",
            ["title"] = "Response Message",
            ["type"] = "`$STRING`",
          },
        },
        ["name"] = "output_activate_portal_module",
        ["op"] = {
          ["create"] = {
            ["input"] = "data",
            ["name"] = "create",
            ["points"] = {
              {
                ["kind"] = "http",
                ["method"] = "POST",
                ["orig"] = "/activateMerchantPortalModule",
                ["segments"] = {
                  {
                    ["lit"] = "activateMerchantPortalModule",
                  },
                },
                ["parts"] = {
                  "activateMerchantPortalModule",
                },
                ["rename"] = {},
                ["transform"] = {
                  ["req"] = "`reqdata`",
                  ["res"] = "`body`",
                },
                ["args"] = {
                  ["header"] = {
                    {
                      ["name"] = "authorization",
                      ["orig"] = "authorization",
                      ["type"] = "`$STRING`",
                      ["kind"] = "header",
                      ["reqd"] = true,
                    },
                  },
                },
                ["select"] = {
                  ["exist"] = {
                    "authorization",
                  },
                },
              },
            },
          },
        },
        ["relations"] = {
          ["ancestors"] = {},
        },
      },
      ["output_activate_store_module"] = {
        ["fields"] = {
          {
            ["name"] = "responseCode",
            ["title"] = "Response Code",
            ["type"] = "`$INTEGER`",
            ["format"] = "int32",
          },
          {
            ["name"] = "responseMessage",
            ["title"] = "Response Message",
            ["type"] = "`$STRING`",
          },
        },
        ["name"] = "output_activate_store_module",
        ["op"] = {
          ["create"] = {
            ["input"] = "data",
            ["name"] = "create",
            ["points"] = {
              {
                ["kind"] = "http",
                ["method"] = "POST",
                ["orig"] = "/activateAppStoreModule",
                ["segments"] = {
                  {
                    ["lit"] = "activateAppStoreModule",
                  },
                },
                ["parts"] = {
                  "activateAppStoreModule",
                },
                ["rename"] = {},
                ["transform"] = {
                  ["req"] = "`reqdata`",
                  ["res"] = "`body`",
                },
                ["args"] = {
                  ["header"] = {
                    {
                      ["name"] = "authorization",
                      ["orig"] = "authorization",
                      ["type"] = "`$STRING`",
                      ["kind"] = "header",
                      ["reqd"] = true,
                    },
                  },
                },
                ["select"] = {
                  ["exist"] = {
                    "authorization",
                  },
                },
              },
            },
          },
        },
        ["relations"] = {
          ["ancestors"] = {},
        },
      },
      ["output_activate_user"] = {
        ["fields"] = {
          {
            ["name"] = "consumerUUID",
            ["title"] = "Consumer Uuid",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "responseCode",
            ["title"] = "Response Code",
            ["type"] = "`$INTEGER`",
            ["format"] = "int32",
          },
          {
            ["name"] = "responseMessage",
            ["title"] = "Response Message",
            ["type"] = "`$STRING`",
          },
        },
        ["name"] = "output_activate_user",
        ["op"] = {
          ["create"] = {
            ["input"] = "data",
            ["name"] = "create",
            ["points"] = {
              {
                ["kind"] = "http",
                ["method"] = "POST",
                ["orig"] = "/activateUser",
                ["segments"] = {
                  {
                    ["lit"] = "activateUser",
                  },
                },
                ["parts"] = {
                  "activateUser",
                },
                ["rename"] = {},
                ["transform"] = {
                  ["req"] = "`reqdata`",
                  ["res"] = "`body`",
                },
                ["args"] = {
                  ["header"] = {
                    {
                      ["name"] = "authorization",
                      ["orig"] = "authorization",
                      ["type"] = "`$STRING`",
                      ["kind"] = "header",
                      ["reqd"] = true,
                    },
                  },
                },
                ["select"] = {
                  ["exist"] = {
                    "authorization",
                  },
                },
              },
            },
          },
        },
        ["relations"] = {
          ["ancestors"] = {},
        },
      },
      ["output_assign_role"] = {
        ["fields"] = {
          {
            ["name"] = "consumerUUID",
            ["title"] = "Consumer Uuid",
            ["type"] = "`$STRING`",
            ["req"] = true,
            ["short"] = "Unique identifier of the consumer (user) to whom the role(s) will be assigned.",
          },
          {
            ["name"] = "responseCode",
            ["title"] = "Response Code",
            ["type"] = "`$INTEGER`",
            ["short"] = "Response code: 0 indicates success; any non-zero value indicates an error.",
            ["format"] = "int32",
          },
          {
            ["name"] = "responseMessage",
            ["title"] = "Response Message",
            ["type"] = "`$STRING`",
            ["short"] = "A human-readable message providing additional details about the outcome.",
          },
          {
            ["name"] = "roles",
            ["title"] = "Roles",
            ["type"] = "`$ARRAY`",
            ["req"] = true,
            ["short"] = "List of roles to assign to the consumer.",
          },
        },
        ["name"] = "output_assign_role",
        ["op"] = {
          ["create"] = {
            ["input"] = "data",
            ["name"] = "create",
            ["points"] = {
              {
                ["kind"] = "http",
                ["method"] = "POST",
                ["orig"] = "/assignRoles",
                ["segments"] = {
                  {
                    ["lit"] = "assignRoles",
                  },
                },
                ["parts"] = {
                  "assignRoles",
                },
                ["rename"] = {},
                ["transform"] = {
                  ["req"] = "`reqdata`",
                  ["res"] = "`body`",
                },
                ["args"] = {
                  ["header"] = {
                    {
                      ["name"] = "authorization",
                      ["orig"] = "authorization",
                      ["type"] = "`$STRING`",
                      ["kind"] = "header",
                      ["reqd"] = true,
                    },
                  },
                },
                ["select"] = {
                  ["exist"] = {
                    "authorization",
                  },
                },
              },
            },
          },
        },
        ["relations"] = {
          ["ancestors"] = {},
        },
      },
      ["output_change_logo"] = {
        ["fields"] = {
          {
            ["name"] = "contentAsBase64",
            ["title"] = "Content As Base64",
            ["type"] = "`$STRING`",
            ["req"] = true,
            ["short"] = "The content of the image as base64 encoded string",
          },
          {
            ["name"] = "mimeType",
            ["title"] = "Mime Type",
            ["type"] = "`$STRING`",
            ["req"] = true,
            ["short"] = "The MIME type of the image",
          },
          {
            ["name"] = "responseCode",
            ["title"] = "Response Code",
            ["type"] = "`$INTEGER`",
            ["format"] = "int32",
          },
          {
            ["name"] = "responseMessage",
            ["title"] = "Response Message",
            ["type"] = "`$STRING`",
          },
        },
        ["name"] = "output_change_logo",
        ["op"] = {
          ["create"] = {
            ["input"] = "data",
            ["name"] = "create",
            ["points"] = {
              {
                ["kind"] = "http",
                ["method"] = "POST",
                ["orig"] = "/changeLogo",
                ["segments"] = {
                  {
                    ["lit"] = "changeLogo",
                  },
                },
                ["parts"] = {
                  "changeLogo",
                },
                ["rename"] = {},
                ["transform"] = {
                  ["req"] = "`reqdata`",
                  ["res"] = "`body`",
                },
                ["args"] = {
                  ["header"] = {
                    {
                      ["name"] = "authorization",
                      ["orig"] = "authorization",
                      ["type"] = "`$STRING`",
                      ["kind"] = "header",
                      ["reqd"] = true,
                    },
                  },
                },
                ["select"] = {
                  ["exist"] = {
                    "authorization",
                  },
                },
              },
            },
          },
        },
        ["relations"] = {
          ["ancestors"] = {},
        },
      },
      ["output_create_mandator"] = {
        ["fields"] = {
          {
            ["name"] = "city",
            ["title"] = "City",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "country",
            ["title"] = "Country",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "dateOfBirth",
            ["title"] = "Date Of Birth",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "description",
            ["title"] = "Description",
            ["type"] = "`$STRING`",
            ["op"] = {
              ["create"] = {
                ["req"] = true,
                ["type"] = "`$STRING`",
              },
            },
          },
          {
            ["name"] = "driversLicenseNumber",
            ["title"] = "Drivers License Number",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "email",
            ["title"] = "Email",
            ["type"] = "`$STRING`",
            ["req"] = true,
          },
          {
            ["name"] = "firstName",
            ["title"] = "First Name",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "identificationNumber",
            ["title"] = "Identification Number",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "lastName",
            ["title"] = "Last Name",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "login",
            ["title"] = "Login",
            ["type"] = "`$STRING`",
            ["req"] = true,
          },
          {
            ["name"] = "name",
            ["title"] = "Name",
            ["type"] = "`$STRING`",
            ["op"] = {
              ["create"] = {
                ["req"] = true,
                ["type"] = "`$STRING`",
              },
            },
          },
          {
            ["name"] = "passportNumber",
            ["title"] = "Passport Number",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "phone",
            ["title"] = "Phone",
            ["type"] = "`$STRING`",
            ["req"] = true,
          },
          {
            ["name"] = "salutation",
            ["title"] = "Salutation",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "state",
            ["title"] = "State",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "street1",
            ["title"] = "Street1",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "street2",
            ["title"] = "Street2",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "zipCode",
            ["title"] = "Zip Code",
            ["type"] = "`$STRING`",
          },
        },
        ["name"] = "output_create_mandator",
        ["op"] = {
          ["create"] = {
            ["input"] = "data",
            ["name"] = "create",
            ["points"] = {
              {
                ["kind"] = "http",
                ["method"] = "POST",
                ["orig"] = "/createMandator",
                ["segments"] = {
                  {
                    ["lit"] = "createMandator",
                  },
                },
                ["parts"] = {
                  "createMandator",
                },
                ["rename"] = {},
                ["transform"] = {
                  ["req"] = "`reqdata`",
                  ["res"] = "`body.mandator`",
                },
                ["args"] = {
                  ["header"] = {
                    {
                      ["name"] = "authorization",
                      ["orig"] = "authorization",
                      ["type"] = "`$STRING`",
                      ["kind"] = "header",
                      ["reqd"] = true,
                    },
                  },
                },
                ["select"] = {
                  ["exist"] = {
                    "authorization",
                  },
                },
              },
            },
          },
        },
        ["relations"] = {
          ["ancestors"] = {},
        },
      },
      ["output_create_service_user"] = {
        ["fields"] = {
          {
            ["name"] = "mandatorName",
            ["title"] = "Mandator Name",
            ["type"] = "`$STRING`",
            ["req"] = true,
          },
          {
            ["name"] = "responseCode",
            ["title"] = "Response Code",
            ["type"] = "`$INTEGER`",
            ["format"] = "int32",
          },
          {
            ["name"] = "responseMessage",
            ["title"] = "Response Message",
            ["type"] = "`$STRING`",
          },
        },
        ["name"] = "output_create_service_user",
        ["op"] = {
          ["create"] = {
            ["input"] = "data",
            ["name"] = "create",
            ["points"] = {
              {
                ["kind"] = "http",
                ["method"] = "POST",
                ["orig"] = "/createServiceUser",
                ["segments"] = {
                  {
                    ["lit"] = "createServiceUser",
                  },
                },
                ["parts"] = {
                  "createServiceUser",
                },
                ["rename"] = {},
                ["transform"] = {
                  ["req"] = "`reqdata`",
                  ["res"] = "`body`",
                },
                ["args"] = {
                  ["header"] = {
                    {
                      ["name"] = "authorization",
                      ["orig"] = "authorization",
                      ["type"] = "`$STRING`",
                      ["kind"] = "header",
                      ["reqd"] = true,
                    },
                  },
                },
                ["select"] = {
                  ["exist"] = {
                    "authorization",
                  },
                },
              },
            },
          },
        },
        ["relations"] = {
          ["ancestors"] = {},
        },
      },
      ["output_deactivate_user"] = {
        ["fields"] = {
          {
            ["name"] = "consumerUUID",
            ["title"] = "Consumer Uuid",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "responseCode",
            ["title"] = "Response Code",
            ["type"] = "`$INTEGER`",
            ["format"] = "int32",
          },
          {
            ["name"] = "responseMessage",
            ["title"] = "Response Message",
            ["type"] = "`$STRING`",
          },
        },
        ["name"] = "output_deactivate_user",
        ["op"] = {
          ["create"] = {
            ["input"] = "data",
            ["name"] = "create",
            ["points"] = {
              {
                ["kind"] = "http",
                ["method"] = "POST",
                ["orig"] = "/deactivateUser",
                ["segments"] = {
                  {
                    ["lit"] = "deactivateUser",
                  },
                },
                ["parts"] = {
                  "deactivateUser",
                },
                ["rename"] = {},
                ["transform"] = {
                  ["req"] = "`reqdata`",
                  ["res"] = "`body`",
                },
                ["args"] = {
                  ["header"] = {
                    {
                      ["name"] = "authorization",
                      ["orig"] = "authorization",
                      ["type"] = "`$STRING`",
                      ["kind"] = "header",
                      ["reqd"] = true,
                    },
                  },
                },
                ["select"] = {
                  ["exist"] = {
                    "authorization",
                  },
                },
              },
            },
          },
        },
        ["relations"] = {
          ["ancestors"] = {},
        },
      },
      ["output_get_kyc_document"] = {
        ["fields"] = {
          {
            ["name"] = "caseID",
            ["title"] = "Case Id",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "encodedDataBase64",
            ["title"] = "Encoded Data Base64",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "responseCode",
            ["title"] = "Response Code",
            ["type"] = "`$INTEGER`",
            ["format"] = "int32",
          },
          {
            ["name"] = "responseMessage",
            ["title"] = "Response Message",
            ["type"] = "`$STRING`",
          },
        },
        ["name"] = "output_get_kyc_document",
        ["op"] = {
          ["create"] = {
            ["input"] = "data",
            ["name"] = "create",
            ["points"] = {
              {
                ["kind"] = "http",
                ["method"] = "POST",
                ["orig"] = "/getKycDocument",
                ["segments"] = {
                  {
                    ["lit"] = "getKycDocument",
                  },
                },
                ["parts"] = {
                  "getKycDocument",
                },
                ["rename"] = {},
                ["transform"] = {
                  ["req"] = "`reqdata`",
                  ["res"] = "`body`",
                },
                ["args"] = {
                  ["header"] = {
                    {
                      ["name"] = "authorization",
                      ["orig"] = "authorization",
                      ["type"] = "`$STRING`",
                      ["kind"] = "header",
                      ["reqd"] = true,
                    },
                  },
                },
                ["select"] = {
                  ["exist"] = {
                    "authorization",
                  },
                },
              },
            },
          },
        },
        ["relations"] = {
          ["ancestors"] = {},
        },
      },
      ["output_get_logo"] = {
        ["fields"] = {
          {
            ["name"] = "contentAsBase64",
            ["title"] = "Content As Base64",
            ["type"] = "`$STRING`",
            ["req"] = true,
            ["short"] = "The content of the image as base64 encoded string",
          },
          {
            ["name"] = "mimeType",
            ["title"] = "Mime Type",
            ["type"] = "`$STRING`",
            ["req"] = true,
            ["short"] = "The MIME type of the image",
          },
          {
            ["name"] = "responseCode",
            ["title"] = "Response Code",
            ["type"] = "`$INTEGER`",
            ["format"] = "int32",
          },
          {
            ["name"] = "responseMessage",
            ["title"] = "Response Message",
            ["type"] = "`$STRING`",
          },
        },
        ["name"] = "output_get_logo",
        ["op"] = {
          ["load"] = {
            ["input"] = "data",
            ["name"] = "load",
            ["points"] = {
              {
                ["kind"] = "http",
                ["method"] = "GET",
                ["orig"] = "/getLogo",
                ["segments"] = {
                  {
                    ["lit"] = "getLogo",
                  },
                },
                ["parts"] = {
                  "getLogo",
                },
                ["rename"] = {},
                ["transform"] = {
                  ["req"] = "`reqdata`",
                  ["res"] = "`body`",
                },
                ["args"] = {
                  ["header"] = {
                    {
                      ["name"] = "authorization",
                      ["orig"] = "authorization",
                      ["type"] = "`$STRING`",
                      ["kind"] = "header",
                      ["reqd"] = true,
                    },
                  },
                },
                ["select"] = {
                  ["exist"] = {
                    "authorization",
                  },
                },
              },
            },
          },
        },
        ["relations"] = {
          ["ancestors"] = {},
        },
      },
      ["output_list_of_available_role"] = {
        ["fields"] = {
          {
            ["name"] = "availableRoles",
            ["title"] = "Available Roles",
            ["type"] = "`$ARRAY`",
          },
          {
            ["name"] = "responseCode",
            ["title"] = "Response Code",
            ["type"] = "`$INTEGER`",
            ["format"] = "int32",
          },
          {
            ["name"] = "responseMessage",
            ["title"] = "Response Message",
            ["type"] = "`$STRING`",
          },
        },
        ["name"] = "output_list_of_available_role",
        ["op"] = {
          ["create"] = {
            ["input"] = "data",
            ["name"] = "create",
            ["points"] = {
              {
                ["kind"] = "http",
                ["method"] = "POST",
                ["orig"] = "/listOfAvailableRoles",
                ["segments"] = {
                  {
                    ["lit"] = "listOfAvailableRoles",
                  },
                },
                ["parts"] = {
                  "listOfAvailableRoles",
                },
                ["rename"] = {},
                ["transform"] = {
                  ["req"] = "`reqdata`",
                  ["res"] = "`body`",
                },
                ["args"] = {
                  ["header"] = {
                    {
                      ["name"] = "authorization",
                      ["orig"] = "authorization",
                      ["type"] = "`$STRING`",
                      ["kind"] = "header",
                      ["reqd"] = true,
                    },
                  },
                },
                ["select"] = {
                  ["exist"] = {
                    "authorization",
                  },
                },
              },
            },
          },
        },
        ["relations"] = {
          ["ancestors"] = {},
        },
      },
      ["output_list_of_mandator"] = {
        ["fields"] = {
          {
            ["name"] = "filter",
            ["title"] = "Filter",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "list",
            ["title"] = "List",
            ["type"] = "`$ARRAY`",
          },
          {
            ["name"] = "pagination",
            ["title"] = "Pagination",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "responseCode",
            ["title"] = "Response Code",
            ["type"] = "`$INTEGER`",
            ["format"] = "int32",
          },
          {
            ["name"] = "responseMessage",
            ["title"] = "Response Message",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "sorting",
            ["title"] = "Sorting",
            ["type"] = "`$OBJECT`",
          },
        },
        ["name"] = "output_list_of_mandator",
        ["op"] = {
          ["create"] = {
            ["input"] = "data",
            ["name"] = "create",
            ["points"] = {
              {
                ["kind"] = "http",
                ["method"] = "POST",
                ["orig"] = "/listOfMandators",
                ["segments"] = {
                  {
                    ["lit"] = "listOfMandators",
                  },
                },
                ["parts"] = {
                  "listOfMandators",
                },
                ["rename"] = {},
                ["transform"] = {
                  ["req"] = "`reqdata`",
                  ["res"] = "`body`",
                },
                ["args"] = {
                  ["header"] = {
                    {
                      ["name"] = "authorization",
                      ["orig"] = "authorization",
                      ["type"] = "`$STRING`",
                      ["kind"] = "header",
                      ["reqd"] = true,
                    },
                  },
                },
                ["select"] = {
                  ["exist"] = {
                    "authorization",
                  },
                },
              },
            },
          },
        },
        ["relations"] = {
          ["ancestors"] = {},
        },
      },
      ["output_list_of_module"] = {
        ["fields"] = {
          {
            ["name"] = "list",
            ["title"] = "List",
            ["type"] = "`$ARRAY`",
          },
          {
            ["name"] = "pagination",
            ["title"] = "Pagination",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "responseCode",
            ["title"] = "Response Code",
            ["type"] = "`$INTEGER`",
            ["format"] = "int32",
          },
          {
            ["name"] = "responseMessage",
            ["title"] = "Response Message",
            ["type"] = "`$STRING`",
          },
        },
        ["name"] = "output_list_of_module",
        ["op"] = {
          ["create"] = {
            ["input"] = "data",
            ["name"] = "create",
            ["points"] = {
              {
                ["kind"] = "http",
                ["method"] = "POST",
                ["orig"] = "/listOfModules",
                ["segments"] = {
                  {
                    ["lit"] = "listOfModules",
                  },
                },
                ["parts"] = {
                  "listOfModules",
                },
                ["rename"] = {},
                ["transform"] = {
                  ["req"] = "`reqdata`",
                  ["res"] = "`body`",
                },
                ["args"] = {
                  ["header"] = {
                    {
                      ["name"] = "authorization",
                      ["orig"] = "authorization",
                      ["type"] = "`$STRING`",
                      ["kind"] = "header",
                      ["reqd"] = true,
                    },
                  },
                },
                ["select"] = {
                  ["exist"] = {
                    "authorization",
                  },
                },
              },
            },
          },
        },
        ["relations"] = {
          ["ancestors"] = {},
        },
      },
      ["output_list_of_role_group"] = {
        ["fields"] = {
          {
            ["name"] = "filter",
            ["title"] = "Filter",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "groupRoles",
            ["title"] = "Group Roles",
            ["type"] = "`$ARRAY`",
          },
          {
            ["name"] = "pagination",
            ["title"] = "Pagination",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "responseCode",
            ["title"] = "Response Code",
            ["type"] = "`$INTEGER`",
            ["format"] = "int32",
          },
          {
            ["name"] = "responseMessage",
            ["title"] = "Response Message",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "sorting",
            ["title"] = "Sorting",
            ["type"] = "`$OBJECT`",
          },
        },
        ["name"] = "output_list_of_role_group",
        ["op"] = {
          ["create"] = {
            ["input"] = "data",
            ["name"] = "create",
            ["points"] = {
              {
                ["kind"] = "http",
                ["method"] = "POST",
                ["orig"] = "/listOfRoleGroups",
                ["segments"] = {
                  {
                    ["lit"] = "listOfRoleGroups",
                  },
                },
                ["parts"] = {
                  "listOfRoleGroups",
                },
                ["rename"] = {},
                ["transform"] = {
                  ["req"] = "`reqdata`",
                  ["res"] = "`body`",
                },
                ["args"] = {
                  ["header"] = {
                    {
                      ["name"] = "authorization",
                      ["orig"] = "authorization",
                      ["type"] = "`$STRING`",
                      ["kind"] = "header",
                      ["reqd"] = true,
                    },
                  },
                },
                ["select"] = {
                  ["exist"] = {
                    "authorization",
                  },
                },
              },
            },
          },
        },
        ["relations"] = {
          ["ancestors"] = {},
        },
      },
      ["output_list_of_transactions_history"] = {
        ["fields"] = {
          {
            ["name"] = "filter",
            ["title"] = "Filter",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "list",
            ["title"] = "List",
            ["type"] = "`$ARRAY`",
          },
          {
            ["name"] = "pagination",
            ["title"] = "Pagination",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "responseCode",
            ["title"] = "Response Code",
            ["type"] = "`$INTEGER`",
            ["format"] = "int32",
          },
          {
            ["name"] = "responseMessage",
            ["title"] = "Response Message",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "sorting",
            ["title"] = "Sorting",
            ["type"] = "`$OBJECT`",
          },
        },
        ["name"] = "output_list_of_transactions_history",
        ["op"] = {
          ["create"] = {
            ["input"] = "data",
            ["name"] = "create",
            ["points"] = {
              {
                ["kind"] = "http",
                ["method"] = "POST",
                ["orig"] = "/listOfTransactionsHistory",
                ["segments"] = {
                  {
                    ["lit"] = "listOfTransactionsHistory",
                  },
                },
                ["parts"] = {
                  "listOfTransactionsHistory",
                },
                ["rename"] = {},
                ["transform"] = {
                  ["req"] = "`reqdata`",
                  ["res"] = "`body`",
                },
                ["args"] = {
                  ["header"] = {
                    {
                      ["name"] = "authorization",
                      ["orig"] = "authorization",
                      ["type"] = "`$STRING`",
                      ["kind"] = "header",
                      ["reqd"] = true,
                    },
                  },
                },
                ["select"] = {
                  ["exist"] = {
                    "authorization",
                  },
                },
              },
            },
          },
        },
        ["relations"] = {
          ["ancestors"] = {},
        },
      },
      ["output_list_of_user"] = {
        ["fields"] = {
          {
            ["name"] = "filter",
            ["title"] = "Filter",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "list",
            ["title"] = "List",
            ["type"] = "`$ARRAY`",
          },
          {
            ["name"] = "pagination",
            ["title"] = "Pagination",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "responseCode",
            ["title"] = "Response Code",
            ["type"] = "`$INTEGER`",
            ["format"] = "int32",
          },
          {
            ["name"] = "responseMessage",
            ["title"] = "Response Message",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "sorting",
            ["title"] = "Sorting",
            ["type"] = "`$OBJECT`",
          },
        },
        ["name"] = "output_list_of_user",
        ["op"] = {
          ["create"] = {
            ["input"] = "data",
            ["name"] = "create",
            ["points"] = {
              {
                ["kind"] = "http",
                ["method"] = "POST",
                ["orig"] = "/listOfUsers",
                ["segments"] = {
                  {
                    ["lit"] = "listOfUsers",
                  },
                },
                ["parts"] = {
                  "listOfUsers",
                },
                ["rename"] = {},
                ["transform"] = {
                  ["req"] = "`reqdata`",
                  ["res"] = "`body`",
                },
                ["args"] = {
                  ["header"] = {
                    {
                      ["name"] = "authorization",
                      ["orig"] = "authorization",
                      ["type"] = "`$STRING`",
                      ["kind"] = "header",
                      ["reqd"] = true,
                    },
                  },
                },
                ["select"] = {
                  ["exist"] = {
                    "authorization",
                  },
                },
              },
            },
          },
        },
        ["relations"] = {
          ["ancestors"] = {},
        },
      },
      ["output_provide_credential"] = {
        ["fields"] = {
          {
            ["name"] = "mandatorName",
            ["title"] = "Mandator Name",
            ["type"] = "`$STRING`",
            ["req"] = true,
          },
          {
            ["name"] = "password",
            ["title"] = "Password",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "responseCode",
            ["title"] = "Response Code",
            ["type"] = "`$INTEGER`",
            ["format"] = "int32",
          },
          {
            ["name"] = "responseMessage",
            ["title"] = "Response Message",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "username",
            ["title"] = "Username",
            ["type"] = "`$STRING`",
          },
        },
        ["name"] = "output_provide_credential",
        ["op"] = {
          ["create"] = {
            ["input"] = "data",
            ["name"] = "create",
            ["points"] = {
              {
                ["kind"] = "http",
                ["method"] = "POST",
                ["orig"] = "/provideCredentials",
                ["segments"] = {
                  {
                    ["lit"] = "provideCredentials",
                  },
                },
                ["parts"] = {
                  "provideCredentials",
                },
                ["rename"] = {},
                ["transform"] = {
                  ["req"] = "`reqdata`",
                  ["res"] = "`body`",
                },
                ["args"] = {
                  ["header"] = {
                    {
                      ["name"] = "authorization",
                      ["orig"] = "authorization",
                      ["type"] = "`$STRING`",
                      ["kind"] = "header",
                      ["reqd"] = true,
                    },
                  },
                },
                ["select"] = {
                  ["exist"] = {
                    "authorization",
                  },
                },
              },
            },
          },
        },
        ["relations"] = {
          ["ancestors"] = {},
        },
      },
      ["output_register_user"] = {
        ["fields"] = {
          {
            ["name"] = "city",
            ["title"] = "City",
            ["type"] = "`$STRING`",
            ["short"] = "City where the user resides.",
          },
          {
            ["name"] = "consumerId",
            ["title"] = "Consumer Id",
            ["type"] = "`$STRING`",
            ["short"] = "User login or unique user identifier.",
          },
          {
            ["name"] = "consumerLanguage",
            ["title"] = "Consumer Language",
            ["type"] = "`$STRING`",
            ["short"] = "Preferred language for the user (e.g., 'en').",
          },
          {
            ["name"] = "country",
            ["title"] = "Country",
            ["type"] = "`$STRING`",
            ["short"] = "User's country.",
          },
          {
            ["name"] = "dateOfBirth",
            ["title"] = "Date Of Birth",
            ["type"] = "`$STRING`",
            ["short"] = "User's date of birth (expected format: dd.MM.yyyy).",
          },
          {
            ["name"] = "driverLicenceNumber",
            ["title"] = "Driver Licence Number",
            ["type"] = "`$STRING`",
            ["short"] = "User's driver's license number.",
          },
          {
            ["name"] = "email",
            ["title"] = "Email",
            ["type"] = "`$STRING`",
            ["req"] = true,
            ["short"] = "User's email address (must be unique).",
            ["format"] = "email",
          },
          {
            ["name"] = "firstName",
            ["title"] = "First Name",
            ["type"] = "`$STRING`",
            ["short"] = "User's first name.",
          },
          {
            ["name"] = "identificationNumber",
            ["title"] = "Identification Number",
            ["type"] = "`$STRING`",
            ["short"] = "User's identification number.",
          },
          {
            ["name"] = "lastName",
            ["title"] = "Last Name",
            ["type"] = "`$STRING`",
            ["short"] = "User's last name.",
          },
          {
            ["name"] = "login",
            ["title"] = "Login",
            ["type"] = "`$STRING`",
            ["short"] = "User login identifier (should be unique).",
          },
          {
            ["name"] = "module",
            ["title"] = "Module",
            ["type"] = "`$STRING`",
            ["short"] = "Module identifier (if applicable).",
          },
          {
            ["name"] = "passportNumber",
            ["title"] = "Passport Number",
            ["type"] = "`$STRING`",
            ["short"] = "User's passport number.",
          },
          {
            ["name"] = "phone",
            ["title"] = "Phone",
            ["type"] = "`$STRING`",
            ["short"] = "User's phone number.",
          },
          {
            ["name"] = "responseCode",
            ["title"] = "Response Code",
            ["type"] = "`$INTEGER`",
            ["short"] = "Response code (0 indicates success; non-zero indicates an error).",
            ["format"] = "int32",
          },
          {
            ["name"] = "responseMessage",
            ["title"] = "Response Message",
            ["type"] = "`$STRING`",
            ["short"] = "Human-readable response message.",
          },
          {
            ["name"] = "salutation",
            ["title"] = "Salutation",
            ["type"] = "`$STRING`",
            ["short"] = "User's salutation (e.g., Mr., Ms.).",
          },
          {
            ["name"] = "state",
            ["title"] = "State",
            ["type"] = "`$STRING`",
            ["short"] = "User's state or region.",
          },
          {
            ["name"] = "street1",
            ["title"] = "Street1",
            ["type"] = "`$STRING`",
            ["short"] = "Primary address line.",
          },
          {
            ["name"] = "street2",
            ["title"] = "Street2",
            ["type"] = "`$STRING`",
            ["short"] = "Secondary address line.",
          },
          {
            ["name"] = "zip",
            ["title"] = "Zip",
            ["type"] = "`$STRING`",
            ["short"] = "Postal code.",
          },
        },
        ["name"] = "output_register_user",
        ["op"] = {
          ["create"] = {
            ["input"] = "data",
            ["name"] = "create",
            ["points"] = {
              {
                ["kind"] = "http",
                ["method"] = "POST",
                ["orig"] = "/registerUser",
                ["segments"] = {
                  {
                    ["lit"] = "registerUser",
                  },
                },
                ["parts"] = {
                  "registerUser",
                },
                ["rename"] = {},
                ["transform"] = {
                  ["req"] = "`reqdata`",
                  ["res"] = "`body`",
                },
                ["args"] = {
                  ["header"] = {
                    {
                      ["name"] = "authorization",
                      ["orig"] = "authorization",
                      ["type"] = "`$STRING`",
                      ["kind"] = "header",
                      ["reqd"] = true,
                    },
                  },
                },
                ["select"] = {
                  ["exist"] = {
                    "authorization",
                  },
                },
              },
            },
          },
        },
        ["relations"] = {
          ["ancestors"] = {},
        },
      },
      ["output_remove_role"] = {
        ["fields"] = {
          {
            ["name"] = "consumerUUID",
            ["title"] = "Consumer Uuid",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "responseCode",
            ["title"] = "Response Code",
            ["type"] = "`$INTEGER`",
            ["format"] = "int32",
          },
          {
            ["name"] = "responseMessage",
            ["title"] = "Response Message",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "roles",
            ["title"] = "Roles",
            ["type"] = "`$ARRAY`",
          },
        },
        ["name"] = "output_remove_role",
        ["op"] = {
          ["create"] = {
            ["input"] = "data",
            ["name"] = "create",
            ["points"] = {
              {
                ["kind"] = "http",
                ["method"] = "POST",
                ["orig"] = "/removeRoles",
                ["segments"] = {
                  {
                    ["lit"] = "removeRoles",
                  },
                },
                ["parts"] = {
                  "removeRoles",
                },
                ["rename"] = {},
                ["transform"] = {
                  ["req"] = "`reqdata`",
                  ["res"] = "`body`",
                },
                ["args"] = {
                  ["header"] = {
                    {
                      ["name"] = "authorization",
                      ["orig"] = "authorization",
                      ["type"] = "`$STRING`",
                      ["kind"] = "header",
                      ["reqd"] = true,
                    },
                  },
                },
                ["select"] = {
                  ["exist"] = {
                    "authorization",
                  },
                },
              },
            },
          },
        },
        ["relations"] = {
          ["ancestors"] = {},
        },
      },
      ["output_resend_link"] = {
        ["fields"] = {
          {
            ["name"] = "businessRegistrationNumber",
            ["title"] = "Business Registration Number",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "consumerUUID",
            ["title"] = "Consumer Uuid",
            ["type"] = "`$STRING`",
            ["req"] = true,
          },
          {
            ["name"] = "emailConfirmationCode",
            ["title"] = "Email Confirmation Code",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "phoneNumber",
            ["title"] = "Phone Number",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "responseCode",
            ["title"] = "Response Code",
            ["type"] = "`$INTEGER`",
            ["format"] = "int32",
          },
          {
            ["name"] = "responseMessage",
            ["title"] = "Response Message",
            ["type"] = "`$STRING`",
          },
        },
        ["name"] = "output_resend_link",
        ["op"] = {
          ["create"] = {
            ["input"] = "data",
            ["name"] = "create",
            ["points"] = {
              {
                ["kind"] = "http",
                ["method"] = "POST",
                ["orig"] = "/resendLink",
                ["segments"] = {
                  {
                    ["lit"] = "resendLink",
                  },
                },
                ["parts"] = {
                  "resendLink",
                },
                ["rename"] = {},
                ["transform"] = {
                  ["req"] = "`reqdata`",
                  ["res"] = "`body`",
                },
                ["args"] = {
                  ["header"] = {
                    {
                      ["name"] = "authorization",
                      ["orig"] = "authorization",
                      ["type"] = "`$STRING`",
                      ["kind"] = "header",
                    },
                  },
                },
                ["select"] = {
                  ["exist"] = {
                    "authorization",
                  },
                },
              },
            },
          },
        },
        ["relations"] = {
          ["ancestors"] = {},
        },
      },
      ["output_reset_password"] = {
        ["fields"] = {
          {
            ["name"] = "consumerUuid",
            ["title"] = "Consumer Uuid",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "phoneNumber",
            ["title"] = "Phone Number",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "responseCode",
            ["title"] = "Response Code",
            ["type"] = "`$INTEGER`",
            ["format"] = "int32",
          },
          {
            ["name"] = "responseMessage",
            ["title"] = "Response Message",
            ["type"] = "`$STRING`",
          },
        },
        ["name"] = "output_reset_password",
        ["op"] = {
          ["create"] = {
            ["input"] = "data",
            ["name"] = "create",
            ["points"] = {
              {
                ["kind"] = "http",
                ["method"] = "POST",
                ["orig"] = "/resetPassword",
                ["segments"] = {
                  {
                    ["lit"] = "resetPassword",
                  },
                },
                ["parts"] = {
                  "resetPassword",
                },
                ["rename"] = {},
                ["transform"] = {
                  ["req"] = "`reqdata`",
                  ["res"] = "`body`",
                },
                ["args"] = {
                  ["header"] = {
                    {
                      ["name"] = "authorization",
                      ["orig"] = "authorization",
                      ["type"] = "`$STRING`",
                      ["kind"] = "header",
                      ["reqd"] = true,
                    },
                  },
                },
                ["select"] = {
                  ["exist"] = {
                    "authorization",
                  },
                },
              },
            },
          },
        },
        ["relations"] = {
          ["ancestors"] = {},
        },
      },
      ["output_update_consumer"] = {
        ["fields"] = {
          {
            ["name"] = "city",
            ["title"] = "City",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "consumerUuid",
            ["title"] = "Consumer Uuid",
            ["type"] = "`$STRING`",
            ["req"] = true,
          },
          {
            ["name"] = "consumerlanguage",
            ["title"] = "Consumerlanguage",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "country",
            ["title"] = "Country",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "dateOfBirth",
            ["title"] = "Date Of Birth",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "datetime_created",
            ["title"] = "Datetime Created",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "driverLicenceNumber",
            ["title"] = "Driver Licence Number",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "email",
            ["title"] = "Email",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "firstName",
            ["title"] = "First Name",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "identificationNumber",
            ["title"] = "Identification Number",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "kycPassed",
            ["title"] = "Kyc Passed",
            ["type"] = "`$BOOLEAN`",
          },
          {
            ["name"] = "lastName",
            ["title"] = "Last Name",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "nationality",
            ["title"] = "Nationality",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "passportNumber",
            ["title"] = "Passport Number",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "phoneNumber",
            ["title"] = "Phone Number",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "placeOfBirth",
            ["title"] = "Place Of Birth",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "responseCode",
            ["title"] = "Response Code",
            ["type"] = "`$INTEGER`",
            ["format"] = "int32",
          },
          {
            ["name"] = "responseMessage",
            ["title"] = "Response Message",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "state",
            ["title"] = "State",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "street1",
            ["title"] = "Street1",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "street2",
            ["title"] = "Street2",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "transactionhistory_id",
            ["title"] = "Transactionhistory Id",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "zip",
            ["title"] = "Zip",
            ["type"] = "`$STRING`",
          },
        },
        ["name"] = "output_update_consumer",
        ["op"] = {
          ["create"] = {
            ["input"] = "data",
            ["name"] = "create",
            ["points"] = {
              {
                ["kind"] = "http",
                ["method"] = "POST",
                ["orig"] = "/updateConsumer",
                ["segments"] = {
                  {
                    ["lit"] = "updateConsumer",
                  },
                },
                ["parts"] = {
                  "updateConsumer",
                },
                ["rename"] = {},
                ["transform"] = {
                  ["req"] = "`reqdata`",
                  ["res"] = "`body`",
                },
                ["args"] = {
                  ["header"] = {
                    {
                      ["name"] = "authorization",
                      ["orig"] = "authorization",
                      ["type"] = "`$STRING`",
                      ["kind"] = "header",
                    },
                  },
                },
                ["select"] = {
                  ["exist"] = {
                    "authorization",
                  },
                },
              },
            },
          },
        },
        ["relations"] = {
          ["ancestors"] = {},
        },
      },
      ["output_update_profile"] = {
        ["fields"] = {
          {
            ["name"] = "consumerLanguage",
            ["title"] = "Consumer Language",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "email",
            ["title"] = "Email",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "firstName",
            ["title"] = "First Name",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "lastName",
            ["title"] = "Last Name",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "phoneNumber",
            ["title"] = "Phone Number",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "responseCode",
            ["title"] = "Response Code",
            ["type"] = "`$INTEGER`",
            ["format"] = "int32",
          },
          {
            ["name"] = "responseMessage",
            ["title"] = "Response Message",
            ["type"] = "`$STRING`",
          },
        },
        ["name"] = "output_update_profile",
        ["op"] = {
          ["create"] = {
            ["input"] = "data",
            ["name"] = "create",
            ["points"] = {
              {
                ["kind"] = "http",
                ["method"] = "POST",
                ["orig"] = "/updateProfile",
                ["segments"] = {
                  {
                    ["lit"] = "updateProfile",
                  },
                },
                ["parts"] = {
                  "updateProfile",
                },
                ["rename"] = {},
                ["transform"] = {
                  ["req"] = "`reqdata`",
                  ["res"] = "`body`",
                },
                ["args"] = {
                  ["header"] = {
                    {
                      ["name"] = "authorization",
                      ["orig"] = "authorization",
                      ["type"] = "`$STRING`",
                      ["kind"] = "header",
                    },
                  },
                },
                ["select"] = {
                  ["exist"] = {
                    "authorization",
                  },
                },
              },
            },
          },
        },
        ["relations"] = {
          ["ancestors"] = {},
        },
      },
      ["version"] = {
        ["fields"] = {
          {
            ["name"] = "appName",
            ["title"] = "App Name",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "buildDate",
            ["title"] = "Build Date",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "version",
            ["title"] = "Version",
            ["type"] = "`$STRING`",
          },
        },
        ["name"] = "version",
        ["op"] = {
          ["load"] = {
            ["input"] = "data",
            ["name"] = "load",
            ["points"] = {
              {
                ["kind"] = "http",
                ["method"] = "GET",
                ["orig"] = "/version",
                ["segments"] = {
                  {
                    ["lit"] = "version",
                  },
                },
                ["parts"] = {
                  "version",
                },
                ["rename"] = {},
                ["transform"] = {
                  ["req"] = "`reqdata`",
                  ["res"] = "`body`",
                },
                ["args"] = {},
                ["select"] = {},
              },
            },
          },
        },
        ["relations"] = {
          ["ancestors"] = {},
        },
      },
    },
  }
end


local function make_feature(name)
  local features = require("features")
  local factory = features[name]
  if factory ~= nil then
    return factory()
  end
  return features.base()
end


-- Attach make_feature to the SDK class
local function setup_sdk(SDK)
  SDK._make_feature = make_feature
end


return make_config

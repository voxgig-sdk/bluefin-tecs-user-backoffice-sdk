# BluefinTecsUserBackoffice SDK configuration


def make_config():
    return {
        "main": {
            "name": "BluefinTecsUserBackoffice",
        },
        "feature": {
            "test": {
        "options": {
          "active": False,
        },
      },
        },
        "options": {
            "base": "https://test.tecs.at/usermanagement-backofficews",
            "auth": {
                "prefix": "Bearer",
            },
            "headers": {
        "content-type": "application/json",
      },
            "entity": {
                "output_activate_digital_module": {},
                "output_activate_portal_module": {},
                "output_activate_store_module": {},
                "output_activate_user": {},
                "output_assign_role": {},
                "output_change_logo": {},
                "output_create_mandator": {},
                "output_create_service_user": {},
                "output_deactivate_user": {},
                "output_get_kyc_document": {},
                "output_get_logo": {},
                "output_list_of_available_role": {},
                "output_list_of_mandator": {},
                "output_list_of_module": {},
                "output_list_of_role_group": {},
                "output_list_of_transactions_history": {},
                "output_list_of_user": {},
                "output_provide_credential": {},
                "output_register_user": {},
                "output_remove_role": {},
                "output_resend_link": {},
                "output_reset_password": {},
                "output_update_consumer": {},
                "output_update_profile": {},
                "version": {},
            },
        },
        "entity": {
      "output_activate_digital_module": {
        "fields": [
          {
            "active": True,
            "name": "responseCode",
            "req": False,
            "type": "`$INTEGER`",
            "index$": 0,
          },
          {
            "active": True,
            "name": "responseMessage",
            "req": False,
            "type": "`$STRING`",
            "index$": 1,
          },
        ],
        "name": "output_activate_digital_module",
        "op": {
          "create": {
            "input": "data",
            "name": "create",
            "points": [
              {
                "active": True,
                "args": {
                  "header": [
                    {
                      "active": True,
                      "kind": "header",
                      "name": "authorization",
                      "orig": "authorization",
                      "reqd": True,
                      "type": "`$STRING`",
                    },
                  ],
                },
                "kind": "http",
                "method": "POST",
                "orig": "/activateDigitalModule",
                "parts": [
                  "activateDigitalModule",
                ],
                "select": {
                  "exist": [
                    "authorization",
                  ],
                },
                "transform": {
                  "req": "`reqdata`",
                  "res": "`body`",
                },
                "index$": 0,
              },
            ],
            "key$": "create",
          },
        },
        "relations": {
          "ancestors": [],
        },
      },
      "output_activate_portal_module": {
        "fields": [
          {
            "active": True,
            "name": "clientSecret",
            "req": True,
            "type": "`$STRING`",
            "index$": 0,
          },
          {
            "active": True,
            "name": "notificationEmail",
            "req": True,
            "type": "`$STRING`",
            "index$": 1,
          },
          {
            "active": True,
            "name": "responseCode",
            "req": False,
            "type": "`$INTEGER`",
            "index$": 2,
          },
          {
            "active": True,
            "name": "responseMessage",
            "req": False,
            "type": "`$STRING`",
            "index$": 3,
          },
        ],
        "name": "output_activate_portal_module",
        "op": {
          "create": {
            "input": "data",
            "name": "create",
            "points": [
              {
                "active": True,
                "args": {
                  "header": [
                    {
                      "active": True,
                      "kind": "header",
                      "name": "authorization",
                      "orig": "authorization",
                      "reqd": True,
                      "type": "`$STRING`",
                    },
                  ],
                },
                "kind": "http",
                "method": "POST",
                "orig": "/activateMerchantPortalModule",
                "parts": [
                  "activateMerchantPortalModule",
                ],
                "select": {
                  "exist": [
                    "authorization",
                  ],
                },
                "transform": {
                  "req": "`reqdata`",
                  "res": "`body`",
                },
                "index$": 0,
              },
            ],
            "key$": "create",
          },
        },
        "relations": {
          "ancestors": [],
        },
      },
      "output_activate_store_module": {
        "fields": [
          {
            "active": True,
            "name": "responseCode",
            "req": False,
            "type": "`$INTEGER`",
            "index$": 0,
          },
          {
            "active": True,
            "name": "responseMessage",
            "req": False,
            "type": "`$STRING`",
            "index$": 1,
          },
        ],
        "name": "output_activate_store_module",
        "op": {
          "create": {
            "input": "data",
            "name": "create",
            "points": [
              {
                "active": True,
                "args": {
                  "header": [
                    {
                      "active": True,
                      "kind": "header",
                      "name": "authorization",
                      "orig": "authorization",
                      "reqd": True,
                      "type": "`$STRING`",
                    },
                  ],
                },
                "kind": "http",
                "method": "POST",
                "orig": "/activateAppStoreModule",
                "parts": [
                  "activateAppStoreModule",
                ],
                "select": {
                  "exist": [
                    "authorization",
                  ],
                },
                "transform": {
                  "req": "`reqdata`",
                  "res": "`body`",
                },
                "index$": 0,
              },
            ],
            "key$": "create",
          },
        },
        "relations": {
          "ancestors": [],
        },
      },
      "output_activate_user": {
        "fields": [
          {
            "active": True,
            "name": "consumerUUID",
            "req": False,
            "type": "`$STRING`",
            "index$": 0,
          },
          {
            "active": True,
            "name": "responseCode",
            "req": False,
            "type": "`$INTEGER`",
            "index$": 1,
          },
          {
            "active": True,
            "name": "responseMessage",
            "req": False,
            "type": "`$STRING`",
            "index$": 2,
          },
        ],
        "name": "output_activate_user",
        "op": {
          "create": {
            "input": "data",
            "name": "create",
            "points": [
              {
                "active": True,
                "args": {
                  "header": [
                    {
                      "active": True,
                      "kind": "header",
                      "name": "authorization",
                      "orig": "authorization",
                      "reqd": True,
                      "type": "`$STRING`",
                    },
                  ],
                },
                "kind": "http",
                "method": "POST",
                "orig": "/activateUser",
                "parts": [
                  "activateUser",
                ],
                "select": {
                  "exist": [
                    "authorization",
                  ],
                },
                "transform": {
                  "req": "`reqdata`",
                  "res": "`body`",
                },
                "index$": 0,
              },
            ],
            "key$": "create",
          },
        },
        "relations": {
          "ancestors": [],
        },
      },
      "output_assign_role": {
        "fields": [
          {
            "active": True,
            "name": "consumerUUID",
            "req": True,
            "type": "`$STRING`",
            "index$": 0,
          },
          {
            "active": True,
            "name": "responseCode",
            "req": False,
            "type": "`$INTEGER`",
            "index$": 1,
          },
          {
            "active": True,
            "name": "responseMessage",
            "req": False,
            "type": "`$STRING`",
            "index$": 2,
          },
          {
            "active": True,
            "name": "roles",
            "req": True,
            "type": "`$ARRAY`",
            "index$": 3,
          },
        ],
        "name": "output_assign_role",
        "op": {
          "create": {
            "input": "data",
            "name": "create",
            "points": [
              {
                "active": True,
                "args": {
                  "header": [
                    {
                      "active": True,
                      "kind": "header",
                      "name": "authorization",
                      "orig": "authorization",
                      "reqd": True,
                      "type": "`$STRING`",
                    },
                  ],
                },
                "kind": "http",
                "method": "POST",
                "orig": "/assignRoles",
                "parts": [
                  "assignRoles",
                ],
                "select": {
                  "exist": [
                    "authorization",
                  ],
                },
                "transform": {
                  "req": "`reqdata`",
                  "res": "`body`",
                },
                "index$": 0,
              },
            ],
            "key$": "create",
          },
        },
        "relations": {
          "ancestors": [],
        },
      },
      "output_change_logo": {
        "fields": [
          {
            "active": True,
            "name": "contentAsBase64",
            "req": True,
            "type": "`$STRING`",
            "index$": 0,
          },
          {
            "active": True,
            "name": "mimeType",
            "req": True,
            "type": "`$STRING`",
            "index$": 1,
          },
          {
            "active": True,
            "name": "responseCode",
            "req": False,
            "type": "`$INTEGER`",
            "index$": 2,
          },
          {
            "active": True,
            "name": "responseMessage",
            "req": False,
            "type": "`$STRING`",
            "index$": 3,
          },
        ],
        "name": "output_change_logo",
        "op": {
          "create": {
            "input": "data",
            "name": "create",
            "points": [
              {
                "active": True,
                "args": {
                  "header": [
                    {
                      "active": True,
                      "kind": "header",
                      "name": "authorization",
                      "orig": "authorization",
                      "reqd": True,
                      "type": "`$STRING`",
                    },
                  ],
                },
                "kind": "http",
                "method": "POST",
                "orig": "/changeLogo",
                "parts": [
                  "changeLogo",
                ],
                "select": {
                  "exist": [
                    "authorization",
                  ],
                },
                "transform": {
                  "req": "`reqdata`",
                  "res": "`body`",
                },
                "index$": 0,
              },
            ],
            "key$": "create",
          },
        },
        "relations": {
          "ancestors": [],
        },
      },
      "output_create_mandator": {
        "fields": [
          {
            "active": True,
            "name": "city",
            "req": False,
            "type": "`$STRING`",
            "index$": 0,
          },
          {
            "active": True,
            "name": "country",
            "req": False,
            "type": "`$STRING`",
            "index$": 1,
          },
          {
            "active": True,
            "name": "dateOfBirth",
            "req": False,
            "type": "`$STRING`",
            "index$": 2,
          },
          {
            "active": True,
            "name": "description",
            "op": {
              "create": {
                "req": True,
                "type": "`$STRING`",
              },
            },
            "req": False,
            "type": "`$STRING`",
            "index$": 3,
          },
          {
            "active": True,
            "name": "driversLicenseNumber",
            "req": False,
            "type": "`$STRING`",
            "index$": 4,
          },
          {
            "active": True,
            "name": "email",
            "req": True,
            "type": "`$STRING`",
            "index$": 5,
          },
          {
            "active": True,
            "name": "firstName",
            "req": False,
            "type": "`$STRING`",
            "index$": 6,
          },
          {
            "active": True,
            "name": "identificationNumber",
            "req": False,
            "type": "`$STRING`",
            "index$": 7,
          },
          {
            "active": True,
            "name": "lastName",
            "req": False,
            "type": "`$STRING`",
            "index$": 8,
          },
          {
            "active": True,
            "name": "login",
            "req": True,
            "type": "`$STRING`",
            "index$": 9,
          },
          {
            "active": True,
            "name": "name",
            "op": {
              "create": {
                "req": True,
                "type": "`$STRING`",
              },
            },
            "req": False,
            "type": "`$STRING`",
            "index$": 10,
          },
          {
            "active": True,
            "name": "passportNumber",
            "req": False,
            "type": "`$STRING`",
            "index$": 11,
          },
          {
            "active": True,
            "name": "phone",
            "req": True,
            "type": "`$STRING`",
            "index$": 12,
          },
          {
            "active": True,
            "name": "salutation",
            "req": False,
            "type": "`$STRING`",
            "index$": 13,
          },
          {
            "active": True,
            "name": "state",
            "req": False,
            "type": "`$STRING`",
            "index$": 14,
          },
          {
            "active": True,
            "name": "street1",
            "req": False,
            "type": "`$STRING`",
            "index$": 15,
          },
          {
            "active": True,
            "name": "street2",
            "req": False,
            "type": "`$STRING`",
            "index$": 16,
          },
          {
            "active": True,
            "name": "zipCode",
            "req": False,
            "type": "`$STRING`",
            "index$": 17,
          },
        ],
        "name": "output_create_mandator",
        "op": {
          "create": {
            "input": "data",
            "name": "create",
            "points": [
              {
                "active": True,
                "args": {
                  "header": [
                    {
                      "active": True,
                      "kind": "header",
                      "name": "authorization",
                      "orig": "authorization",
                      "reqd": True,
                      "type": "`$STRING`",
                    },
                  ],
                },
                "kind": "http",
                "method": "POST",
                "orig": "/createMandator",
                "parts": [
                  "createMandator",
                ],
                "select": {
                  "exist": [
                    "authorization",
                  ],
                },
                "transform": {
                  "req": "`reqdata`",
                  "res": "`body`",
                },
                "index$": 0,
              },
            ],
            "key$": "create",
          },
        },
        "relations": {
          "ancestors": [],
        },
      },
      "output_create_service_user": {
        "fields": [
          {
            "active": True,
            "name": "mandatorName",
            "req": True,
            "type": "`$STRING`",
            "index$": 0,
          },
          {
            "active": True,
            "name": "responseCode",
            "req": False,
            "type": "`$INTEGER`",
            "index$": 1,
          },
          {
            "active": True,
            "name": "responseMessage",
            "req": False,
            "type": "`$STRING`",
            "index$": 2,
          },
        ],
        "name": "output_create_service_user",
        "op": {
          "create": {
            "input": "data",
            "name": "create",
            "points": [
              {
                "active": True,
                "args": {
                  "header": [
                    {
                      "active": True,
                      "kind": "header",
                      "name": "authorization",
                      "orig": "authorization",
                      "reqd": True,
                      "type": "`$STRING`",
                    },
                  ],
                },
                "kind": "http",
                "method": "POST",
                "orig": "/createServiceUser",
                "parts": [
                  "createServiceUser",
                ],
                "select": {
                  "exist": [
                    "authorization",
                  ],
                },
                "transform": {
                  "req": "`reqdata`",
                  "res": "`body`",
                },
                "index$": 0,
              },
            ],
            "key$": "create",
          },
        },
        "relations": {
          "ancestors": [],
        },
      },
      "output_deactivate_user": {
        "fields": [
          {
            "active": True,
            "name": "consumerUUID",
            "req": False,
            "type": "`$STRING`",
            "index$": 0,
          },
          {
            "active": True,
            "name": "responseCode",
            "req": False,
            "type": "`$INTEGER`",
            "index$": 1,
          },
          {
            "active": True,
            "name": "responseMessage",
            "req": False,
            "type": "`$STRING`",
            "index$": 2,
          },
        ],
        "name": "output_deactivate_user",
        "op": {
          "create": {
            "input": "data",
            "name": "create",
            "points": [
              {
                "active": True,
                "args": {
                  "header": [
                    {
                      "active": True,
                      "kind": "header",
                      "name": "authorization",
                      "orig": "authorization",
                      "reqd": True,
                      "type": "`$STRING`",
                    },
                  ],
                },
                "kind": "http",
                "method": "POST",
                "orig": "/deactivateUser",
                "parts": [
                  "deactivateUser",
                ],
                "select": {
                  "exist": [
                    "authorization",
                  ],
                },
                "transform": {
                  "req": "`reqdata`",
                  "res": "`body`",
                },
                "index$": 0,
              },
            ],
            "key$": "create",
          },
        },
        "relations": {
          "ancestors": [],
        },
      },
      "output_get_kyc_document": {
        "fields": [
          {
            "active": True,
            "name": "caseID",
            "req": False,
            "type": "`$STRING`",
            "index$": 0,
          },
          {
            "active": True,
            "name": "encodedDataBase64",
            "req": False,
            "type": "`$STRING`",
            "index$": 1,
          },
          {
            "active": True,
            "name": "responseCode",
            "req": False,
            "type": "`$INTEGER`",
            "index$": 2,
          },
          {
            "active": True,
            "name": "responseMessage",
            "req": False,
            "type": "`$STRING`",
            "index$": 3,
          },
        ],
        "name": "output_get_kyc_document",
        "op": {
          "create": {
            "input": "data",
            "name": "create",
            "points": [
              {
                "active": True,
                "args": {
                  "header": [
                    {
                      "active": True,
                      "kind": "header",
                      "name": "authorization",
                      "orig": "authorization",
                      "reqd": True,
                      "type": "`$STRING`",
                    },
                  ],
                },
                "kind": "http",
                "method": "POST",
                "orig": "/getKycDocument",
                "parts": [
                  "getKycDocument",
                ],
                "select": {
                  "exist": [
                    "authorization",
                  ],
                },
                "transform": {
                  "req": "`reqdata`",
                  "res": "`body`",
                },
                "index$": 0,
              },
            ],
            "key$": "create",
          },
        },
        "relations": {
          "ancestors": [],
        },
      },
      "output_get_logo": {
        "fields": [
          {
            "active": True,
            "name": "contentAsBase64",
            "req": True,
            "type": "`$STRING`",
            "index$": 0,
          },
          {
            "active": True,
            "name": "mimeType",
            "req": True,
            "type": "`$STRING`",
            "index$": 1,
          },
          {
            "active": True,
            "name": "responseCode",
            "req": False,
            "type": "`$INTEGER`",
            "index$": 2,
          },
          {
            "active": True,
            "name": "responseMessage",
            "req": False,
            "type": "`$STRING`",
            "index$": 3,
          },
        ],
        "name": "output_get_logo",
        "op": {
          "load": {
            "input": "data",
            "name": "load",
            "points": [
              {
                "active": True,
                "args": {
                  "header": [
                    {
                      "active": True,
                      "kind": "header",
                      "name": "authorization",
                      "orig": "authorization",
                      "reqd": True,
                      "type": "`$STRING`",
                    },
                  ],
                },
                "kind": "http",
                "method": "GET",
                "orig": "/getLogo",
                "parts": [
                  "getLogo",
                ],
                "select": {
                  "exist": [
                    "authorization",
                  ],
                },
                "transform": {
                  "req": "`reqdata`",
                  "res": "`body`",
                },
                "index$": 0,
              },
            ],
            "key$": "load",
          },
        },
        "relations": {
          "ancestors": [],
        },
      },
      "output_list_of_available_role": {
        "fields": [
          {
            "active": True,
            "name": "availableRoles",
            "req": False,
            "type": "`$ARRAY`",
            "index$": 0,
          },
          {
            "active": True,
            "name": "responseCode",
            "req": False,
            "type": "`$INTEGER`",
            "index$": 1,
          },
          {
            "active": True,
            "name": "responseMessage",
            "req": False,
            "type": "`$STRING`",
            "index$": 2,
          },
        ],
        "name": "output_list_of_available_role",
        "op": {
          "create": {
            "input": "data",
            "name": "create",
            "points": [
              {
                "active": True,
                "args": {
                  "header": [
                    {
                      "active": True,
                      "kind": "header",
                      "name": "authorization",
                      "orig": "authorization",
                      "reqd": True,
                      "type": "`$STRING`",
                    },
                  ],
                },
                "kind": "http",
                "method": "POST",
                "orig": "/listOfAvailableRoles",
                "parts": [
                  "listOfAvailableRoles",
                ],
                "select": {
                  "exist": [
                    "authorization",
                  ],
                },
                "transform": {
                  "req": "`reqdata`",
                  "res": "`body`",
                },
                "index$": 0,
              },
            ],
            "key$": "create",
          },
        },
        "relations": {
          "ancestors": [],
        },
      },
      "output_list_of_mandator": {
        "fields": [
          {
            "active": True,
            "name": "filter",
            "req": False,
            "type": "`$OBJECT`",
            "index$": 0,
          },
          {
            "active": True,
            "name": "list",
            "req": False,
            "type": "`$ARRAY`",
            "index$": 1,
          },
          {
            "active": True,
            "name": "pagination",
            "req": False,
            "type": "`$OBJECT`",
            "index$": 2,
          },
          {
            "active": True,
            "name": "responseCode",
            "req": False,
            "type": "`$INTEGER`",
            "index$": 3,
          },
          {
            "active": True,
            "name": "responseMessage",
            "req": False,
            "type": "`$STRING`",
            "index$": 4,
          },
          {
            "active": True,
            "name": "sorting",
            "req": False,
            "type": "`$OBJECT`",
            "index$": 5,
          },
        ],
        "name": "output_list_of_mandator",
        "op": {
          "create": {
            "input": "data",
            "name": "create",
            "points": [
              {
                "active": True,
                "args": {
                  "header": [
                    {
                      "active": True,
                      "kind": "header",
                      "name": "authorization",
                      "orig": "authorization",
                      "reqd": True,
                      "type": "`$STRING`",
                    },
                  ],
                },
                "kind": "http",
                "method": "POST",
                "orig": "/listOfMandators",
                "parts": [
                  "listOfMandators",
                ],
                "select": {
                  "exist": [
                    "authorization",
                  ],
                },
                "transform": {
                  "req": "`reqdata`",
                  "res": "`body`",
                },
                "index$": 0,
              },
            ],
            "key$": "create",
          },
        },
        "relations": {
          "ancestors": [],
        },
      },
      "output_list_of_module": {
        "fields": [
          {
            "active": True,
            "name": "list",
            "req": False,
            "type": "`$ARRAY`",
            "index$": 0,
          },
          {
            "active": True,
            "name": "pagination",
            "req": False,
            "type": "`$OBJECT`",
            "index$": 1,
          },
          {
            "active": True,
            "name": "responseCode",
            "req": False,
            "type": "`$INTEGER`",
            "index$": 2,
          },
          {
            "active": True,
            "name": "responseMessage",
            "req": False,
            "type": "`$STRING`",
            "index$": 3,
          },
        ],
        "name": "output_list_of_module",
        "op": {
          "create": {
            "input": "data",
            "name": "create",
            "points": [
              {
                "active": True,
                "args": {
                  "header": [
                    {
                      "active": True,
                      "kind": "header",
                      "name": "authorization",
                      "orig": "authorization",
                      "reqd": True,
                      "type": "`$STRING`",
                    },
                  ],
                },
                "kind": "http",
                "method": "POST",
                "orig": "/listOfModules",
                "parts": [
                  "listOfModules",
                ],
                "select": {
                  "exist": [
                    "authorization",
                  ],
                },
                "transform": {
                  "req": "`reqdata`",
                  "res": "`body`",
                },
                "index$": 0,
              },
            ],
            "key$": "create",
          },
        },
        "relations": {
          "ancestors": [],
        },
      },
      "output_list_of_role_group": {
        "fields": [
          {
            "active": True,
            "name": "filter",
            "req": False,
            "type": "`$OBJECT`",
            "index$": 0,
          },
          {
            "active": True,
            "name": "groupRoles",
            "req": False,
            "type": "`$ARRAY`",
            "index$": 1,
          },
          {
            "active": True,
            "name": "pagination",
            "req": False,
            "type": "`$OBJECT`",
            "index$": 2,
          },
          {
            "active": True,
            "name": "responseCode",
            "req": False,
            "type": "`$INTEGER`",
            "index$": 3,
          },
          {
            "active": True,
            "name": "responseMessage",
            "req": False,
            "type": "`$STRING`",
            "index$": 4,
          },
          {
            "active": True,
            "name": "sorting",
            "req": False,
            "type": "`$OBJECT`",
            "index$": 5,
          },
        ],
        "name": "output_list_of_role_group",
        "op": {
          "create": {
            "input": "data",
            "name": "create",
            "points": [
              {
                "active": True,
                "args": {
                  "header": [
                    {
                      "active": True,
                      "kind": "header",
                      "name": "authorization",
                      "orig": "authorization",
                      "reqd": True,
                      "type": "`$STRING`",
                    },
                  ],
                },
                "kind": "http",
                "method": "POST",
                "orig": "/listOfRoleGroups",
                "parts": [
                  "listOfRoleGroups",
                ],
                "select": {
                  "exist": [
                    "authorization",
                  ],
                },
                "transform": {
                  "req": "`reqdata`",
                  "res": "`body`",
                },
                "index$": 0,
              },
            ],
            "key$": "create",
          },
        },
        "relations": {
          "ancestors": [],
        },
      },
      "output_list_of_transactions_history": {
        "fields": [
          {
            "active": True,
            "name": "filter",
            "req": False,
            "type": "`$OBJECT`",
            "index$": 0,
          },
          {
            "active": True,
            "name": "list",
            "req": False,
            "type": "`$ARRAY`",
            "index$": 1,
          },
          {
            "active": True,
            "name": "pagination",
            "req": False,
            "type": "`$OBJECT`",
            "index$": 2,
          },
          {
            "active": True,
            "name": "responseCode",
            "req": False,
            "type": "`$INTEGER`",
            "index$": 3,
          },
          {
            "active": True,
            "name": "responseMessage",
            "req": False,
            "type": "`$STRING`",
            "index$": 4,
          },
          {
            "active": True,
            "name": "sorting",
            "req": False,
            "type": "`$OBJECT`",
            "index$": 5,
          },
        ],
        "name": "output_list_of_transactions_history",
        "op": {
          "create": {
            "input": "data",
            "name": "create",
            "points": [
              {
                "active": True,
                "args": {
                  "header": [
                    {
                      "active": True,
                      "kind": "header",
                      "name": "authorization",
                      "orig": "authorization",
                      "reqd": True,
                      "type": "`$STRING`",
                    },
                  ],
                },
                "kind": "http",
                "method": "POST",
                "orig": "/listOfTransactionsHistory",
                "parts": [
                  "listOfTransactionsHistory",
                ],
                "select": {
                  "exist": [
                    "authorization",
                  ],
                },
                "transform": {
                  "req": "`reqdata`",
                  "res": "`body`",
                },
                "index$": 0,
              },
            ],
            "key$": "create",
          },
        },
        "relations": {
          "ancestors": [],
        },
      },
      "output_list_of_user": {
        "fields": [
          {
            "active": True,
            "name": "filter",
            "req": False,
            "type": "`$OBJECT`",
            "index$": 0,
          },
          {
            "active": True,
            "name": "list",
            "req": False,
            "type": "`$ARRAY`",
            "index$": 1,
          },
          {
            "active": True,
            "name": "pagination",
            "req": False,
            "type": "`$OBJECT`",
            "index$": 2,
          },
          {
            "active": True,
            "name": "responseCode",
            "req": False,
            "type": "`$INTEGER`",
            "index$": 3,
          },
          {
            "active": True,
            "name": "responseMessage",
            "req": False,
            "type": "`$STRING`",
            "index$": 4,
          },
          {
            "active": True,
            "name": "sorting",
            "req": False,
            "type": "`$OBJECT`",
            "index$": 5,
          },
        ],
        "name": "output_list_of_user",
        "op": {
          "create": {
            "input": "data",
            "name": "create",
            "points": [
              {
                "active": True,
                "args": {
                  "header": [
                    {
                      "active": True,
                      "kind": "header",
                      "name": "authorization",
                      "orig": "authorization",
                      "reqd": True,
                      "type": "`$STRING`",
                    },
                  ],
                },
                "kind": "http",
                "method": "POST",
                "orig": "/listOfUsers",
                "parts": [
                  "listOfUsers",
                ],
                "select": {
                  "exist": [
                    "authorization",
                  ],
                },
                "transform": {
                  "req": "`reqdata`",
                  "res": "`body`",
                },
                "index$": 0,
              },
            ],
            "key$": "create",
          },
        },
        "relations": {
          "ancestors": [],
        },
      },
      "output_provide_credential": {
        "fields": [
          {
            "active": True,
            "name": "mandatorName",
            "req": True,
            "type": "`$STRING`",
            "index$": 0,
          },
          {
            "active": True,
            "name": "password",
            "req": False,
            "type": "`$STRING`",
            "index$": 1,
          },
          {
            "active": True,
            "name": "responseCode",
            "req": False,
            "type": "`$INTEGER`",
            "index$": 2,
          },
          {
            "active": True,
            "name": "responseMessage",
            "req": False,
            "type": "`$STRING`",
            "index$": 3,
          },
          {
            "active": True,
            "name": "username",
            "req": False,
            "type": "`$STRING`",
            "index$": 4,
          },
        ],
        "name": "output_provide_credential",
        "op": {
          "create": {
            "input": "data",
            "name": "create",
            "points": [
              {
                "active": True,
                "args": {
                  "header": [
                    {
                      "active": True,
                      "kind": "header",
                      "name": "authorization",
                      "orig": "authorization",
                      "reqd": True,
                      "type": "`$STRING`",
                    },
                  ],
                },
                "kind": "http",
                "method": "POST",
                "orig": "/provideCredentials",
                "parts": [
                  "provideCredentials",
                ],
                "select": {
                  "exist": [
                    "authorization",
                  ],
                },
                "transform": {
                  "req": "`reqdata`",
                  "res": "`body`",
                },
                "index$": 0,
              },
            ],
            "key$": "create",
          },
        },
        "relations": {
          "ancestors": [],
        },
      },
      "output_register_user": {
        "fields": [
          {
            "active": True,
            "name": "city",
            "req": False,
            "type": "`$STRING`",
            "index$": 0,
          },
          {
            "active": True,
            "name": "consumerId",
            "req": False,
            "type": "`$STRING`",
            "index$": 1,
          },
          {
            "active": True,
            "name": "consumerLanguage",
            "req": False,
            "type": "`$STRING`",
            "index$": 2,
          },
          {
            "active": True,
            "name": "country",
            "req": False,
            "type": "`$STRING`",
            "index$": 3,
          },
          {
            "active": True,
            "name": "dateOfBirth",
            "req": False,
            "type": "`$STRING`",
            "index$": 4,
          },
          {
            "active": True,
            "name": "driverLicenceNumber",
            "req": False,
            "type": "`$STRING`",
            "index$": 5,
          },
          {
            "active": True,
            "name": "email",
            "req": True,
            "type": "`$STRING`",
            "index$": 6,
          },
          {
            "active": True,
            "name": "firstName",
            "req": False,
            "type": "`$STRING`",
            "index$": 7,
          },
          {
            "active": True,
            "name": "identificationNumber",
            "req": False,
            "type": "`$STRING`",
            "index$": 8,
          },
          {
            "active": True,
            "name": "lastName",
            "req": False,
            "type": "`$STRING`",
            "index$": 9,
          },
          {
            "active": True,
            "name": "login",
            "req": False,
            "type": "`$STRING`",
            "index$": 10,
          },
          {
            "active": True,
            "name": "module",
            "req": False,
            "type": "`$STRING`",
            "index$": 11,
          },
          {
            "active": True,
            "name": "passportNumber",
            "req": False,
            "type": "`$STRING`",
            "index$": 12,
          },
          {
            "active": True,
            "name": "phone",
            "req": False,
            "type": "`$STRING`",
            "index$": 13,
          },
          {
            "active": True,
            "name": "responseCode",
            "req": False,
            "type": "`$INTEGER`",
            "index$": 14,
          },
          {
            "active": True,
            "name": "responseMessage",
            "req": False,
            "type": "`$STRING`",
            "index$": 15,
          },
          {
            "active": True,
            "name": "salutation",
            "req": False,
            "type": "`$STRING`",
            "index$": 16,
          },
          {
            "active": True,
            "name": "state",
            "req": False,
            "type": "`$STRING`",
            "index$": 17,
          },
          {
            "active": True,
            "name": "street1",
            "req": False,
            "type": "`$STRING`",
            "index$": 18,
          },
          {
            "active": True,
            "name": "street2",
            "req": False,
            "type": "`$STRING`",
            "index$": 19,
          },
          {
            "active": True,
            "name": "zip",
            "req": False,
            "type": "`$STRING`",
            "index$": 20,
          },
        ],
        "name": "output_register_user",
        "op": {
          "create": {
            "input": "data",
            "name": "create",
            "points": [
              {
                "active": True,
                "args": {
                  "header": [
                    {
                      "active": True,
                      "kind": "header",
                      "name": "authorization",
                      "orig": "authorization",
                      "reqd": True,
                      "type": "`$STRING`",
                    },
                  ],
                },
                "kind": "http",
                "method": "POST",
                "orig": "/registerUser",
                "parts": [
                  "registerUser",
                ],
                "select": {
                  "exist": [
                    "authorization",
                  ],
                },
                "transform": {
                  "req": "`reqdata`",
                  "res": "`body`",
                },
                "index$": 0,
              },
            ],
            "key$": "create",
          },
        },
        "relations": {
          "ancestors": [],
        },
      },
      "output_remove_role": {
        "fields": [
          {
            "active": True,
            "name": "consumerUUID",
            "req": False,
            "type": "`$STRING`",
            "index$": 0,
          },
          {
            "active": True,
            "name": "responseCode",
            "req": False,
            "type": "`$INTEGER`",
            "index$": 1,
          },
          {
            "active": True,
            "name": "responseMessage",
            "req": False,
            "type": "`$STRING`",
            "index$": 2,
          },
          {
            "active": True,
            "name": "roles",
            "req": False,
            "type": "`$ARRAY`",
            "index$": 3,
          },
        ],
        "name": "output_remove_role",
        "op": {
          "create": {
            "input": "data",
            "name": "create",
            "points": [
              {
                "active": True,
                "args": {
                  "header": [
                    {
                      "active": True,
                      "kind": "header",
                      "name": "authorization",
                      "orig": "authorization",
                      "reqd": True,
                      "type": "`$STRING`",
                    },
                  ],
                },
                "kind": "http",
                "method": "POST",
                "orig": "/removeRoles",
                "parts": [
                  "removeRoles",
                ],
                "select": {
                  "exist": [
                    "authorization",
                  ],
                },
                "transform": {
                  "req": "`reqdata`",
                  "res": "`body`",
                },
                "index$": 0,
              },
            ],
            "key$": "create",
          },
        },
        "relations": {
          "ancestors": [],
        },
      },
      "output_resend_link": {
        "fields": [
          {
            "active": True,
            "name": "businessRegistrationNumber",
            "req": False,
            "type": "`$STRING`",
            "index$": 0,
          },
          {
            "active": True,
            "name": "consumerUUID",
            "req": True,
            "type": "`$STRING`",
            "index$": 1,
          },
          {
            "active": True,
            "name": "emailConfirmationCode",
            "req": False,
            "type": "`$STRING`",
            "index$": 2,
          },
          {
            "active": True,
            "name": "phoneNumber",
            "req": False,
            "type": "`$STRING`",
            "index$": 3,
          },
          {
            "active": True,
            "name": "responseCode",
            "req": False,
            "type": "`$INTEGER`",
            "index$": 4,
          },
          {
            "active": True,
            "name": "responseMessage",
            "req": False,
            "type": "`$STRING`",
            "index$": 5,
          },
        ],
        "name": "output_resend_link",
        "op": {
          "create": {
            "input": "data",
            "name": "create",
            "points": [
              {
                "active": True,
                "args": {
                  "header": [
                    {
                      "active": True,
                      "kind": "header",
                      "name": "authorization",
                      "orig": "authorization",
                      "reqd": False,
                      "type": "`$STRING`",
                    },
                  ],
                },
                "kind": "http",
                "method": "POST",
                "orig": "/resendLink",
                "parts": [
                  "resendLink",
                ],
                "select": {
                  "exist": [
                    "authorization",
                  ],
                },
                "transform": {
                  "req": "`reqdata`",
                  "res": "`body`",
                },
                "index$": 0,
              },
            ],
            "key$": "create",
          },
        },
        "relations": {
          "ancestors": [],
        },
      },
      "output_reset_password": {
        "fields": [
          {
            "active": True,
            "name": "consumerUuid",
            "req": False,
            "type": "`$STRING`",
            "index$": 0,
          },
          {
            "active": True,
            "name": "phoneNumber",
            "req": False,
            "type": "`$STRING`",
            "index$": 1,
          },
          {
            "active": True,
            "name": "responseCode",
            "req": False,
            "type": "`$INTEGER`",
            "index$": 2,
          },
          {
            "active": True,
            "name": "responseMessage",
            "req": False,
            "type": "`$STRING`",
            "index$": 3,
          },
        ],
        "name": "output_reset_password",
        "op": {
          "create": {
            "input": "data",
            "name": "create",
            "points": [
              {
                "active": True,
                "args": {
                  "header": [
                    {
                      "active": True,
                      "kind": "header",
                      "name": "authorization",
                      "orig": "authorization",
                      "reqd": True,
                      "type": "`$STRING`",
                    },
                  ],
                },
                "kind": "http",
                "method": "POST",
                "orig": "/resetPassword",
                "parts": [
                  "resetPassword",
                ],
                "select": {
                  "exist": [
                    "authorization",
                  ],
                },
                "transform": {
                  "req": "`reqdata`",
                  "res": "`body`",
                },
                "index$": 0,
              },
            ],
            "key$": "create",
          },
        },
        "relations": {
          "ancestors": [],
        },
      },
      "output_update_consumer": {
        "fields": [
          {
            "active": True,
            "name": "city",
            "req": False,
            "type": "`$STRING`",
            "index$": 0,
          },
          {
            "active": True,
            "name": "consumerUuid",
            "req": True,
            "type": "`$STRING`",
            "index$": 1,
          },
          {
            "active": True,
            "name": "consumerlanguage",
            "req": False,
            "type": "`$STRING`",
            "index$": 2,
          },
          {
            "active": True,
            "name": "country",
            "req": False,
            "type": "`$STRING`",
            "index$": 3,
          },
          {
            "active": True,
            "name": "dateOfBirth",
            "req": False,
            "type": "`$STRING`",
            "index$": 4,
          },
          {
            "active": True,
            "name": "datetime_created",
            "req": False,
            "type": "`$STRING`",
            "index$": 5,
          },
          {
            "active": True,
            "name": "driverLicenceNumber",
            "req": False,
            "type": "`$STRING`",
            "index$": 6,
          },
          {
            "active": True,
            "name": "email",
            "req": False,
            "type": "`$STRING`",
            "index$": 7,
          },
          {
            "active": True,
            "name": "firstName",
            "req": False,
            "type": "`$STRING`",
            "index$": 8,
          },
          {
            "active": True,
            "name": "identificationNumber",
            "req": False,
            "type": "`$STRING`",
            "index$": 9,
          },
          {
            "active": True,
            "name": "kycPassed",
            "req": False,
            "type": "`$BOOLEAN`",
            "index$": 10,
          },
          {
            "active": True,
            "name": "lastName",
            "req": False,
            "type": "`$STRING`",
            "index$": 11,
          },
          {
            "active": True,
            "name": "nationality",
            "req": False,
            "type": "`$STRING`",
            "index$": 12,
          },
          {
            "active": True,
            "name": "passportNumber",
            "req": False,
            "type": "`$STRING`",
            "index$": 13,
          },
          {
            "active": True,
            "name": "phoneNumber",
            "req": False,
            "type": "`$STRING`",
            "index$": 14,
          },
          {
            "active": True,
            "name": "placeOfBirth",
            "req": False,
            "type": "`$STRING`",
            "index$": 15,
          },
          {
            "active": True,
            "name": "responseCode",
            "req": False,
            "type": "`$INTEGER`",
            "index$": 16,
          },
          {
            "active": True,
            "name": "responseMessage",
            "req": False,
            "type": "`$STRING`",
            "index$": 17,
          },
          {
            "active": True,
            "name": "state",
            "req": False,
            "type": "`$STRING`",
            "index$": 18,
          },
          {
            "active": True,
            "name": "street1",
            "req": False,
            "type": "`$STRING`",
            "index$": 19,
          },
          {
            "active": True,
            "name": "street2",
            "req": False,
            "type": "`$STRING`",
            "index$": 20,
          },
          {
            "active": True,
            "name": "transactionhistory_id",
            "req": False,
            "type": "`$STRING`",
            "index$": 21,
          },
          {
            "active": True,
            "name": "zip",
            "req": False,
            "type": "`$STRING`",
            "index$": 22,
          },
        ],
        "name": "output_update_consumer",
        "op": {
          "create": {
            "input": "data",
            "name": "create",
            "points": [
              {
                "active": True,
                "args": {
                  "header": [
                    {
                      "active": True,
                      "kind": "header",
                      "name": "authorization",
                      "orig": "authorization",
                      "reqd": False,
                      "type": "`$STRING`",
                    },
                  ],
                },
                "kind": "http",
                "method": "POST",
                "orig": "/updateConsumer",
                "parts": [
                  "updateConsumer",
                ],
                "select": {
                  "exist": [
                    "authorization",
                  ],
                },
                "transform": {
                  "req": "`reqdata`",
                  "res": "`body`",
                },
                "index$": 0,
              },
            ],
            "key$": "create",
          },
        },
        "relations": {
          "ancestors": [],
        },
      },
      "output_update_profile": {
        "fields": [
          {
            "active": True,
            "name": "consumerLanguage",
            "req": False,
            "type": "`$STRING`",
            "index$": 0,
          },
          {
            "active": True,
            "name": "email",
            "req": False,
            "type": "`$STRING`",
            "index$": 1,
          },
          {
            "active": True,
            "name": "firstName",
            "req": False,
            "type": "`$STRING`",
            "index$": 2,
          },
          {
            "active": True,
            "name": "lastName",
            "req": False,
            "type": "`$STRING`",
            "index$": 3,
          },
          {
            "active": True,
            "name": "phoneNumber",
            "req": False,
            "type": "`$STRING`",
            "index$": 4,
          },
          {
            "active": True,
            "name": "responseCode",
            "req": False,
            "type": "`$INTEGER`",
            "index$": 5,
          },
          {
            "active": True,
            "name": "responseMessage",
            "req": False,
            "type": "`$STRING`",
            "index$": 6,
          },
        ],
        "name": "output_update_profile",
        "op": {
          "create": {
            "input": "data",
            "name": "create",
            "points": [
              {
                "active": True,
                "args": {
                  "header": [
                    {
                      "active": True,
                      "kind": "header",
                      "name": "authorization",
                      "orig": "authorization",
                      "reqd": False,
                      "type": "`$STRING`",
                    },
                  ],
                },
                "kind": "http",
                "method": "POST",
                "orig": "/updateProfile",
                "parts": [
                  "updateProfile",
                ],
                "select": {
                  "exist": [
                    "authorization",
                  ],
                },
                "transform": {
                  "req": "`reqdata`",
                  "res": "`body`",
                },
                "index$": 0,
              },
            ],
            "key$": "create",
          },
        },
        "relations": {
          "ancestors": [],
        },
      },
      "version": {
        "fields": [
          {
            "active": True,
            "name": "appName",
            "req": False,
            "type": "`$STRING`",
            "index$": 0,
          },
          {
            "active": True,
            "name": "buildDate",
            "req": False,
            "type": "`$STRING`",
            "index$": 1,
          },
          {
            "active": True,
            "name": "version",
            "req": False,
            "type": "`$STRING`",
            "index$": 2,
          },
        ],
        "name": "version",
        "op": {
          "load": {
            "input": "data",
            "name": "load",
            "points": [
              {
                "active": True,
                "args": {},
                "kind": "http",
                "method": "GET",
                "orig": "/version",
                "parts": [
                  "version",
                ],
                "select": {},
                "transform": {
                  "req": "`reqdata`",
                  "res": "`body`",
                },
                "index$": 0,
              },
            ],
            "key$": "load",
          },
        },
        "relations": {
          "ancestors": [],
        },
      },
    },
    }


const { BaseFeature } = require('./feature/base/BaseFeature')
const { TestFeature } = require('./feature/test/TestFeature')



const FEATURE_CLASS = {
   test: TestFeature,

}


class Config {

  makeFeature(fn) {
    const fc = FEATURE_CLASS[fn]
    const fi = new fc()
    // TODO: errors etc
    return fi
  }

  // False for a feature added at runtime via options.extend (station's
  // adopt path) - the constructor uses this to skip makeFeature for names
  // no generated class backs.
  hasFeature(fn) {
    return null != FEATURE_CLASS[fn]
  }


  main = {
    name: 'BluefinTecsUserBackoffice',
        slug: "bluefin-tecs-user-backoffice",
    version: "0.1.1",
    target: "js",

  }


  feature = {
     test:     {
      "options": {
        "active": false
      },
      "transport": "base"
    },

  }


  options = {
    base: "https://test.tecs.at/usermanagement-backofficews",

    auth: {
      prefix: 'Bearer',
    },

    headers: {
      "content-type": "application/json"
    },

    entity: {
      
      output_activate_digital_module: {
      },

      output_activate_portal_module: {
      },

      output_activate_store_module: {
      },

      output_activate_user: {
      },

      output_assign_role: {
      },

      output_change_logo: {
      },

      output_create_mandator: {
      },

      output_create_service_user: {
      },

      output_deactivate_user: {
      },

      output_get_kyc_document: {
      },

      output_get_logo: {
      },

      output_list_of_available_role: {
      },

      output_list_of_mandator: {
      },

      output_list_of_module: {
      },

      output_list_of_role_group: {
      },

      output_list_of_transactions_history: {
      },

      output_list_of_user: {
      },

      output_provide_credential: {
      },

      output_register_user: {
      },

      output_remove_role: {
      },

      output_resend_link: {
      },

      output_reset_password: {
      },

      output_update_consumer: {
      },

      output_update_profile: {
      },

      version: {
      },

    }
  }


  entity = {
    "output_activate_digital_module": {
      "fields": [
        {
          "name": "responseCode",
          "type": "`$INTEGER`"
        },
        {
          "name": "responseMessage",
          "type": "`$STRING`"
        }
      ],
      "name": "output_activate_digital_module",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "args": {
                "header": [
                  {
                    "kind": "header",
                    "name": "authorization",
                    "orig": "authorization",
                    "reqd": true,
                    "type": "`$STRING`"
                  }
                ]
              },
              "kind": "http",
              "method": "POST",
              "orig": "/activateDigitalModule",
              "parts": [
                "activateDigitalModule"
              ],
              "select": {
                "exist": [
                  "authorization"
                ]
              },
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              }
            }
          ]
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "output_activate_portal_module": {
      "fields": [
        {
          "name": "clientSecret",
          "req": true,
          "type": "`$STRING`"
        },
        {
          "name": "notificationEmail",
          "req": true,
          "type": "`$STRING`"
        },
        {
          "name": "responseCode",
          "type": "`$INTEGER`"
        },
        {
          "name": "responseMessage",
          "type": "`$STRING`"
        }
      ],
      "name": "output_activate_portal_module",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "args": {
                "header": [
                  {
                    "kind": "header",
                    "name": "authorization",
                    "orig": "authorization",
                    "reqd": true,
                    "type": "`$STRING`"
                  }
                ]
              },
              "kind": "http",
              "method": "POST",
              "orig": "/activateMerchantPortalModule",
              "parts": [
                "activateMerchantPortalModule"
              ],
              "select": {
                "exist": [
                  "authorization"
                ]
              },
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              }
            }
          ]
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "output_activate_store_module": {
      "fields": [
        {
          "name": "responseCode",
          "type": "`$INTEGER`"
        },
        {
          "name": "responseMessage",
          "type": "`$STRING`"
        }
      ],
      "name": "output_activate_store_module",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "args": {
                "header": [
                  {
                    "kind": "header",
                    "name": "authorization",
                    "orig": "authorization",
                    "reqd": true,
                    "type": "`$STRING`"
                  }
                ]
              },
              "kind": "http",
              "method": "POST",
              "orig": "/activateAppStoreModule",
              "parts": [
                "activateAppStoreModule"
              ],
              "select": {
                "exist": [
                  "authorization"
                ]
              },
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              }
            }
          ]
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "output_activate_user": {
      "fields": [
        {
          "name": "consumerUUID",
          "type": "`$STRING`"
        },
        {
          "name": "responseCode",
          "type": "`$INTEGER`"
        },
        {
          "name": "responseMessage",
          "type": "`$STRING`"
        }
      ],
      "name": "output_activate_user",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "args": {
                "header": [
                  {
                    "kind": "header",
                    "name": "authorization",
                    "orig": "authorization",
                    "reqd": true,
                    "type": "`$STRING`"
                  }
                ]
              },
              "kind": "http",
              "method": "POST",
              "orig": "/activateUser",
              "parts": [
                "activateUser"
              ],
              "select": {
                "exist": [
                  "authorization"
                ]
              },
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              }
            }
          ]
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "output_assign_role": {
      "fields": [
        {
          "name": "consumerUUID",
          "req": true,
          "short": "Unique identifier of the consumer (user) to whom the role(s) will be assigned.",
          "type": "`$STRING`"
        },
        {
          "name": "responseCode",
          "short": "Response code: 0 indicates success; any non-zero value indicates an error.",
          "type": "`$INTEGER`"
        },
        {
          "name": "responseMessage",
          "short": "A human-readable message providing additional details about the outcome.",
          "type": "`$STRING`"
        },
        {
          "name": "roles",
          "req": true,
          "short": "List of roles to assign to the consumer.",
          "type": "`$ARRAY`"
        }
      ],
      "name": "output_assign_role",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "args": {
                "header": [
                  {
                    "kind": "header",
                    "name": "authorization",
                    "orig": "authorization",
                    "reqd": true,
                    "type": "`$STRING`"
                  }
                ]
              },
              "kind": "http",
              "method": "POST",
              "orig": "/assignRoles",
              "parts": [
                "assignRoles"
              ],
              "select": {
                "exist": [
                  "authorization"
                ]
              },
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              }
            }
          ]
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "output_change_logo": {
      "fields": [
        {
          "name": "contentAsBase64",
          "req": true,
          "short": "The content of the image as base64 encoded string",
          "type": "`$STRING`"
        },
        {
          "name": "mimeType",
          "req": true,
          "short": "The MIME type of the image",
          "type": "`$STRING`"
        },
        {
          "name": "responseCode",
          "type": "`$INTEGER`"
        },
        {
          "name": "responseMessage",
          "type": "`$STRING`"
        }
      ],
      "name": "output_change_logo",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "args": {
                "header": [
                  {
                    "kind": "header",
                    "name": "authorization",
                    "orig": "authorization",
                    "reqd": true,
                    "type": "`$STRING`"
                  }
                ]
              },
              "kind": "http",
              "method": "POST",
              "orig": "/changeLogo",
              "parts": [
                "changeLogo"
              ],
              "select": {
                "exist": [
                  "authorization"
                ]
              },
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              }
            }
          ]
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "output_create_mandator": {
      "fields": [
        {
          "name": "city",
          "type": "`$STRING`"
        },
        {
          "name": "country",
          "type": "`$STRING`"
        },
        {
          "name": "dateOfBirth",
          "type": "`$STRING`"
        },
        {
          "name": "description",
          "op": {
            "create": {
              "req": true,
              "type": "`$STRING`"
            }
          },
          "type": "`$STRING`"
        },
        {
          "name": "driversLicenseNumber",
          "type": "`$STRING`"
        },
        {
          "name": "email",
          "req": true,
          "type": "`$STRING`"
        },
        {
          "name": "firstName",
          "type": "`$STRING`"
        },
        {
          "name": "identificationNumber",
          "type": "`$STRING`"
        },
        {
          "name": "lastName",
          "type": "`$STRING`"
        },
        {
          "name": "login",
          "req": true,
          "type": "`$STRING`"
        },
        {
          "name": "name",
          "op": {
            "create": {
              "req": true,
              "type": "`$STRING`"
            }
          },
          "type": "`$STRING`"
        },
        {
          "name": "passportNumber",
          "type": "`$STRING`"
        },
        {
          "name": "phone",
          "req": true,
          "type": "`$STRING`"
        },
        {
          "name": "salutation",
          "type": "`$STRING`"
        },
        {
          "name": "state",
          "type": "`$STRING`"
        },
        {
          "name": "street1",
          "type": "`$STRING`"
        },
        {
          "name": "street2",
          "type": "`$STRING`"
        },
        {
          "name": "zipCode",
          "type": "`$STRING`"
        }
      ],
      "name": "output_create_mandator",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "args": {
                "header": [
                  {
                    "kind": "header",
                    "name": "authorization",
                    "orig": "authorization",
                    "reqd": true,
                    "type": "`$STRING`"
                  }
                ]
              },
              "kind": "http",
              "method": "POST",
              "orig": "/createMandator",
              "parts": [
                "createMandator"
              ],
              "select": {
                "exist": [
                  "authorization"
                ]
              },
              "transform": {
                "req": "`reqdata`",
                "res": "`body.mandator`"
              }
            }
          ]
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "output_create_service_user": {
      "fields": [
        {
          "name": "mandatorName",
          "req": true,
          "type": "`$STRING`"
        },
        {
          "name": "responseCode",
          "type": "`$INTEGER`"
        },
        {
          "name": "responseMessage",
          "type": "`$STRING`"
        }
      ],
      "name": "output_create_service_user",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "args": {
                "header": [
                  {
                    "kind": "header",
                    "name": "authorization",
                    "orig": "authorization",
                    "reqd": true,
                    "type": "`$STRING`"
                  }
                ]
              },
              "kind": "http",
              "method": "POST",
              "orig": "/createServiceUser",
              "parts": [
                "createServiceUser"
              ],
              "select": {
                "exist": [
                  "authorization"
                ]
              },
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              }
            }
          ]
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "output_deactivate_user": {
      "fields": [
        {
          "name": "consumerUUID",
          "type": "`$STRING`"
        },
        {
          "name": "responseCode",
          "type": "`$INTEGER`"
        },
        {
          "name": "responseMessage",
          "type": "`$STRING`"
        }
      ],
      "name": "output_deactivate_user",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "args": {
                "header": [
                  {
                    "kind": "header",
                    "name": "authorization",
                    "orig": "authorization",
                    "reqd": true,
                    "type": "`$STRING`"
                  }
                ]
              },
              "kind": "http",
              "method": "POST",
              "orig": "/deactivateUser",
              "parts": [
                "deactivateUser"
              ],
              "select": {
                "exist": [
                  "authorization"
                ]
              },
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              }
            }
          ]
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "output_get_kyc_document": {
      "fields": [
        {
          "name": "caseID",
          "type": "`$STRING`"
        },
        {
          "name": "encodedDataBase64",
          "type": "`$STRING`"
        },
        {
          "name": "responseCode",
          "type": "`$INTEGER`"
        },
        {
          "name": "responseMessage",
          "type": "`$STRING`"
        }
      ],
      "name": "output_get_kyc_document",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "args": {
                "header": [
                  {
                    "kind": "header",
                    "name": "authorization",
                    "orig": "authorization",
                    "reqd": true,
                    "type": "`$STRING`"
                  }
                ]
              },
              "kind": "http",
              "method": "POST",
              "orig": "/getKycDocument",
              "parts": [
                "getKycDocument"
              ],
              "select": {
                "exist": [
                  "authorization"
                ]
              },
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              }
            }
          ]
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "output_get_logo": {
      "fields": [
        {
          "name": "contentAsBase64",
          "req": true,
          "short": "The content of the image as base64 encoded string",
          "type": "`$STRING`"
        },
        {
          "name": "mimeType",
          "req": true,
          "short": "The MIME type of the image",
          "type": "`$STRING`"
        },
        {
          "name": "responseCode",
          "type": "`$INTEGER`"
        },
        {
          "name": "responseMessage",
          "type": "`$STRING`"
        }
      ],
      "name": "output_get_logo",
      "op": {
        "load": {
          "input": "data",
          "name": "load",
          "points": [
            {
              "args": {
                "header": [
                  {
                    "kind": "header",
                    "name": "authorization",
                    "orig": "authorization",
                    "reqd": true,
                    "type": "`$STRING`"
                  }
                ]
              },
              "kind": "http",
              "method": "GET",
              "orig": "/getLogo",
              "parts": [
                "getLogo"
              ],
              "select": {
                "exist": [
                  "authorization"
                ]
              },
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              }
            }
          ]
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "output_list_of_available_role": {
      "fields": [
        {
          "name": "availableRoles",
          "type": "`$ARRAY`"
        },
        {
          "name": "responseCode",
          "type": "`$INTEGER`"
        },
        {
          "name": "responseMessage",
          "type": "`$STRING`"
        }
      ],
      "name": "output_list_of_available_role",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "args": {
                "header": [
                  {
                    "kind": "header",
                    "name": "authorization",
                    "orig": "authorization",
                    "reqd": true,
                    "type": "`$STRING`"
                  }
                ]
              },
              "kind": "http",
              "method": "POST",
              "orig": "/listOfAvailableRoles",
              "parts": [
                "listOfAvailableRoles"
              ],
              "select": {
                "exist": [
                  "authorization"
                ]
              },
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              }
            }
          ]
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "output_list_of_mandator": {
      "fields": [
        {
          "name": "filter",
          "type": "`$OBJECT`"
        },
        {
          "name": "list",
          "type": "`$ARRAY`"
        },
        {
          "name": "pagination",
          "type": "`$OBJECT`"
        },
        {
          "name": "responseCode",
          "type": "`$INTEGER`"
        },
        {
          "name": "responseMessage",
          "type": "`$STRING`"
        },
        {
          "name": "sorting",
          "type": "`$OBJECT`"
        }
      ],
      "name": "output_list_of_mandator",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "args": {
                "header": [
                  {
                    "kind": "header",
                    "name": "authorization",
                    "orig": "authorization",
                    "reqd": true,
                    "type": "`$STRING`"
                  }
                ]
              },
              "kind": "http",
              "method": "POST",
              "orig": "/listOfMandators",
              "parts": [
                "listOfMandators"
              ],
              "select": {
                "exist": [
                  "authorization"
                ]
              },
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              }
            }
          ]
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "output_list_of_module": {
      "fields": [
        {
          "name": "list",
          "type": "`$ARRAY`"
        },
        {
          "name": "pagination",
          "type": "`$OBJECT`"
        },
        {
          "name": "responseCode",
          "type": "`$INTEGER`"
        },
        {
          "name": "responseMessage",
          "type": "`$STRING`"
        }
      ],
      "name": "output_list_of_module",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "args": {
                "header": [
                  {
                    "kind": "header",
                    "name": "authorization",
                    "orig": "authorization",
                    "reqd": true,
                    "type": "`$STRING`"
                  }
                ]
              },
              "kind": "http",
              "method": "POST",
              "orig": "/listOfModules",
              "parts": [
                "listOfModules"
              ],
              "select": {
                "exist": [
                  "authorization"
                ]
              },
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              }
            }
          ]
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "output_list_of_role_group": {
      "fields": [
        {
          "name": "filter",
          "type": "`$OBJECT`"
        },
        {
          "name": "groupRoles",
          "type": "`$ARRAY`"
        },
        {
          "name": "pagination",
          "type": "`$OBJECT`"
        },
        {
          "name": "responseCode",
          "type": "`$INTEGER`"
        },
        {
          "name": "responseMessage",
          "type": "`$STRING`"
        },
        {
          "name": "sorting",
          "type": "`$OBJECT`"
        }
      ],
      "name": "output_list_of_role_group",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "args": {
                "header": [
                  {
                    "kind": "header",
                    "name": "authorization",
                    "orig": "authorization",
                    "reqd": true,
                    "type": "`$STRING`"
                  }
                ]
              },
              "kind": "http",
              "method": "POST",
              "orig": "/listOfRoleGroups",
              "parts": [
                "listOfRoleGroups"
              ],
              "select": {
                "exist": [
                  "authorization"
                ]
              },
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              }
            }
          ]
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "output_list_of_transactions_history": {
      "fields": [
        {
          "name": "filter",
          "type": "`$OBJECT`"
        },
        {
          "name": "list",
          "type": "`$ARRAY`"
        },
        {
          "name": "pagination",
          "type": "`$OBJECT`"
        },
        {
          "name": "responseCode",
          "type": "`$INTEGER`"
        },
        {
          "name": "responseMessage",
          "type": "`$STRING`"
        },
        {
          "name": "sorting",
          "type": "`$OBJECT`"
        }
      ],
      "name": "output_list_of_transactions_history",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "args": {
                "header": [
                  {
                    "kind": "header",
                    "name": "authorization",
                    "orig": "authorization",
                    "reqd": true,
                    "type": "`$STRING`"
                  }
                ]
              },
              "kind": "http",
              "method": "POST",
              "orig": "/listOfTransactionsHistory",
              "parts": [
                "listOfTransactionsHistory"
              ],
              "select": {
                "exist": [
                  "authorization"
                ]
              },
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              }
            }
          ]
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "output_list_of_user": {
      "fields": [
        {
          "name": "filter",
          "type": "`$OBJECT`"
        },
        {
          "name": "list",
          "type": "`$ARRAY`"
        },
        {
          "name": "pagination",
          "type": "`$OBJECT`"
        },
        {
          "name": "responseCode",
          "type": "`$INTEGER`"
        },
        {
          "name": "responseMessage",
          "type": "`$STRING`"
        },
        {
          "name": "sorting",
          "type": "`$OBJECT`"
        }
      ],
      "name": "output_list_of_user",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "args": {
                "header": [
                  {
                    "kind": "header",
                    "name": "authorization",
                    "orig": "authorization",
                    "reqd": true,
                    "type": "`$STRING`"
                  }
                ]
              },
              "kind": "http",
              "method": "POST",
              "orig": "/listOfUsers",
              "parts": [
                "listOfUsers"
              ],
              "select": {
                "exist": [
                  "authorization"
                ]
              },
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              }
            }
          ]
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "output_provide_credential": {
      "fields": [
        {
          "name": "mandatorName",
          "req": true,
          "type": "`$STRING`"
        },
        {
          "name": "password",
          "type": "`$STRING`"
        },
        {
          "name": "responseCode",
          "type": "`$INTEGER`"
        },
        {
          "name": "responseMessage",
          "type": "`$STRING`"
        },
        {
          "name": "username",
          "type": "`$STRING`"
        }
      ],
      "name": "output_provide_credential",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "args": {
                "header": [
                  {
                    "kind": "header",
                    "name": "authorization",
                    "orig": "authorization",
                    "reqd": true,
                    "type": "`$STRING`"
                  }
                ]
              },
              "kind": "http",
              "method": "POST",
              "orig": "/provideCredentials",
              "parts": [
                "provideCredentials"
              ],
              "select": {
                "exist": [
                  "authorization"
                ]
              },
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              }
            }
          ]
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "output_register_user": {
      "fields": [
        {
          "name": "city",
          "short": "City where the user resides.",
          "type": "`$STRING`"
        },
        {
          "name": "consumerId",
          "short": "User login or unique user identifier.",
          "type": "`$STRING`"
        },
        {
          "name": "consumerLanguage",
          "short": "Preferred language for the user (e.g., 'en').",
          "type": "`$STRING`"
        },
        {
          "name": "country",
          "short": "User's country.",
          "type": "`$STRING`"
        },
        {
          "name": "dateOfBirth",
          "short": "User's date of birth (expected format: dd.MM.yyyy).",
          "type": "`$STRING`"
        },
        {
          "name": "driverLicenceNumber",
          "short": "User's driver's license number.",
          "type": "`$STRING`"
        },
        {
          "name": "email",
          "req": true,
          "short": "User's email address (must be unique).",
          "type": "`$STRING`"
        },
        {
          "name": "firstName",
          "short": "User's first name.",
          "type": "`$STRING`"
        },
        {
          "name": "identificationNumber",
          "short": "User's identification number.",
          "type": "`$STRING`"
        },
        {
          "name": "lastName",
          "short": "User's last name.",
          "type": "`$STRING`"
        },
        {
          "name": "login",
          "short": "User login identifier (should be unique).",
          "type": "`$STRING`"
        },
        {
          "name": "module",
          "short": "Module identifier (if applicable).",
          "type": "`$STRING`"
        },
        {
          "name": "passportNumber",
          "short": "User's passport number.",
          "type": "`$STRING`"
        },
        {
          "name": "phone",
          "short": "User's phone number.",
          "type": "`$STRING`"
        },
        {
          "name": "responseCode",
          "short": "Response code (0 indicates success; non-zero indicates an error).",
          "type": "`$INTEGER`"
        },
        {
          "name": "responseMessage",
          "short": "Human-readable response message.",
          "type": "`$STRING`"
        },
        {
          "name": "salutation",
          "short": "User's salutation (e.g., Mr., Ms.).",
          "type": "`$STRING`"
        },
        {
          "name": "state",
          "short": "User's state or region.",
          "type": "`$STRING`"
        },
        {
          "name": "street1",
          "short": "Primary address line.",
          "type": "`$STRING`"
        },
        {
          "name": "street2",
          "short": "Secondary address line.",
          "type": "`$STRING`"
        },
        {
          "name": "zip",
          "short": "Postal code.",
          "type": "`$STRING`"
        }
      ],
      "name": "output_register_user",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "args": {
                "header": [
                  {
                    "kind": "header",
                    "name": "authorization",
                    "orig": "authorization",
                    "reqd": true,
                    "type": "`$STRING`"
                  }
                ]
              },
              "kind": "http",
              "method": "POST",
              "orig": "/registerUser",
              "parts": [
                "registerUser"
              ],
              "select": {
                "exist": [
                  "authorization"
                ]
              },
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              }
            }
          ]
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "output_remove_role": {
      "fields": [
        {
          "name": "consumerUUID",
          "type": "`$STRING`"
        },
        {
          "name": "responseCode",
          "type": "`$INTEGER`"
        },
        {
          "name": "responseMessage",
          "type": "`$STRING`"
        },
        {
          "name": "roles",
          "type": "`$ARRAY`"
        }
      ],
      "name": "output_remove_role",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "args": {
                "header": [
                  {
                    "kind": "header",
                    "name": "authorization",
                    "orig": "authorization",
                    "reqd": true,
                    "type": "`$STRING`"
                  }
                ]
              },
              "kind": "http",
              "method": "POST",
              "orig": "/removeRoles",
              "parts": [
                "removeRoles"
              ],
              "select": {
                "exist": [
                  "authorization"
                ]
              },
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              }
            }
          ]
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "output_resend_link": {
      "fields": [
        {
          "name": "businessRegistrationNumber",
          "type": "`$STRING`"
        },
        {
          "name": "consumerUUID",
          "req": true,
          "type": "`$STRING`"
        },
        {
          "name": "emailConfirmationCode",
          "type": "`$STRING`"
        },
        {
          "name": "phoneNumber",
          "type": "`$STRING`"
        },
        {
          "name": "responseCode",
          "type": "`$INTEGER`"
        },
        {
          "name": "responseMessage",
          "type": "`$STRING`"
        }
      ],
      "name": "output_resend_link",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "args": {
                "header": [
                  {
                    "kind": "header",
                    "name": "authorization",
                    "orig": "authorization",
                    "type": "`$STRING`"
                  }
                ]
              },
              "kind": "http",
              "method": "POST",
              "orig": "/resendLink",
              "parts": [
                "resendLink"
              ],
              "select": {
                "exist": [
                  "authorization"
                ]
              },
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              }
            }
          ]
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "output_reset_password": {
      "fields": [
        {
          "name": "consumerUuid",
          "type": "`$STRING`"
        },
        {
          "name": "phoneNumber",
          "type": "`$STRING`"
        },
        {
          "name": "responseCode",
          "type": "`$INTEGER`"
        },
        {
          "name": "responseMessage",
          "type": "`$STRING`"
        }
      ],
      "name": "output_reset_password",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "args": {
                "header": [
                  {
                    "kind": "header",
                    "name": "authorization",
                    "orig": "authorization",
                    "reqd": true,
                    "type": "`$STRING`"
                  }
                ]
              },
              "kind": "http",
              "method": "POST",
              "orig": "/resetPassword",
              "parts": [
                "resetPassword"
              ],
              "select": {
                "exist": [
                  "authorization"
                ]
              },
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              }
            }
          ]
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "output_update_consumer": {
      "fields": [
        {
          "name": "city",
          "type": "`$STRING`"
        },
        {
          "name": "consumerUuid",
          "req": true,
          "type": "`$STRING`"
        },
        {
          "name": "consumerlanguage",
          "type": "`$STRING`"
        },
        {
          "name": "country",
          "type": "`$STRING`"
        },
        {
          "name": "dateOfBirth",
          "type": "`$STRING`"
        },
        {
          "name": "datetime_created",
          "type": "`$STRING`"
        },
        {
          "name": "driverLicenceNumber",
          "type": "`$STRING`"
        },
        {
          "name": "email",
          "type": "`$STRING`"
        },
        {
          "name": "firstName",
          "type": "`$STRING`"
        },
        {
          "name": "identificationNumber",
          "type": "`$STRING`"
        },
        {
          "name": "kycPassed",
          "type": "`$BOOLEAN`"
        },
        {
          "name": "lastName",
          "type": "`$STRING`"
        },
        {
          "name": "nationality",
          "type": "`$STRING`"
        },
        {
          "name": "passportNumber",
          "type": "`$STRING`"
        },
        {
          "name": "phoneNumber",
          "type": "`$STRING`"
        },
        {
          "name": "placeOfBirth",
          "type": "`$STRING`"
        },
        {
          "name": "responseCode",
          "type": "`$INTEGER`"
        },
        {
          "name": "responseMessage",
          "type": "`$STRING`"
        },
        {
          "name": "state",
          "type": "`$STRING`"
        },
        {
          "name": "street1",
          "type": "`$STRING`"
        },
        {
          "name": "street2",
          "type": "`$STRING`"
        },
        {
          "name": "transactionhistory_id",
          "type": "`$STRING`"
        },
        {
          "name": "zip",
          "type": "`$STRING`"
        }
      ],
      "name": "output_update_consumer",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "args": {
                "header": [
                  {
                    "kind": "header",
                    "name": "authorization",
                    "orig": "authorization",
                    "type": "`$STRING`"
                  }
                ]
              },
              "kind": "http",
              "method": "POST",
              "orig": "/updateConsumer",
              "parts": [
                "updateConsumer"
              ],
              "select": {
                "exist": [
                  "authorization"
                ]
              },
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              }
            }
          ]
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "output_update_profile": {
      "fields": [
        {
          "name": "consumerLanguage",
          "type": "`$STRING`"
        },
        {
          "name": "email",
          "type": "`$STRING`"
        },
        {
          "name": "firstName",
          "type": "`$STRING`"
        },
        {
          "name": "lastName",
          "type": "`$STRING`"
        },
        {
          "name": "phoneNumber",
          "type": "`$STRING`"
        },
        {
          "name": "responseCode",
          "type": "`$INTEGER`"
        },
        {
          "name": "responseMessage",
          "type": "`$STRING`"
        }
      ],
      "name": "output_update_profile",
      "op": {
        "create": {
          "input": "data",
          "name": "create",
          "points": [
            {
              "args": {
                "header": [
                  {
                    "kind": "header",
                    "name": "authorization",
                    "orig": "authorization",
                    "type": "`$STRING`"
                  }
                ]
              },
              "kind": "http",
              "method": "POST",
              "orig": "/updateProfile",
              "parts": [
                "updateProfile"
              ],
              "select": {
                "exist": [
                  "authorization"
                ]
              },
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              }
            }
          ]
        }
      },
      "relations": {
        "ancestors": []
      }
    },
    "version": {
      "fields": [
        {
          "name": "appName",
          "type": "`$STRING`"
        },
        {
          "name": "buildDate",
          "type": "`$STRING`"
        },
        {
          "name": "version",
          "type": "`$STRING`"
        }
      ],
      "name": "version",
      "op": {
        "load": {
          "input": "data",
          "name": "load",
          "points": [
            {
              "args": {},
              "kind": "http",
              "method": "GET",
              "orig": "/version",
              "parts": [
                "version"
              ],
              "select": {},
              "transform": {
                "req": "`reqdata`",
                "res": "`body`"
              }
            }
          ]
        }
      },
      "relations": {
        "ancestors": []
      }
    }
  }
}


const config = new Config()

module.exports = {
  config
}


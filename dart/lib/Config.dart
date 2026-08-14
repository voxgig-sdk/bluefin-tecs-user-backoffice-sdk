import 'feature/base/BaseFeature.dart';
import 'feature/test/TestFeature.dart';


// ignore: non_constant_identifier_names
final Map<String, BaseFeature Function()> FEATURE_CLASS = {
    'test': () => TestFeature(),

};

class Config {
  BaseFeature makeFeature(String fn) {
    final fc = FEATURE_CLASS[fn];
    if (null == fc) {
      // TODO: errors etc
      throw StateError('Unknown feature: ' + fn);
    }
    return fc();
  }

  final Map<String, dynamic> main = <String, dynamic>{
    'name': 'BluefinTecsUserBackoffice',
  };

  final Map<String, dynamic> feature = <String, dynamic>{
        'test': <String, dynamic>{
      'options': <String, dynamic>{
        'active': false,
      },
    },

  };

  final Map<String, dynamic> options = <String, dynamic>{
    'base': 'https://test.tecs.at/usermanagement-backofficews',

    'auth': <String, dynamic>{
      'prefix': 'Bearer',
    },

    'headers': <String, dynamic>{
      'content-type': 'application/json',
    },

    'entity': <String, dynamic>{
            'output_activate_digital_module': <String, dynamic>{},
      'output_activate_portal_module': <String, dynamic>{},
      'output_activate_store_module': <String, dynamic>{},
      'output_activate_user': <String, dynamic>{},
      'output_assign_role': <String, dynamic>{},
      'output_change_logo': <String, dynamic>{},
      'output_create_mandator': <String, dynamic>{},
      'output_create_service_user': <String, dynamic>{},
      'output_deactivate_user': <String, dynamic>{},
      'output_get_kyc_document': <String, dynamic>{},
      'output_get_logo': <String, dynamic>{},
      'output_list_of_available_role': <String, dynamic>{},
      'output_list_of_mandator': <String, dynamic>{},
      'output_list_of_module': <String, dynamic>{},
      'output_list_of_role_group': <String, dynamic>{},
      'output_list_of_transactions_history': <String, dynamic>{},
      'output_list_of_user': <String, dynamic>{},
      'output_provide_credential': <String, dynamic>{},
      'output_register_user': <String, dynamic>{},
      'output_remove_role': <String, dynamic>{},
      'output_resend_link': <String, dynamic>{},
      'output_reset_password': <String, dynamic>{},
      'output_update_consumer': <String, dynamic>{},
      'output_update_profile': <String, dynamic>{},
      'version': <String, dynamic>{},

    }
  };

  final Map<String, dynamic> entity = <String, dynamic>{
    'output_activate_digital_module': <String, dynamic>{
      'fields': <dynamic>[
        <String, dynamic>{
          'name': 'responseCode',
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'type': '`\$STRING`',
        },
      ],
      'name': 'output_activate_digital_module',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'args': <String, dynamic>{
                'header': <dynamic>[
                  <String, dynamic>{
                    'kind': 'header',
                    'name': 'authorization',
                    'orig': 'authorization',
                    'reqd': true,
                    'type': '`\$STRING`',
                  },
                ],
              },
              'kind': 'http',
              'method': 'POST',
              'orig': '/activateDigitalModule',
              'parts': <dynamic>[
                'activateDigitalModule',
              ],
              'select': <String, dynamic>{
                'exist': <dynamic>[
                  'authorization',
                ],
              },
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
            },
          ],
        },
      },
      'relations': <String, dynamic>{
        'ancestors': <dynamic>[],
      },
    },
    'output_activate_portal_module': <String, dynamic>{
      'fields': <dynamic>[
        <String, dynamic>{
          'name': 'clientSecret',
          'req': true,
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'notificationEmail',
          'req': true,
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'type': '`\$STRING`',
        },
      ],
      'name': 'output_activate_portal_module',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'args': <String, dynamic>{
                'header': <dynamic>[
                  <String, dynamic>{
                    'kind': 'header',
                    'name': 'authorization',
                    'orig': 'authorization',
                    'reqd': true,
                    'type': '`\$STRING`',
                  },
                ],
              },
              'kind': 'http',
              'method': 'POST',
              'orig': '/activateMerchantPortalModule',
              'parts': <dynamic>[
                'activateMerchantPortalModule',
              ],
              'select': <String, dynamic>{
                'exist': <dynamic>[
                  'authorization',
                ],
              },
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
            },
          ],
        },
      },
      'relations': <String, dynamic>{
        'ancestors': <dynamic>[],
      },
    },
    'output_activate_store_module': <String, dynamic>{
      'fields': <dynamic>[
        <String, dynamic>{
          'name': 'responseCode',
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'type': '`\$STRING`',
        },
      ],
      'name': 'output_activate_store_module',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'args': <String, dynamic>{
                'header': <dynamic>[
                  <String, dynamic>{
                    'kind': 'header',
                    'name': 'authorization',
                    'orig': 'authorization',
                    'reqd': true,
                    'type': '`\$STRING`',
                  },
                ],
              },
              'kind': 'http',
              'method': 'POST',
              'orig': '/activateAppStoreModule',
              'parts': <dynamic>[
                'activateAppStoreModule',
              ],
              'select': <String, dynamic>{
                'exist': <dynamic>[
                  'authorization',
                ],
              },
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
            },
          ],
        },
      },
      'relations': <String, dynamic>{
        'ancestors': <dynamic>[],
      },
    },
    'output_activate_user': <String, dynamic>{
      'fields': <dynamic>[
        <String, dynamic>{
          'name': 'consumerUUID',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'type': '`\$STRING`',
        },
      ],
      'name': 'output_activate_user',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'args': <String, dynamic>{
                'header': <dynamic>[
                  <String, dynamic>{
                    'kind': 'header',
                    'name': 'authorization',
                    'orig': 'authorization',
                    'reqd': true,
                    'type': '`\$STRING`',
                  },
                ],
              },
              'kind': 'http',
              'method': 'POST',
              'orig': '/activateUser',
              'parts': <dynamic>[
                'activateUser',
              ],
              'select': <String, dynamic>{
                'exist': <dynamic>[
                  'authorization',
                ],
              },
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
            },
          ],
        },
      },
      'relations': <String, dynamic>{
        'ancestors': <dynamic>[],
      },
    },
    'output_assign_role': <String, dynamic>{
      'fields': <dynamic>[
        <String, dynamic>{
          'name': 'consumerUUID',
          'req': true,
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'roles',
          'req': true,
          'type': '`\$ARRAY`',
        },
      ],
      'name': 'output_assign_role',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'args': <String, dynamic>{
                'header': <dynamic>[
                  <String, dynamic>{
                    'kind': 'header',
                    'name': 'authorization',
                    'orig': 'authorization',
                    'reqd': true,
                    'type': '`\$STRING`',
                  },
                ],
              },
              'kind': 'http',
              'method': 'POST',
              'orig': '/assignRoles',
              'parts': <dynamic>[
                'assignRoles',
              ],
              'select': <String, dynamic>{
                'exist': <dynamic>[
                  'authorization',
                ],
              },
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
            },
          ],
        },
      },
      'relations': <String, dynamic>{
        'ancestors': <dynamic>[],
      },
    },
    'output_change_logo': <String, dynamic>{
      'fields': <dynamic>[
        <String, dynamic>{
          'name': 'contentAsBase64',
          'req': true,
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'mimeType',
          'req': true,
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'type': '`\$STRING`',
        },
      ],
      'name': 'output_change_logo',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'args': <String, dynamic>{
                'header': <dynamic>[
                  <String, dynamic>{
                    'kind': 'header',
                    'name': 'authorization',
                    'orig': 'authorization',
                    'reqd': true,
                    'type': '`\$STRING`',
                  },
                ],
              },
              'kind': 'http',
              'method': 'POST',
              'orig': '/changeLogo',
              'parts': <dynamic>[
                'changeLogo',
              ],
              'select': <String, dynamic>{
                'exist': <dynamic>[
                  'authorization',
                ],
              },
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
            },
          ],
        },
      },
      'relations': <String, dynamic>{
        'ancestors': <dynamic>[],
      },
    },
    'output_create_mandator': <String, dynamic>{
      'fields': <dynamic>[
        <String, dynamic>{
          'name': 'city',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'country',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'dateOfBirth',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'description',
          'op': <String, dynamic>{
            'create': <String, dynamic>{
              'req': true,
              'type': '`\$STRING`',
            },
          },
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'driversLicenseNumber',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'email',
          'req': true,
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'firstName',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'identificationNumber',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'lastName',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'login',
          'req': true,
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'name',
          'op': <String, dynamic>{
            'create': <String, dynamic>{
              'req': true,
              'type': '`\$STRING`',
            },
          },
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'passportNumber',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'phone',
          'req': true,
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'salutation',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'state',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'street1',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'street2',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'zipCode',
          'type': '`\$STRING`',
        },
      ],
      'name': 'output_create_mandator',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'args': <String, dynamic>{
                'header': <dynamic>[
                  <String, dynamic>{
                    'kind': 'header',
                    'name': 'authorization',
                    'orig': 'authorization',
                    'reqd': true,
                    'type': '`\$STRING`',
                  },
                ],
              },
              'kind': 'http',
              'method': 'POST',
              'orig': '/createMandator',
              'parts': <dynamic>[
                'createMandator',
              ],
              'select': <String, dynamic>{
                'exist': <dynamic>[
                  'authorization',
                ],
              },
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
            },
          ],
        },
      },
      'relations': <String, dynamic>{
        'ancestors': <dynamic>[],
      },
    },
    'output_create_service_user': <String, dynamic>{
      'fields': <dynamic>[
        <String, dynamic>{
          'name': 'mandatorName',
          'req': true,
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'type': '`\$STRING`',
        },
      ],
      'name': 'output_create_service_user',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'args': <String, dynamic>{
                'header': <dynamic>[
                  <String, dynamic>{
                    'kind': 'header',
                    'name': 'authorization',
                    'orig': 'authorization',
                    'reqd': true,
                    'type': '`\$STRING`',
                  },
                ],
              },
              'kind': 'http',
              'method': 'POST',
              'orig': '/createServiceUser',
              'parts': <dynamic>[
                'createServiceUser',
              ],
              'select': <String, dynamic>{
                'exist': <dynamic>[
                  'authorization',
                ],
              },
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
            },
          ],
        },
      },
      'relations': <String, dynamic>{
        'ancestors': <dynamic>[],
      },
    },
    'output_deactivate_user': <String, dynamic>{
      'fields': <dynamic>[
        <String, dynamic>{
          'name': 'consumerUUID',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'type': '`\$STRING`',
        },
      ],
      'name': 'output_deactivate_user',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'args': <String, dynamic>{
                'header': <dynamic>[
                  <String, dynamic>{
                    'kind': 'header',
                    'name': 'authorization',
                    'orig': 'authorization',
                    'reqd': true,
                    'type': '`\$STRING`',
                  },
                ],
              },
              'kind': 'http',
              'method': 'POST',
              'orig': '/deactivateUser',
              'parts': <dynamic>[
                'deactivateUser',
              ],
              'select': <String, dynamic>{
                'exist': <dynamic>[
                  'authorization',
                ],
              },
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
            },
          ],
        },
      },
      'relations': <String, dynamic>{
        'ancestors': <dynamic>[],
      },
    },
    'output_get_kyc_document': <String, dynamic>{
      'fields': <dynamic>[
        <String, dynamic>{
          'name': 'caseID',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'encodedDataBase64',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'type': '`\$STRING`',
        },
      ],
      'name': 'output_get_kyc_document',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'args': <String, dynamic>{
                'header': <dynamic>[
                  <String, dynamic>{
                    'kind': 'header',
                    'name': 'authorization',
                    'orig': 'authorization',
                    'reqd': true,
                    'type': '`\$STRING`',
                  },
                ],
              },
              'kind': 'http',
              'method': 'POST',
              'orig': '/getKycDocument',
              'parts': <dynamic>[
                'getKycDocument',
              ],
              'select': <String, dynamic>{
                'exist': <dynamic>[
                  'authorization',
                ],
              },
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
            },
          ],
        },
      },
      'relations': <String, dynamic>{
        'ancestors': <dynamic>[],
      },
    },
    'output_get_logo': <String, dynamic>{
      'fields': <dynamic>[
        <String, dynamic>{
          'name': 'contentAsBase64',
          'req': true,
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'mimeType',
          'req': true,
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'type': '`\$STRING`',
        },
      ],
      'name': 'output_get_logo',
      'op': <String, dynamic>{
        'load': <String, dynamic>{
          'input': 'data',
          'name': 'load',
          'points': <dynamic>[
            <String, dynamic>{
              'args': <String, dynamic>{
                'header': <dynamic>[
                  <String, dynamic>{
                    'kind': 'header',
                    'name': 'authorization',
                    'orig': 'authorization',
                    'reqd': true,
                    'type': '`\$STRING`',
                  },
                ],
              },
              'kind': 'http',
              'method': 'GET',
              'orig': '/getLogo',
              'parts': <dynamic>[
                'getLogo',
              ],
              'select': <String, dynamic>{
                'exist': <dynamic>[
                  'authorization',
                ],
              },
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
            },
          ],
        },
      },
      'relations': <String, dynamic>{
        'ancestors': <dynamic>[],
      },
    },
    'output_list_of_available_role': <String, dynamic>{
      'fields': <dynamic>[
        <String, dynamic>{
          'name': 'availableRoles',
          'type': '`\$ARRAY`',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'type': '`\$STRING`',
        },
      ],
      'name': 'output_list_of_available_role',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'args': <String, dynamic>{
                'header': <dynamic>[
                  <String, dynamic>{
                    'kind': 'header',
                    'name': 'authorization',
                    'orig': 'authorization',
                    'reqd': true,
                    'type': '`\$STRING`',
                  },
                ],
              },
              'kind': 'http',
              'method': 'POST',
              'orig': '/listOfAvailableRoles',
              'parts': <dynamic>[
                'listOfAvailableRoles',
              ],
              'select': <String, dynamic>{
                'exist': <dynamic>[
                  'authorization',
                ],
              },
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
            },
          ],
        },
      },
      'relations': <String, dynamic>{
        'ancestors': <dynamic>[],
      },
    },
    'output_list_of_mandator': <String, dynamic>{
      'fields': <dynamic>[
        <String, dynamic>{
          'name': 'filter',
          'type': '`\$OBJECT`',
        },
        <String, dynamic>{
          'name': 'list',
          'type': '`\$ARRAY`',
        },
        <String, dynamic>{
          'name': 'pagination',
          'type': '`\$OBJECT`',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'sorting',
          'type': '`\$OBJECT`',
        },
      ],
      'name': 'output_list_of_mandator',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'args': <String, dynamic>{
                'header': <dynamic>[
                  <String, dynamic>{
                    'kind': 'header',
                    'name': 'authorization',
                    'orig': 'authorization',
                    'reqd': true,
                    'type': '`\$STRING`',
                  },
                ],
              },
              'kind': 'http',
              'method': 'POST',
              'orig': '/listOfMandators',
              'parts': <dynamic>[
                'listOfMandators',
              ],
              'select': <String, dynamic>{
                'exist': <dynamic>[
                  'authorization',
                ],
              },
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
            },
          ],
        },
      },
      'relations': <String, dynamic>{
        'ancestors': <dynamic>[],
      },
    },
    'output_list_of_module': <String, dynamic>{
      'fields': <dynamic>[
        <String, dynamic>{
          'name': 'list',
          'type': '`\$ARRAY`',
        },
        <String, dynamic>{
          'name': 'pagination',
          'type': '`\$OBJECT`',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'type': '`\$STRING`',
        },
      ],
      'name': 'output_list_of_module',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'args': <String, dynamic>{
                'header': <dynamic>[
                  <String, dynamic>{
                    'kind': 'header',
                    'name': 'authorization',
                    'orig': 'authorization',
                    'reqd': true,
                    'type': '`\$STRING`',
                  },
                ],
              },
              'kind': 'http',
              'method': 'POST',
              'orig': '/listOfModules',
              'parts': <dynamic>[
                'listOfModules',
              ],
              'select': <String, dynamic>{
                'exist': <dynamic>[
                  'authorization',
                ],
              },
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
            },
          ],
        },
      },
      'relations': <String, dynamic>{
        'ancestors': <dynamic>[],
      },
    },
    'output_list_of_role_group': <String, dynamic>{
      'fields': <dynamic>[
        <String, dynamic>{
          'name': 'filter',
          'type': '`\$OBJECT`',
        },
        <String, dynamic>{
          'name': 'groupRoles',
          'type': '`\$ARRAY`',
        },
        <String, dynamic>{
          'name': 'pagination',
          'type': '`\$OBJECT`',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'sorting',
          'type': '`\$OBJECT`',
        },
      ],
      'name': 'output_list_of_role_group',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'args': <String, dynamic>{
                'header': <dynamic>[
                  <String, dynamic>{
                    'kind': 'header',
                    'name': 'authorization',
                    'orig': 'authorization',
                    'reqd': true,
                    'type': '`\$STRING`',
                  },
                ],
              },
              'kind': 'http',
              'method': 'POST',
              'orig': '/listOfRoleGroups',
              'parts': <dynamic>[
                'listOfRoleGroups',
              ],
              'select': <String, dynamic>{
                'exist': <dynamic>[
                  'authorization',
                ],
              },
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
            },
          ],
        },
      },
      'relations': <String, dynamic>{
        'ancestors': <dynamic>[],
      },
    },
    'output_list_of_transactions_history': <String, dynamic>{
      'fields': <dynamic>[
        <String, dynamic>{
          'name': 'filter',
          'type': '`\$OBJECT`',
        },
        <String, dynamic>{
          'name': 'list',
          'type': '`\$ARRAY`',
        },
        <String, dynamic>{
          'name': 'pagination',
          'type': '`\$OBJECT`',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'sorting',
          'type': '`\$OBJECT`',
        },
      ],
      'name': 'output_list_of_transactions_history',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'args': <String, dynamic>{
                'header': <dynamic>[
                  <String, dynamic>{
                    'kind': 'header',
                    'name': 'authorization',
                    'orig': 'authorization',
                    'reqd': true,
                    'type': '`\$STRING`',
                  },
                ],
              },
              'kind': 'http',
              'method': 'POST',
              'orig': '/listOfTransactionsHistory',
              'parts': <dynamic>[
                'listOfTransactionsHistory',
              ],
              'select': <String, dynamic>{
                'exist': <dynamic>[
                  'authorization',
                ],
              },
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
            },
          ],
        },
      },
      'relations': <String, dynamic>{
        'ancestors': <dynamic>[],
      },
    },
    'output_list_of_user': <String, dynamic>{
      'fields': <dynamic>[
        <String, dynamic>{
          'name': 'filter',
          'type': '`\$OBJECT`',
        },
        <String, dynamic>{
          'name': 'list',
          'type': '`\$ARRAY`',
        },
        <String, dynamic>{
          'name': 'pagination',
          'type': '`\$OBJECT`',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'sorting',
          'type': '`\$OBJECT`',
        },
      ],
      'name': 'output_list_of_user',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'args': <String, dynamic>{
                'header': <dynamic>[
                  <String, dynamic>{
                    'kind': 'header',
                    'name': 'authorization',
                    'orig': 'authorization',
                    'reqd': true,
                    'type': '`\$STRING`',
                  },
                ],
              },
              'kind': 'http',
              'method': 'POST',
              'orig': '/listOfUsers',
              'parts': <dynamic>[
                'listOfUsers',
              ],
              'select': <String, dynamic>{
                'exist': <dynamic>[
                  'authorization',
                ],
              },
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
            },
          ],
        },
      },
      'relations': <String, dynamic>{
        'ancestors': <dynamic>[],
      },
    },
    'output_provide_credential': <String, dynamic>{
      'fields': <dynamic>[
        <String, dynamic>{
          'name': 'mandatorName',
          'req': true,
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'password',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'username',
          'type': '`\$STRING`',
        },
      ],
      'name': 'output_provide_credential',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'args': <String, dynamic>{
                'header': <dynamic>[
                  <String, dynamic>{
                    'kind': 'header',
                    'name': 'authorization',
                    'orig': 'authorization',
                    'reqd': true,
                    'type': '`\$STRING`',
                  },
                ],
              },
              'kind': 'http',
              'method': 'POST',
              'orig': '/provideCredentials',
              'parts': <dynamic>[
                'provideCredentials',
              ],
              'select': <String, dynamic>{
                'exist': <dynamic>[
                  'authorization',
                ],
              },
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
            },
          ],
        },
      },
      'relations': <String, dynamic>{
        'ancestors': <dynamic>[],
      },
    },
    'output_register_user': <String, dynamic>{
      'fields': <dynamic>[
        <String, dynamic>{
          'name': 'city',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'consumerId',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'consumerLanguage',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'country',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'dateOfBirth',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'driverLicenceNumber',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'email',
          'req': true,
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'firstName',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'identificationNumber',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'lastName',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'login',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'module',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'passportNumber',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'phone',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'salutation',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'state',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'street1',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'street2',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'zip',
          'type': '`\$STRING`',
        },
      ],
      'name': 'output_register_user',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'args': <String, dynamic>{
                'header': <dynamic>[
                  <String, dynamic>{
                    'kind': 'header',
                    'name': 'authorization',
                    'orig': 'authorization',
                    'reqd': true,
                    'type': '`\$STRING`',
                  },
                ],
              },
              'kind': 'http',
              'method': 'POST',
              'orig': '/registerUser',
              'parts': <dynamic>[
                'registerUser',
              ],
              'select': <String, dynamic>{
                'exist': <dynamic>[
                  'authorization',
                ],
              },
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
            },
          ],
        },
      },
      'relations': <String, dynamic>{
        'ancestors': <dynamic>[],
      },
    },
    'output_remove_role': <String, dynamic>{
      'fields': <dynamic>[
        <String, dynamic>{
          'name': 'consumerUUID',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'roles',
          'type': '`\$ARRAY`',
        },
      ],
      'name': 'output_remove_role',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'args': <String, dynamic>{
                'header': <dynamic>[
                  <String, dynamic>{
                    'kind': 'header',
                    'name': 'authorization',
                    'orig': 'authorization',
                    'reqd': true,
                    'type': '`\$STRING`',
                  },
                ],
              },
              'kind': 'http',
              'method': 'POST',
              'orig': '/removeRoles',
              'parts': <dynamic>[
                'removeRoles',
              ],
              'select': <String, dynamic>{
                'exist': <dynamic>[
                  'authorization',
                ],
              },
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
            },
          ],
        },
      },
      'relations': <String, dynamic>{
        'ancestors': <dynamic>[],
      },
    },
    'output_resend_link': <String, dynamic>{
      'fields': <dynamic>[
        <String, dynamic>{
          'name': 'businessRegistrationNumber',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'consumerUUID',
          'req': true,
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'emailConfirmationCode',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'phoneNumber',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'type': '`\$STRING`',
        },
      ],
      'name': 'output_resend_link',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'args': <String, dynamic>{
                'header': <dynamic>[
                  <String, dynamic>{
                    'kind': 'header',
                    'name': 'authorization',
                    'orig': 'authorization',
                    'type': '`\$STRING`',
                  },
                ],
              },
              'kind': 'http',
              'method': 'POST',
              'orig': '/resendLink',
              'parts': <dynamic>[
                'resendLink',
              ],
              'select': <String, dynamic>{
                'exist': <dynamic>[
                  'authorization',
                ],
              },
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
            },
          ],
        },
      },
      'relations': <String, dynamic>{
        'ancestors': <dynamic>[],
      },
    },
    'output_reset_password': <String, dynamic>{
      'fields': <dynamic>[
        <String, dynamic>{
          'name': 'consumerUuid',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'phoneNumber',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'type': '`\$STRING`',
        },
      ],
      'name': 'output_reset_password',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'args': <String, dynamic>{
                'header': <dynamic>[
                  <String, dynamic>{
                    'kind': 'header',
                    'name': 'authorization',
                    'orig': 'authorization',
                    'reqd': true,
                    'type': '`\$STRING`',
                  },
                ],
              },
              'kind': 'http',
              'method': 'POST',
              'orig': '/resetPassword',
              'parts': <dynamic>[
                'resetPassword',
              ],
              'select': <String, dynamic>{
                'exist': <dynamic>[
                  'authorization',
                ],
              },
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
            },
          ],
        },
      },
      'relations': <String, dynamic>{
        'ancestors': <dynamic>[],
      },
    },
    'output_update_consumer': <String, dynamic>{
      'fields': <dynamic>[
        <String, dynamic>{
          'name': 'city',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'consumerUuid',
          'req': true,
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'consumerlanguage',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'country',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'dateOfBirth',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'datetime_created',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'driverLicenceNumber',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'email',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'firstName',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'identificationNumber',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'kycPassed',
          'type': '`\$BOOLEAN`',
        },
        <String, dynamic>{
          'name': 'lastName',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'nationality',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'passportNumber',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'phoneNumber',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'placeOfBirth',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'state',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'street1',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'street2',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'transactionhistory_id',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'zip',
          'type': '`\$STRING`',
        },
      ],
      'name': 'output_update_consumer',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'args': <String, dynamic>{
                'header': <dynamic>[
                  <String, dynamic>{
                    'kind': 'header',
                    'name': 'authorization',
                    'orig': 'authorization',
                    'type': '`\$STRING`',
                  },
                ],
              },
              'kind': 'http',
              'method': 'POST',
              'orig': '/updateConsumer',
              'parts': <dynamic>[
                'updateConsumer',
              ],
              'select': <String, dynamic>{
                'exist': <dynamic>[
                  'authorization',
                ],
              },
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
            },
          ],
        },
      },
      'relations': <String, dynamic>{
        'ancestors': <dynamic>[],
      },
    },
    'output_update_profile': <String, dynamic>{
      'fields': <dynamic>[
        <String, dynamic>{
          'name': 'consumerLanguage',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'email',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'firstName',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'lastName',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'phoneNumber',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'type': '`\$STRING`',
        },
      ],
      'name': 'output_update_profile',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'args': <String, dynamic>{
                'header': <dynamic>[
                  <String, dynamic>{
                    'kind': 'header',
                    'name': 'authorization',
                    'orig': 'authorization',
                    'type': '`\$STRING`',
                  },
                ],
              },
              'kind': 'http',
              'method': 'POST',
              'orig': '/updateProfile',
              'parts': <dynamic>[
                'updateProfile',
              ],
              'select': <String, dynamic>{
                'exist': <dynamic>[
                  'authorization',
                ],
              },
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
            },
          ],
        },
      },
      'relations': <String, dynamic>{
        'ancestors': <dynamic>[],
      },
    },
    'version': <String, dynamic>{
      'fields': <dynamic>[
        <String, dynamic>{
          'name': 'appName',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'buildDate',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'version',
          'type': '`\$STRING`',
        },
      ],
      'name': 'version',
      'op': <String, dynamic>{
        'load': <String, dynamic>{
          'input': 'data',
          'name': 'load',
          'points': <dynamic>[
            <String, dynamic>{
              'args': <String, dynamic>{},
              'kind': 'http',
              'method': 'GET',
              'orig': '/version',
              'parts': <dynamic>[
                'version',
              ],
              'select': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
            },
          ],
        },
      },
      'relations': <String, dynamic>{
        'ancestors': <dynamic>[],
      },
    },
  };

  // The pipeline context carries the config as a plain map.
  Map<String, dynamic> toMap() => <String, dynamic>{
        'main': main,
        'feature': feature,
        'options': options,
        'entity': entity,
      };
}

final config = Config();

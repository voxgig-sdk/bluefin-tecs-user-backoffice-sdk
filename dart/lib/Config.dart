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
    'name': 'ProjectName',
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
          'active': true,
          'name': 'response_code',
          'req': false,
          'type': '`\$INTEGER`',
          'index\$': 0,
        },
        <String, dynamic>{
          'active': true,
          'name': 'response_message',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 1,
        },
      ],
      'name': 'output_activate_digital_module',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'active': true,
              'args': <String, dynamic>{
                'header': <dynamic>[
                  <String, dynamic>{
                    'active': true,
                    'kind': 'header',
                    'name': 'authorization',
                    'orig': 'authorization',
                    'reqd': true,
                    'type': '`\$STRING`',
                  },
                ],
              },
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
              'index\$': 0,
            },
          ],
          'key\$': 'create',
        },
      },
      'relations': <String, dynamic>{
        'ancestors': <dynamic>[],
      },
    },
    'output_activate_portal_module': <String, dynamic>{
      'fields': <dynamic>[
        <String, dynamic>{
          'active': true,
          'name': 'client_secret',
          'req': true,
          'type': '`\$STRING`',
          'index\$': 0,
        },
        <String, dynamic>{
          'active': true,
          'name': 'notification_email',
          'req': true,
          'type': '`\$STRING`',
          'index\$': 1,
        },
        <String, dynamic>{
          'active': true,
          'name': 'response_code',
          'req': false,
          'type': '`\$INTEGER`',
          'index\$': 2,
        },
        <String, dynamic>{
          'active': true,
          'name': 'response_message',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 3,
        },
      ],
      'name': 'output_activate_portal_module',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'active': true,
              'args': <String, dynamic>{
                'header': <dynamic>[
                  <String, dynamic>{
                    'active': true,
                    'kind': 'header',
                    'name': 'authorization',
                    'orig': 'authorization',
                    'reqd': true,
                    'type': '`\$STRING`',
                  },
                ],
              },
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
              'index\$': 0,
            },
          ],
          'key\$': 'create',
        },
      },
      'relations': <String, dynamic>{
        'ancestors': <dynamic>[],
      },
    },
    'output_activate_store_module': <String, dynamic>{
      'fields': <dynamic>[
        <String, dynamic>{
          'active': true,
          'name': 'response_code',
          'req': false,
          'type': '`\$INTEGER`',
          'index\$': 0,
        },
        <String, dynamic>{
          'active': true,
          'name': 'response_message',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 1,
        },
      ],
      'name': 'output_activate_store_module',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'active': true,
              'args': <String, dynamic>{
                'header': <dynamic>[
                  <String, dynamic>{
                    'active': true,
                    'kind': 'header',
                    'name': 'authorization',
                    'orig': 'authorization',
                    'reqd': true,
                    'type': '`\$STRING`',
                  },
                ],
              },
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
              'index\$': 0,
            },
          ],
          'key\$': 'create',
        },
      },
      'relations': <String, dynamic>{
        'ancestors': <dynamic>[],
      },
    },
    'output_activate_user': <String, dynamic>{
      'fields': <dynamic>[
        <String, dynamic>{
          'active': true,
          'name': 'consumer_uuid',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 0,
        },
        <String, dynamic>{
          'active': true,
          'name': 'response_code',
          'req': false,
          'type': '`\$INTEGER`',
          'index\$': 1,
        },
        <String, dynamic>{
          'active': true,
          'name': 'response_message',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 2,
        },
      ],
      'name': 'output_activate_user',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'active': true,
              'args': <String, dynamic>{
                'header': <dynamic>[
                  <String, dynamic>{
                    'active': true,
                    'kind': 'header',
                    'name': 'authorization',
                    'orig': 'authorization',
                    'reqd': true,
                    'type': '`\$STRING`',
                  },
                ],
              },
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
              'index\$': 0,
            },
          ],
          'key\$': 'create',
        },
      },
      'relations': <String, dynamic>{
        'ancestors': <dynamic>[],
      },
    },
    'output_assign_role': <String, dynamic>{
      'fields': <dynamic>[
        <String, dynamic>{
          'active': true,
          'name': 'consumer_uuid',
          'req': true,
          'type': '`\$STRING`',
          'index\$': 0,
        },
        <String, dynamic>{
          'active': true,
          'name': 'response_code',
          'req': false,
          'type': '`\$INTEGER`',
          'index\$': 1,
        },
        <String, dynamic>{
          'active': true,
          'name': 'response_message',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 2,
        },
        <String, dynamic>{
          'active': true,
          'name': 'role',
          'req': true,
          'type': '`\$ARRAY`',
          'index\$': 3,
        },
      ],
      'name': 'output_assign_role',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'active': true,
              'args': <String, dynamic>{
                'header': <dynamic>[
                  <String, dynamic>{
                    'active': true,
                    'kind': 'header',
                    'name': 'authorization',
                    'orig': 'authorization',
                    'reqd': true,
                    'type': '`\$STRING`',
                  },
                ],
              },
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
              'index\$': 0,
            },
          ],
          'key\$': 'create',
        },
      },
      'relations': <String, dynamic>{
        'ancestors': <dynamic>[],
      },
    },
    'output_change_logo': <String, dynamic>{
      'fields': <dynamic>[
        <String, dynamic>{
          'active': true,
          'name': 'content_as_base64',
          'req': true,
          'type': '`\$STRING`',
          'index\$': 0,
        },
        <String, dynamic>{
          'active': true,
          'name': 'mime_type',
          'req': true,
          'type': '`\$STRING`',
          'index\$': 1,
        },
        <String, dynamic>{
          'active': true,
          'name': 'response_code',
          'req': false,
          'type': '`\$INTEGER`',
          'index\$': 2,
        },
        <String, dynamic>{
          'active': true,
          'name': 'response_message',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 3,
        },
      ],
      'name': 'output_change_logo',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'active': true,
              'args': <String, dynamic>{
                'header': <dynamic>[
                  <String, dynamic>{
                    'active': true,
                    'kind': 'header',
                    'name': 'authorization',
                    'orig': 'authorization',
                    'reqd': true,
                    'type': '`\$STRING`',
                  },
                ],
              },
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
              'index\$': 0,
            },
          ],
          'key\$': 'create',
        },
      },
      'relations': <String, dynamic>{
        'ancestors': <dynamic>[],
      },
    },
    'output_create_mandator': <String, dynamic>{
      'fields': <dynamic>[
        <String, dynamic>{
          'active': true,
          'name': 'city',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 0,
        },
        <String, dynamic>{
          'active': true,
          'name': 'country',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 1,
        },
        <String, dynamic>{
          'active': true,
          'name': 'date_of_birth',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 2,
        },
        <String, dynamic>{
          'active': true,
          'name': 'description',
          'req': true,
          'type': '`\$STRING`',
          'index\$': 3,
        },
        <String, dynamic>{
          'active': true,
          'name': 'drivers_license_number',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 4,
        },
        <String, dynamic>{
          'active': true,
          'name': 'email',
          'req': true,
          'type': '`\$STRING`',
          'index\$': 5,
        },
        <String, dynamic>{
          'active': true,
          'name': 'first_name',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 6,
        },
        <String, dynamic>{
          'active': true,
          'name': 'identification_number',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 7,
        },
        <String, dynamic>{
          'active': true,
          'name': 'last_name',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 8,
        },
        <String, dynamic>{
          'active': true,
          'name': 'login',
          'req': true,
          'type': '`\$STRING`',
          'index\$': 9,
        },
        <String, dynamic>{
          'active': true,
          'name': 'mandator',
          'req': false,
          'type': '`\$OBJECT`',
          'index\$': 10,
        },
        <String, dynamic>{
          'active': true,
          'name': 'name',
          'req': true,
          'type': '`\$STRING`',
          'index\$': 11,
        },
        <String, dynamic>{
          'active': true,
          'name': 'passport_number',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 12,
        },
        <String, dynamic>{
          'active': true,
          'name': 'phone',
          'req': true,
          'type': '`\$STRING`',
          'index\$': 13,
        },
        <String, dynamic>{
          'active': true,
          'name': 'response_code',
          'req': false,
          'type': '`\$INTEGER`',
          'index\$': 14,
        },
        <String, dynamic>{
          'active': true,
          'name': 'response_message',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 15,
        },
        <String, dynamic>{
          'active': true,
          'name': 'salutation',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 16,
        },
        <String, dynamic>{
          'active': true,
          'name': 'state',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 17,
        },
        <String, dynamic>{
          'active': true,
          'name': 'street1',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 18,
        },
        <String, dynamic>{
          'active': true,
          'name': 'street2',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 19,
        },
        <String, dynamic>{
          'active': true,
          'name': 'zip_code',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 20,
        },
      ],
      'name': 'output_create_mandator',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'active': true,
              'args': <String, dynamic>{
                'header': <dynamic>[
                  <String, dynamic>{
                    'active': true,
                    'kind': 'header',
                    'name': 'authorization',
                    'orig': 'authorization',
                    'reqd': true,
                    'type': '`\$STRING`',
                  },
                ],
              },
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
              'index\$': 0,
            },
          ],
          'key\$': 'create',
        },
      },
      'relations': <String, dynamic>{
        'ancestors': <dynamic>[],
      },
    },
    'output_create_service_user': <String, dynamic>{
      'fields': <dynamic>[
        <String, dynamic>{
          'active': true,
          'name': 'mandator_name',
          'req': true,
          'type': '`\$STRING`',
          'index\$': 0,
        },
        <String, dynamic>{
          'active': true,
          'name': 'response_code',
          'req': false,
          'type': '`\$INTEGER`',
          'index\$': 1,
        },
        <String, dynamic>{
          'active': true,
          'name': 'response_message',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 2,
        },
      ],
      'name': 'output_create_service_user',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'active': true,
              'args': <String, dynamic>{
                'header': <dynamic>[
                  <String, dynamic>{
                    'active': true,
                    'kind': 'header',
                    'name': 'authorization',
                    'orig': 'authorization',
                    'reqd': true,
                    'type': '`\$STRING`',
                  },
                ],
              },
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
              'index\$': 0,
            },
          ],
          'key\$': 'create',
        },
      },
      'relations': <String, dynamic>{
        'ancestors': <dynamic>[],
      },
    },
    'output_deactivate_user': <String, dynamic>{
      'fields': <dynamic>[
        <String, dynamic>{
          'active': true,
          'name': 'consumer_uuid',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 0,
        },
        <String, dynamic>{
          'active': true,
          'name': 'response_code',
          'req': false,
          'type': '`\$INTEGER`',
          'index\$': 1,
        },
        <String, dynamic>{
          'active': true,
          'name': 'response_message',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 2,
        },
      ],
      'name': 'output_deactivate_user',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'active': true,
              'args': <String, dynamic>{
                'header': <dynamic>[
                  <String, dynamic>{
                    'active': true,
                    'kind': 'header',
                    'name': 'authorization',
                    'orig': 'authorization',
                    'reqd': true,
                    'type': '`\$STRING`',
                  },
                ],
              },
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
              'index\$': 0,
            },
          ],
          'key\$': 'create',
        },
      },
      'relations': <String, dynamic>{
        'ancestors': <dynamic>[],
      },
    },
    'output_get_kyc_document': <String, dynamic>{
      'fields': <dynamic>[
        <String, dynamic>{
          'active': true,
          'name': 'case_id',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 0,
        },
        <String, dynamic>{
          'active': true,
          'name': 'encoded_data_base64',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 1,
        },
        <String, dynamic>{
          'active': true,
          'name': 'response_code',
          'req': false,
          'type': '`\$INTEGER`',
          'index\$': 2,
        },
        <String, dynamic>{
          'active': true,
          'name': 'response_message',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 3,
        },
      ],
      'name': 'output_get_kyc_document',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'active': true,
              'args': <String, dynamic>{
                'header': <dynamic>[
                  <String, dynamic>{
                    'active': true,
                    'kind': 'header',
                    'name': 'authorization',
                    'orig': 'authorization',
                    'reqd': true,
                    'type': '`\$STRING`',
                  },
                ],
              },
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
              'index\$': 0,
            },
          ],
          'key\$': 'create',
        },
      },
      'relations': <String, dynamic>{
        'ancestors': <dynamic>[],
      },
    },
    'output_get_logo': <String, dynamic>{
      'fields': <dynamic>[
        <String, dynamic>{
          'active': true,
          'name': 'content_as_base64',
          'req': true,
          'type': '`\$STRING`',
          'index\$': 0,
        },
        <String, dynamic>{
          'active': true,
          'name': 'mime_type',
          'req': true,
          'type': '`\$STRING`',
          'index\$': 1,
        },
        <String, dynamic>{
          'active': true,
          'name': 'response_code',
          'req': false,
          'type': '`\$INTEGER`',
          'index\$': 2,
        },
        <String, dynamic>{
          'active': true,
          'name': 'response_message',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 3,
        },
      ],
      'name': 'output_get_logo',
      'op': <String, dynamic>{
        'load': <String, dynamic>{
          'input': 'data',
          'name': 'load',
          'points': <dynamic>[
            <String, dynamic>{
              'active': true,
              'args': <String, dynamic>{
                'header': <dynamic>[
                  <String, dynamic>{
                    'active': true,
                    'kind': 'header',
                    'name': 'authorization',
                    'orig': 'authorization',
                    'reqd': true,
                    'type': '`\$STRING`',
                  },
                ],
              },
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
              'index\$': 0,
            },
          ],
          'key\$': 'load',
        },
      },
      'relations': <String, dynamic>{
        'ancestors': <dynamic>[],
      },
    },
    'output_list_of_available_role': <String, dynamic>{
      'fields': <dynamic>[
        <String, dynamic>{
          'active': true,
          'name': 'available_role',
          'req': false,
          'type': '`\$ARRAY`',
          'index\$': 0,
        },
        <String, dynamic>{
          'active': true,
          'name': 'response_code',
          'req': false,
          'type': '`\$INTEGER`',
          'index\$': 1,
        },
        <String, dynamic>{
          'active': true,
          'name': 'response_message',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 2,
        },
      ],
      'name': 'output_list_of_available_role',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'active': true,
              'args': <String, dynamic>{
                'header': <dynamic>[
                  <String, dynamic>{
                    'active': true,
                    'kind': 'header',
                    'name': 'authorization',
                    'orig': 'authorization',
                    'reqd': true,
                    'type': '`\$STRING`',
                  },
                ],
              },
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
              'index\$': 0,
            },
          ],
          'key\$': 'create',
        },
      },
      'relations': <String, dynamic>{
        'ancestors': <dynamic>[],
      },
    },
    'output_list_of_mandator': <String, dynamic>{
      'fields': <dynamic>[
        <String, dynamic>{
          'active': true,
          'name': 'filter',
          'req': false,
          'type': '`\$OBJECT`',
          'index\$': 0,
        },
        <String, dynamic>{
          'active': true,
          'name': 'list',
          'req': false,
          'type': '`\$ARRAY`',
          'index\$': 1,
        },
        <String, dynamic>{
          'active': true,
          'name': 'pagination',
          'req': false,
          'type': '`\$OBJECT`',
          'index\$': 2,
        },
        <String, dynamic>{
          'active': true,
          'name': 'response_code',
          'req': false,
          'type': '`\$INTEGER`',
          'index\$': 3,
        },
        <String, dynamic>{
          'active': true,
          'name': 'response_message',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 4,
        },
        <String, dynamic>{
          'active': true,
          'name': 'sorting',
          'req': false,
          'type': '`\$OBJECT`',
          'index\$': 5,
        },
      ],
      'name': 'output_list_of_mandator',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'active': true,
              'args': <String, dynamic>{
                'header': <dynamic>[
                  <String, dynamic>{
                    'active': true,
                    'kind': 'header',
                    'name': 'authorization',
                    'orig': 'authorization',
                    'reqd': true,
                    'type': '`\$STRING`',
                  },
                ],
              },
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
              'index\$': 0,
            },
          ],
          'key\$': 'create',
        },
      },
      'relations': <String, dynamic>{
        'ancestors': <dynamic>[],
      },
    },
    'output_list_of_module': <String, dynamic>{
      'fields': <dynamic>[
        <String, dynamic>{
          'active': true,
          'name': 'list',
          'req': false,
          'type': '`\$ARRAY`',
          'index\$': 0,
        },
        <String, dynamic>{
          'active': true,
          'name': 'pagination',
          'req': false,
          'type': '`\$OBJECT`',
          'index\$': 1,
        },
        <String, dynamic>{
          'active': true,
          'name': 'response_code',
          'req': false,
          'type': '`\$INTEGER`',
          'index\$': 2,
        },
        <String, dynamic>{
          'active': true,
          'name': 'response_message',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 3,
        },
      ],
      'name': 'output_list_of_module',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'active': true,
              'args': <String, dynamic>{
                'header': <dynamic>[
                  <String, dynamic>{
                    'active': true,
                    'kind': 'header',
                    'name': 'authorization',
                    'orig': 'authorization',
                    'reqd': true,
                    'type': '`\$STRING`',
                  },
                ],
              },
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
              'index\$': 0,
            },
          ],
          'key\$': 'create',
        },
      },
      'relations': <String, dynamic>{
        'ancestors': <dynamic>[],
      },
    },
    'output_list_of_role_group': <String, dynamic>{
      'fields': <dynamic>[
        <String, dynamic>{
          'active': true,
          'name': 'filter',
          'req': false,
          'type': '`\$OBJECT`',
          'index\$': 0,
        },
        <String, dynamic>{
          'active': true,
          'name': 'group_role',
          'req': false,
          'type': '`\$ARRAY`',
          'index\$': 1,
        },
        <String, dynamic>{
          'active': true,
          'name': 'pagination',
          'req': false,
          'type': '`\$OBJECT`',
          'index\$': 2,
        },
        <String, dynamic>{
          'active': true,
          'name': 'response_code',
          'req': false,
          'type': '`\$INTEGER`',
          'index\$': 3,
        },
        <String, dynamic>{
          'active': true,
          'name': 'response_message',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 4,
        },
        <String, dynamic>{
          'active': true,
          'name': 'sorting',
          'req': false,
          'type': '`\$OBJECT`',
          'index\$': 5,
        },
      ],
      'name': 'output_list_of_role_group',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'active': true,
              'args': <String, dynamic>{
                'header': <dynamic>[
                  <String, dynamic>{
                    'active': true,
                    'kind': 'header',
                    'name': 'authorization',
                    'orig': 'authorization',
                    'reqd': true,
                    'type': '`\$STRING`',
                  },
                ],
              },
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
              'index\$': 0,
            },
          ],
          'key\$': 'create',
        },
      },
      'relations': <String, dynamic>{
        'ancestors': <dynamic>[],
      },
    },
    'output_list_of_transactions_history': <String, dynamic>{
      'fields': <dynamic>[
        <String, dynamic>{
          'active': true,
          'name': 'filter',
          'req': false,
          'type': '`\$OBJECT`',
          'index\$': 0,
        },
        <String, dynamic>{
          'active': true,
          'name': 'list',
          'req': false,
          'type': '`\$ARRAY`',
          'index\$': 1,
        },
        <String, dynamic>{
          'active': true,
          'name': 'pagination',
          'req': false,
          'type': '`\$OBJECT`',
          'index\$': 2,
        },
        <String, dynamic>{
          'active': true,
          'name': 'response_code',
          'req': false,
          'type': '`\$INTEGER`',
          'index\$': 3,
        },
        <String, dynamic>{
          'active': true,
          'name': 'response_message',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 4,
        },
        <String, dynamic>{
          'active': true,
          'name': 'sorting',
          'req': false,
          'type': '`\$OBJECT`',
          'index\$': 5,
        },
      ],
      'name': 'output_list_of_transactions_history',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'active': true,
              'args': <String, dynamic>{
                'header': <dynamic>[
                  <String, dynamic>{
                    'active': true,
                    'kind': 'header',
                    'name': 'authorization',
                    'orig': 'authorization',
                    'reqd': true,
                    'type': '`\$STRING`',
                  },
                ],
              },
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
              'index\$': 0,
            },
          ],
          'key\$': 'create',
        },
      },
      'relations': <String, dynamic>{
        'ancestors': <dynamic>[],
      },
    },
    'output_list_of_user': <String, dynamic>{
      'fields': <dynamic>[
        <String, dynamic>{
          'active': true,
          'name': 'filter',
          'req': false,
          'type': '`\$OBJECT`',
          'index\$': 0,
        },
        <String, dynamic>{
          'active': true,
          'name': 'list',
          'req': false,
          'type': '`\$ARRAY`',
          'index\$': 1,
        },
        <String, dynamic>{
          'active': true,
          'name': 'pagination',
          'req': false,
          'type': '`\$OBJECT`',
          'index\$': 2,
        },
        <String, dynamic>{
          'active': true,
          'name': 'response_code',
          'req': false,
          'type': '`\$INTEGER`',
          'index\$': 3,
        },
        <String, dynamic>{
          'active': true,
          'name': 'response_message',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 4,
        },
        <String, dynamic>{
          'active': true,
          'name': 'sorting',
          'req': false,
          'type': '`\$OBJECT`',
          'index\$': 5,
        },
      ],
      'name': 'output_list_of_user',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'active': true,
              'args': <String, dynamic>{
                'header': <dynamic>[
                  <String, dynamic>{
                    'active': true,
                    'kind': 'header',
                    'name': 'authorization',
                    'orig': 'authorization',
                    'reqd': true,
                    'type': '`\$STRING`',
                  },
                ],
              },
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
              'index\$': 0,
            },
          ],
          'key\$': 'create',
        },
      },
      'relations': <String, dynamic>{
        'ancestors': <dynamic>[],
      },
    },
    'output_provide_credential': <String, dynamic>{
      'fields': <dynamic>[
        <String, dynamic>{
          'active': true,
          'name': 'mandator_name',
          'req': true,
          'type': '`\$STRING`',
          'index\$': 0,
        },
        <String, dynamic>{
          'active': true,
          'name': 'password',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 1,
        },
        <String, dynamic>{
          'active': true,
          'name': 'response_code',
          'req': false,
          'type': '`\$INTEGER`',
          'index\$': 2,
        },
        <String, dynamic>{
          'active': true,
          'name': 'response_message',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 3,
        },
        <String, dynamic>{
          'active': true,
          'name': 'username',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 4,
        },
      ],
      'name': 'output_provide_credential',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'active': true,
              'args': <String, dynamic>{
                'header': <dynamic>[
                  <String, dynamic>{
                    'active': true,
                    'kind': 'header',
                    'name': 'authorization',
                    'orig': 'authorization',
                    'reqd': true,
                    'type': '`\$STRING`',
                  },
                ],
              },
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
              'index\$': 0,
            },
          ],
          'key\$': 'create',
        },
      },
      'relations': <String, dynamic>{
        'ancestors': <dynamic>[],
      },
    },
    'output_register_user': <String, dynamic>{
      'fields': <dynamic>[
        <String, dynamic>{
          'active': true,
          'name': 'city',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 0,
        },
        <String, dynamic>{
          'active': true,
          'name': 'consumer_id',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 1,
        },
        <String, dynamic>{
          'active': true,
          'name': 'consumer_language',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 2,
        },
        <String, dynamic>{
          'active': true,
          'name': 'country',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 3,
        },
        <String, dynamic>{
          'active': true,
          'name': 'date_of_birth',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 4,
        },
        <String, dynamic>{
          'active': true,
          'name': 'driver_licence_number',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 5,
        },
        <String, dynamic>{
          'active': true,
          'name': 'email',
          'req': true,
          'type': '`\$STRING`',
          'index\$': 6,
        },
        <String, dynamic>{
          'active': true,
          'name': 'first_name',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 7,
        },
        <String, dynamic>{
          'active': true,
          'name': 'identification_number',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 8,
        },
        <String, dynamic>{
          'active': true,
          'name': 'last_name',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 9,
        },
        <String, dynamic>{
          'active': true,
          'name': 'login',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 10,
        },
        <String, dynamic>{
          'active': true,
          'name': 'module',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 11,
        },
        <String, dynamic>{
          'active': true,
          'name': 'passport_number',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 12,
        },
        <String, dynamic>{
          'active': true,
          'name': 'phone',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 13,
        },
        <String, dynamic>{
          'active': true,
          'name': 'response_code',
          'req': false,
          'type': '`\$INTEGER`',
          'index\$': 14,
        },
        <String, dynamic>{
          'active': true,
          'name': 'response_message',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 15,
        },
        <String, dynamic>{
          'active': true,
          'name': 'salutation',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 16,
        },
        <String, dynamic>{
          'active': true,
          'name': 'state',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 17,
        },
        <String, dynamic>{
          'active': true,
          'name': 'street1',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 18,
        },
        <String, dynamic>{
          'active': true,
          'name': 'street2',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 19,
        },
        <String, dynamic>{
          'active': true,
          'name': 'zip',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 20,
        },
      ],
      'name': 'output_register_user',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'active': true,
              'args': <String, dynamic>{
                'header': <dynamic>[
                  <String, dynamic>{
                    'active': true,
                    'kind': 'header',
                    'name': 'authorization',
                    'orig': 'authorization',
                    'reqd': true,
                    'type': '`\$STRING`',
                  },
                ],
              },
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
              'index\$': 0,
            },
          ],
          'key\$': 'create',
        },
      },
      'relations': <String, dynamic>{
        'ancestors': <dynamic>[],
      },
    },
    'output_remove_role': <String, dynamic>{
      'fields': <dynamic>[
        <String, dynamic>{
          'active': true,
          'name': 'consumer_uuid',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 0,
        },
        <String, dynamic>{
          'active': true,
          'name': 'response_code',
          'req': false,
          'type': '`\$INTEGER`',
          'index\$': 1,
        },
        <String, dynamic>{
          'active': true,
          'name': 'response_message',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 2,
        },
        <String, dynamic>{
          'active': true,
          'name': 'role',
          'req': false,
          'type': '`\$ARRAY`',
          'index\$': 3,
        },
      ],
      'name': 'output_remove_role',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'active': true,
              'args': <String, dynamic>{
                'header': <dynamic>[
                  <String, dynamic>{
                    'active': true,
                    'kind': 'header',
                    'name': 'authorization',
                    'orig': 'authorization',
                    'reqd': true,
                    'type': '`\$STRING`',
                  },
                ],
              },
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
              'index\$': 0,
            },
          ],
          'key\$': 'create',
        },
      },
      'relations': <String, dynamic>{
        'ancestors': <dynamic>[],
      },
    },
    'output_resend_link': <String, dynamic>{
      'fields': <dynamic>[
        <String, dynamic>{
          'active': true,
          'name': 'business_registration_number',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 0,
        },
        <String, dynamic>{
          'active': true,
          'name': 'consumer_uuid',
          'req': true,
          'type': '`\$STRING`',
          'index\$': 1,
        },
        <String, dynamic>{
          'active': true,
          'name': 'email_confirmation_code',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 2,
        },
        <String, dynamic>{
          'active': true,
          'name': 'phone_number',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 3,
        },
        <String, dynamic>{
          'active': true,
          'name': 'response_code',
          'req': false,
          'type': '`\$INTEGER`',
          'index\$': 4,
        },
        <String, dynamic>{
          'active': true,
          'name': 'response_message',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 5,
        },
      ],
      'name': 'output_resend_link',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'active': true,
              'args': <String, dynamic>{
                'header': <dynamic>[
                  <String, dynamic>{
                    'active': true,
                    'kind': 'header',
                    'name': 'authorization',
                    'orig': 'authorization',
                    'reqd': false,
                    'type': '`\$STRING`',
                  },
                ],
              },
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
              'index\$': 0,
            },
          ],
          'key\$': 'create',
        },
      },
      'relations': <String, dynamic>{
        'ancestors': <dynamic>[],
      },
    },
    'output_reset_password': <String, dynamic>{
      'fields': <dynamic>[
        <String, dynamic>{
          'active': true,
          'name': 'consumer_uuid',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 0,
        },
        <String, dynamic>{
          'active': true,
          'name': 'phone_number',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 1,
        },
        <String, dynamic>{
          'active': true,
          'name': 'response_code',
          'req': false,
          'type': '`\$INTEGER`',
          'index\$': 2,
        },
        <String, dynamic>{
          'active': true,
          'name': 'response_message',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 3,
        },
      ],
      'name': 'output_reset_password',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'active': true,
              'args': <String, dynamic>{
                'header': <dynamic>[
                  <String, dynamic>{
                    'active': true,
                    'kind': 'header',
                    'name': 'authorization',
                    'orig': 'authorization',
                    'reqd': true,
                    'type': '`\$STRING`',
                  },
                ],
              },
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
              'index\$': 0,
            },
          ],
          'key\$': 'create',
        },
      },
      'relations': <String, dynamic>{
        'ancestors': <dynamic>[],
      },
    },
    'output_update_consumer': <String, dynamic>{
      'fields': <dynamic>[
        <String, dynamic>{
          'active': true,
          'name': 'city',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 0,
        },
        <String, dynamic>{
          'active': true,
          'name': 'consumer_uuid',
          'req': true,
          'type': '`\$STRING`',
          'index\$': 1,
        },
        <String, dynamic>{
          'active': true,
          'name': 'consumerlanguage',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 2,
        },
        <String, dynamic>{
          'active': true,
          'name': 'country',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 3,
        },
        <String, dynamic>{
          'active': true,
          'name': 'date_of_birth',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 4,
        },
        <String, dynamic>{
          'active': true,
          'name': 'datetime_created',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 5,
        },
        <String, dynamic>{
          'active': true,
          'name': 'driver_licence_number',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 6,
        },
        <String, dynamic>{
          'active': true,
          'name': 'email',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 7,
        },
        <String, dynamic>{
          'active': true,
          'name': 'first_name',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 8,
        },
        <String, dynamic>{
          'active': true,
          'name': 'identification_number',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 9,
        },
        <String, dynamic>{
          'active': true,
          'name': 'kyc_passed',
          'req': false,
          'type': '`\$BOOLEAN`',
          'index\$': 10,
        },
        <String, dynamic>{
          'active': true,
          'name': 'last_name',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 11,
        },
        <String, dynamic>{
          'active': true,
          'name': 'nationality',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 12,
        },
        <String, dynamic>{
          'active': true,
          'name': 'passport_number',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 13,
        },
        <String, dynamic>{
          'active': true,
          'name': 'phone_number',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 14,
        },
        <String, dynamic>{
          'active': true,
          'name': 'place_of_birth',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 15,
        },
        <String, dynamic>{
          'active': true,
          'name': 'response_code',
          'req': false,
          'type': '`\$INTEGER`',
          'index\$': 16,
        },
        <String, dynamic>{
          'active': true,
          'name': 'response_message',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 17,
        },
        <String, dynamic>{
          'active': true,
          'name': 'state',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 18,
        },
        <String, dynamic>{
          'active': true,
          'name': 'street1',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 19,
        },
        <String, dynamic>{
          'active': true,
          'name': 'street2',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 20,
        },
        <String, dynamic>{
          'active': true,
          'name': 'transactionhistory_id',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 21,
        },
        <String, dynamic>{
          'active': true,
          'name': 'zip',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 22,
        },
      ],
      'name': 'output_update_consumer',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'active': true,
              'args': <String, dynamic>{
                'header': <dynamic>[
                  <String, dynamic>{
                    'active': true,
                    'kind': 'header',
                    'name': 'authorization',
                    'orig': 'authorization',
                    'reqd': false,
                    'type': '`\$STRING`',
                  },
                ],
              },
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
              'index\$': 0,
            },
          ],
          'key\$': 'create',
        },
      },
      'relations': <String, dynamic>{
        'ancestors': <dynamic>[],
      },
    },
    'output_update_profile': <String, dynamic>{
      'fields': <dynamic>[
        <String, dynamic>{
          'active': true,
          'name': 'consumer_language',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 0,
        },
        <String, dynamic>{
          'active': true,
          'name': 'email',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 1,
        },
        <String, dynamic>{
          'active': true,
          'name': 'first_name',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 2,
        },
        <String, dynamic>{
          'active': true,
          'name': 'last_name',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 3,
        },
        <String, dynamic>{
          'active': true,
          'name': 'phone_number',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 4,
        },
        <String, dynamic>{
          'active': true,
          'name': 'response_code',
          'req': false,
          'type': '`\$INTEGER`',
          'index\$': 5,
        },
        <String, dynamic>{
          'active': true,
          'name': 'response_message',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 6,
        },
      ],
      'name': 'output_update_profile',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'active': true,
              'args': <String, dynamic>{
                'header': <dynamic>[
                  <String, dynamic>{
                    'active': true,
                    'kind': 'header',
                    'name': 'authorization',
                    'orig': 'authorization',
                    'reqd': false,
                    'type': '`\$STRING`',
                  },
                ],
              },
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
              'index\$': 0,
            },
          ],
          'key\$': 'create',
        },
      },
      'relations': <String, dynamic>{
        'ancestors': <dynamic>[],
      },
    },
    'version': <String, dynamic>{
      'fields': <dynamic>[
        <String, dynamic>{
          'active': true,
          'name': 'app_name',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 0,
        },
        <String, dynamic>{
          'active': true,
          'name': 'build_date',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 1,
        },
        <String, dynamic>{
          'active': true,
          'name': 'version',
          'req': false,
          'type': '`\$STRING`',
          'index\$': 2,
        },
      ],
      'name': 'version',
      'op': <String, dynamic>{
        'load': <String, dynamic>{
          'input': 'data',
          'name': 'load',
          'points': <dynamic>[
            <String, dynamic>{
              'active': true,
              'args': <String, dynamic>{},
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
              'index\$': 0,
            },
          ],
          'key\$': 'load',
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

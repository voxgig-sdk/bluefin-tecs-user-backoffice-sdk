import 'feature/base/BaseFeature.dart';
import 'feature/audit/AuditFeature.dart';
import 'feature/clienttrack/ClienttrackFeature.dart';
import 'feature/idempotency/IdempotencyFeature.dart';
import 'feature/log/LogFeature.dart';
import 'feature/metrics/MetricsFeature.dart';
import 'feature/paging/PagingFeature.dart';
import 'feature/ratelimit/RatelimitFeature.dart';
import 'feature/retry/RetryFeature.dart';
import 'feature/telemetry/TelemetryFeature.dart';
import 'feature/test/TestFeature.dart';
import 'feature/timeout/TimeoutFeature.dart';



// ignore: non_constant_identifier_names
final Map<String, BaseFeature Function()> FEATURE_CLASS = {
    'audit': () => AuditFeature(),
  'clienttrack': () => ClienttrackFeature(),
  'idempotency': () => IdempotencyFeature(),
  'log': () => LogFeature(),
  'metrics': () => MetricsFeature(),
  'paging': () => PagingFeature(),
  'ratelimit': () => RatelimitFeature(),
  'retry': () => RetryFeature(),
  'telemetry': () => TelemetryFeature(),
  'test': () => TestFeature(),
  'timeout': () => TimeoutFeature(),

};

// Per-feature plugin DEFINITIONS (voxgig/plugin `Definition` values), from
// the model's active plugin groups. A feature that takes a `plugins` option
// (secrets over sekreto) reads its own entry; a feature with no plugins has
// none. The named `show` imports above make each definition statically
// reachable, so an SDK carries exactly the plugin libraries its model
// selects - the same leanness the old side-effect registry bought, without
// a registry.
//
// Emitted UNCONDITIONALLY, empty when no group is active: SecretsFeature
// imports this name, and the feature source can be present in a tree whose
// model selects no plugin group at all. An emission conditional on the map
// having entries would make that tree fail `dart analyze`.
//
// ignore: non_constant_identifier_names
final Map<String, List<dynamic>> FEATURE_PLUGINS = <String, List<dynamic>>{
  
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

  // False for a feature added at runtime via options.extend (station's
  // adopt path) - the constructor uses this to skip makeFeature for names
  // no generated class backs.
  bool hasFeature(String fn) => null != FEATURE_CLASS[fn];

  final Map<String, dynamic> main = <String, dynamic>{
    'name': 'BluefinTecsUserBackoffice',
        'slug': 'bluefin-tecs-user-backoffice',
    'version': '0.1.1',
    'target': 'dart',

  };

  final Map<String, dynamic> feature = <String, dynamic>{
        'audit': <String, dynamic>{
      'options': <String, dynamic>{
        'active': false,
        'actor': 'anonymous',
        'max': 1000,
      },
      'transport': 'none',
    },
    'clienttrack': <String, dynamic>{
      'options': <String, dynamic>{
        'active': false,
        'clientVersion': '0.0.1',
      },
      'transport': 'none',
    },
    'idempotency': <String, dynamic>{
      'options': <String, dynamic>{
        'active': false,
        'header': 'Idempotency-Key',
        'methods': <dynamic>[
          'POST',
          'PUT',
          'PATCH',
          'DELETE',
        ],
        'ops': <dynamic>[
          'create',
          'update',
          'remove',
        ],
      },
      'transport': 'none',
    },
    'log': <String, dynamic>{
      'options': <String, dynamic>{
        'active': true,
      },
      'transport': 'none',
    },
    'metrics': <String, dynamic>{
      'options': <String, dynamic>{
        'active': false,
      },
      'transport': 'none',
    },
    'paging': <String, dynamic>{
      'options': <String, dynamic>{
        'active': false,
        'afterVar': 'after',
        'cursorParam': 'cursor',
        'firstVar': 'first',
        'limitParam': 'limit',
        'pageParam': 'page',
        'startPage': 1,
      },
      'transport': 'none',
    },
    'ratelimit': <String, dynamic>{
      'options': <String, dynamic>{
        'active': false,
        'burst': 5,
        'rate': 5,
      },
      'transport': 'wrap',
    },
    'retry': <String, dynamic>{
      'options': <String, dynamic>{
        'active': false,
        'factor': 2,
        'maxDelay': 2000,
        'minDelay': 50,
        'retries': 2,
        'statuses': <dynamic>[
          408,
          425,
          429,
          500,
          502,
          503,
          504,
        ],
      },
      'transport': 'wrap',
    },
    'telemetry': <String, dynamic>{
      'options': <String, dynamic>{
        'active': false,
      },
      'transport': 'none',
    },
    'test': <String, dynamic>{
      'options': <String, dynamic>{
        'active': false,
      },
      'transport': 'base',
    },
    'timeout': <String, dynamic>{
      'options': <String, dynamic>{
        'active': false,
        'ms': 30000,
      },
      'transport': 'wrap',
    },

  };

  // Rendered whole from the canonical config definition rather than assembled
  // slot by slot. Assembling it here meant `options.server` - the OpenAPI
  // server-variable defaults - was simply absent from this branch, so a
  // templated server URL produced a different config either side of the
  // threshold.
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
    },
  };

  final Map<String, dynamic> entity = <String, dynamic>{
    'output_activate_digital_module': <String, dynamic>{
      'fields': <dynamic>[
        <String, dynamic>{
          'format': 'int32',
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
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'activateDigitalModule',
                },
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
              'parts': <dynamic>[
                'activateDigitalModule',
              ],
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
          'format': 'int32',
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
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'activateMerchantPortalModule',
                },
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
              'parts': <dynamic>[
                'activateMerchantPortalModule',
              ],
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
          'format': 'int32',
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
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'activateAppStoreModule',
                },
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
              'parts': <dynamic>[
                'activateAppStoreModule',
              ],
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
          'format': 'int32',
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
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'activateUser',
                },
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
              'parts': <dynamic>[
                'activateUser',
              ],
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
          'short': 'Unique identifier of the consumer (user) to whom the role(s) will be assigned.',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'format': 'int32',
          'name': 'responseCode',
          'short': 'Response code: 0 indicates success; any non-zero value indicates an error.',
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'short': 'A human-readable message providing additional details about the outcome.',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'roles',
          'req': true,
          'short': 'List of roles to assign to the consumer.',
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
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'assignRoles',
                },
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
              'parts': <dynamic>[
                'assignRoles',
              ],
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
          'short': 'The content of the image as base64 encoded string',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'mimeType',
          'req': true,
          'short': 'The MIME type of the image',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'format': 'int32',
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
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'changeLogo',
                },
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
              'parts': <dynamic>[
                'changeLogo',
              ],
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
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'createMandator',
                },
              ],
              'select': <String, dynamic>{
                'exist': <dynamic>[
                  'authorization',
                ],
              },
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body.mandator`',
              },
              'parts': <dynamic>[
                'createMandator',
              ],
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
          'format': 'int32',
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
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'createServiceUser',
                },
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
              'parts': <dynamic>[
                'createServiceUser',
              ],
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
          'format': 'int32',
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
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'deactivateUser',
                },
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
              'parts': <dynamic>[
                'deactivateUser',
              ],
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
          'format': 'int32',
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
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'getKycDocument',
                },
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
              'parts': <dynamic>[
                'getKycDocument',
              ],
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
          'short': 'The content of the image as base64 encoded string',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'mimeType',
          'req': true,
          'short': 'The MIME type of the image',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'format': 'int32',
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
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'getLogo',
                },
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
              'parts': <dynamic>[
                'getLogo',
              ],
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
          'format': 'int32',
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
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'listOfAvailableRoles',
                },
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
              'parts': <dynamic>[
                'listOfAvailableRoles',
              ],
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
          'format': 'int32',
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
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'listOfMandators',
                },
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
              'parts': <dynamic>[
                'listOfMandators',
              ],
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
          'format': 'int32',
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
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'listOfModules',
                },
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
              'parts': <dynamic>[
                'listOfModules',
              ],
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
          'format': 'int32',
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
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'listOfRoleGroups',
                },
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
              'parts': <dynamic>[
                'listOfRoleGroups',
              ],
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
          'format': 'int32',
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
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'listOfTransactionsHistory',
                },
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
              'parts': <dynamic>[
                'listOfTransactionsHistory',
              ],
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
          'format': 'int32',
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
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'listOfUsers',
                },
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
              'parts': <dynamic>[
                'listOfUsers',
              ],
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
          'format': 'int32',
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
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'provideCredentials',
                },
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
              'parts': <dynamic>[
                'provideCredentials',
              ],
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
          'short': 'City where the user resides.',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'consumerId',
          'short': 'User login or unique user identifier.',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'consumerLanguage',
          'short': 'Preferred language for the user (e.g., \'en\').',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'country',
          'short': 'User\'s country.',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'dateOfBirth',
          'short': 'User\'s date of birth (expected format: dd.MM.yyyy).',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'driverLicenceNumber',
          'short': 'User\'s driver\'s license number.',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'format': 'email',
          'name': 'email',
          'req': true,
          'short': 'User\'s email address (must be unique).',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'firstName',
          'short': 'User\'s first name.',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'identificationNumber',
          'short': 'User\'s identification number.',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'lastName',
          'short': 'User\'s last name.',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'login',
          'short': 'User login identifier (should be unique).',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'module',
          'short': 'Module identifier (if applicable).',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'passportNumber',
          'short': 'User\'s passport number.',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'phone',
          'short': 'User\'s phone number.',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'format': 'int32',
          'name': 'responseCode',
          'short': 'Response code (0 indicates success; non-zero indicates an error).',
          'type': '`\$INTEGER`',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'short': 'Human-readable response message.',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'salutation',
          'short': 'User\'s salutation (e.g., Mr., Ms.).',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'state',
          'short': 'User\'s state or region.',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'street1',
          'short': 'Primary address line.',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'street2',
          'short': 'Secondary address line.',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'zip',
          'short': 'Postal code.',
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
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'registerUser',
                },
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
              'parts': <dynamic>[
                'registerUser',
              ],
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
          'format': 'int32',
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
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'removeRoles',
                },
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
              'parts': <dynamic>[
                'removeRoles',
              ],
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
          'format': 'int32',
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
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'resendLink',
                },
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
              'parts': <dynamic>[
                'resendLink',
              ],
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
          'format': 'int32',
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
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'resetPassword',
                },
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
              'parts': <dynamic>[
                'resetPassword',
              ],
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
          'format': 'int32',
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
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'updateConsumer',
                },
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
              'parts': <dynamic>[
                'updateConsumer',
              ],
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
          'format': 'int32',
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
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'updateProfile',
                },
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
              'parts': <dynamic>[
                'updateProfile',
              ],
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
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'version',
                },
              ],
              'select': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
              'parts': <dynamic>[
                'version',
              ],
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

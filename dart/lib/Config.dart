import 'feature/base/BaseFeature.dart';
import 'feature/audit/AuditFeature.dart';
import 'feature/clienttrack/ClienttrackFeature.dart';
import 'feature/debug/DebugFeature.dart';
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
  'debug': () => DebugFeature(),
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
      'optspec': <String, dynamic>{
        'now': '`\$FUNCTION`',
        'sink': '`\$FUNCTION`',
      },
      'strict': false,
      'transport': 'none',
    },
    'clienttrack': <String, dynamic>{
      'options': <String, dynamic>{
        'active': false,
        'clientVersion': '0.0.1',
      },
      'optspec': <String, dynamic>{
        'clientName': '`\$STRING`',
        'clientVersion': '`\$STRING`',
        'headers': '`\$MAP`',
        'idgen': '`\$FUNCTION`',
        'sessionId': '`\$STRING`',
      },
      'strict': false,
      'transport': 'none',
    },
    'debug': <String, dynamic>{
      'options': <String, dynamic>{
        'active': false,
        'max': 100,
        'redact': <dynamic>[
          'authorization',
          'cookie',
          'set-cookie',
          'api-key',
          'apikey',
          'x-api-key',
          'idempotency-key',
        ],
      },
      'optspec': <String, dynamic>{
        'now': '`\$FUNCTION`',
        'onEntry': '`\$FUNCTION`',
      },
      'strict': false,
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
      'optspec': <String, dynamic>{
        'keygen': '`\$FUNCTION`',
      },
      'strict': false,
      'transport': 'none',
    },
    'log': <String, dynamic>{
      'options': <String, dynamic>{
        'active': true,
      },
      'optspec': <String, dynamic>{
        'level': '`\$STRING`',
        'logger': '`\$ANY`',
      },
      'strict': false,
      'transport': 'none',
    },
    'metrics': <String, dynamic>{
      'options': <String, dynamic>{
        'active': false,
      },
      'optspec': <String, dynamic>{
        'now': '`\$FUNCTION`',
      },
      'strict': false,
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
      'optspec': <String, dynamic>{
        'limit': '`\$NUMBER`',
        'ops': '`\$LIST`',
      },
      'strict': false,
      'transport': 'none',
    },
    'ratelimit': <String, dynamic>{
      'options': <String, dynamic>{
        'active': false,
        'burst': 5,
        'rate': 5,
      },
      'optspec': <String, dynamic>{
        'now': '`\$FUNCTION`',
        'sleep': '`\$FUNCTION`',
      },
      'strict': false,
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
      'optspec': <String, dynamic>{
        'jitter': '`\$BOOLEAN`',
        'sleep': '`\$FUNCTION`',
      },
      'strict': false,
      'transport': 'wrap',
    },
    'telemetry': <String, dynamic>{
      'options': <String, dynamic>{
        'active': false,
      },
      'optspec': <String, dynamic>{
        'exporter': '`\$FUNCTION`',
        'headers': '`\$MAP`',
        'idgen': '`\$FUNCTION`',
        'now': '`\$FUNCTION`',
      },
      'strict': false,
      'transport': 'none',
    },
    'test': <String, dynamic>{
      'options': <String, dynamic>{
        'active': false,
      },
      'optspec': <String, dynamic>{
        'entity': '`\$MAP`',
        'net': '`\$MAP`',
      },
      'strict': false,
      'transport': 'base',
    },
    'timeout': <String, dynamic>{
      'options': <String, dynamic>{
        'active': false,
        'ms': 30000,
      },
      'optspec': <String, dynamic>{
        'clearTimer': '`\$FUNCTION`',
        'setTimer': '`\$FUNCTION`',
      },
      'strict': false,
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
          'name': 'responseCode',
          'title': 'Response Code',
          'type': '`\$INTEGER`',
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'title': 'Response Message',
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
              'kind': 'http',
              'method': 'POST',
              'orig': '/activateDigitalModule',
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'activateDigitalModule',
                },
              ],
              'parts': <dynamic>[
                'activateDigitalModule',
              ],
              'rename': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
              'args': <String, dynamic>{
                'header': <dynamic>[
                  <String, dynamic>{
                    'name': 'authorization',
                    'orig': 'authorization',
                    'type': '`\$STRING`',
                    'kind': 'header',
                    'reqd': true,
                  },
                ],
              },
              'select': <String, dynamic>{
                'exist': <dynamic>[
                  'authorization',
                ],
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
          'title': 'Client Secret',
          'type': '`\$STRING`',
          'req': true,
        },
        <String, dynamic>{
          'name': 'notificationEmail',
          'title': 'Notification Email',
          'type': '`\$STRING`',
          'req': true,
        },
        <String, dynamic>{
          'name': 'responseCode',
          'title': 'Response Code',
          'type': '`\$INTEGER`',
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'title': 'Response Message',
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
              'kind': 'http',
              'method': 'POST',
              'orig': '/activateMerchantPortalModule',
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'activateMerchantPortalModule',
                },
              ],
              'parts': <dynamic>[
                'activateMerchantPortalModule',
              ],
              'rename': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
              'args': <String, dynamic>{
                'header': <dynamic>[
                  <String, dynamic>{
                    'name': 'authorization',
                    'orig': 'authorization',
                    'type': '`\$STRING`',
                    'kind': 'header',
                    'reqd': true,
                  },
                ],
              },
              'select': <String, dynamic>{
                'exist': <dynamic>[
                  'authorization',
                ],
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
          'title': 'Response Code',
          'type': '`\$INTEGER`',
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'title': 'Response Message',
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
              'kind': 'http',
              'method': 'POST',
              'orig': '/activateAppStoreModule',
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'activateAppStoreModule',
                },
              ],
              'parts': <dynamic>[
                'activateAppStoreModule',
              ],
              'rename': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
              'args': <String, dynamic>{
                'header': <dynamic>[
                  <String, dynamic>{
                    'name': 'authorization',
                    'orig': 'authorization',
                    'type': '`\$STRING`',
                    'kind': 'header',
                    'reqd': true,
                  },
                ],
              },
              'select': <String, dynamic>{
                'exist': <dynamic>[
                  'authorization',
                ],
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
          'title': 'Consumer Uuid',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'title': 'Response Code',
          'type': '`\$INTEGER`',
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'title': 'Response Message',
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
              'kind': 'http',
              'method': 'POST',
              'orig': '/activateUser',
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'activateUser',
                },
              ],
              'parts': <dynamic>[
                'activateUser',
              ],
              'rename': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
              'args': <String, dynamic>{
                'header': <dynamic>[
                  <String, dynamic>{
                    'name': 'authorization',
                    'orig': 'authorization',
                    'type': '`\$STRING`',
                    'kind': 'header',
                    'reqd': true,
                  },
                ],
              },
              'select': <String, dynamic>{
                'exist': <dynamic>[
                  'authorization',
                ],
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
          'title': 'Consumer Uuid',
          'type': '`\$STRING`',
          'req': true,
          'short': 'Unique identifier of the consumer (user) to whom the role(s) will be assigned.',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'title': 'Response Code',
          'type': '`\$INTEGER`',
          'short': 'Response code: 0 indicates success; any non-zero value indicates an error.',
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'title': 'Response Message',
          'type': '`\$STRING`',
          'short': 'A human-readable message providing additional details about the outcome.',
        },
        <String, dynamic>{
          'name': 'roles',
          'title': 'Roles',
          'type': '`\$ARRAY`',
          'req': true,
          'short': 'List of roles to assign to the consumer.',
        },
      ],
      'name': 'output_assign_role',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'kind': 'http',
              'method': 'POST',
              'orig': '/assignRoles',
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'assignRoles',
                },
              ],
              'parts': <dynamic>[
                'assignRoles',
              ],
              'rename': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
              'args': <String, dynamic>{
                'header': <dynamic>[
                  <String, dynamic>{
                    'name': 'authorization',
                    'orig': 'authorization',
                    'type': '`\$STRING`',
                    'kind': 'header',
                    'reqd': true,
                  },
                ],
              },
              'select': <String, dynamic>{
                'exist': <dynamic>[
                  'authorization',
                ],
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
          'title': 'Content As Base64',
          'type': '`\$STRING`',
          'req': true,
          'short': 'The content of the image as base64 encoded string',
        },
        <String, dynamic>{
          'name': 'mimeType',
          'title': 'Mime Type',
          'type': '`\$STRING`',
          'req': true,
          'short': 'The MIME type of the image',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'title': 'Response Code',
          'type': '`\$INTEGER`',
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'title': 'Response Message',
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
              'kind': 'http',
              'method': 'POST',
              'orig': '/changeLogo',
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'changeLogo',
                },
              ],
              'parts': <dynamic>[
                'changeLogo',
              ],
              'rename': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
              'args': <String, dynamic>{
                'header': <dynamic>[
                  <String, dynamic>{
                    'name': 'authorization',
                    'orig': 'authorization',
                    'type': '`\$STRING`',
                    'kind': 'header',
                    'reqd': true,
                  },
                ],
              },
              'select': <String, dynamic>{
                'exist': <dynamic>[
                  'authorization',
                ],
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
          'title': 'City',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'country',
          'title': 'Country',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'dateOfBirth',
          'title': 'Date Of Birth',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'description',
          'title': 'Description',
          'type': '`\$STRING`',
          'op': <String, dynamic>{
            'create': <String, dynamic>{
              'req': true,
              'type': '`\$STRING`',
            },
          },
        },
        <String, dynamic>{
          'name': 'driversLicenseNumber',
          'title': 'Drivers License Number',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'email',
          'title': 'Email',
          'type': '`\$STRING`',
          'req': true,
        },
        <String, dynamic>{
          'name': 'firstName',
          'title': 'First Name',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'identificationNumber',
          'title': 'Identification Number',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'lastName',
          'title': 'Last Name',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'login',
          'title': 'Login',
          'type': '`\$STRING`',
          'req': true,
        },
        <String, dynamic>{
          'name': 'name',
          'title': 'Name',
          'type': '`\$STRING`',
          'op': <String, dynamic>{
            'create': <String, dynamic>{
              'req': true,
              'type': '`\$STRING`',
            },
          },
        },
        <String, dynamic>{
          'name': 'passportNumber',
          'title': 'Passport Number',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'phone',
          'title': 'Phone',
          'type': '`\$STRING`',
          'req': true,
        },
        <String, dynamic>{
          'name': 'salutation',
          'title': 'Salutation',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'state',
          'title': 'State',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'street1',
          'title': 'Street1',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'street2',
          'title': 'Street2',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'zipCode',
          'title': 'Zip Code',
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
              'kind': 'http',
              'method': 'POST',
              'orig': '/createMandator',
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'createMandator',
                },
              ],
              'parts': <dynamic>[
                'createMandator',
              ],
              'rename': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body.mandator`',
              },
              'args': <String, dynamic>{
                'header': <dynamic>[
                  <String, dynamic>{
                    'name': 'authorization',
                    'orig': 'authorization',
                    'type': '`\$STRING`',
                    'kind': 'header',
                    'reqd': true,
                  },
                ],
              },
              'select': <String, dynamic>{
                'exist': <dynamic>[
                  'authorization',
                ],
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
          'title': 'Mandator Name',
          'type': '`\$STRING`',
          'req': true,
        },
        <String, dynamic>{
          'name': 'responseCode',
          'title': 'Response Code',
          'type': '`\$INTEGER`',
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'title': 'Response Message',
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
              'kind': 'http',
              'method': 'POST',
              'orig': '/createServiceUser',
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'createServiceUser',
                },
              ],
              'parts': <dynamic>[
                'createServiceUser',
              ],
              'rename': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
              'args': <String, dynamic>{
                'header': <dynamic>[
                  <String, dynamic>{
                    'name': 'authorization',
                    'orig': 'authorization',
                    'type': '`\$STRING`',
                    'kind': 'header',
                    'reqd': true,
                  },
                ],
              },
              'select': <String, dynamic>{
                'exist': <dynamic>[
                  'authorization',
                ],
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
          'title': 'Consumer Uuid',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'title': 'Response Code',
          'type': '`\$INTEGER`',
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'title': 'Response Message',
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
              'kind': 'http',
              'method': 'POST',
              'orig': '/deactivateUser',
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'deactivateUser',
                },
              ],
              'parts': <dynamic>[
                'deactivateUser',
              ],
              'rename': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
              'args': <String, dynamic>{
                'header': <dynamic>[
                  <String, dynamic>{
                    'name': 'authorization',
                    'orig': 'authorization',
                    'type': '`\$STRING`',
                    'kind': 'header',
                    'reqd': true,
                  },
                ],
              },
              'select': <String, dynamic>{
                'exist': <dynamic>[
                  'authorization',
                ],
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
          'title': 'Case Id',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'encodedDataBase64',
          'title': 'Encoded Data Base64',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'title': 'Response Code',
          'type': '`\$INTEGER`',
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'title': 'Response Message',
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
              'kind': 'http',
              'method': 'POST',
              'orig': '/getKycDocument',
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'getKycDocument',
                },
              ],
              'parts': <dynamic>[
                'getKycDocument',
              ],
              'rename': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
              'args': <String, dynamic>{
                'header': <dynamic>[
                  <String, dynamic>{
                    'name': 'authorization',
                    'orig': 'authorization',
                    'type': '`\$STRING`',
                    'kind': 'header',
                    'reqd': true,
                  },
                ],
              },
              'select': <String, dynamic>{
                'exist': <dynamic>[
                  'authorization',
                ],
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
          'title': 'Content As Base64',
          'type': '`\$STRING`',
          'req': true,
          'short': 'The content of the image as base64 encoded string',
        },
        <String, dynamic>{
          'name': 'mimeType',
          'title': 'Mime Type',
          'type': '`\$STRING`',
          'req': true,
          'short': 'The MIME type of the image',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'title': 'Response Code',
          'type': '`\$INTEGER`',
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'title': 'Response Message',
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
              'kind': 'http',
              'method': 'GET',
              'orig': '/getLogo',
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'getLogo',
                },
              ],
              'parts': <dynamic>[
                'getLogo',
              ],
              'rename': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
              'args': <String, dynamic>{
                'header': <dynamic>[
                  <String, dynamic>{
                    'name': 'authorization',
                    'orig': 'authorization',
                    'type': '`\$STRING`',
                    'kind': 'header',
                    'reqd': true,
                  },
                ],
              },
              'select': <String, dynamic>{
                'exist': <dynamic>[
                  'authorization',
                ],
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
          'title': 'Available Roles',
          'type': '`\$ARRAY`',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'title': 'Response Code',
          'type': '`\$INTEGER`',
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'title': 'Response Message',
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
              'kind': 'http',
              'method': 'POST',
              'orig': '/listOfAvailableRoles',
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'listOfAvailableRoles',
                },
              ],
              'parts': <dynamic>[
                'listOfAvailableRoles',
              ],
              'rename': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
              'args': <String, dynamic>{
                'header': <dynamic>[
                  <String, dynamic>{
                    'name': 'authorization',
                    'orig': 'authorization',
                    'type': '`\$STRING`',
                    'kind': 'header',
                    'reqd': true,
                  },
                ],
              },
              'select': <String, dynamic>{
                'exist': <dynamic>[
                  'authorization',
                ],
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
          'title': 'Filter',
          'type': '`\$OBJECT`',
        },
        <String, dynamic>{
          'name': 'list',
          'title': 'List',
          'type': '`\$ARRAY`',
        },
        <String, dynamic>{
          'name': 'pagination',
          'title': 'Pagination',
          'type': '`\$OBJECT`',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'title': 'Response Code',
          'type': '`\$INTEGER`',
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'title': 'Response Message',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'sorting',
          'title': 'Sorting',
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
              'kind': 'http',
              'method': 'POST',
              'orig': '/listOfMandators',
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'listOfMandators',
                },
              ],
              'parts': <dynamic>[
                'listOfMandators',
              ],
              'rename': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
              'args': <String, dynamic>{
                'header': <dynamic>[
                  <String, dynamic>{
                    'name': 'authorization',
                    'orig': 'authorization',
                    'type': '`\$STRING`',
                    'kind': 'header',
                    'reqd': true,
                  },
                ],
              },
              'select': <String, dynamic>{
                'exist': <dynamic>[
                  'authorization',
                ],
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
          'title': 'List',
          'type': '`\$ARRAY`',
        },
        <String, dynamic>{
          'name': 'pagination',
          'title': 'Pagination',
          'type': '`\$OBJECT`',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'title': 'Response Code',
          'type': '`\$INTEGER`',
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'title': 'Response Message',
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
              'kind': 'http',
              'method': 'POST',
              'orig': '/listOfModules',
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'listOfModules',
                },
              ],
              'parts': <dynamic>[
                'listOfModules',
              ],
              'rename': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
              'args': <String, dynamic>{
                'header': <dynamic>[
                  <String, dynamic>{
                    'name': 'authorization',
                    'orig': 'authorization',
                    'type': '`\$STRING`',
                    'kind': 'header',
                    'reqd': true,
                  },
                ],
              },
              'select': <String, dynamic>{
                'exist': <dynamic>[
                  'authorization',
                ],
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
          'title': 'Filter',
          'type': '`\$OBJECT`',
        },
        <String, dynamic>{
          'name': 'groupRoles',
          'title': 'Group Roles',
          'type': '`\$ARRAY`',
        },
        <String, dynamic>{
          'name': 'pagination',
          'title': 'Pagination',
          'type': '`\$OBJECT`',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'title': 'Response Code',
          'type': '`\$INTEGER`',
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'title': 'Response Message',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'sorting',
          'title': 'Sorting',
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
              'kind': 'http',
              'method': 'POST',
              'orig': '/listOfRoleGroups',
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'listOfRoleGroups',
                },
              ],
              'parts': <dynamic>[
                'listOfRoleGroups',
              ],
              'rename': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
              'args': <String, dynamic>{
                'header': <dynamic>[
                  <String, dynamic>{
                    'name': 'authorization',
                    'orig': 'authorization',
                    'type': '`\$STRING`',
                    'kind': 'header',
                    'reqd': true,
                  },
                ],
              },
              'select': <String, dynamic>{
                'exist': <dynamic>[
                  'authorization',
                ],
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
          'title': 'Filter',
          'type': '`\$OBJECT`',
        },
        <String, dynamic>{
          'name': 'list',
          'title': 'List',
          'type': '`\$ARRAY`',
        },
        <String, dynamic>{
          'name': 'pagination',
          'title': 'Pagination',
          'type': '`\$OBJECT`',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'title': 'Response Code',
          'type': '`\$INTEGER`',
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'title': 'Response Message',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'sorting',
          'title': 'Sorting',
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
              'kind': 'http',
              'method': 'POST',
              'orig': '/listOfTransactionsHistory',
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'listOfTransactionsHistory',
                },
              ],
              'parts': <dynamic>[
                'listOfTransactionsHistory',
              ],
              'rename': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
              'args': <String, dynamic>{
                'header': <dynamic>[
                  <String, dynamic>{
                    'name': 'authorization',
                    'orig': 'authorization',
                    'type': '`\$STRING`',
                    'kind': 'header',
                    'reqd': true,
                  },
                ],
              },
              'select': <String, dynamic>{
                'exist': <dynamic>[
                  'authorization',
                ],
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
          'title': 'Filter',
          'type': '`\$OBJECT`',
        },
        <String, dynamic>{
          'name': 'list',
          'title': 'List',
          'type': '`\$ARRAY`',
        },
        <String, dynamic>{
          'name': 'pagination',
          'title': 'Pagination',
          'type': '`\$OBJECT`',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'title': 'Response Code',
          'type': '`\$INTEGER`',
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'title': 'Response Message',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'sorting',
          'title': 'Sorting',
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
              'kind': 'http',
              'method': 'POST',
              'orig': '/listOfUsers',
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'listOfUsers',
                },
              ],
              'parts': <dynamic>[
                'listOfUsers',
              ],
              'rename': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
              'args': <String, dynamic>{
                'header': <dynamic>[
                  <String, dynamic>{
                    'name': 'authorization',
                    'orig': 'authorization',
                    'type': '`\$STRING`',
                    'kind': 'header',
                    'reqd': true,
                  },
                ],
              },
              'select': <String, dynamic>{
                'exist': <dynamic>[
                  'authorization',
                ],
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
          'title': 'Mandator Name',
          'type': '`\$STRING`',
          'req': true,
        },
        <String, dynamic>{
          'name': 'password',
          'title': 'Password',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'title': 'Response Code',
          'type': '`\$INTEGER`',
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'title': 'Response Message',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'username',
          'title': 'Username',
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
              'kind': 'http',
              'method': 'POST',
              'orig': '/provideCredentials',
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'provideCredentials',
                },
              ],
              'parts': <dynamic>[
                'provideCredentials',
              ],
              'rename': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
              'args': <String, dynamic>{
                'header': <dynamic>[
                  <String, dynamic>{
                    'name': 'authorization',
                    'orig': 'authorization',
                    'type': '`\$STRING`',
                    'kind': 'header',
                    'reqd': true,
                  },
                ],
              },
              'select': <String, dynamic>{
                'exist': <dynamic>[
                  'authorization',
                ],
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
          'title': 'City',
          'type': '`\$STRING`',
          'short': 'City where the user resides.',
        },
        <String, dynamic>{
          'name': 'consumerId',
          'title': 'Consumer Id',
          'type': '`\$STRING`',
          'short': 'User login or unique user identifier.',
        },
        <String, dynamic>{
          'name': 'consumerLanguage',
          'title': 'Consumer Language',
          'type': '`\$STRING`',
          'short': 'Preferred language for the user (e.g., \'en\').',
        },
        <String, dynamic>{
          'name': 'country',
          'title': 'Country',
          'type': '`\$STRING`',
          'short': 'User\'s country.',
        },
        <String, dynamic>{
          'name': 'dateOfBirth',
          'title': 'Date Of Birth',
          'type': '`\$STRING`',
          'short': 'User\'s date of birth (expected format: dd.MM.yyyy).',
        },
        <String, dynamic>{
          'name': 'driverLicenceNumber',
          'title': 'Driver Licence Number',
          'type': '`\$STRING`',
          'short': 'User\'s driver\'s license number.',
        },
        <String, dynamic>{
          'name': 'email',
          'title': 'Email',
          'type': '`\$STRING`',
          'req': true,
          'short': 'User\'s email address (must be unique).',
          'format': 'email',
        },
        <String, dynamic>{
          'name': 'firstName',
          'title': 'First Name',
          'type': '`\$STRING`',
          'short': 'User\'s first name.',
        },
        <String, dynamic>{
          'name': 'identificationNumber',
          'title': 'Identification Number',
          'type': '`\$STRING`',
          'short': 'User\'s identification number.',
        },
        <String, dynamic>{
          'name': 'lastName',
          'title': 'Last Name',
          'type': '`\$STRING`',
          'short': 'User\'s last name.',
        },
        <String, dynamic>{
          'name': 'login',
          'title': 'Login',
          'type': '`\$STRING`',
          'short': 'User login identifier (should be unique).',
        },
        <String, dynamic>{
          'name': 'module',
          'title': 'Module',
          'type': '`\$STRING`',
          'short': 'Module identifier (if applicable).',
        },
        <String, dynamic>{
          'name': 'passportNumber',
          'title': 'Passport Number',
          'type': '`\$STRING`',
          'short': 'User\'s passport number.',
        },
        <String, dynamic>{
          'name': 'phone',
          'title': 'Phone',
          'type': '`\$STRING`',
          'short': 'User\'s phone number.',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'title': 'Response Code',
          'type': '`\$INTEGER`',
          'short': 'Response code (0 indicates success; non-zero indicates an error).',
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'title': 'Response Message',
          'type': '`\$STRING`',
          'short': 'Human-readable response message.',
        },
        <String, dynamic>{
          'name': 'salutation',
          'title': 'Salutation',
          'type': '`\$STRING`',
          'short': 'User\'s salutation (e.g., Mr., Ms.).',
        },
        <String, dynamic>{
          'name': 'state',
          'title': 'State',
          'type': '`\$STRING`',
          'short': 'User\'s state or region.',
        },
        <String, dynamic>{
          'name': 'street1',
          'title': 'Street1',
          'type': '`\$STRING`',
          'short': 'Primary address line.',
        },
        <String, dynamic>{
          'name': 'street2',
          'title': 'Street2',
          'type': '`\$STRING`',
          'short': 'Secondary address line.',
        },
        <String, dynamic>{
          'name': 'zip',
          'title': 'Zip',
          'type': '`\$STRING`',
          'short': 'Postal code.',
        },
      ],
      'name': 'output_register_user',
      'op': <String, dynamic>{
        'create': <String, dynamic>{
          'input': 'data',
          'name': 'create',
          'points': <dynamic>[
            <String, dynamic>{
              'kind': 'http',
              'method': 'POST',
              'orig': '/registerUser',
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'registerUser',
                },
              ],
              'parts': <dynamic>[
                'registerUser',
              ],
              'rename': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
              'args': <String, dynamic>{
                'header': <dynamic>[
                  <String, dynamic>{
                    'name': 'authorization',
                    'orig': 'authorization',
                    'type': '`\$STRING`',
                    'kind': 'header',
                    'reqd': true,
                  },
                ],
              },
              'select': <String, dynamic>{
                'exist': <dynamic>[
                  'authorization',
                ],
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
          'title': 'Consumer Uuid',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'title': 'Response Code',
          'type': '`\$INTEGER`',
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'title': 'Response Message',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'roles',
          'title': 'Roles',
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
              'kind': 'http',
              'method': 'POST',
              'orig': '/removeRoles',
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'removeRoles',
                },
              ],
              'parts': <dynamic>[
                'removeRoles',
              ],
              'rename': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
              'args': <String, dynamic>{
                'header': <dynamic>[
                  <String, dynamic>{
                    'name': 'authorization',
                    'orig': 'authorization',
                    'type': '`\$STRING`',
                    'kind': 'header',
                    'reqd': true,
                  },
                ],
              },
              'select': <String, dynamic>{
                'exist': <dynamic>[
                  'authorization',
                ],
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
          'title': 'Business Registration Number',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'consumerUUID',
          'title': 'Consumer Uuid',
          'type': '`\$STRING`',
          'req': true,
        },
        <String, dynamic>{
          'name': 'emailConfirmationCode',
          'title': 'Email Confirmation Code',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'phoneNumber',
          'title': 'Phone Number',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'title': 'Response Code',
          'type': '`\$INTEGER`',
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'title': 'Response Message',
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
              'kind': 'http',
              'method': 'POST',
              'orig': '/resendLink',
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'resendLink',
                },
              ],
              'parts': <dynamic>[
                'resendLink',
              ],
              'rename': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
              'args': <String, dynamic>{
                'header': <dynamic>[
                  <String, dynamic>{
                    'name': 'authorization',
                    'orig': 'authorization',
                    'type': '`\$STRING`',
                    'kind': 'header',
                  },
                ],
              },
              'select': <String, dynamic>{
                'exist': <dynamic>[
                  'authorization',
                ],
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
          'title': 'Consumer Uuid',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'phoneNumber',
          'title': 'Phone Number',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'title': 'Response Code',
          'type': '`\$INTEGER`',
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'title': 'Response Message',
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
              'kind': 'http',
              'method': 'POST',
              'orig': '/resetPassword',
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'resetPassword',
                },
              ],
              'parts': <dynamic>[
                'resetPassword',
              ],
              'rename': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
              'args': <String, dynamic>{
                'header': <dynamic>[
                  <String, dynamic>{
                    'name': 'authorization',
                    'orig': 'authorization',
                    'type': '`\$STRING`',
                    'kind': 'header',
                    'reqd': true,
                  },
                ],
              },
              'select': <String, dynamic>{
                'exist': <dynamic>[
                  'authorization',
                ],
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
          'title': 'City',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'consumerUuid',
          'title': 'Consumer Uuid',
          'type': '`\$STRING`',
          'req': true,
        },
        <String, dynamic>{
          'name': 'consumerlanguage',
          'title': 'Consumerlanguage',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'country',
          'title': 'Country',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'dateOfBirth',
          'title': 'Date Of Birth',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'datetime_created',
          'title': 'Datetime Created',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'driverLicenceNumber',
          'title': 'Driver Licence Number',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'email',
          'title': 'Email',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'firstName',
          'title': 'First Name',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'identificationNumber',
          'title': 'Identification Number',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'kycPassed',
          'title': 'Kyc Passed',
          'type': '`\$BOOLEAN`',
        },
        <String, dynamic>{
          'name': 'lastName',
          'title': 'Last Name',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'nationality',
          'title': 'Nationality',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'passportNumber',
          'title': 'Passport Number',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'phoneNumber',
          'title': 'Phone Number',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'placeOfBirth',
          'title': 'Place Of Birth',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'title': 'Response Code',
          'type': '`\$INTEGER`',
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'title': 'Response Message',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'state',
          'title': 'State',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'street1',
          'title': 'Street1',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'street2',
          'title': 'Street2',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'transactionhistory_id',
          'title': 'Transactionhistory Id',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'zip',
          'title': 'Zip',
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
              'kind': 'http',
              'method': 'POST',
              'orig': '/updateConsumer',
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'updateConsumer',
                },
              ],
              'parts': <dynamic>[
                'updateConsumer',
              ],
              'rename': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
              'args': <String, dynamic>{
                'header': <dynamic>[
                  <String, dynamic>{
                    'name': 'authorization',
                    'orig': 'authorization',
                    'type': '`\$STRING`',
                    'kind': 'header',
                  },
                ],
              },
              'select': <String, dynamic>{
                'exist': <dynamic>[
                  'authorization',
                ],
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
          'title': 'Consumer Language',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'email',
          'title': 'Email',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'firstName',
          'title': 'First Name',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'lastName',
          'title': 'Last Name',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'phoneNumber',
          'title': 'Phone Number',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'responseCode',
          'title': 'Response Code',
          'type': '`\$INTEGER`',
          'format': 'int32',
        },
        <String, dynamic>{
          'name': 'responseMessage',
          'title': 'Response Message',
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
              'kind': 'http',
              'method': 'POST',
              'orig': '/updateProfile',
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'updateProfile',
                },
              ],
              'parts': <dynamic>[
                'updateProfile',
              ],
              'rename': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
              'args': <String, dynamic>{
                'header': <dynamic>[
                  <String, dynamic>{
                    'name': 'authorization',
                    'orig': 'authorization',
                    'type': '`\$STRING`',
                    'kind': 'header',
                  },
                ],
              },
              'select': <String, dynamic>{
                'exist': <dynamic>[
                  'authorization',
                ],
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
          'title': 'App Name',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'buildDate',
          'title': 'Build Date',
          'type': '`\$STRING`',
        },
        <String, dynamic>{
          'name': 'version',
          'title': 'Version',
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
              'kind': 'http',
              'method': 'GET',
              'orig': '/version',
              'segments': <dynamic>[
                <String, dynamic>{
                  'lit': 'version',
                },
              ],
              'parts': <dynamic>[
                'version',
              ],
              'rename': <String, dynamic>{},
              'transform': <String, dynamic>{
                'req': '`reqdata`',
                'res': '`body`',
              },
              'args': <String, dynamic>{},
              'select': <String, dynamic>{},
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

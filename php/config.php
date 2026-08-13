<?php
declare(strict_types=1);

// BluefinTecsUserBackoffice SDK configuration

class BluefinTecsUserBackofficeConfig
{
    public static function make_config(): array
    {
        return [
            "main" => [
                "name" => "BluefinTecsUserBackoffice",
            ],
            "feature" => [
                "test" => [
          'options' => [
            'active' => false,
          ],
        ],
            ],
            "options" => [
                "base" => "https://test.tecs.at/usermanagement-backofficews",
                "auth" => [
                    "prefix" => "Bearer",
                ],
                "headers" => [
          'content-type' => 'application/json',
        ],
                "entity" => [
                    "output_activate_digital_module" => [],
                    "output_activate_portal_module" => [],
                    "output_activate_store_module" => [],
                    "output_activate_user" => [],
                    "output_assign_role" => [],
                    "output_change_logo" => [],
                    "output_create_mandator" => [],
                    "output_create_service_user" => [],
                    "output_deactivate_user" => [],
                    "output_get_kyc_document" => [],
                    "output_get_logo" => [],
                    "output_list_of_available_role" => [],
                    "output_list_of_mandator" => [],
                    "output_list_of_module" => [],
                    "output_list_of_role_group" => [],
                    "output_list_of_transactions_history" => [],
                    "output_list_of_user" => [],
                    "output_provide_credential" => [],
                    "output_register_user" => [],
                    "output_remove_role" => [],
                    "output_resend_link" => [],
                    "output_reset_password" => [],
                    "output_update_consumer" => [],
                    "output_update_profile" => [],
                    "version" => [],
                ],
            ],
            "entity" => [
        'output_activate_digital_module' => [
          'fields' => [
            [
              'active' => true,
              'name' => 'responseCode',
              'req' => false,
              'type' => '`$INTEGER`',
              'index$' => 0,
            ],
            [
              'active' => true,
              'name' => 'responseMessage',
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 1,
            ],
          ],
          'name' => 'output_activate_digital_module',
          'op' => [
            'create' => [
              'input' => 'data',
              'name' => 'create',
              'points' => [
                [
                  'active' => true,
                  'args' => [
                    'header' => [
                      [
                        'active' => true,
                        'kind' => 'header',
                        'name' => 'authorization',
                        'orig' => 'authorization',
                        'reqd' => true,
                        'type' => '`$STRING`',
                      ],
                    ],
                  ],
                  'kind' => 'http',
                  'method' => 'POST',
                  'orig' => '/activateDigitalModule',
                  'parts' => [
                    'activateDigitalModule',
                  ],
                  'select' => [
                    'exist' => [
                      'authorization',
                    ],
                  ],
                  'transform' => [
                    'req' => '`reqdata`',
                    'res' => '`body`',
                  ],
                  'index$' => 0,
                ],
              ],
              'key$' => 'create',
            ],
          ],
          'relations' => [
            'ancestors' => [],
          ],
        ],
        'output_activate_portal_module' => [
          'fields' => [
            [
              'active' => true,
              'name' => 'clientSecret',
              'req' => true,
              'type' => '`$STRING`',
              'index$' => 0,
            ],
            [
              'active' => true,
              'name' => 'notificationEmail',
              'req' => true,
              'type' => '`$STRING`',
              'index$' => 1,
            ],
            [
              'active' => true,
              'name' => 'responseCode',
              'req' => false,
              'type' => '`$INTEGER`',
              'index$' => 2,
            ],
            [
              'active' => true,
              'name' => 'responseMessage',
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 3,
            ],
          ],
          'name' => 'output_activate_portal_module',
          'op' => [
            'create' => [
              'input' => 'data',
              'name' => 'create',
              'points' => [
                [
                  'active' => true,
                  'args' => [
                    'header' => [
                      [
                        'active' => true,
                        'kind' => 'header',
                        'name' => 'authorization',
                        'orig' => 'authorization',
                        'reqd' => true,
                        'type' => '`$STRING`',
                      ],
                    ],
                  ],
                  'kind' => 'http',
                  'method' => 'POST',
                  'orig' => '/activateMerchantPortalModule',
                  'parts' => [
                    'activateMerchantPortalModule',
                  ],
                  'select' => [
                    'exist' => [
                      'authorization',
                    ],
                  ],
                  'transform' => [
                    'req' => '`reqdata`',
                    'res' => '`body`',
                  ],
                  'index$' => 0,
                ],
              ],
              'key$' => 'create',
            ],
          ],
          'relations' => [
            'ancestors' => [],
          ],
        ],
        'output_activate_store_module' => [
          'fields' => [
            [
              'active' => true,
              'name' => 'responseCode',
              'req' => false,
              'type' => '`$INTEGER`',
              'index$' => 0,
            ],
            [
              'active' => true,
              'name' => 'responseMessage',
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 1,
            ],
          ],
          'name' => 'output_activate_store_module',
          'op' => [
            'create' => [
              'input' => 'data',
              'name' => 'create',
              'points' => [
                [
                  'active' => true,
                  'args' => [
                    'header' => [
                      [
                        'active' => true,
                        'kind' => 'header',
                        'name' => 'authorization',
                        'orig' => 'authorization',
                        'reqd' => true,
                        'type' => '`$STRING`',
                      ],
                    ],
                  ],
                  'kind' => 'http',
                  'method' => 'POST',
                  'orig' => '/activateAppStoreModule',
                  'parts' => [
                    'activateAppStoreModule',
                  ],
                  'select' => [
                    'exist' => [
                      'authorization',
                    ],
                  ],
                  'transform' => [
                    'req' => '`reqdata`',
                    'res' => '`body`',
                  ],
                  'index$' => 0,
                ],
              ],
              'key$' => 'create',
            ],
          ],
          'relations' => [
            'ancestors' => [],
          ],
        ],
        'output_activate_user' => [
          'fields' => [
            [
              'active' => true,
              'name' => 'consumerUUID',
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 0,
            ],
            [
              'active' => true,
              'name' => 'responseCode',
              'req' => false,
              'type' => '`$INTEGER`',
              'index$' => 1,
            ],
            [
              'active' => true,
              'name' => 'responseMessage',
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 2,
            ],
          ],
          'name' => 'output_activate_user',
          'op' => [
            'create' => [
              'input' => 'data',
              'name' => 'create',
              'points' => [
                [
                  'active' => true,
                  'args' => [
                    'header' => [
                      [
                        'active' => true,
                        'kind' => 'header',
                        'name' => 'authorization',
                        'orig' => 'authorization',
                        'reqd' => true,
                        'type' => '`$STRING`',
                      ],
                    ],
                  ],
                  'kind' => 'http',
                  'method' => 'POST',
                  'orig' => '/activateUser',
                  'parts' => [
                    'activateUser',
                  ],
                  'select' => [
                    'exist' => [
                      'authorization',
                    ],
                  ],
                  'transform' => [
                    'req' => '`reqdata`',
                    'res' => '`body`',
                  ],
                  'index$' => 0,
                ],
              ],
              'key$' => 'create',
            ],
          ],
          'relations' => [
            'ancestors' => [],
          ],
        ],
        'output_assign_role' => [
          'fields' => [
            [
              'active' => true,
              'name' => 'consumerUUID',
              'req' => true,
              'type' => '`$STRING`',
              'index$' => 0,
            ],
            [
              'active' => true,
              'name' => 'responseCode',
              'req' => false,
              'type' => '`$INTEGER`',
              'index$' => 1,
            ],
            [
              'active' => true,
              'name' => 'responseMessage',
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 2,
            ],
            [
              'active' => true,
              'name' => 'roles',
              'req' => true,
              'type' => '`$ARRAY`',
              'index$' => 3,
            ],
          ],
          'name' => 'output_assign_role',
          'op' => [
            'create' => [
              'input' => 'data',
              'name' => 'create',
              'points' => [
                [
                  'active' => true,
                  'args' => [
                    'header' => [
                      [
                        'active' => true,
                        'kind' => 'header',
                        'name' => 'authorization',
                        'orig' => 'authorization',
                        'reqd' => true,
                        'type' => '`$STRING`',
                      ],
                    ],
                  ],
                  'kind' => 'http',
                  'method' => 'POST',
                  'orig' => '/assignRoles',
                  'parts' => [
                    'assignRoles',
                  ],
                  'select' => [
                    'exist' => [
                      'authorization',
                    ],
                  ],
                  'transform' => [
                    'req' => '`reqdata`',
                    'res' => '`body`',
                  ],
                  'index$' => 0,
                ],
              ],
              'key$' => 'create',
            ],
          ],
          'relations' => [
            'ancestors' => [],
          ],
        ],
        'output_change_logo' => [
          'fields' => [
            [
              'active' => true,
              'name' => 'contentAsBase64',
              'req' => true,
              'type' => '`$STRING`',
              'index$' => 0,
            ],
            [
              'active' => true,
              'name' => 'mimeType',
              'req' => true,
              'type' => '`$STRING`',
              'index$' => 1,
            ],
            [
              'active' => true,
              'name' => 'responseCode',
              'req' => false,
              'type' => '`$INTEGER`',
              'index$' => 2,
            ],
            [
              'active' => true,
              'name' => 'responseMessage',
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 3,
            ],
          ],
          'name' => 'output_change_logo',
          'op' => [
            'create' => [
              'input' => 'data',
              'name' => 'create',
              'points' => [
                [
                  'active' => true,
                  'args' => [
                    'header' => [
                      [
                        'active' => true,
                        'kind' => 'header',
                        'name' => 'authorization',
                        'orig' => 'authorization',
                        'reqd' => true,
                        'type' => '`$STRING`',
                      ],
                    ],
                  ],
                  'kind' => 'http',
                  'method' => 'POST',
                  'orig' => '/changeLogo',
                  'parts' => [
                    'changeLogo',
                  ],
                  'select' => [
                    'exist' => [
                      'authorization',
                    ],
                  ],
                  'transform' => [
                    'req' => '`reqdata`',
                    'res' => '`body`',
                  ],
                  'index$' => 0,
                ],
              ],
              'key$' => 'create',
            ],
          ],
          'relations' => [
            'ancestors' => [],
          ],
        ],
        'output_create_mandator' => [
          'fields' => [
            [
              'active' => true,
              'name' => 'city',
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 0,
            ],
            [
              'active' => true,
              'name' => 'country',
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 1,
            ],
            [
              'active' => true,
              'name' => 'dateOfBirth',
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 2,
            ],
            [
              'active' => true,
              'name' => 'description',
              'op' => [
                'create' => [
                  'req' => true,
                  'type' => '`$STRING`',
                ],
              ],
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 3,
            ],
            [
              'active' => true,
              'name' => 'driversLicenseNumber',
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 4,
            ],
            [
              'active' => true,
              'name' => 'email',
              'req' => true,
              'type' => '`$STRING`',
              'index$' => 5,
            ],
            [
              'active' => true,
              'name' => 'firstName',
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 6,
            ],
            [
              'active' => true,
              'name' => 'identificationNumber',
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 7,
            ],
            [
              'active' => true,
              'name' => 'lastName',
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 8,
            ],
            [
              'active' => true,
              'name' => 'login',
              'req' => true,
              'type' => '`$STRING`',
              'index$' => 9,
            ],
            [
              'active' => true,
              'name' => 'name',
              'op' => [
                'create' => [
                  'req' => true,
                  'type' => '`$STRING`',
                ],
              ],
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 10,
            ],
            [
              'active' => true,
              'name' => 'passportNumber',
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 11,
            ],
            [
              'active' => true,
              'name' => 'phone',
              'req' => true,
              'type' => '`$STRING`',
              'index$' => 12,
            ],
            [
              'active' => true,
              'name' => 'salutation',
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 13,
            ],
            [
              'active' => true,
              'name' => 'state',
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 14,
            ],
            [
              'active' => true,
              'name' => 'street1',
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 15,
            ],
            [
              'active' => true,
              'name' => 'street2',
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 16,
            ],
            [
              'active' => true,
              'name' => 'zipCode',
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 17,
            ],
          ],
          'name' => 'output_create_mandator',
          'op' => [
            'create' => [
              'input' => 'data',
              'name' => 'create',
              'points' => [
                [
                  'active' => true,
                  'args' => [
                    'header' => [
                      [
                        'active' => true,
                        'kind' => 'header',
                        'name' => 'authorization',
                        'orig' => 'authorization',
                        'reqd' => true,
                        'type' => '`$STRING`',
                      ],
                    ],
                  ],
                  'kind' => 'http',
                  'method' => 'POST',
                  'orig' => '/createMandator',
                  'parts' => [
                    'createMandator',
                  ],
                  'select' => [
                    'exist' => [
                      'authorization',
                    ],
                  ],
                  'transform' => [
                    'req' => '`reqdata`',
                    'res' => '`body`',
                  ],
                  'index$' => 0,
                ],
              ],
              'key$' => 'create',
            ],
          ],
          'relations' => [
            'ancestors' => [],
          ],
        ],
        'output_create_service_user' => [
          'fields' => [
            [
              'active' => true,
              'name' => 'mandatorName',
              'req' => true,
              'type' => '`$STRING`',
              'index$' => 0,
            ],
            [
              'active' => true,
              'name' => 'responseCode',
              'req' => false,
              'type' => '`$INTEGER`',
              'index$' => 1,
            ],
            [
              'active' => true,
              'name' => 'responseMessage',
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 2,
            ],
          ],
          'name' => 'output_create_service_user',
          'op' => [
            'create' => [
              'input' => 'data',
              'name' => 'create',
              'points' => [
                [
                  'active' => true,
                  'args' => [
                    'header' => [
                      [
                        'active' => true,
                        'kind' => 'header',
                        'name' => 'authorization',
                        'orig' => 'authorization',
                        'reqd' => true,
                        'type' => '`$STRING`',
                      ],
                    ],
                  ],
                  'kind' => 'http',
                  'method' => 'POST',
                  'orig' => '/createServiceUser',
                  'parts' => [
                    'createServiceUser',
                  ],
                  'select' => [
                    'exist' => [
                      'authorization',
                    ],
                  ],
                  'transform' => [
                    'req' => '`reqdata`',
                    'res' => '`body`',
                  ],
                  'index$' => 0,
                ],
              ],
              'key$' => 'create',
            ],
          ],
          'relations' => [
            'ancestors' => [],
          ],
        ],
        'output_deactivate_user' => [
          'fields' => [
            [
              'active' => true,
              'name' => 'consumerUUID',
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 0,
            ],
            [
              'active' => true,
              'name' => 'responseCode',
              'req' => false,
              'type' => '`$INTEGER`',
              'index$' => 1,
            ],
            [
              'active' => true,
              'name' => 'responseMessage',
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 2,
            ],
          ],
          'name' => 'output_deactivate_user',
          'op' => [
            'create' => [
              'input' => 'data',
              'name' => 'create',
              'points' => [
                [
                  'active' => true,
                  'args' => [
                    'header' => [
                      [
                        'active' => true,
                        'kind' => 'header',
                        'name' => 'authorization',
                        'orig' => 'authorization',
                        'reqd' => true,
                        'type' => '`$STRING`',
                      ],
                    ],
                  ],
                  'kind' => 'http',
                  'method' => 'POST',
                  'orig' => '/deactivateUser',
                  'parts' => [
                    'deactivateUser',
                  ],
                  'select' => [
                    'exist' => [
                      'authorization',
                    ],
                  ],
                  'transform' => [
                    'req' => '`reqdata`',
                    'res' => '`body`',
                  ],
                  'index$' => 0,
                ],
              ],
              'key$' => 'create',
            ],
          ],
          'relations' => [
            'ancestors' => [],
          ],
        ],
        'output_get_kyc_document' => [
          'fields' => [
            [
              'active' => true,
              'name' => 'caseID',
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 0,
            ],
            [
              'active' => true,
              'name' => 'encodedDataBase64',
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 1,
            ],
            [
              'active' => true,
              'name' => 'responseCode',
              'req' => false,
              'type' => '`$INTEGER`',
              'index$' => 2,
            ],
            [
              'active' => true,
              'name' => 'responseMessage',
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 3,
            ],
          ],
          'name' => 'output_get_kyc_document',
          'op' => [
            'create' => [
              'input' => 'data',
              'name' => 'create',
              'points' => [
                [
                  'active' => true,
                  'args' => [
                    'header' => [
                      [
                        'active' => true,
                        'kind' => 'header',
                        'name' => 'authorization',
                        'orig' => 'authorization',
                        'reqd' => true,
                        'type' => '`$STRING`',
                      ],
                    ],
                  ],
                  'kind' => 'http',
                  'method' => 'POST',
                  'orig' => '/getKycDocument',
                  'parts' => [
                    'getKycDocument',
                  ],
                  'select' => [
                    'exist' => [
                      'authorization',
                    ],
                  ],
                  'transform' => [
                    'req' => '`reqdata`',
                    'res' => '`body`',
                  ],
                  'index$' => 0,
                ],
              ],
              'key$' => 'create',
            ],
          ],
          'relations' => [
            'ancestors' => [],
          ],
        ],
        'output_get_logo' => [
          'fields' => [
            [
              'active' => true,
              'name' => 'contentAsBase64',
              'req' => true,
              'type' => '`$STRING`',
              'index$' => 0,
            ],
            [
              'active' => true,
              'name' => 'mimeType',
              'req' => true,
              'type' => '`$STRING`',
              'index$' => 1,
            ],
            [
              'active' => true,
              'name' => 'responseCode',
              'req' => false,
              'type' => '`$INTEGER`',
              'index$' => 2,
            ],
            [
              'active' => true,
              'name' => 'responseMessage',
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 3,
            ],
          ],
          'name' => 'output_get_logo',
          'op' => [
            'load' => [
              'input' => 'data',
              'name' => 'load',
              'points' => [
                [
                  'active' => true,
                  'args' => [
                    'header' => [
                      [
                        'active' => true,
                        'kind' => 'header',
                        'name' => 'authorization',
                        'orig' => 'authorization',
                        'reqd' => true,
                        'type' => '`$STRING`',
                      ],
                    ],
                  ],
                  'kind' => 'http',
                  'method' => 'GET',
                  'orig' => '/getLogo',
                  'parts' => [
                    'getLogo',
                  ],
                  'select' => [
                    'exist' => [
                      'authorization',
                    ],
                  ],
                  'transform' => [
                    'req' => '`reqdata`',
                    'res' => '`body`',
                  ],
                  'index$' => 0,
                ],
              ],
              'key$' => 'load',
            ],
          ],
          'relations' => [
            'ancestors' => [],
          ],
        ],
        'output_list_of_available_role' => [
          'fields' => [
            [
              'active' => true,
              'name' => 'availableRoles',
              'req' => false,
              'type' => '`$ARRAY`',
              'index$' => 0,
            ],
            [
              'active' => true,
              'name' => 'responseCode',
              'req' => false,
              'type' => '`$INTEGER`',
              'index$' => 1,
            ],
            [
              'active' => true,
              'name' => 'responseMessage',
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 2,
            ],
          ],
          'name' => 'output_list_of_available_role',
          'op' => [
            'create' => [
              'input' => 'data',
              'name' => 'create',
              'points' => [
                [
                  'active' => true,
                  'args' => [
                    'header' => [
                      [
                        'active' => true,
                        'kind' => 'header',
                        'name' => 'authorization',
                        'orig' => 'authorization',
                        'reqd' => true,
                        'type' => '`$STRING`',
                      ],
                    ],
                  ],
                  'kind' => 'http',
                  'method' => 'POST',
                  'orig' => '/listOfAvailableRoles',
                  'parts' => [
                    'listOfAvailableRoles',
                  ],
                  'select' => [
                    'exist' => [
                      'authorization',
                    ],
                  ],
                  'transform' => [
                    'req' => '`reqdata`',
                    'res' => '`body`',
                  ],
                  'index$' => 0,
                ],
              ],
              'key$' => 'create',
            ],
          ],
          'relations' => [
            'ancestors' => [],
          ],
        ],
        'output_list_of_mandator' => [
          'fields' => [
            [
              'active' => true,
              'name' => 'filter',
              'req' => false,
              'type' => '`$OBJECT`',
              'index$' => 0,
            ],
            [
              'active' => true,
              'name' => 'list',
              'req' => false,
              'type' => '`$ARRAY`',
              'index$' => 1,
            ],
            [
              'active' => true,
              'name' => 'pagination',
              'req' => false,
              'type' => '`$OBJECT`',
              'index$' => 2,
            ],
            [
              'active' => true,
              'name' => 'responseCode',
              'req' => false,
              'type' => '`$INTEGER`',
              'index$' => 3,
            ],
            [
              'active' => true,
              'name' => 'responseMessage',
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 4,
            ],
            [
              'active' => true,
              'name' => 'sorting',
              'req' => false,
              'type' => '`$OBJECT`',
              'index$' => 5,
            ],
          ],
          'name' => 'output_list_of_mandator',
          'op' => [
            'create' => [
              'input' => 'data',
              'name' => 'create',
              'points' => [
                [
                  'active' => true,
                  'args' => [
                    'header' => [
                      [
                        'active' => true,
                        'kind' => 'header',
                        'name' => 'authorization',
                        'orig' => 'authorization',
                        'reqd' => true,
                        'type' => '`$STRING`',
                      ],
                    ],
                  ],
                  'kind' => 'http',
                  'method' => 'POST',
                  'orig' => '/listOfMandators',
                  'parts' => [
                    'listOfMandators',
                  ],
                  'select' => [
                    'exist' => [
                      'authorization',
                    ],
                  ],
                  'transform' => [
                    'req' => '`reqdata`',
                    'res' => '`body`',
                  ],
                  'index$' => 0,
                ],
              ],
              'key$' => 'create',
            ],
          ],
          'relations' => [
            'ancestors' => [],
          ],
        ],
        'output_list_of_module' => [
          'fields' => [
            [
              'active' => true,
              'name' => 'list',
              'req' => false,
              'type' => '`$ARRAY`',
              'index$' => 0,
            ],
            [
              'active' => true,
              'name' => 'pagination',
              'req' => false,
              'type' => '`$OBJECT`',
              'index$' => 1,
            ],
            [
              'active' => true,
              'name' => 'responseCode',
              'req' => false,
              'type' => '`$INTEGER`',
              'index$' => 2,
            ],
            [
              'active' => true,
              'name' => 'responseMessage',
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 3,
            ],
          ],
          'name' => 'output_list_of_module',
          'op' => [
            'create' => [
              'input' => 'data',
              'name' => 'create',
              'points' => [
                [
                  'active' => true,
                  'args' => [
                    'header' => [
                      [
                        'active' => true,
                        'kind' => 'header',
                        'name' => 'authorization',
                        'orig' => 'authorization',
                        'reqd' => true,
                        'type' => '`$STRING`',
                      ],
                    ],
                  ],
                  'kind' => 'http',
                  'method' => 'POST',
                  'orig' => '/listOfModules',
                  'parts' => [
                    'listOfModules',
                  ],
                  'select' => [
                    'exist' => [
                      'authorization',
                    ],
                  ],
                  'transform' => [
                    'req' => '`reqdata`',
                    'res' => '`body`',
                  ],
                  'index$' => 0,
                ],
              ],
              'key$' => 'create',
            ],
          ],
          'relations' => [
            'ancestors' => [],
          ],
        ],
        'output_list_of_role_group' => [
          'fields' => [
            [
              'active' => true,
              'name' => 'filter',
              'req' => false,
              'type' => '`$OBJECT`',
              'index$' => 0,
            ],
            [
              'active' => true,
              'name' => 'groupRoles',
              'req' => false,
              'type' => '`$ARRAY`',
              'index$' => 1,
            ],
            [
              'active' => true,
              'name' => 'pagination',
              'req' => false,
              'type' => '`$OBJECT`',
              'index$' => 2,
            ],
            [
              'active' => true,
              'name' => 'responseCode',
              'req' => false,
              'type' => '`$INTEGER`',
              'index$' => 3,
            ],
            [
              'active' => true,
              'name' => 'responseMessage',
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 4,
            ],
            [
              'active' => true,
              'name' => 'sorting',
              'req' => false,
              'type' => '`$OBJECT`',
              'index$' => 5,
            ],
          ],
          'name' => 'output_list_of_role_group',
          'op' => [
            'create' => [
              'input' => 'data',
              'name' => 'create',
              'points' => [
                [
                  'active' => true,
                  'args' => [
                    'header' => [
                      [
                        'active' => true,
                        'kind' => 'header',
                        'name' => 'authorization',
                        'orig' => 'authorization',
                        'reqd' => true,
                        'type' => '`$STRING`',
                      ],
                    ],
                  ],
                  'kind' => 'http',
                  'method' => 'POST',
                  'orig' => '/listOfRoleGroups',
                  'parts' => [
                    'listOfRoleGroups',
                  ],
                  'select' => [
                    'exist' => [
                      'authorization',
                    ],
                  ],
                  'transform' => [
                    'req' => '`reqdata`',
                    'res' => '`body`',
                  ],
                  'index$' => 0,
                ],
              ],
              'key$' => 'create',
            ],
          ],
          'relations' => [
            'ancestors' => [],
          ],
        ],
        'output_list_of_transactions_history' => [
          'fields' => [
            [
              'active' => true,
              'name' => 'filter',
              'req' => false,
              'type' => '`$OBJECT`',
              'index$' => 0,
            ],
            [
              'active' => true,
              'name' => 'list',
              'req' => false,
              'type' => '`$ARRAY`',
              'index$' => 1,
            ],
            [
              'active' => true,
              'name' => 'pagination',
              'req' => false,
              'type' => '`$OBJECT`',
              'index$' => 2,
            ],
            [
              'active' => true,
              'name' => 'responseCode',
              'req' => false,
              'type' => '`$INTEGER`',
              'index$' => 3,
            ],
            [
              'active' => true,
              'name' => 'responseMessage',
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 4,
            ],
            [
              'active' => true,
              'name' => 'sorting',
              'req' => false,
              'type' => '`$OBJECT`',
              'index$' => 5,
            ],
          ],
          'name' => 'output_list_of_transactions_history',
          'op' => [
            'create' => [
              'input' => 'data',
              'name' => 'create',
              'points' => [
                [
                  'active' => true,
                  'args' => [
                    'header' => [
                      [
                        'active' => true,
                        'kind' => 'header',
                        'name' => 'authorization',
                        'orig' => 'authorization',
                        'reqd' => true,
                        'type' => '`$STRING`',
                      ],
                    ],
                  ],
                  'kind' => 'http',
                  'method' => 'POST',
                  'orig' => '/listOfTransactionsHistory',
                  'parts' => [
                    'listOfTransactionsHistory',
                  ],
                  'select' => [
                    'exist' => [
                      'authorization',
                    ],
                  ],
                  'transform' => [
                    'req' => '`reqdata`',
                    'res' => '`body`',
                  ],
                  'index$' => 0,
                ],
              ],
              'key$' => 'create',
            ],
          ],
          'relations' => [
            'ancestors' => [],
          ],
        ],
        'output_list_of_user' => [
          'fields' => [
            [
              'active' => true,
              'name' => 'filter',
              'req' => false,
              'type' => '`$OBJECT`',
              'index$' => 0,
            ],
            [
              'active' => true,
              'name' => 'list',
              'req' => false,
              'type' => '`$ARRAY`',
              'index$' => 1,
            ],
            [
              'active' => true,
              'name' => 'pagination',
              'req' => false,
              'type' => '`$OBJECT`',
              'index$' => 2,
            ],
            [
              'active' => true,
              'name' => 'responseCode',
              'req' => false,
              'type' => '`$INTEGER`',
              'index$' => 3,
            ],
            [
              'active' => true,
              'name' => 'responseMessage',
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 4,
            ],
            [
              'active' => true,
              'name' => 'sorting',
              'req' => false,
              'type' => '`$OBJECT`',
              'index$' => 5,
            ],
          ],
          'name' => 'output_list_of_user',
          'op' => [
            'create' => [
              'input' => 'data',
              'name' => 'create',
              'points' => [
                [
                  'active' => true,
                  'args' => [
                    'header' => [
                      [
                        'active' => true,
                        'kind' => 'header',
                        'name' => 'authorization',
                        'orig' => 'authorization',
                        'reqd' => true,
                        'type' => '`$STRING`',
                      ],
                    ],
                  ],
                  'kind' => 'http',
                  'method' => 'POST',
                  'orig' => '/listOfUsers',
                  'parts' => [
                    'listOfUsers',
                  ],
                  'select' => [
                    'exist' => [
                      'authorization',
                    ],
                  ],
                  'transform' => [
                    'req' => '`reqdata`',
                    'res' => '`body`',
                  ],
                  'index$' => 0,
                ],
              ],
              'key$' => 'create',
            ],
          ],
          'relations' => [
            'ancestors' => [],
          ],
        ],
        'output_provide_credential' => [
          'fields' => [
            [
              'active' => true,
              'name' => 'mandatorName',
              'req' => true,
              'type' => '`$STRING`',
              'index$' => 0,
            ],
            [
              'active' => true,
              'name' => 'password',
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 1,
            ],
            [
              'active' => true,
              'name' => 'responseCode',
              'req' => false,
              'type' => '`$INTEGER`',
              'index$' => 2,
            ],
            [
              'active' => true,
              'name' => 'responseMessage',
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 3,
            ],
            [
              'active' => true,
              'name' => 'username',
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 4,
            ],
          ],
          'name' => 'output_provide_credential',
          'op' => [
            'create' => [
              'input' => 'data',
              'name' => 'create',
              'points' => [
                [
                  'active' => true,
                  'args' => [
                    'header' => [
                      [
                        'active' => true,
                        'kind' => 'header',
                        'name' => 'authorization',
                        'orig' => 'authorization',
                        'reqd' => true,
                        'type' => '`$STRING`',
                      ],
                    ],
                  ],
                  'kind' => 'http',
                  'method' => 'POST',
                  'orig' => '/provideCredentials',
                  'parts' => [
                    'provideCredentials',
                  ],
                  'select' => [
                    'exist' => [
                      'authorization',
                    ],
                  ],
                  'transform' => [
                    'req' => '`reqdata`',
                    'res' => '`body`',
                  ],
                  'index$' => 0,
                ],
              ],
              'key$' => 'create',
            ],
          ],
          'relations' => [
            'ancestors' => [],
          ],
        ],
        'output_register_user' => [
          'fields' => [
            [
              'active' => true,
              'name' => 'city',
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 0,
            ],
            [
              'active' => true,
              'name' => 'consumerId',
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 1,
            ],
            [
              'active' => true,
              'name' => 'consumerLanguage',
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 2,
            ],
            [
              'active' => true,
              'name' => 'country',
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 3,
            ],
            [
              'active' => true,
              'name' => 'dateOfBirth',
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 4,
            ],
            [
              'active' => true,
              'name' => 'driverLicenceNumber',
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 5,
            ],
            [
              'active' => true,
              'name' => 'email',
              'req' => true,
              'type' => '`$STRING`',
              'index$' => 6,
            ],
            [
              'active' => true,
              'name' => 'firstName',
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 7,
            ],
            [
              'active' => true,
              'name' => 'identificationNumber',
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 8,
            ],
            [
              'active' => true,
              'name' => 'lastName',
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 9,
            ],
            [
              'active' => true,
              'name' => 'login',
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 10,
            ],
            [
              'active' => true,
              'name' => 'module',
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 11,
            ],
            [
              'active' => true,
              'name' => 'passportNumber',
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 12,
            ],
            [
              'active' => true,
              'name' => 'phone',
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 13,
            ],
            [
              'active' => true,
              'name' => 'responseCode',
              'req' => false,
              'type' => '`$INTEGER`',
              'index$' => 14,
            ],
            [
              'active' => true,
              'name' => 'responseMessage',
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 15,
            ],
            [
              'active' => true,
              'name' => 'salutation',
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 16,
            ],
            [
              'active' => true,
              'name' => 'state',
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 17,
            ],
            [
              'active' => true,
              'name' => 'street1',
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 18,
            ],
            [
              'active' => true,
              'name' => 'street2',
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 19,
            ],
            [
              'active' => true,
              'name' => 'zip',
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 20,
            ],
          ],
          'name' => 'output_register_user',
          'op' => [
            'create' => [
              'input' => 'data',
              'name' => 'create',
              'points' => [
                [
                  'active' => true,
                  'args' => [
                    'header' => [
                      [
                        'active' => true,
                        'kind' => 'header',
                        'name' => 'authorization',
                        'orig' => 'authorization',
                        'reqd' => true,
                        'type' => '`$STRING`',
                      ],
                    ],
                  ],
                  'kind' => 'http',
                  'method' => 'POST',
                  'orig' => '/registerUser',
                  'parts' => [
                    'registerUser',
                  ],
                  'select' => [
                    'exist' => [
                      'authorization',
                    ],
                  ],
                  'transform' => [
                    'req' => '`reqdata`',
                    'res' => '`body`',
                  ],
                  'index$' => 0,
                ],
              ],
              'key$' => 'create',
            ],
          ],
          'relations' => [
            'ancestors' => [],
          ],
        ],
        'output_remove_role' => [
          'fields' => [
            [
              'active' => true,
              'name' => 'consumerUUID',
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 0,
            ],
            [
              'active' => true,
              'name' => 'responseCode',
              'req' => false,
              'type' => '`$INTEGER`',
              'index$' => 1,
            ],
            [
              'active' => true,
              'name' => 'responseMessage',
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 2,
            ],
            [
              'active' => true,
              'name' => 'roles',
              'req' => false,
              'type' => '`$ARRAY`',
              'index$' => 3,
            ],
          ],
          'name' => 'output_remove_role',
          'op' => [
            'create' => [
              'input' => 'data',
              'name' => 'create',
              'points' => [
                [
                  'active' => true,
                  'args' => [
                    'header' => [
                      [
                        'active' => true,
                        'kind' => 'header',
                        'name' => 'authorization',
                        'orig' => 'authorization',
                        'reqd' => true,
                        'type' => '`$STRING`',
                      ],
                    ],
                  ],
                  'kind' => 'http',
                  'method' => 'POST',
                  'orig' => '/removeRoles',
                  'parts' => [
                    'removeRoles',
                  ],
                  'select' => [
                    'exist' => [
                      'authorization',
                    ],
                  ],
                  'transform' => [
                    'req' => '`reqdata`',
                    'res' => '`body`',
                  ],
                  'index$' => 0,
                ],
              ],
              'key$' => 'create',
            ],
          ],
          'relations' => [
            'ancestors' => [],
          ],
        ],
        'output_resend_link' => [
          'fields' => [
            [
              'active' => true,
              'name' => 'businessRegistrationNumber',
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 0,
            ],
            [
              'active' => true,
              'name' => 'consumerUUID',
              'req' => true,
              'type' => '`$STRING`',
              'index$' => 1,
            ],
            [
              'active' => true,
              'name' => 'emailConfirmationCode',
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 2,
            ],
            [
              'active' => true,
              'name' => 'phoneNumber',
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 3,
            ],
            [
              'active' => true,
              'name' => 'responseCode',
              'req' => false,
              'type' => '`$INTEGER`',
              'index$' => 4,
            ],
            [
              'active' => true,
              'name' => 'responseMessage',
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 5,
            ],
          ],
          'name' => 'output_resend_link',
          'op' => [
            'create' => [
              'input' => 'data',
              'name' => 'create',
              'points' => [
                [
                  'active' => true,
                  'args' => [
                    'header' => [
                      [
                        'active' => true,
                        'kind' => 'header',
                        'name' => 'authorization',
                        'orig' => 'authorization',
                        'reqd' => false,
                        'type' => '`$STRING`',
                      ],
                    ],
                  ],
                  'kind' => 'http',
                  'method' => 'POST',
                  'orig' => '/resendLink',
                  'parts' => [
                    'resendLink',
                  ],
                  'select' => [
                    'exist' => [
                      'authorization',
                    ],
                  ],
                  'transform' => [
                    'req' => '`reqdata`',
                    'res' => '`body`',
                  ],
                  'index$' => 0,
                ],
              ],
              'key$' => 'create',
            ],
          ],
          'relations' => [
            'ancestors' => [],
          ],
        ],
        'output_reset_password' => [
          'fields' => [
            [
              'active' => true,
              'name' => 'consumerUuid',
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 0,
            ],
            [
              'active' => true,
              'name' => 'phoneNumber',
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 1,
            ],
            [
              'active' => true,
              'name' => 'responseCode',
              'req' => false,
              'type' => '`$INTEGER`',
              'index$' => 2,
            ],
            [
              'active' => true,
              'name' => 'responseMessage',
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 3,
            ],
          ],
          'name' => 'output_reset_password',
          'op' => [
            'create' => [
              'input' => 'data',
              'name' => 'create',
              'points' => [
                [
                  'active' => true,
                  'args' => [
                    'header' => [
                      [
                        'active' => true,
                        'kind' => 'header',
                        'name' => 'authorization',
                        'orig' => 'authorization',
                        'reqd' => true,
                        'type' => '`$STRING`',
                      ],
                    ],
                  ],
                  'kind' => 'http',
                  'method' => 'POST',
                  'orig' => '/resetPassword',
                  'parts' => [
                    'resetPassword',
                  ],
                  'select' => [
                    'exist' => [
                      'authorization',
                    ],
                  ],
                  'transform' => [
                    'req' => '`reqdata`',
                    'res' => '`body`',
                  ],
                  'index$' => 0,
                ],
              ],
              'key$' => 'create',
            ],
          ],
          'relations' => [
            'ancestors' => [],
          ],
        ],
        'output_update_consumer' => [
          'fields' => [
            [
              'active' => true,
              'name' => 'city',
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 0,
            ],
            [
              'active' => true,
              'name' => 'consumerUuid',
              'req' => true,
              'type' => '`$STRING`',
              'index$' => 1,
            ],
            [
              'active' => true,
              'name' => 'consumerlanguage',
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 2,
            ],
            [
              'active' => true,
              'name' => 'country',
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 3,
            ],
            [
              'active' => true,
              'name' => 'dateOfBirth',
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 4,
            ],
            [
              'active' => true,
              'name' => 'datetime_created',
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 5,
            ],
            [
              'active' => true,
              'name' => 'driverLicenceNumber',
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 6,
            ],
            [
              'active' => true,
              'name' => 'email',
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 7,
            ],
            [
              'active' => true,
              'name' => 'firstName',
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 8,
            ],
            [
              'active' => true,
              'name' => 'identificationNumber',
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 9,
            ],
            [
              'active' => true,
              'name' => 'kycPassed',
              'req' => false,
              'type' => '`$BOOLEAN`',
              'index$' => 10,
            ],
            [
              'active' => true,
              'name' => 'lastName',
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 11,
            ],
            [
              'active' => true,
              'name' => 'nationality',
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 12,
            ],
            [
              'active' => true,
              'name' => 'passportNumber',
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 13,
            ],
            [
              'active' => true,
              'name' => 'phoneNumber',
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 14,
            ],
            [
              'active' => true,
              'name' => 'placeOfBirth',
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 15,
            ],
            [
              'active' => true,
              'name' => 'responseCode',
              'req' => false,
              'type' => '`$INTEGER`',
              'index$' => 16,
            ],
            [
              'active' => true,
              'name' => 'responseMessage',
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 17,
            ],
            [
              'active' => true,
              'name' => 'state',
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 18,
            ],
            [
              'active' => true,
              'name' => 'street1',
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 19,
            ],
            [
              'active' => true,
              'name' => 'street2',
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 20,
            ],
            [
              'active' => true,
              'name' => 'transactionhistory_id',
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 21,
            ],
            [
              'active' => true,
              'name' => 'zip',
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 22,
            ],
          ],
          'name' => 'output_update_consumer',
          'op' => [
            'create' => [
              'input' => 'data',
              'name' => 'create',
              'points' => [
                [
                  'active' => true,
                  'args' => [
                    'header' => [
                      [
                        'active' => true,
                        'kind' => 'header',
                        'name' => 'authorization',
                        'orig' => 'authorization',
                        'reqd' => false,
                        'type' => '`$STRING`',
                      ],
                    ],
                  ],
                  'kind' => 'http',
                  'method' => 'POST',
                  'orig' => '/updateConsumer',
                  'parts' => [
                    'updateConsumer',
                  ],
                  'select' => [
                    'exist' => [
                      'authorization',
                    ],
                  ],
                  'transform' => [
                    'req' => '`reqdata`',
                    'res' => '`body`',
                  ],
                  'index$' => 0,
                ],
              ],
              'key$' => 'create',
            ],
          ],
          'relations' => [
            'ancestors' => [],
          ],
        ],
        'output_update_profile' => [
          'fields' => [
            [
              'active' => true,
              'name' => 'consumerLanguage',
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 0,
            ],
            [
              'active' => true,
              'name' => 'email',
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 1,
            ],
            [
              'active' => true,
              'name' => 'firstName',
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 2,
            ],
            [
              'active' => true,
              'name' => 'lastName',
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 3,
            ],
            [
              'active' => true,
              'name' => 'phoneNumber',
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 4,
            ],
            [
              'active' => true,
              'name' => 'responseCode',
              'req' => false,
              'type' => '`$INTEGER`',
              'index$' => 5,
            ],
            [
              'active' => true,
              'name' => 'responseMessage',
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 6,
            ],
          ],
          'name' => 'output_update_profile',
          'op' => [
            'create' => [
              'input' => 'data',
              'name' => 'create',
              'points' => [
                [
                  'active' => true,
                  'args' => [
                    'header' => [
                      [
                        'active' => true,
                        'kind' => 'header',
                        'name' => 'authorization',
                        'orig' => 'authorization',
                        'reqd' => false,
                        'type' => '`$STRING`',
                      ],
                    ],
                  ],
                  'kind' => 'http',
                  'method' => 'POST',
                  'orig' => '/updateProfile',
                  'parts' => [
                    'updateProfile',
                  ],
                  'select' => [
                    'exist' => [
                      'authorization',
                    ],
                  ],
                  'transform' => [
                    'req' => '`reqdata`',
                    'res' => '`body`',
                  ],
                  'index$' => 0,
                ],
              ],
              'key$' => 'create',
            ],
          ],
          'relations' => [
            'ancestors' => [],
          ],
        ],
        'version' => [
          'fields' => [
            [
              'active' => true,
              'name' => 'appName',
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 0,
            ],
            [
              'active' => true,
              'name' => 'buildDate',
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 1,
            ],
            [
              'active' => true,
              'name' => 'version',
              'req' => false,
              'type' => '`$STRING`',
              'index$' => 2,
            ],
          ],
          'name' => 'version',
          'op' => [
            'load' => [
              'input' => 'data',
              'name' => 'load',
              'points' => [
                [
                  'active' => true,
                  'args' => [],
                  'kind' => 'http',
                  'method' => 'GET',
                  'orig' => '/version',
                  'parts' => [
                    'version',
                  ],
                  'select' => [],
                  'transform' => [
                    'req' => '`reqdata`',
                    'res' => '`body`',
                  ],
                  'index$' => 0,
                ],
              ],
              'key$' => 'load',
            ],
          ],
          'relations' => [
            'ancestors' => [],
          ],
        ],
      ],
        ];
    }


    public static function make_feature(string $name)
    {
        require_once __DIR__ . '/features.php';
        return BluefinTecsUserBackofficeFeatures::make_feature($name);
    }
}

// Typed models for the BluefinTecsUserBackoffice SDK (JSDoc typedefs).
//
// GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
// params (op.<name>.points[].args.params[]). Field/param types come from the
// canonical type sentinels via @voxgig/sdkgen canonToType (source of truth:
// @voxgig/apidef VALID_CANON). Annotations only — no runtime effect. Do not
// edit by hand.

/**
 * @typedef {Object} OutputActivateDigitalModule
 * @property {number} [response_code]
 * @property {string} [response_message]
 */

/**
 * @typedef {Object} OutputActivateDigitalModuleCreateData
 * @property {number} [response_code]
 * @property {string} [response_message]
 */

/**
 * @typedef {Object} OutputActivatePortalModule
 * @property {string} client_secret
 * @property {string} notification_email
 * @property {number} [response_code]
 * @property {string} [response_message]
 */

/**
 * @typedef {Object} OutputActivatePortalModuleCreateData
 * @property {string} client_secret
 * @property {string} notification_email
 * @property {number} [response_code]
 * @property {string} [response_message]
 */

/**
 * @typedef {Object} OutputActivateStoreModule
 * @property {number} [response_code]
 * @property {string} [response_message]
 */

/**
 * @typedef {Object} OutputActivateStoreModuleCreateData
 * @property {number} [response_code]
 * @property {string} [response_message]
 */

/**
 * @typedef {Object} OutputActivateUser
 * @property {string} [consumer_uuid]
 * @property {number} [response_code]
 * @property {string} [response_message]
 */

/**
 * @typedef {Object} OutputActivateUserCreateData
 * @property {string} [consumer_uuid]
 * @property {number} [response_code]
 * @property {string} [response_message]
 */

/**
 * @typedef {Object} OutputAssignRole
 * @property {string} consumer_uuid
 * @property {number} [response_code]
 * @property {string} [response_message]
 * @property {Array} role
 */

/**
 * @typedef {Object} OutputAssignRoleCreateData
 * @property {string} consumer_uuid
 * @property {number} [response_code]
 * @property {string} [response_message]
 * @property {Array} role
 */

/**
 * @typedef {Object} OutputChangeLogo
 * @property {string} content_as_base64
 * @property {string} mime_type
 * @property {number} [response_code]
 * @property {string} [response_message]
 */

/**
 * @typedef {Object} OutputChangeLogoCreateData
 * @property {string} content_as_base64
 * @property {string} mime_type
 * @property {number} [response_code]
 * @property {string} [response_message]
 */

/**
 * @typedef {Object} OutputCreateMandator
 * @property {string} [city]
 * @property {string} [country]
 * @property {string} [date_of_birth]
 * @property {string} description
 * @property {string} [drivers_license_number]
 * @property {string} email
 * @property {string} [first_name]
 * @property {string} [identification_number]
 * @property {string} [last_name]
 * @property {string} login
 * @property {Object} [mandator]
 * @property {string} name
 * @property {string} [passport_number]
 * @property {string} phone
 * @property {number} [response_code]
 * @property {string} [response_message]
 * @property {string} [salutation]
 * @property {string} [state]
 * @property {string} [street1]
 * @property {string} [street2]
 * @property {string} [zip_code]
 */

/**
 * @typedef {Object} OutputCreateMandatorCreateData
 * @property {string} [city]
 * @property {string} [country]
 * @property {string} [date_of_birth]
 * @property {string} description
 * @property {string} [drivers_license_number]
 * @property {string} email
 * @property {string} [first_name]
 * @property {string} [identification_number]
 * @property {string} [last_name]
 * @property {string} login
 * @property {Object} [mandator]
 * @property {string} name
 * @property {string} [passport_number]
 * @property {string} phone
 * @property {number} [response_code]
 * @property {string} [response_message]
 * @property {string} [salutation]
 * @property {string} [state]
 * @property {string} [street1]
 * @property {string} [street2]
 * @property {string} [zip_code]
 */

/**
 * @typedef {Object} OutputCreateServiceUser
 * @property {string} mandator_name
 * @property {number} [response_code]
 * @property {string} [response_message]
 */

/**
 * @typedef {Object} OutputCreateServiceUserCreateData
 * @property {string} mandator_name
 * @property {number} [response_code]
 * @property {string} [response_message]
 */

/**
 * @typedef {Object} OutputDeactivateUser
 * @property {string} [consumer_uuid]
 * @property {number} [response_code]
 * @property {string} [response_message]
 */

/**
 * @typedef {Object} OutputDeactivateUserCreateData
 * @property {string} [consumer_uuid]
 * @property {number} [response_code]
 * @property {string} [response_message]
 */

/**
 * @typedef {Object} OutputGetKycDocument
 * @property {string} [case_id]
 * @property {string} [encoded_data_base64]
 * @property {number} [response_code]
 * @property {string} [response_message]
 */

/**
 * @typedef {Object} OutputGetKycDocumentCreateData
 * @property {string} [case_id]
 * @property {string} [encoded_data_base64]
 * @property {number} [response_code]
 * @property {string} [response_message]
 */

/**
 * @typedef {Object} OutputGetLogo
 * @property {string} content_as_base64
 * @property {string} mime_type
 * @property {number} [response_code]
 * @property {string} [response_message]
 */

/**
 * @typedef {Object} OutputGetLogoLoadMatch
 * @property {string} [content_as_base64]
 * @property {string} [mime_type]
 * @property {number} [response_code]
 * @property {string} [response_message]
 */

/**
 * @typedef {Object} OutputListOfAvailableRole
 * @property {Array} [available_role]
 * @property {number} [response_code]
 * @property {string} [response_message]
 */

/**
 * @typedef {Object} OutputListOfAvailableRoleCreateData
 * @property {Array} [available_role]
 * @property {number} [response_code]
 * @property {string} [response_message]
 */

/**
 * @typedef {Object} OutputListOfMandator
 * @property {Object} [filter]
 * @property {Array} [list]
 * @property {Object} [pagination]
 * @property {number} [response_code]
 * @property {string} [response_message]
 * @property {Object} [sorting]
 */

/**
 * @typedef {Object} OutputListOfMandatorCreateData
 * @property {Object} [filter]
 * @property {Array} [list]
 * @property {Object} [pagination]
 * @property {number} [response_code]
 * @property {string} [response_message]
 * @property {Object} [sorting]
 */

/**
 * @typedef {Object} OutputListOfModule
 * @property {Array} [list]
 * @property {Object} [pagination]
 * @property {number} [response_code]
 * @property {string} [response_message]
 */

/**
 * @typedef {Object} OutputListOfModuleCreateData
 * @property {Array} [list]
 * @property {Object} [pagination]
 * @property {number} [response_code]
 * @property {string} [response_message]
 */

/**
 * @typedef {Object} OutputListOfRoleGroup
 * @property {Object} [filter]
 * @property {Array} [group_role]
 * @property {Object} [pagination]
 * @property {number} [response_code]
 * @property {string} [response_message]
 * @property {Object} [sorting]
 */

/**
 * @typedef {Object} OutputListOfRoleGroupCreateData
 * @property {Object} [filter]
 * @property {Array} [group_role]
 * @property {Object} [pagination]
 * @property {number} [response_code]
 * @property {string} [response_message]
 * @property {Object} [sorting]
 */

/**
 * @typedef {Object} OutputListOfTransactionsHistory
 * @property {Object} [filter]
 * @property {Array} [list]
 * @property {Object} [pagination]
 * @property {number} [response_code]
 * @property {string} [response_message]
 * @property {Object} [sorting]
 */

/**
 * @typedef {Object} OutputListOfTransactionsHistoryCreateData
 * @property {Object} [filter]
 * @property {Array} [list]
 * @property {Object} [pagination]
 * @property {number} [response_code]
 * @property {string} [response_message]
 * @property {Object} [sorting]
 */

/**
 * @typedef {Object} OutputListOfUser
 * @property {Object} [filter]
 * @property {Array} [list]
 * @property {Object} [pagination]
 * @property {number} [response_code]
 * @property {string} [response_message]
 * @property {Object} [sorting]
 */

/**
 * @typedef {Object} OutputListOfUserCreateData
 * @property {Object} [filter]
 * @property {Array} [list]
 * @property {Object} [pagination]
 * @property {number} [response_code]
 * @property {string} [response_message]
 * @property {Object} [sorting]
 */

/**
 * @typedef {Object} OutputProvideCredential
 * @property {string} mandator_name
 * @property {string} [password]
 * @property {number} [response_code]
 * @property {string} [response_message]
 * @property {string} [username]
 */

/**
 * @typedef {Object} OutputProvideCredentialCreateData
 * @property {string} mandator_name
 * @property {string} [password]
 * @property {number} [response_code]
 * @property {string} [response_message]
 * @property {string} [username]
 */

/**
 * @typedef {Object} OutputRegisterUser
 * @property {string} [city]
 * @property {string} [consumer_id]
 * @property {string} [consumer_language]
 * @property {string} [country]
 * @property {string} [date_of_birth]
 * @property {string} [driver_licence_number]
 * @property {string} email
 * @property {string} [first_name]
 * @property {string} [identification_number]
 * @property {string} [last_name]
 * @property {string} [login]
 * @property {string} [module]
 * @property {string} [passport_number]
 * @property {string} [phone]
 * @property {number} [response_code]
 * @property {string} [response_message]
 * @property {string} [salutation]
 * @property {string} [state]
 * @property {string} [street1]
 * @property {string} [street2]
 * @property {string} [zip]
 */

/**
 * @typedef {Object} OutputRegisterUserCreateData
 * @property {string} [city]
 * @property {string} [consumer_id]
 * @property {string} [consumer_language]
 * @property {string} [country]
 * @property {string} [date_of_birth]
 * @property {string} [driver_licence_number]
 * @property {string} email
 * @property {string} [first_name]
 * @property {string} [identification_number]
 * @property {string} [last_name]
 * @property {string} [login]
 * @property {string} [module]
 * @property {string} [passport_number]
 * @property {string} [phone]
 * @property {number} [response_code]
 * @property {string} [response_message]
 * @property {string} [salutation]
 * @property {string} [state]
 * @property {string} [street1]
 * @property {string} [street2]
 * @property {string} [zip]
 */

/**
 * @typedef {Object} OutputRemoveRole
 * @property {string} [consumer_uuid]
 * @property {number} [response_code]
 * @property {string} [response_message]
 * @property {Array} [role]
 */

/**
 * @typedef {Object} OutputRemoveRoleCreateData
 * @property {string} [consumer_uuid]
 * @property {number} [response_code]
 * @property {string} [response_message]
 * @property {Array} [role]
 */

/**
 * @typedef {Object} OutputResendLink
 * @property {string} [business_registration_number]
 * @property {string} consumer_uuid
 * @property {string} [email_confirmation_code]
 * @property {string} [phone_number]
 * @property {number} [response_code]
 * @property {string} [response_message]
 */

/**
 * @typedef {Object} OutputResendLinkCreateData
 * @property {string} [business_registration_number]
 * @property {string} consumer_uuid
 * @property {string} [email_confirmation_code]
 * @property {string} [phone_number]
 * @property {number} [response_code]
 * @property {string} [response_message]
 */

/**
 * @typedef {Object} OutputResetPassword
 * @property {string} [consumer_uuid]
 * @property {string} [phone_number]
 * @property {number} [response_code]
 * @property {string} [response_message]
 */

/**
 * @typedef {Object} OutputResetPasswordCreateData
 * @property {string} [consumer_uuid]
 * @property {string} [phone_number]
 * @property {number} [response_code]
 * @property {string} [response_message]
 */

/**
 * @typedef {Object} OutputUpdateConsumer
 * @property {string} [city]
 * @property {string} consumer_uuid
 * @property {string} [consumerlanguage]
 * @property {string} [country]
 * @property {string} [date_of_birth]
 * @property {string} [datetime_created]
 * @property {string} [driver_licence_number]
 * @property {string} [email]
 * @property {string} [first_name]
 * @property {string} [identification_number]
 * @property {boolean} [kyc_passed]
 * @property {string} [last_name]
 * @property {string} [nationality]
 * @property {string} [passport_number]
 * @property {string} [phone_number]
 * @property {string} [place_of_birth]
 * @property {number} [response_code]
 * @property {string} [response_message]
 * @property {string} [state]
 * @property {string} [street1]
 * @property {string} [street2]
 * @property {string} [transactionhistory_id]
 * @property {string} [zip]
 */

/**
 * @typedef {Object} OutputUpdateConsumerCreateData
 * @property {string} [city]
 * @property {string} consumer_uuid
 * @property {string} [consumerlanguage]
 * @property {string} [country]
 * @property {string} [date_of_birth]
 * @property {string} [datetime_created]
 * @property {string} [driver_licence_number]
 * @property {string} [email]
 * @property {string} [first_name]
 * @property {string} [identification_number]
 * @property {boolean} [kyc_passed]
 * @property {string} [last_name]
 * @property {string} [nationality]
 * @property {string} [passport_number]
 * @property {string} [phone_number]
 * @property {string} [place_of_birth]
 * @property {number} [response_code]
 * @property {string} [response_message]
 * @property {string} [state]
 * @property {string} [street1]
 * @property {string} [street2]
 * @property {string} [transactionhistory_id]
 * @property {string} [zip]
 */

/**
 * @typedef {Object} OutputUpdateProfile
 * @property {string} [consumer_language]
 * @property {string} [email]
 * @property {string} [first_name]
 * @property {string} [last_name]
 * @property {string} [phone_number]
 * @property {number} [response_code]
 * @property {string} [response_message]
 */

/**
 * @typedef {Object} OutputUpdateProfileCreateData
 * @property {string} [consumer_language]
 * @property {string} [email]
 * @property {string} [first_name]
 * @property {string} [last_name]
 * @property {string} [phone_number]
 * @property {number} [response_code]
 * @property {string} [response_message]
 */

/**
 * @typedef {Object} Version
 * @property {string} [app_name]
 * @property {string} [build_date]
 * @property {string} [version]
 */

/**
 * @typedef {Object} VersionLoadMatch
 * @property {string} [app_name]
 * @property {string} [build_date]
 * @property {string} [version]
 */


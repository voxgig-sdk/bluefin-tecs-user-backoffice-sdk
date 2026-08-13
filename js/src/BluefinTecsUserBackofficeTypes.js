// Typed models for the BluefinTecsUserBackoffice SDK (JSDoc typedefs).
//
// GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
// params (op.<name>.points[].args.params[]). Field/param types come from the
// canonical type sentinels via @voxgig/sdkgen canonToType (source of truth:
// @voxgig/apidef VALID_CANON). Annotations only — no runtime effect. Do not
// edit by hand.

/**
 * @typedef {Object} OutputActivateDigitalModule
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 */

/**
 * @typedef {Object} OutputActivateDigitalModuleCreateData
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 */

/**
 * @typedef {Object} OutputActivatePortalModule
 * @property {string} clientSecret
 * @property {string} notificationEmail
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 */

/**
 * @typedef {Object} OutputActivatePortalModuleCreateData
 * @property {string} clientSecret
 * @property {string} notificationEmail
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 */

/**
 * @typedef {Object} OutputActivateStoreModule
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 */

/**
 * @typedef {Object} OutputActivateStoreModuleCreateData
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 */

/**
 * @typedef {Object} OutputActivateUser
 * @property {string} [consumerUUID]
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 */

/**
 * @typedef {Object} OutputActivateUserCreateData
 * @property {string} [consumerUUID]
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 */

/**
 * @typedef {Object} OutputAssignRole
 * @property {string} consumerUUID
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 * @property {Array} roles
 */

/**
 * @typedef {Object} OutputAssignRoleCreateData
 * @property {string} consumerUUID
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 * @property {Array} roles
 */

/**
 * @typedef {Object} OutputChangeLogo
 * @property {string} contentAsBase64
 * @property {string} mimeType
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 */

/**
 * @typedef {Object} OutputChangeLogoCreateData
 * @property {string} contentAsBase64
 * @property {string} mimeType
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 */

/**
 * @typedef {Object} OutputCreateMandator
 * @property {string} [city]
 * @property {string} [country]
 * @property {string} [dateOfBirth]
 * @property {string} [description]
 * @property {string} [driversLicenseNumber]
 * @property {string} email
 * @property {string} [firstName]
 * @property {string} [identificationNumber]
 * @property {string} [lastName]
 * @property {string} login
 * @property {string} [name]
 * @property {string} [passportNumber]
 * @property {string} phone
 * @property {string} [salutation]
 * @property {string} [state]
 * @property {string} [street1]
 * @property {string} [street2]
 * @property {string} [zipCode]
 */

/**
 * @typedef {Object} OutputCreateMandatorCreateData
 * @property {string} [city]
 * @property {string} [country]
 * @property {string} [dateOfBirth]
 * @property {string} [description]
 * @property {string} [driversLicenseNumber]
 * @property {string} email
 * @property {string} [firstName]
 * @property {string} [identificationNumber]
 * @property {string} [lastName]
 * @property {string} login
 * @property {string} [name]
 * @property {string} [passportNumber]
 * @property {string} phone
 * @property {string} [salutation]
 * @property {string} [state]
 * @property {string} [street1]
 * @property {string} [street2]
 * @property {string} [zipCode]
 */

/**
 * @typedef {Object} OutputCreateServiceUser
 * @property {string} mandatorName
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 */

/**
 * @typedef {Object} OutputCreateServiceUserCreateData
 * @property {string} mandatorName
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 */

/**
 * @typedef {Object} OutputDeactivateUser
 * @property {string} [consumerUUID]
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 */

/**
 * @typedef {Object} OutputDeactivateUserCreateData
 * @property {string} [consumerUUID]
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 */

/**
 * @typedef {Object} OutputGetKycDocument
 * @property {string} [caseID]
 * @property {string} [encodedDataBase64]
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 */

/**
 * @typedef {Object} OutputGetKycDocumentCreateData
 * @property {string} [caseID]
 * @property {string} [encodedDataBase64]
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 */

/**
 * @typedef {Object} OutputGetLogo
 * @property {string} contentAsBase64
 * @property {string} mimeType
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 */

/**
 * @typedef {Object} OutputGetLogoLoadMatch
 * @property {string} [contentAsBase64]
 * @property {string} [mimeType]
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 */

/**
 * @typedef {Object} OutputListOfAvailableRole
 * @property {Array} [availableRoles]
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 */

/**
 * @typedef {Object} OutputListOfAvailableRoleCreateData
 * @property {Array} [availableRoles]
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 */

/**
 * @typedef {Object} OutputListOfMandator
 * @property {Object} [filter]
 * @property {Array} [list]
 * @property {Object} [pagination]
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 * @property {Object} [sorting]
 */

/**
 * @typedef {Object} OutputListOfMandatorCreateData
 * @property {Object} [filter]
 * @property {Array} [list]
 * @property {Object} [pagination]
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 * @property {Object} [sorting]
 */

/**
 * @typedef {Object} OutputListOfModule
 * @property {Array} [list]
 * @property {Object} [pagination]
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 */

/**
 * @typedef {Object} OutputListOfModuleCreateData
 * @property {Array} [list]
 * @property {Object} [pagination]
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 */

/**
 * @typedef {Object} OutputListOfRoleGroup
 * @property {Object} [filter]
 * @property {Array} [groupRoles]
 * @property {Object} [pagination]
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 * @property {Object} [sorting]
 */

/**
 * @typedef {Object} OutputListOfRoleGroupCreateData
 * @property {Object} [filter]
 * @property {Array} [groupRoles]
 * @property {Object} [pagination]
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 * @property {Object} [sorting]
 */

/**
 * @typedef {Object} OutputListOfTransactionsHistory
 * @property {Object} [filter]
 * @property {Array} [list]
 * @property {Object} [pagination]
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 * @property {Object} [sorting]
 */

/**
 * @typedef {Object} OutputListOfTransactionsHistoryCreateData
 * @property {Object} [filter]
 * @property {Array} [list]
 * @property {Object} [pagination]
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 * @property {Object} [sorting]
 */

/**
 * @typedef {Object} OutputListOfUser
 * @property {Object} [filter]
 * @property {Array} [list]
 * @property {Object} [pagination]
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 * @property {Object} [sorting]
 */

/**
 * @typedef {Object} OutputListOfUserCreateData
 * @property {Object} [filter]
 * @property {Array} [list]
 * @property {Object} [pagination]
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 * @property {Object} [sorting]
 */

/**
 * @typedef {Object} OutputProvideCredential
 * @property {string} mandatorName
 * @property {string} [password]
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 * @property {string} [username]
 */

/**
 * @typedef {Object} OutputProvideCredentialCreateData
 * @property {string} mandatorName
 * @property {string} [password]
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 * @property {string} [username]
 */

/**
 * @typedef {Object} OutputRegisterUser
 * @property {string} [city]
 * @property {string} [consumerId]
 * @property {string} [consumerLanguage]
 * @property {string} [country]
 * @property {string} [dateOfBirth]
 * @property {string} [driverLicenceNumber]
 * @property {string} email
 * @property {string} [firstName]
 * @property {string} [identificationNumber]
 * @property {string} [lastName]
 * @property {string} [login]
 * @property {string} [module]
 * @property {string} [passportNumber]
 * @property {string} [phone]
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 * @property {string} [salutation]
 * @property {string} [state]
 * @property {string} [street1]
 * @property {string} [street2]
 * @property {string} [zip]
 */

/**
 * @typedef {Object} OutputRegisterUserCreateData
 * @property {string} [city]
 * @property {string} [consumerId]
 * @property {string} [consumerLanguage]
 * @property {string} [country]
 * @property {string} [dateOfBirth]
 * @property {string} [driverLicenceNumber]
 * @property {string} email
 * @property {string} [firstName]
 * @property {string} [identificationNumber]
 * @property {string} [lastName]
 * @property {string} [login]
 * @property {string} [module]
 * @property {string} [passportNumber]
 * @property {string} [phone]
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 * @property {string} [salutation]
 * @property {string} [state]
 * @property {string} [street1]
 * @property {string} [street2]
 * @property {string} [zip]
 */

/**
 * @typedef {Object} OutputRemoveRole
 * @property {string} [consumerUUID]
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 * @property {Array} [roles]
 */

/**
 * @typedef {Object} OutputRemoveRoleCreateData
 * @property {string} [consumerUUID]
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 * @property {Array} [roles]
 */

/**
 * @typedef {Object} OutputResendLink
 * @property {string} [businessRegistrationNumber]
 * @property {string} consumerUUID
 * @property {string} [emailConfirmationCode]
 * @property {string} [phoneNumber]
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 */

/**
 * @typedef {Object} OutputResendLinkCreateData
 * @property {string} [businessRegistrationNumber]
 * @property {string} consumerUUID
 * @property {string} [emailConfirmationCode]
 * @property {string} [phoneNumber]
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 */

/**
 * @typedef {Object} OutputResetPassword
 * @property {string} [consumerUuid]
 * @property {string} [phoneNumber]
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 */

/**
 * @typedef {Object} OutputResetPasswordCreateData
 * @property {string} [consumerUuid]
 * @property {string} [phoneNumber]
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 */

/**
 * @typedef {Object} OutputUpdateConsumer
 * @property {string} [city]
 * @property {string} consumerUuid
 * @property {string} [consumerlanguage]
 * @property {string} [country]
 * @property {string} [dateOfBirth]
 * @property {string} [datetime_created]
 * @property {string} [driverLicenceNumber]
 * @property {string} [email]
 * @property {string} [firstName]
 * @property {string} [identificationNumber]
 * @property {boolean} [kycPassed]
 * @property {string} [lastName]
 * @property {string} [nationality]
 * @property {string} [passportNumber]
 * @property {string} [phoneNumber]
 * @property {string} [placeOfBirth]
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 * @property {string} [state]
 * @property {string} [street1]
 * @property {string} [street2]
 * @property {string} [transactionhistory_id]
 * @property {string} [zip]
 */

/**
 * @typedef {Object} OutputUpdateConsumerCreateData
 * @property {string} [city]
 * @property {string} consumerUuid
 * @property {string} [consumerlanguage]
 * @property {string} [country]
 * @property {string} [dateOfBirth]
 * @property {string} [datetime_created]
 * @property {string} [driverLicenceNumber]
 * @property {string} [email]
 * @property {string} [firstName]
 * @property {string} [identificationNumber]
 * @property {boolean} [kycPassed]
 * @property {string} [lastName]
 * @property {string} [nationality]
 * @property {string} [passportNumber]
 * @property {string} [phoneNumber]
 * @property {string} [placeOfBirth]
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 * @property {string} [state]
 * @property {string} [street1]
 * @property {string} [street2]
 * @property {string} [transactionhistory_id]
 * @property {string} [zip]
 */

/**
 * @typedef {Object} OutputUpdateProfile
 * @property {string} [consumerLanguage]
 * @property {string} [email]
 * @property {string} [firstName]
 * @property {string} [lastName]
 * @property {string} [phoneNumber]
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 */

/**
 * @typedef {Object} OutputUpdateProfileCreateData
 * @property {string} [consumerLanguage]
 * @property {string} [email]
 * @property {string} [firstName]
 * @property {string} [lastName]
 * @property {string} [phoneNumber]
 * @property {number} [responseCode]
 * @property {string} [responseMessage]
 */

/**
 * @typedef {Object} Version
 * @property {string} [appName]
 * @property {string} [buildDate]
 * @property {string} [version]
 */

/**
 * @typedef {Object} VersionLoadMatch
 * @property {string} [appName]
 * @property {string} [buildDate]
 * @property {string} [version]
 */


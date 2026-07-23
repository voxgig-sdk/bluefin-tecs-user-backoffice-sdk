// Typed models for the BluefinTecsUserBackoffice SDK.
//
// GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
// params (op.<name>.points[].args.params[]). Field/param types are mapped
// from the canonical type sentinels. Do not edit by hand.
//
// These are DOCUMENTARY: the SDK runtime is dynamic (ops take/return the
// `Value` enum), so nothing consumes these structs yet — they mirror the
// entity/op shapes for reference and IDE support.

import Foundation

/// OutputActivateDigitalModule is the typed data model for the output_activate_digital_module entity.
public struct OutputActivateDigitalModule {
  public var responseCode: Int?
  public var responseMessage: String?
}

/// OutputActivateDigitalModuleCreateData is the typed request payload for OutputActivateDigitalModule.create.
public struct OutputActivateDigitalModuleCreateData {
  public var responseCode: Int?
  public var responseMessage: String?
}

/// OutputActivatePortalModule is the typed data model for the output_activate_portal_module entity.
public struct OutputActivatePortalModule {
  public var clientSecret: String
  public var notificationEmail: String
  public var responseCode: Int?
  public var responseMessage: String?
}

/// OutputActivatePortalModuleCreateData is the typed request payload for OutputActivatePortalModule.create.
public struct OutputActivatePortalModuleCreateData {
  public var clientSecret: String
  public var notificationEmail: String
  public var responseCode: Int?
  public var responseMessage: String?
}

/// OutputActivateStoreModule is the typed data model for the output_activate_store_module entity.
public struct OutputActivateStoreModule {
  public var responseCode: Int?
  public var responseMessage: String?
}

/// OutputActivateStoreModuleCreateData is the typed request payload for OutputActivateStoreModule.create.
public struct OutputActivateStoreModuleCreateData {
  public var responseCode: Int?
  public var responseMessage: String?
}

/// OutputActivateUser is the typed data model for the output_activate_user entity.
public struct OutputActivateUser {
  public var consumerUuid: String?
  public var responseCode: Int?
  public var responseMessage: String?
}

/// OutputActivateUserCreateData is the typed request payload for OutputActivateUser.create.
public struct OutputActivateUserCreateData {
  public var consumerUuid: String?
  public var responseCode: Int?
  public var responseMessage: String?
}

/// OutputAssignRole is the typed data model for the output_assign_role entity.
public struct OutputAssignRole {
  public var consumerUuid: String
  public var responseCode: Int?
  public var responseMessage: String?
  public var role: [Value]
}

/// OutputAssignRoleCreateData is the typed request payload for OutputAssignRole.create.
public struct OutputAssignRoleCreateData {
  public var consumerUuid: String
  public var responseCode: Int?
  public var responseMessage: String?
  public var role: [Value]
}

/// OutputChangeLogo is the typed data model for the output_change_logo entity.
public struct OutputChangeLogo {
  public var contentAsBase64: String
  public var mimeType: String
  public var responseCode: Int?
  public var responseMessage: String?
}

/// OutputChangeLogoCreateData is the typed request payload for OutputChangeLogo.create.
public struct OutputChangeLogoCreateData {
  public var contentAsBase64: String
  public var mimeType: String
  public var responseCode: Int?
  public var responseMessage: String?
}

/// OutputCreateMandator is the typed data model for the output_create_mandator entity.
public struct OutputCreateMandator {
  public var city: String?
  public var country: String?
  public var dateOfBirth: String?
  public var description: String
  public var driversLicenseNumber: String?
  public var email: String
  public var firstName: String?
  public var identificationNumber: String?
  public var lastName: String?
  public var login: String
  public var mandator: VMap?
  public var name: String
  public var passportNumber: String?
  public var phone: String
  public var responseCode: Int?
  public var responseMessage: String?
  public var salutation: String?
  public var state: String?
  public var street1: String?
  public var street2: String?
  public var zipCode: String?
}

/// OutputCreateMandatorCreateData is the typed request payload for OutputCreateMandator.create.
public struct OutputCreateMandatorCreateData {
  public var city: String?
  public var country: String?
  public var dateOfBirth: String?
  public var description: String
  public var driversLicenseNumber: String?
  public var email: String
  public var firstName: String?
  public var identificationNumber: String?
  public var lastName: String?
  public var login: String
  public var mandator: VMap?
  public var name: String
  public var passportNumber: String?
  public var phone: String
  public var responseCode: Int?
  public var responseMessage: String?
  public var salutation: String?
  public var state: String?
  public var street1: String?
  public var street2: String?
  public var zipCode: String?
}

/// OutputCreateServiceUser is the typed data model for the output_create_service_user entity.
public struct OutputCreateServiceUser {
  public var mandatorName: String
  public var responseCode: Int?
  public var responseMessage: String?
}

/// OutputCreateServiceUserCreateData is the typed request payload for OutputCreateServiceUser.create.
public struct OutputCreateServiceUserCreateData {
  public var mandatorName: String
  public var responseCode: Int?
  public var responseMessage: String?
}

/// OutputDeactivateUser is the typed data model for the output_deactivate_user entity.
public struct OutputDeactivateUser {
  public var consumerUuid: String?
  public var responseCode: Int?
  public var responseMessage: String?
}

/// OutputDeactivateUserCreateData is the typed request payload for OutputDeactivateUser.create.
public struct OutputDeactivateUserCreateData {
  public var consumerUuid: String?
  public var responseCode: Int?
  public var responseMessage: String?
}

/// OutputGetKycDocument is the typed data model for the output_get_kyc_document entity.
public struct OutputGetKycDocument {
  public var caseId: String?
  public var encodedDataBase64: String?
  public var responseCode: Int?
  public var responseMessage: String?
}

/// OutputGetKycDocumentCreateData is the typed request payload for OutputGetKycDocument.create.
public struct OutputGetKycDocumentCreateData {
  public var caseId: String?
  public var encodedDataBase64: String?
  public var responseCode: Int?
  public var responseMessage: String?
}

/// OutputGetLogo is the typed data model for the output_get_logo entity.
public struct OutputGetLogo {
  public var contentAsBase64: String
  public var mimeType: String
  public var responseCode: Int?
  public var responseMessage: String?
}

/// OutputGetLogoLoadMatch is the typed request payload for OutputGetLogo.load.
public struct OutputGetLogoLoadMatch {
  public var contentAsBase64: String?
  public var mimeType: String?
  public var responseCode: Int?
  public var responseMessage: String?
}

/// OutputListOfAvailableRole is the typed data model for the output_list_of_available_role entity.
public struct OutputListOfAvailableRole {
  public var availableRole: [Value]?
  public var responseCode: Int?
  public var responseMessage: String?
}

/// OutputListOfAvailableRoleCreateData is the typed request payload for OutputListOfAvailableRole.create.
public struct OutputListOfAvailableRoleCreateData {
  public var availableRole: [Value]?
  public var responseCode: Int?
  public var responseMessage: String?
}

/// OutputListOfMandator is the typed data model for the output_list_of_mandator entity.
public struct OutputListOfMandator {
  public var filter: VMap?
  public var list: [Value]?
  public var pagination: VMap?
  public var responseCode: Int?
  public var responseMessage: String?
  public var sorting: VMap?
}

/// OutputListOfMandatorCreateData is the typed request payload for OutputListOfMandator.create.
public struct OutputListOfMandatorCreateData {
  public var filter: VMap?
  public var list: [Value]?
  public var pagination: VMap?
  public var responseCode: Int?
  public var responseMessage: String?
  public var sorting: VMap?
}

/// OutputListOfModule is the typed data model for the output_list_of_module entity.
public struct OutputListOfModule {
  public var list: [Value]?
  public var pagination: VMap?
  public var responseCode: Int?
  public var responseMessage: String?
}

/// OutputListOfModuleCreateData is the typed request payload for OutputListOfModule.create.
public struct OutputListOfModuleCreateData {
  public var list: [Value]?
  public var pagination: VMap?
  public var responseCode: Int?
  public var responseMessage: String?
}

/// OutputListOfRoleGroup is the typed data model for the output_list_of_role_group entity.
public struct OutputListOfRoleGroup {
  public var filter: VMap?
  public var groupRole: [Value]?
  public var pagination: VMap?
  public var responseCode: Int?
  public var responseMessage: String?
  public var sorting: VMap?
}

/// OutputListOfRoleGroupCreateData is the typed request payload for OutputListOfRoleGroup.create.
public struct OutputListOfRoleGroupCreateData {
  public var filter: VMap?
  public var groupRole: [Value]?
  public var pagination: VMap?
  public var responseCode: Int?
  public var responseMessage: String?
  public var sorting: VMap?
}

/// OutputListOfTransactionsHistory is the typed data model for the output_list_of_transactions_history entity.
public struct OutputListOfTransactionsHistory {
  public var filter: VMap?
  public var list: [Value]?
  public var pagination: VMap?
  public var responseCode: Int?
  public var responseMessage: String?
  public var sorting: VMap?
}

/// OutputListOfTransactionsHistoryCreateData is the typed request payload for OutputListOfTransactionsHistory.create.
public struct OutputListOfTransactionsHistoryCreateData {
  public var filter: VMap?
  public var list: [Value]?
  public var pagination: VMap?
  public var responseCode: Int?
  public var responseMessage: String?
  public var sorting: VMap?
}

/// OutputListOfUser is the typed data model for the output_list_of_user entity.
public struct OutputListOfUser {
  public var filter: VMap?
  public var list: [Value]?
  public var pagination: VMap?
  public var responseCode: Int?
  public var responseMessage: String?
  public var sorting: VMap?
}

/// OutputListOfUserCreateData is the typed request payload for OutputListOfUser.create.
public struct OutputListOfUserCreateData {
  public var filter: VMap?
  public var list: [Value]?
  public var pagination: VMap?
  public var responseCode: Int?
  public var responseMessage: String?
  public var sorting: VMap?
}

/// OutputProvideCredential is the typed data model for the output_provide_credential entity.
public struct OutputProvideCredential {
  public var mandatorName: String
  public var password: String?
  public var responseCode: Int?
  public var responseMessage: String?
  public var username: String?
}

/// OutputProvideCredentialCreateData is the typed request payload for OutputProvideCredential.create.
public struct OutputProvideCredentialCreateData {
  public var mandatorName: String
  public var password: String?
  public var responseCode: Int?
  public var responseMessage: String?
  public var username: String?
}

/// OutputRegisterUser is the typed data model for the output_register_user entity.
public struct OutputRegisterUser {
  public var city: String?
  public var consumerId: String?
  public var consumerLanguage: String?
  public var country: String?
  public var dateOfBirth: String?
  public var driverLicenceNumber: String?
  public var email: String
  public var firstName: String?
  public var identificationNumber: String?
  public var lastName: String?
  public var login: String?
  public var module: String?
  public var passportNumber: String?
  public var phone: String?
  public var responseCode: Int?
  public var responseMessage: String?
  public var salutation: String?
  public var state: String?
  public var street1: String?
  public var street2: String?
  public var zip: String?
}

/// OutputRegisterUserCreateData is the typed request payload for OutputRegisterUser.create.
public struct OutputRegisterUserCreateData {
  public var city: String?
  public var consumerId: String?
  public var consumerLanguage: String?
  public var country: String?
  public var dateOfBirth: String?
  public var driverLicenceNumber: String?
  public var email: String
  public var firstName: String?
  public var identificationNumber: String?
  public var lastName: String?
  public var login: String?
  public var module: String?
  public var passportNumber: String?
  public var phone: String?
  public var responseCode: Int?
  public var responseMessage: String?
  public var salutation: String?
  public var state: String?
  public var street1: String?
  public var street2: String?
  public var zip: String?
}

/// OutputRemoveRole is the typed data model for the output_remove_role entity.
public struct OutputRemoveRole {
  public var consumerUuid: String?
  public var responseCode: Int?
  public var responseMessage: String?
  public var role: [Value]?
}

/// OutputRemoveRoleCreateData is the typed request payload for OutputRemoveRole.create.
public struct OutputRemoveRoleCreateData {
  public var consumerUuid: String?
  public var responseCode: Int?
  public var responseMessage: String?
  public var role: [Value]?
}

/// OutputResendLink is the typed data model for the output_resend_link entity.
public struct OutputResendLink {
  public var businessRegistrationNumber: String?
  public var consumerUuid: String
  public var emailConfirmationCode: String?
  public var phoneNumber: String?
  public var responseCode: Int?
  public var responseMessage: String?
}

/// OutputResendLinkCreateData is the typed request payload for OutputResendLink.create.
public struct OutputResendLinkCreateData {
  public var businessRegistrationNumber: String?
  public var consumerUuid: String
  public var emailConfirmationCode: String?
  public var phoneNumber: String?
  public var responseCode: Int?
  public var responseMessage: String?
}

/// OutputResetPassword is the typed data model for the output_reset_password entity.
public struct OutputResetPassword {
  public var consumerUuid: String?
  public var phoneNumber: String?
  public var responseCode: Int?
  public var responseMessage: String?
}

/// OutputResetPasswordCreateData is the typed request payload for OutputResetPassword.create.
public struct OutputResetPasswordCreateData {
  public var consumerUuid: String?
  public var phoneNumber: String?
  public var responseCode: Int?
  public var responseMessage: String?
}

/// OutputUpdateConsumer is the typed data model for the output_update_consumer entity.
public struct OutputUpdateConsumer {
  public var city: String?
  public var consumerUuid: String
  public var consumerlanguage: String?
  public var country: String?
  public var dateOfBirth: String?
  public var datetimeCreated: String?
  public var driverLicenceNumber: String?
  public var email: String?
  public var firstName: String?
  public var identificationNumber: String?
  public var kycPassed: Bool?
  public var lastName: String?
  public var nationality: String?
  public var passportNumber: String?
  public var phoneNumber: String?
  public var placeOfBirth: String?
  public var responseCode: Int?
  public var responseMessage: String?
  public var state: String?
  public var street1: String?
  public var street2: String?
  public var transactionhistoryId: String?
  public var zip: String?
}

/// OutputUpdateConsumerCreateData is the typed request payload for OutputUpdateConsumer.create.
public struct OutputUpdateConsumerCreateData {
  public var city: String?
  public var consumerUuid: String
  public var consumerlanguage: String?
  public var country: String?
  public var dateOfBirth: String?
  public var datetimeCreated: String?
  public var driverLicenceNumber: String?
  public var email: String?
  public var firstName: String?
  public var identificationNumber: String?
  public var kycPassed: Bool?
  public var lastName: String?
  public var nationality: String?
  public var passportNumber: String?
  public var phoneNumber: String?
  public var placeOfBirth: String?
  public var responseCode: Int?
  public var responseMessage: String?
  public var state: String?
  public var street1: String?
  public var street2: String?
  public var transactionhistoryId: String?
  public var zip: String?
}

/// OutputUpdateProfile is the typed data model for the output_update_profile entity.
public struct OutputUpdateProfile {
  public var consumerLanguage: String?
  public var email: String?
  public var firstName: String?
  public var lastName: String?
  public var phoneNumber: String?
  public var responseCode: Int?
  public var responseMessage: String?
}

/// OutputUpdateProfileCreateData is the typed request payload for OutputUpdateProfile.create.
public struct OutputUpdateProfileCreateData {
  public var consumerLanguage: String?
  public var email: String?
  public var firstName: String?
  public var lastName: String?
  public var phoneNumber: String?
  public var responseCode: Int?
  public var responseMessage: String?
}

/// Version is the typed data model for the version entity.
public struct Version {
  public var appName: String?
  public var buildDate: String?
  public var version: String?
}

/// VersionLoadMatch is the typed request payload for Version.load.
public struct VersionLoadMatch {
  public var appName: String?
  public var buildDate: String?
  public var version: String?
}


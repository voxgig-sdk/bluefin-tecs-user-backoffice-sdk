package voxgig.bluefintecsuserbackofficesdk.core

// Typed reference models for the BluefinTecsUserBackoffice SDK.
//
// GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
// params (op.<name>.points[].args.params[]). Field/param types come from the
// canonical type sentinels (source of truth: @voxgig/apidef VALID_CANON). Do
// not edit by hand.
//
// These case classes are documentation/DX reference shapes ONLY. The SDK ops
// take and return the loose object model (java.util.Map[String, Object] /
// Object) at runtime, so these types are not wired into the op signatures —
// use them to describe a payload before converting it to a map. Every
// component is a boxed (nullable) type, so an optional (req:false) key needs
// no distinct rendering.

object BluefinTecsUserBackofficeTypes {

  final case class OutputActivateDigitalModule(responseCode: java.lang.Long, responseMessage: String)

  final case class OutputActivateDigitalModuleCreateData(responseCode: java.lang.Long, responseMessage: String)

  final case class OutputActivatePortalModule(clientSecret: String, notificationEmail: String, responseCode: java.lang.Long, responseMessage: String)

  final case class OutputActivatePortalModuleCreateData(clientSecret: String, notificationEmail: String, responseCode: java.lang.Long, responseMessage: String)

  final case class OutputActivateStoreModule(responseCode: java.lang.Long, responseMessage: String)

  final case class OutputActivateStoreModuleCreateData(responseCode: java.lang.Long, responseMessage: String)

  final case class OutputActivateUser(consumerUUID: String, responseCode: java.lang.Long, responseMessage: String)

  final case class OutputActivateUserCreateData(consumerUUID: String, responseCode: java.lang.Long, responseMessage: String)

  final case class OutputAssignRole(consumerUUID: String, responseCode: java.lang.Long, responseMessage: String, roles: java.util.List[Object])

  final case class OutputAssignRoleCreateData(consumerUUID: String, responseCode: java.lang.Long, responseMessage: String, roles: java.util.List[Object])

  final case class OutputChangeLogo(contentAsBase64: String, mimeType: String, responseCode: java.lang.Long, responseMessage: String)

  final case class OutputChangeLogoCreateData(contentAsBase64: String, mimeType: String, responseCode: java.lang.Long, responseMessage: String)

  final case class OutputCreateMandator(city: String, country: String, dateOfBirth: String, description: String, driversLicenseNumber: String, email: String, firstName: String, identificationNumber: String, lastName: String, login: String, name: String, passportNumber: String, phone: String, salutation: String, state: String, street1: String, street2: String, zipCode: String)

  final case class OutputCreateMandatorCreateData(city: String, country: String, dateOfBirth: String, description: String, driversLicenseNumber: String, email: String, firstName: String, identificationNumber: String, lastName: String, login: String, name: String, passportNumber: String, phone: String, salutation: String, state: String, street1: String, street2: String, zipCode: String)

  final case class OutputCreateServiceUser(mandatorName: String, responseCode: java.lang.Long, responseMessage: String)

  final case class OutputCreateServiceUserCreateData(mandatorName: String, responseCode: java.lang.Long, responseMessage: String)

  final case class OutputDeactivateUser(consumerUUID: String, responseCode: java.lang.Long, responseMessage: String)

  final case class OutputDeactivateUserCreateData(consumerUUID: String, responseCode: java.lang.Long, responseMessage: String)

  final case class OutputGetKycDocument(caseID: String, encodedDataBase64: String, responseCode: java.lang.Long, responseMessage: String)

  final case class OutputGetKycDocumentCreateData(caseID: String, encodedDataBase64: String, responseCode: java.lang.Long, responseMessage: String)

  final case class OutputGetLogo(contentAsBase64: String, mimeType: String, responseCode: java.lang.Long, responseMessage: String)

  final case class OutputGetLogoLoadMatch(contentAsBase64: String, mimeType: String, responseCode: java.lang.Long, responseMessage: String)

  final case class OutputListOfAvailableRole(availableRoles: java.util.List[Object], responseCode: java.lang.Long, responseMessage: String)

  final case class OutputListOfAvailableRoleCreateData(availableRoles: java.util.List[Object], responseCode: java.lang.Long, responseMessage: String)

  final case class OutputListOfMandator(filter: java.util.Map[String, Object], list: java.util.List[Object], pagination: java.util.Map[String, Object], responseCode: java.lang.Long, responseMessage: String, sorting: java.util.Map[String, Object])

  final case class OutputListOfMandatorCreateData(filter: java.util.Map[String, Object], list: java.util.List[Object], pagination: java.util.Map[String, Object], responseCode: java.lang.Long, responseMessage: String, sorting: java.util.Map[String, Object])

  final case class OutputListOfModule(list: java.util.List[Object], pagination: java.util.Map[String, Object], responseCode: java.lang.Long, responseMessage: String)

  final case class OutputListOfModuleCreateData(list: java.util.List[Object], pagination: java.util.Map[String, Object], responseCode: java.lang.Long, responseMessage: String)

  final case class OutputListOfRoleGroup(filter: java.util.Map[String, Object], groupRoles: java.util.List[Object], pagination: java.util.Map[String, Object], responseCode: java.lang.Long, responseMessage: String, sorting: java.util.Map[String, Object])

  final case class OutputListOfRoleGroupCreateData(filter: java.util.Map[String, Object], groupRoles: java.util.List[Object], pagination: java.util.Map[String, Object], responseCode: java.lang.Long, responseMessage: String, sorting: java.util.Map[String, Object])

  final case class OutputListOfTransactionsHistory(filter: java.util.Map[String, Object], list: java.util.List[Object], pagination: java.util.Map[String, Object], responseCode: java.lang.Long, responseMessage: String, sorting: java.util.Map[String, Object])

  final case class OutputListOfTransactionsHistoryCreateData(filter: java.util.Map[String, Object], list: java.util.List[Object], pagination: java.util.Map[String, Object], responseCode: java.lang.Long, responseMessage: String, sorting: java.util.Map[String, Object])

  final case class OutputListOfUser(filter: java.util.Map[String, Object], list: java.util.List[Object], pagination: java.util.Map[String, Object], responseCode: java.lang.Long, responseMessage: String, sorting: java.util.Map[String, Object])

  final case class OutputListOfUserCreateData(filter: java.util.Map[String, Object], list: java.util.List[Object], pagination: java.util.Map[String, Object], responseCode: java.lang.Long, responseMessage: String, sorting: java.util.Map[String, Object])

  final case class OutputProvideCredential(mandatorName: String, password: String, responseCode: java.lang.Long, responseMessage: String, username: String)

  final case class OutputProvideCredentialCreateData(mandatorName: String, password: String, responseCode: java.lang.Long, responseMessage: String, username: String)

  final case class OutputRegisterUser(city: String, consumerId: String, consumerLanguage: String, country: String, dateOfBirth: String, driverLicenceNumber: String, email: String, firstName: String, identificationNumber: String, lastName: String, login: String, module: String, passportNumber: String, phone: String, responseCode: java.lang.Long, responseMessage: String, salutation: String, state: String, street1: String, street2: String, zip: String)

  final case class OutputRegisterUserCreateData(city: String, consumerId: String, consumerLanguage: String, country: String, dateOfBirth: String, driverLicenceNumber: String, email: String, firstName: String, identificationNumber: String, lastName: String, login: String, module: String, passportNumber: String, phone: String, responseCode: java.lang.Long, responseMessage: String, salutation: String, state: String, street1: String, street2: String, zip: String)

  final case class OutputRemoveRole(consumerUUID: String, responseCode: java.lang.Long, responseMessage: String, roles: java.util.List[Object])

  final case class OutputRemoveRoleCreateData(consumerUUID: String, responseCode: java.lang.Long, responseMessage: String, roles: java.util.List[Object])

  final case class OutputResendLink(businessRegistrationNumber: String, consumerUUID: String, emailConfirmationCode: String, phoneNumber: String, responseCode: java.lang.Long, responseMessage: String)

  final case class OutputResendLinkCreateData(businessRegistrationNumber: String, consumerUUID: String, emailConfirmationCode: String, phoneNumber: String, responseCode: java.lang.Long, responseMessage: String)

  final case class OutputResetPassword(consumerUuid: String, phoneNumber: String, responseCode: java.lang.Long, responseMessage: String)

  final case class OutputResetPasswordCreateData(consumerUuid: String, phoneNumber: String, responseCode: java.lang.Long, responseMessage: String)

  final case class OutputUpdateConsumer(city: String, consumerUuid: String, consumerlanguage: String, country: String, dateOfBirth: String, datetime_created: String, driverLicenceNumber: String, email: String, firstName: String, identificationNumber: String, kycPassed: java.lang.Boolean, lastName: String, nationality: String, passportNumber: String, phoneNumber: String, placeOfBirth: String, responseCode: java.lang.Long, responseMessage: String, state: String, street1: String, street2: String, transactionhistory_id: String, zip: String)

  final case class OutputUpdateConsumerCreateData(city: String, consumerUuid: String, consumerlanguage: String, country: String, dateOfBirth: String, datetime_created: String, driverLicenceNumber: String, email: String, firstName: String, identificationNumber: String, kycPassed: java.lang.Boolean, lastName: String, nationality: String, passportNumber: String, phoneNumber: String, placeOfBirth: String, responseCode: java.lang.Long, responseMessage: String, state: String, street1: String, street2: String, transactionhistory_id: String, zip: String)

  final case class OutputUpdateProfile(consumerLanguage: String, email: String, firstName: String, lastName: String, phoneNumber: String, responseCode: java.lang.Long, responseMessage: String)

  final case class OutputUpdateProfileCreateData(consumerLanguage: String, email: String, firstName: String, lastName: String, phoneNumber: String, responseCode: java.lang.Long, responseMessage: String)

  final case class Version(appName: String, buildDate: String, version: String)

  final case class VersionLoadMatch(appName: String, buildDate: String, version: String)

}

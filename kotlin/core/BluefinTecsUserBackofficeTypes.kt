package voxgig.bluefintecsuserbackofficesdk.core

// Typed reference models for the BluefinTecsUserBackoffice SDK.
//
// GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
// params (op.<name>.points[].args.params[]). Field/param types come from the
// canonical type sentinels (source of truth: @voxgig/apidef VALID_CANON). Do
// not edit by hand.
//
// These types are documentation/DX reference shapes ONLY. The SDK ops take and
// return the loose object model (MutableMap<String, Any?> / Any?) at runtime,
// so these types are not wired into the op signatures — use them to describe a
// payload before converting it to a map. Every component is a nullable type, so
// an optional (req:false) key needs no distinct rendering.

@Suppress("unused")
object BluefinTecsUserBackofficeTypes {

  data class OutputActivateDigitalModule(val responseCode: Long?, val responseMessage: String?)

  data class OutputActivateDigitalModuleCreateData(val responseCode: Long?, val responseMessage: String?)

  data class OutputActivatePortalModule(val clientSecret: String?, val notificationEmail: String?, val responseCode: Long?, val responseMessage: String?)

  data class OutputActivatePortalModuleCreateData(val clientSecret: String?, val notificationEmail: String?, val responseCode: Long?, val responseMessage: String?)

  data class OutputActivateStoreModule(val responseCode: Long?, val responseMessage: String?)

  data class OutputActivateStoreModuleCreateData(val responseCode: Long?, val responseMessage: String?)

  data class OutputActivateUser(val consumerUUID: String?, val responseCode: Long?, val responseMessage: String?)

  data class OutputActivateUserCreateData(val consumerUUID: String?, val responseCode: Long?, val responseMessage: String?)

  data class OutputAssignRole(val consumerUUID: String?, val responseCode: Long?, val responseMessage: String?, val roles: List<Any?>?)

  data class OutputAssignRoleCreateData(val consumerUUID: String?, val responseCode: Long?, val responseMessage: String?, val roles: List<Any?>?)

  data class OutputChangeLogo(val contentAsBase64: String?, val mimeType: String?, val responseCode: Long?, val responseMessage: String?)

  data class OutputChangeLogoCreateData(val contentAsBase64: String?, val mimeType: String?, val responseCode: Long?, val responseMessage: String?)

  data class OutputCreateMandator(val city: String?, val country: String?, val dateOfBirth: String?, val description: String?, val driversLicenseNumber: String?, val email: String?, val firstName: String?, val identificationNumber: String?, val lastName: String?, val login: String?, val name: String?, val passportNumber: String?, val phone: String?, val salutation: String?, val state: String?, val street1: String?, val street2: String?, val zipCode: String?)

  data class OutputCreateMandatorCreateData(val city: String?, val country: String?, val dateOfBirth: String?, val description: String?, val driversLicenseNumber: String?, val email: String?, val firstName: String?, val identificationNumber: String?, val lastName: String?, val login: String?, val name: String?, val passportNumber: String?, val phone: String?, val salutation: String?, val state: String?, val street1: String?, val street2: String?, val zipCode: String?)

  data class OutputCreateServiceUser(val mandatorName: String?, val responseCode: Long?, val responseMessage: String?)

  data class OutputCreateServiceUserCreateData(val mandatorName: String?, val responseCode: Long?, val responseMessage: String?)

  data class OutputDeactivateUser(val consumerUUID: String?, val responseCode: Long?, val responseMessage: String?)

  data class OutputDeactivateUserCreateData(val consumerUUID: String?, val responseCode: Long?, val responseMessage: String?)

  data class OutputGetKycDocument(val caseID: String?, val encodedDataBase64: String?, val responseCode: Long?, val responseMessage: String?)

  data class OutputGetKycDocumentCreateData(val caseID: String?, val encodedDataBase64: String?, val responseCode: Long?, val responseMessage: String?)

  data class OutputGetLogo(val contentAsBase64: String?, val mimeType: String?, val responseCode: Long?, val responseMessage: String?)

  data class OutputGetLogoLoadMatch(val contentAsBase64: String?, val mimeType: String?, val responseCode: Long?, val responseMessage: String?)

  data class OutputListOfAvailableRole(val availableRoles: List<Any?>?, val responseCode: Long?, val responseMessage: String?)

  data class OutputListOfAvailableRoleCreateData(val availableRoles: List<Any?>?, val responseCode: Long?, val responseMessage: String?)

  data class OutputListOfMandator(val filter: Map<String, Any?>?, val list: List<Any?>?, val pagination: Map<String, Any?>?, val responseCode: Long?, val responseMessage: String?, val sorting: Map<String, Any?>?)

  data class OutputListOfMandatorCreateData(val filter: Map<String, Any?>?, val list: List<Any?>?, val pagination: Map<String, Any?>?, val responseCode: Long?, val responseMessage: String?, val sorting: Map<String, Any?>?)

  data class OutputListOfModule(val list: List<Any?>?, val pagination: Map<String, Any?>?, val responseCode: Long?, val responseMessage: String?)

  data class OutputListOfModuleCreateData(val list: List<Any?>?, val pagination: Map<String, Any?>?, val responseCode: Long?, val responseMessage: String?)

  data class OutputListOfRoleGroup(val filter: Map<String, Any?>?, val groupRoles: List<Any?>?, val pagination: Map<String, Any?>?, val responseCode: Long?, val responseMessage: String?, val sorting: Map<String, Any?>?)

  data class OutputListOfRoleGroupCreateData(val filter: Map<String, Any?>?, val groupRoles: List<Any?>?, val pagination: Map<String, Any?>?, val responseCode: Long?, val responseMessage: String?, val sorting: Map<String, Any?>?)

  data class OutputListOfTransactionsHistory(val filter: Map<String, Any?>?, val list: List<Any?>?, val pagination: Map<String, Any?>?, val responseCode: Long?, val responseMessage: String?, val sorting: Map<String, Any?>?)

  data class OutputListOfTransactionsHistoryCreateData(val filter: Map<String, Any?>?, val list: List<Any?>?, val pagination: Map<String, Any?>?, val responseCode: Long?, val responseMessage: String?, val sorting: Map<String, Any?>?)

  data class OutputListOfUser(val filter: Map<String, Any?>?, val list: List<Any?>?, val pagination: Map<String, Any?>?, val responseCode: Long?, val responseMessage: String?, val sorting: Map<String, Any?>?)

  data class OutputListOfUserCreateData(val filter: Map<String, Any?>?, val list: List<Any?>?, val pagination: Map<String, Any?>?, val responseCode: Long?, val responseMessage: String?, val sorting: Map<String, Any?>?)

  data class OutputProvideCredential(val mandatorName: String?, val password: String?, val responseCode: Long?, val responseMessage: String?, val username: String?)

  data class OutputProvideCredentialCreateData(val mandatorName: String?, val password: String?, val responseCode: Long?, val responseMessage: String?, val username: String?)

  data class OutputRegisterUser(val city: String?, val consumerId: String?, val consumerLanguage: String?, val country: String?, val dateOfBirth: String?, val driverLicenceNumber: String?, val email: String?, val firstName: String?, val identificationNumber: String?, val lastName: String?, val login: String?, val module: String?, val passportNumber: String?, val phone: String?, val responseCode: Long?, val responseMessage: String?, val salutation: String?, val state: String?, val street1: String?, val street2: String?, val zip: String?)

  data class OutputRegisterUserCreateData(val city: String?, val consumerId: String?, val consumerLanguage: String?, val country: String?, val dateOfBirth: String?, val driverLicenceNumber: String?, val email: String?, val firstName: String?, val identificationNumber: String?, val lastName: String?, val login: String?, val module: String?, val passportNumber: String?, val phone: String?, val responseCode: Long?, val responseMessage: String?, val salutation: String?, val state: String?, val street1: String?, val street2: String?, val zip: String?)

  data class OutputRemoveRole(val consumerUUID: String?, val responseCode: Long?, val responseMessage: String?, val roles: List<Any?>?)

  data class OutputRemoveRoleCreateData(val consumerUUID: String?, val responseCode: Long?, val responseMessage: String?, val roles: List<Any?>?)

  data class OutputResendLink(val businessRegistrationNumber: String?, val consumerUUID: String?, val emailConfirmationCode: String?, val phoneNumber: String?, val responseCode: Long?, val responseMessage: String?)

  data class OutputResendLinkCreateData(val businessRegistrationNumber: String?, val consumerUUID: String?, val emailConfirmationCode: String?, val phoneNumber: String?, val responseCode: Long?, val responseMessage: String?)

  data class OutputResetPassword(val consumerUuid: String?, val phoneNumber: String?, val responseCode: Long?, val responseMessage: String?)

  data class OutputResetPasswordCreateData(val consumerUuid: String?, val phoneNumber: String?, val responseCode: Long?, val responseMessage: String?)

  data class OutputUpdateConsumer(val city: String?, val consumerUuid: String?, val consumerlanguage: String?, val country: String?, val dateOfBirth: String?, val datetime_created: String?, val driverLicenceNumber: String?, val email: String?, val firstName: String?, val identificationNumber: String?, val kycPassed: Boolean?, val lastName: String?, val nationality: String?, val passportNumber: String?, val phoneNumber: String?, val placeOfBirth: String?, val responseCode: Long?, val responseMessage: String?, val state: String?, val street1: String?, val street2: String?, val transactionhistory_id: String?, val zip: String?)

  data class OutputUpdateConsumerCreateData(val city: String?, val consumerUuid: String?, val consumerlanguage: String?, val country: String?, val dateOfBirth: String?, val datetime_created: String?, val driverLicenceNumber: String?, val email: String?, val firstName: String?, val identificationNumber: String?, val kycPassed: Boolean?, val lastName: String?, val nationality: String?, val passportNumber: String?, val phoneNumber: String?, val placeOfBirth: String?, val responseCode: Long?, val responseMessage: String?, val state: String?, val street1: String?, val street2: String?, val transactionhistory_id: String?, val zip: String?)

  data class OutputUpdateProfile(val consumerLanguage: String?, val email: String?, val firstName: String?, val lastName: String?, val phoneNumber: String?, val responseCode: Long?, val responseMessage: String?)

  data class OutputUpdateProfileCreateData(val consumerLanguage: String?, val email: String?, val firstName: String?, val lastName: String?, val phoneNumber: String?, val responseCode: Long?, val responseMessage: String?)

  data class Version(val appName: String?, val buildDate: String?, val version: String?)

  data class VersionLoadMatch(val appName: String?, val buildDate: String?, val version: String?)

}

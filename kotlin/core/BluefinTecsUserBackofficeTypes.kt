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

  data class OutputActivateDigitalModule(val response_code: Long?, val response_message: String?)

  data class OutputActivateDigitalModuleCreateData(val response_code: Long?, val response_message: String?)

  data class OutputActivatePortalModule(val client_secret: String?, val notification_email: String?, val response_code: Long?, val response_message: String?)

  data class OutputActivatePortalModuleCreateData(val client_secret: String?, val notification_email: String?, val response_code: Long?, val response_message: String?)

  data class OutputActivateStoreModule(val response_code: Long?, val response_message: String?)

  data class OutputActivateStoreModuleCreateData(val response_code: Long?, val response_message: String?)

  data class OutputActivateUser(val consumer_uuid: String?, val response_code: Long?, val response_message: String?)

  data class OutputActivateUserCreateData(val consumer_uuid: String?, val response_code: Long?, val response_message: String?)

  data class OutputAssignRole(val consumer_uuid: String?, val response_code: Long?, val response_message: String?, val role: List<Any?>?)

  data class OutputAssignRoleCreateData(val consumer_uuid: String?, val response_code: Long?, val response_message: String?, val role: List<Any?>?)

  data class OutputChangeLogo(val content_as_base64: String?, val mime_type: String?, val response_code: Long?, val response_message: String?)

  data class OutputChangeLogoCreateData(val content_as_base64: String?, val mime_type: String?, val response_code: Long?, val response_message: String?)

  data class OutputCreateMandator(val city: String?, val country: String?, val date_of_birth: String?, val description: String?, val drivers_license_number: String?, val email: String?, val first_name: String?, val identification_number: String?, val last_name: String?, val login: String?, val mandator: Map<String, Any?>?, val name: String?, val passport_number: String?, val phone: String?, val response_code: Long?, val response_message: String?, val salutation: String?, val state: String?, val street1: String?, val street2: String?, val zip_code: String?)

  data class OutputCreateMandatorCreateData(val city: String?, val country: String?, val date_of_birth: String?, val description: String?, val drivers_license_number: String?, val email: String?, val first_name: String?, val identification_number: String?, val last_name: String?, val login: String?, val mandator: Map<String, Any?>?, val name: String?, val passport_number: String?, val phone: String?, val response_code: Long?, val response_message: String?, val salutation: String?, val state: String?, val street1: String?, val street2: String?, val zip_code: String?)

  data class OutputCreateServiceUser(val mandator_name: String?, val response_code: Long?, val response_message: String?)

  data class OutputCreateServiceUserCreateData(val mandator_name: String?, val response_code: Long?, val response_message: String?)

  data class OutputDeactivateUser(val consumer_uuid: String?, val response_code: Long?, val response_message: String?)

  data class OutputDeactivateUserCreateData(val consumer_uuid: String?, val response_code: Long?, val response_message: String?)

  data class OutputGetKycDocument(val case_id: String?, val encoded_data_base64: String?, val response_code: Long?, val response_message: String?)

  data class OutputGetKycDocumentCreateData(val case_id: String?, val encoded_data_base64: String?, val response_code: Long?, val response_message: String?)

  data class OutputGetLogo(val content_as_base64: String?, val mime_type: String?, val response_code: Long?, val response_message: String?)

  data class OutputGetLogoLoadMatch(val content_as_base64: String?, val mime_type: String?, val response_code: Long?, val response_message: String?)

  data class OutputListOfAvailableRole(val available_role: List<Any?>?, val response_code: Long?, val response_message: String?)

  data class OutputListOfAvailableRoleCreateData(val available_role: List<Any?>?, val response_code: Long?, val response_message: String?)

  data class OutputListOfMandator(val filter: Map<String, Any?>?, val list: List<Any?>?, val pagination: Map<String, Any?>?, val response_code: Long?, val response_message: String?, val sorting: Map<String, Any?>?)

  data class OutputListOfMandatorCreateData(val filter: Map<String, Any?>?, val list: List<Any?>?, val pagination: Map<String, Any?>?, val response_code: Long?, val response_message: String?, val sorting: Map<String, Any?>?)

  data class OutputListOfModule(val list: List<Any?>?, val pagination: Map<String, Any?>?, val response_code: Long?, val response_message: String?)

  data class OutputListOfModuleCreateData(val list: List<Any?>?, val pagination: Map<String, Any?>?, val response_code: Long?, val response_message: String?)

  data class OutputListOfRoleGroup(val filter: Map<String, Any?>?, val group_role: List<Any?>?, val pagination: Map<String, Any?>?, val response_code: Long?, val response_message: String?, val sorting: Map<String, Any?>?)

  data class OutputListOfRoleGroupCreateData(val filter: Map<String, Any?>?, val group_role: List<Any?>?, val pagination: Map<String, Any?>?, val response_code: Long?, val response_message: String?, val sorting: Map<String, Any?>?)

  data class OutputListOfTransactionsHistory(val filter: Map<String, Any?>?, val list: List<Any?>?, val pagination: Map<String, Any?>?, val response_code: Long?, val response_message: String?, val sorting: Map<String, Any?>?)

  data class OutputListOfTransactionsHistoryCreateData(val filter: Map<String, Any?>?, val list: List<Any?>?, val pagination: Map<String, Any?>?, val response_code: Long?, val response_message: String?, val sorting: Map<String, Any?>?)

  data class OutputListOfUser(val filter: Map<String, Any?>?, val list: List<Any?>?, val pagination: Map<String, Any?>?, val response_code: Long?, val response_message: String?, val sorting: Map<String, Any?>?)

  data class OutputListOfUserCreateData(val filter: Map<String, Any?>?, val list: List<Any?>?, val pagination: Map<String, Any?>?, val response_code: Long?, val response_message: String?, val sorting: Map<String, Any?>?)

  data class OutputProvideCredential(val mandator_name: String?, val password: String?, val response_code: Long?, val response_message: String?, val username: String?)

  data class OutputProvideCredentialCreateData(val mandator_name: String?, val password: String?, val response_code: Long?, val response_message: String?, val username: String?)

  data class OutputRegisterUser(val city: String?, val consumer_id: String?, val consumer_language: String?, val country: String?, val date_of_birth: String?, val driver_licence_number: String?, val email: String?, val first_name: String?, val identification_number: String?, val last_name: String?, val login: String?, val module: String?, val passport_number: String?, val phone: String?, val response_code: Long?, val response_message: String?, val salutation: String?, val state: String?, val street1: String?, val street2: String?, val zip: String?)

  data class OutputRegisterUserCreateData(val city: String?, val consumer_id: String?, val consumer_language: String?, val country: String?, val date_of_birth: String?, val driver_licence_number: String?, val email: String?, val first_name: String?, val identification_number: String?, val last_name: String?, val login: String?, val module: String?, val passport_number: String?, val phone: String?, val response_code: Long?, val response_message: String?, val salutation: String?, val state: String?, val street1: String?, val street2: String?, val zip: String?)

  data class OutputRemoveRole(val consumer_uuid: String?, val response_code: Long?, val response_message: String?, val role: List<Any?>?)

  data class OutputRemoveRoleCreateData(val consumer_uuid: String?, val response_code: Long?, val response_message: String?, val role: List<Any?>?)

  data class OutputResendLink(val business_registration_number: String?, val consumer_uuid: String?, val email_confirmation_code: String?, val phone_number: String?, val response_code: Long?, val response_message: String?)

  data class OutputResendLinkCreateData(val business_registration_number: String?, val consumer_uuid: String?, val email_confirmation_code: String?, val phone_number: String?, val response_code: Long?, val response_message: String?)

  data class OutputResetPassword(val consumer_uuid: String?, val phone_number: String?, val response_code: Long?, val response_message: String?)

  data class OutputResetPasswordCreateData(val consumer_uuid: String?, val phone_number: String?, val response_code: Long?, val response_message: String?)

  data class OutputUpdateConsumer(val city: String?, val consumer_uuid: String?, val consumerlanguage: String?, val country: String?, val date_of_birth: String?, val datetime_created: String?, val driver_licence_number: String?, val email: String?, val first_name: String?, val identification_number: String?, val kyc_passed: Boolean?, val last_name: String?, val nationality: String?, val passport_number: String?, val phone_number: String?, val place_of_birth: String?, val response_code: Long?, val response_message: String?, val state: String?, val street1: String?, val street2: String?, val transactionhistory_id: String?, val zip: String?)

  data class OutputUpdateConsumerCreateData(val city: String?, val consumer_uuid: String?, val consumerlanguage: String?, val country: String?, val date_of_birth: String?, val datetime_created: String?, val driver_licence_number: String?, val email: String?, val first_name: String?, val identification_number: String?, val kyc_passed: Boolean?, val last_name: String?, val nationality: String?, val passport_number: String?, val phone_number: String?, val place_of_birth: String?, val response_code: Long?, val response_message: String?, val state: String?, val street1: String?, val street2: String?, val transactionhistory_id: String?, val zip: String?)

  data class OutputUpdateProfile(val consumer_language: String?, val email: String?, val first_name: String?, val last_name: String?, val phone_number: String?, val response_code: Long?, val response_message: String?)

  data class OutputUpdateProfileCreateData(val consumer_language: String?, val email: String?, val first_name: String?, val last_name: String?, val phone_number: String?, val response_code: Long?, val response_message: String?)

  data class Version(val app_name: String?, val build_date: String?, val version: String?)

  data class VersionLoadMatch(val app_name: String?, val build_date: String?, val version: String?)

}

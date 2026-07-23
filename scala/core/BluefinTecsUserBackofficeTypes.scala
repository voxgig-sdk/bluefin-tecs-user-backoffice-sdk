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

  final case class OutputActivateDigitalModule(response_code: java.lang.Long, response_message: String)

  final case class OutputActivateDigitalModuleCreateData(response_code: java.lang.Long, response_message: String)

  final case class OutputActivatePortalModule(client_secret: String, notification_email: String, response_code: java.lang.Long, response_message: String)

  final case class OutputActivatePortalModuleCreateData(client_secret: String, notification_email: String, response_code: java.lang.Long, response_message: String)

  final case class OutputActivateStoreModule(response_code: java.lang.Long, response_message: String)

  final case class OutputActivateStoreModuleCreateData(response_code: java.lang.Long, response_message: String)

  final case class OutputActivateUser(consumer_uuid: String, response_code: java.lang.Long, response_message: String)

  final case class OutputActivateUserCreateData(consumer_uuid: String, response_code: java.lang.Long, response_message: String)

  final case class OutputAssignRole(consumer_uuid: String, response_code: java.lang.Long, response_message: String, role: java.util.List[Object])

  final case class OutputAssignRoleCreateData(consumer_uuid: String, response_code: java.lang.Long, response_message: String, role: java.util.List[Object])

  final case class OutputChangeLogo(content_as_base64: String, mime_type: String, response_code: java.lang.Long, response_message: String)

  final case class OutputChangeLogoCreateData(content_as_base64: String, mime_type: String, response_code: java.lang.Long, response_message: String)

  final case class OutputCreateMandator(city: String, country: String, date_of_birth: String, description: String, drivers_license_number: String, email: String, first_name: String, identification_number: String, last_name: String, login: String, mandator: java.util.Map[String, Object], name: String, passport_number: String, phone: String, response_code: java.lang.Long, response_message: String, salutation: String, state: String, street1: String, street2: String, zip_code: String)

  final case class OutputCreateMandatorCreateData(city: String, country: String, date_of_birth: String, description: String, drivers_license_number: String, email: String, first_name: String, identification_number: String, last_name: String, login: String, mandator: java.util.Map[String, Object], name: String, passport_number: String, phone: String, response_code: java.lang.Long, response_message: String, salutation: String, state: String, street1: String, street2: String, zip_code: String)

  final case class OutputCreateServiceUser(mandator_name: String, response_code: java.lang.Long, response_message: String)

  final case class OutputCreateServiceUserCreateData(mandator_name: String, response_code: java.lang.Long, response_message: String)

  final case class OutputDeactivateUser(consumer_uuid: String, response_code: java.lang.Long, response_message: String)

  final case class OutputDeactivateUserCreateData(consumer_uuid: String, response_code: java.lang.Long, response_message: String)

  final case class OutputGetKycDocument(case_id: String, encoded_data_base64: String, response_code: java.lang.Long, response_message: String)

  final case class OutputGetKycDocumentCreateData(case_id: String, encoded_data_base64: String, response_code: java.lang.Long, response_message: String)

  final case class OutputGetLogo(content_as_base64: String, mime_type: String, response_code: java.lang.Long, response_message: String)

  final case class OutputGetLogoLoadMatch(content_as_base64: String, mime_type: String, response_code: java.lang.Long, response_message: String)

  final case class OutputListOfAvailableRole(available_role: java.util.List[Object], response_code: java.lang.Long, response_message: String)

  final case class OutputListOfAvailableRoleCreateData(available_role: java.util.List[Object], response_code: java.lang.Long, response_message: String)

  final case class OutputListOfMandator(filter: java.util.Map[String, Object], list: java.util.List[Object], pagination: java.util.Map[String, Object], response_code: java.lang.Long, response_message: String, sorting: java.util.Map[String, Object])

  final case class OutputListOfMandatorCreateData(filter: java.util.Map[String, Object], list: java.util.List[Object], pagination: java.util.Map[String, Object], response_code: java.lang.Long, response_message: String, sorting: java.util.Map[String, Object])

  final case class OutputListOfModule(list: java.util.List[Object], pagination: java.util.Map[String, Object], response_code: java.lang.Long, response_message: String)

  final case class OutputListOfModuleCreateData(list: java.util.List[Object], pagination: java.util.Map[String, Object], response_code: java.lang.Long, response_message: String)

  final case class OutputListOfRoleGroup(filter: java.util.Map[String, Object], group_role: java.util.List[Object], pagination: java.util.Map[String, Object], response_code: java.lang.Long, response_message: String, sorting: java.util.Map[String, Object])

  final case class OutputListOfRoleGroupCreateData(filter: java.util.Map[String, Object], group_role: java.util.List[Object], pagination: java.util.Map[String, Object], response_code: java.lang.Long, response_message: String, sorting: java.util.Map[String, Object])

  final case class OutputListOfTransactionsHistory(filter: java.util.Map[String, Object], list: java.util.List[Object], pagination: java.util.Map[String, Object], response_code: java.lang.Long, response_message: String, sorting: java.util.Map[String, Object])

  final case class OutputListOfTransactionsHistoryCreateData(filter: java.util.Map[String, Object], list: java.util.List[Object], pagination: java.util.Map[String, Object], response_code: java.lang.Long, response_message: String, sorting: java.util.Map[String, Object])

  final case class OutputListOfUser(filter: java.util.Map[String, Object], list: java.util.List[Object], pagination: java.util.Map[String, Object], response_code: java.lang.Long, response_message: String, sorting: java.util.Map[String, Object])

  final case class OutputListOfUserCreateData(filter: java.util.Map[String, Object], list: java.util.List[Object], pagination: java.util.Map[String, Object], response_code: java.lang.Long, response_message: String, sorting: java.util.Map[String, Object])

  final case class OutputProvideCredential(mandator_name: String, password: String, response_code: java.lang.Long, response_message: String, username: String)

  final case class OutputProvideCredentialCreateData(mandator_name: String, password: String, response_code: java.lang.Long, response_message: String, username: String)

  final case class OutputRegisterUser(city: String, consumer_id: String, consumer_language: String, country: String, date_of_birth: String, driver_licence_number: String, email: String, first_name: String, identification_number: String, last_name: String, login: String, module: String, passport_number: String, phone: String, response_code: java.lang.Long, response_message: String, salutation: String, state: String, street1: String, street2: String, zip: String)

  final case class OutputRegisterUserCreateData(city: String, consumer_id: String, consumer_language: String, country: String, date_of_birth: String, driver_licence_number: String, email: String, first_name: String, identification_number: String, last_name: String, login: String, module: String, passport_number: String, phone: String, response_code: java.lang.Long, response_message: String, salutation: String, state: String, street1: String, street2: String, zip: String)

  final case class OutputRemoveRole(consumer_uuid: String, response_code: java.lang.Long, response_message: String, role: java.util.List[Object])

  final case class OutputRemoveRoleCreateData(consumer_uuid: String, response_code: java.lang.Long, response_message: String, role: java.util.List[Object])

  final case class OutputResendLink(business_registration_number: String, consumer_uuid: String, email_confirmation_code: String, phone_number: String, response_code: java.lang.Long, response_message: String)

  final case class OutputResendLinkCreateData(business_registration_number: String, consumer_uuid: String, email_confirmation_code: String, phone_number: String, response_code: java.lang.Long, response_message: String)

  final case class OutputResetPassword(consumer_uuid: String, phone_number: String, response_code: java.lang.Long, response_message: String)

  final case class OutputResetPasswordCreateData(consumer_uuid: String, phone_number: String, response_code: java.lang.Long, response_message: String)

  final case class OutputUpdateConsumer(city: String, consumer_uuid: String, consumerlanguage: String, country: String, date_of_birth: String, datetime_created: String, driver_licence_number: String, email: String, first_name: String, identification_number: String, kyc_passed: java.lang.Boolean, last_name: String, nationality: String, passport_number: String, phone_number: String, place_of_birth: String, response_code: java.lang.Long, response_message: String, state: String, street1: String, street2: String, transactionhistory_id: String, zip: String)

  final case class OutputUpdateConsumerCreateData(city: String, consumer_uuid: String, consumerlanguage: String, country: String, date_of_birth: String, datetime_created: String, driver_licence_number: String, email: String, first_name: String, identification_number: String, kyc_passed: java.lang.Boolean, last_name: String, nationality: String, passport_number: String, phone_number: String, place_of_birth: String, response_code: java.lang.Long, response_message: String, state: String, street1: String, street2: String, transactionhistory_id: String, zip: String)

  final case class OutputUpdateProfile(consumer_language: String, email: String, first_name: String, last_name: String, phone_number: String, response_code: java.lang.Long, response_message: String)

  final case class OutputUpdateProfileCreateData(consumer_language: String, email: String, first_name: String, last_name: String, phone_number: String, response_code: java.lang.Long, response_message: String)

  final case class Version(app_name: String, build_date: String, version: String)

  final case class VersionLoadMatch(app_name: String, build_date: String, version: String)

}

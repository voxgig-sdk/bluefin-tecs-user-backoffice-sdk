package voxgig.bluefintecsuserbackofficesdk.core;

// Typed reference models for the BluefinTecsUserBackoffice SDK.
//
// GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
// params (op.<name>.points[].args.params[]). Field/param types come from the
// canonical type sentinels (source of truth: @voxgig/apidef VALID_CANON). Do
// not edit by hand.
//
// These records are documentation/DX reference shapes ONLY. The SDK ops take
// and return the loose object model (Map<String, Object> / Object) at runtime,
// so these types are not wired into the op signatures — use them to describe a
// payload before converting it to a map. Every component is a boxed (nullable)
// type, so an optional (req:false) key needs no distinct rendering.

import java.util.List;
import java.util.Map;

public final class BluefinTecsUserBackofficeTypes {

  private BluefinTecsUserBackofficeTypes() {}

  public record OutputActivateDigitalModule(Long response_code, String response_message) {}

  public record OutputActivateDigitalModuleCreateData(Long response_code, String response_message) {}

  public record OutputActivatePortalModule(String client_secret, String notification_email, Long response_code, String response_message) {}

  public record OutputActivatePortalModuleCreateData(String client_secret, String notification_email, Long response_code, String response_message) {}

  public record OutputActivateStoreModule(Long response_code, String response_message) {}

  public record OutputActivateStoreModuleCreateData(Long response_code, String response_message) {}

  public record OutputActivateUser(String consumer_uuid, Long response_code, String response_message) {}

  public record OutputActivateUserCreateData(String consumer_uuid, Long response_code, String response_message) {}

  public record OutputAssignRole(String consumer_uuid, Long response_code, String response_message, List<Object> role) {}

  public record OutputAssignRoleCreateData(String consumer_uuid, Long response_code, String response_message, List<Object> role) {}

  public record OutputChangeLogo(String content_as_base64, String mime_type, Long response_code, String response_message) {}

  public record OutputChangeLogoCreateData(String content_as_base64, String mime_type, Long response_code, String response_message) {}

  public record OutputCreateMandator(String city, String country, String date_of_birth, String description, String drivers_license_number, String email, String first_name, String identification_number, String last_name, String login, Map<String, Object> mandator, String name, String passport_number, String phone, Long response_code, String response_message, String salutation, String state, String street1, String street2, String zip_code) {}

  public record OutputCreateMandatorCreateData(String city, String country, String date_of_birth, String description, String drivers_license_number, String email, String first_name, String identification_number, String last_name, String login, Map<String, Object> mandator, String name, String passport_number, String phone, Long response_code, String response_message, String salutation, String state, String street1, String street2, String zip_code) {}

  public record OutputCreateServiceUser(String mandator_name, Long response_code, String response_message) {}

  public record OutputCreateServiceUserCreateData(String mandator_name, Long response_code, String response_message) {}

  public record OutputDeactivateUser(String consumer_uuid, Long response_code, String response_message) {}

  public record OutputDeactivateUserCreateData(String consumer_uuid, Long response_code, String response_message) {}

  public record OutputGetKycDocument(String case_id, String encoded_data_base64, Long response_code, String response_message) {}

  public record OutputGetKycDocumentCreateData(String case_id, String encoded_data_base64, Long response_code, String response_message) {}

  public record OutputGetLogo(String content_as_base64, String mime_type, Long response_code, String response_message) {}

  public record OutputGetLogoLoadMatch(String content_as_base64, String mime_type, Long response_code, String response_message) {}

  public record OutputListOfAvailableRole(List<Object> available_role, Long response_code, String response_message) {}

  public record OutputListOfAvailableRoleCreateData(List<Object> available_role, Long response_code, String response_message) {}

  public record OutputListOfMandator(Map<String, Object> filter, List<Object> list, Map<String, Object> pagination, Long response_code, String response_message, Map<String, Object> sorting) {}

  public record OutputListOfMandatorCreateData(Map<String, Object> filter, List<Object> list, Map<String, Object> pagination, Long response_code, String response_message, Map<String, Object> sorting) {}

  public record OutputListOfModule(List<Object> list, Map<String, Object> pagination, Long response_code, String response_message) {}

  public record OutputListOfModuleCreateData(List<Object> list, Map<String, Object> pagination, Long response_code, String response_message) {}

  public record OutputListOfRoleGroup(Map<String, Object> filter, List<Object> group_role, Map<String, Object> pagination, Long response_code, String response_message, Map<String, Object> sorting) {}

  public record OutputListOfRoleGroupCreateData(Map<String, Object> filter, List<Object> group_role, Map<String, Object> pagination, Long response_code, String response_message, Map<String, Object> sorting) {}

  public record OutputListOfTransactionsHistory(Map<String, Object> filter, List<Object> list, Map<String, Object> pagination, Long response_code, String response_message, Map<String, Object> sorting) {}

  public record OutputListOfTransactionsHistoryCreateData(Map<String, Object> filter, List<Object> list, Map<String, Object> pagination, Long response_code, String response_message, Map<String, Object> sorting) {}

  public record OutputListOfUser(Map<String, Object> filter, List<Object> list, Map<String, Object> pagination, Long response_code, String response_message, Map<String, Object> sorting) {}

  public record OutputListOfUserCreateData(Map<String, Object> filter, List<Object> list, Map<String, Object> pagination, Long response_code, String response_message, Map<String, Object> sorting) {}

  public record OutputProvideCredential(String mandator_name, String password, Long response_code, String response_message, String username) {}

  public record OutputProvideCredentialCreateData(String mandator_name, String password, Long response_code, String response_message, String username) {}

  public record OutputRegisterUser(String city, String consumer_id, String consumer_language, String country, String date_of_birth, String driver_licence_number, String email, String first_name, String identification_number, String last_name, String login, String module, String passport_number, String phone, Long response_code, String response_message, String salutation, String state, String street1, String street2, String zip) {}

  public record OutputRegisterUserCreateData(String city, String consumer_id, String consumer_language, String country, String date_of_birth, String driver_licence_number, String email, String first_name, String identification_number, String last_name, String login, String module, String passport_number, String phone, Long response_code, String response_message, String salutation, String state, String street1, String street2, String zip) {}

  public record OutputRemoveRole(String consumer_uuid, Long response_code, String response_message, List<Object> role) {}

  public record OutputRemoveRoleCreateData(String consumer_uuid, Long response_code, String response_message, List<Object> role) {}

  public record OutputResendLink(String business_registration_number, String consumer_uuid, String email_confirmation_code, String phone_number, Long response_code, String response_message) {}

  public record OutputResendLinkCreateData(String business_registration_number, String consumer_uuid, String email_confirmation_code, String phone_number, Long response_code, String response_message) {}

  public record OutputResetPassword(String consumer_uuid, String phone_number, Long response_code, String response_message) {}

  public record OutputResetPasswordCreateData(String consumer_uuid, String phone_number, Long response_code, String response_message) {}

  public record OutputUpdateConsumer(String city, String consumer_uuid, String consumerlanguage, String country, String date_of_birth, String datetime_created, String driver_licence_number, String email, String first_name, String identification_number, Boolean kyc_passed, String last_name, String nationality, String passport_number, String phone_number, String place_of_birth, Long response_code, String response_message, String state, String street1, String street2, String transactionhistory_id, String zip) {}

  public record OutputUpdateConsumerCreateData(String city, String consumer_uuid, String consumerlanguage, String country, String date_of_birth, String datetime_created, String driver_licence_number, String email, String first_name, String identification_number, Boolean kyc_passed, String last_name, String nationality, String passport_number, String phone_number, String place_of_birth, Long response_code, String response_message, String state, String street1, String street2, String transactionhistory_id, String zip) {}

  public record OutputUpdateProfile(String consumer_language, String email, String first_name, String last_name, String phone_number, Long response_code, String response_message) {}

  public record OutputUpdateProfileCreateData(String consumer_language, String email, String first_name, String last_name, String phone_number, Long response_code, String response_message) {}

  public record Version(String app_name, String build_date, String version) {}

  public record VersionLoadMatch(String app_name, String build_date, String version) {}

}

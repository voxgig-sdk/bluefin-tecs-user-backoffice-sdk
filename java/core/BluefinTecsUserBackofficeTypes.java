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

  public record OutputActivateDigitalModule(Long responseCode, String responseMessage) {}

  public record OutputActivateDigitalModuleCreateData(Long responseCode, String responseMessage) {}

  public record OutputActivatePortalModule(String clientSecret, String notificationEmail, Long responseCode, String responseMessage) {}

  public record OutputActivatePortalModuleCreateData(String clientSecret, String notificationEmail, Long responseCode, String responseMessage) {}

  public record OutputActivateStoreModule(Long responseCode, String responseMessage) {}

  public record OutputActivateStoreModuleCreateData(Long responseCode, String responseMessage) {}

  public record OutputActivateUser(String consumerUUID, Long responseCode, String responseMessage) {}

  public record OutputActivateUserCreateData(String consumerUUID, Long responseCode, String responseMessage) {}

  public record OutputAssignRole(String consumerUUID, Long responseCode, String responseMessage, List<Object> roles) {}

  public record OutputAssignRoleCreateData(String consumerUUID, Long responseCode, String responseMessage, List<Object> roles) {}

  public record OutputChangeLogo(String contentAsBase64, String mimeType, Long responseCode, String responseMessage) {}

  public record OutputChangeLogoCreateData(String contentAsBase64, String mimeType, Long responseCode, String responseMessage) {}

  public record OutputCreateMandator(String city, String country, String dateOfBirth, String description, String driversLicenseNumber, String email, String firstName, String identificationNumber, String lastName, String login, String name, String passportNumber, String phone, String salutation, String state, String street1, String street2, String zipCode) {}

  public record OutputCreateMandatorCreateData(String city, String country, String dateOfBirth, String description, String driversLicenseNumber, String email, String firstName, String identificationNumber, String lastName, String login, String name, String passportNumber, String phone, String salutation, String state, String street1, String street2, String zipCode) {}

  public record OutputCreateServiceUser(String mandatorName, Long responseCode, String responseMessage) {}

  public record OutputCreateServiceUserCreateData(String mandatorName, Long responseCode, String responseMessage) {}

  public record OutputDeactivateUser(String consumerUUID, Long responseCode, String responseMessage) {}

  public record OutputDeactivateUserCreateData(String consumerUUID, Long responseCode, String responseMessage) {}

  public record OutputGetKycDocument(String caseID, String encodedDataBase64, Long responseCode, String responseMessage) {}

  public record OutputGetKycDocumentCreateData(String caseID, String encodedDataBase64, Long responseCode, String responseMessage) {}

  public record OutputGetLogo(String contentAsBase64, String mimeType, Long responseCode, String responseMessage) {}

  public record OutputGetLogoLoadMatch(String contentAsBase64, String mimeType, Long responseCode, String responseMessage) {}

  public record OutputListOfAvailableRole(List<Object> availableRoles, Long responseCode, String responseMessage) {}

  public record OutputListOfAvailableRoleCreateData(List<Object> availableRoles, Long responseCode, String responseMessage) {}

  public record OutputListOfMandator(Map<String, Object> filter, List<Object> list, Map<String, Object> pagination, Long responseCode, String responseMessage, Map<String, Object> sorting) {}

  public record OutputListOfMandatorCreateData(Map<String, Object> filter, List<Object> list, Map<String, Object> pagination, Long responseCode, String responseMessage, Map<String, Object> sorting) {}

  public record OutputListOfModule(List<Object> list, Map<String, Object> pagination, Long responseCode, String responseMessage) {}

  public record OutputListOfModuleCreateData(List<Object> list, Map<String, Object> pagination, Long responseCode, String responseMessage) {}

  public record OutputListOfRoleGroup(Map<String, Object> filter, List<Object> groupRoles, Map<String, Object> pagination, Long responseCode, String responseMessage, Map<String, Object> sorting) {}

  public record OutputListOfRoleGroupCreateData(Map<String, Object> filter, List<Object> groupRoles, Map<String, Object> pagination, Long responseCode, String responseMessage, Map<String, Object> sorting) {}

  public record OutputListOfTransactionsHistory(Map<String, Object> filter, List<Object> list, Map<String, Object> pagination, Long responseCode, String responseMessage, Map<String, Object> sorting) {}

  public record OutputListOfTransactionsHistoryCreateData(Map<String, Object> filter, List<Object> list, Map<String, Object> pagination, Long responseCode, String responseMessage, Map<String, Object> sorting) {}

  public record OutputListOfUser(Map<String, Object> filter, List<Object> list, Map<String, Object> pagination, Long responseCode, String responseMessage, Map<String, Object> sorting) {}

  public record OutputListOfUserCreateData(Map<String, Object> filter, List<Object> list, Map<String, Object> pagination, Long responseCode, String responseMessage, Map<String, Object> sorting) {}

  public record OutputProvideCredential(String mandatorName, String password, Long responseCode, String responseMessage, String username) {}

  public record OutputProvideCredentialCreateData(String mandatorName, String password, Long responseCode, String responseMessage, String username) {}

  public record OutputRegisterUser(String city, String consumerId, String consumerLanguage, String country, String dateOfBirth, String driverLicenceNumber, String email, String firstName, String identificationNumber, String lastName, String login, String module, String passportNumber, String phone, Long responseCode, String responseMessage, String salutation, String state, String street1, String street2, String zip) {}

  public record OutputRegisterUserCreateData(String city, String consumerId, String consumerLanguage, String country, String dateOfBirth, String driverLicenceNumber, String email, String firstName, String identificationNumber, String lastName, String login, String module, String passportNumber, String phone, Long responseCode, String responseMessage, String salutation, String state, String street1, String street2, String zip) {}

  public record OutputRemoveRole(String consumerUUID, Long responseCode, String responseMessage, List<Object> roles) {}

  public record OutputRemoveRoleCreateData(String consumerUUID, Long responseCode, String responseMessage, List<Object> roles) {}

  public record OutputResendLink(String businessRegistrationNumber, String consumerUUID, String emailConfirmationCode, String phoneNumber, Long responseCode, String responseMessage) {}

  public record OutputResendLinkCreateData(String businessRegistrationNumber, String consumerUUID, String emailConfirmationCode, String phoneNumber, Long responseCode, String responseMessage) {}

  public record OutputResetPassword(String consumerUuid, String phoneNumber, Long responseCode, String responseMessage) {}

  public record OutputResetPasswordCreateData(String consumerUuid, String phoneNumber, Long responseCode, String responseMessage) {}

  public record OutputUpdateConsumer(String city, String consumerUuid, String consumerlanguage, String country, String dateOfBirth, String datetime_created, String driverLicenceNumber, String email, String firstName, String identificationNumber, Boolean kycPassed, String lastName, String nationality, String passportNumber, String phoneNumber, String placeOfBirth, Long responseCode, String responseMessage, String state, String street1, String street2, String transactionhistory_id, String zip) {}

  public record OutputUpdateConsumerCreateData(String city, String consumerUuid, String consumerlanguage, String country, String dateOfBirth, String datetime_created, String driverLicenceNumber, String email, String firstName, String identificationNumber, Boolean kycPassed, String lastName, String nationality, String passportNumber, String phoneNumber, String placeOfBirth, Long responseCode, String responseMessage, String state, String street1, String street2, String transactionhistory_id, String zip) {}

  public record OutputUpdateProfile(String consumerLanguage, String email, String firstName, String lastName, String phoneNumber, Long responseCode, String responseMessage) {}

  public record OutputUpdateProfileCreateData(String consumerLanguage, String email, String firstName, String lastName, String phoneNumber, Long responseCode, String responseMessage) {}

  public record Version(String appName, String buildDate, String version) {}

  public record VersionLoadMatch(String appName, String buildDate, String version) {}

}

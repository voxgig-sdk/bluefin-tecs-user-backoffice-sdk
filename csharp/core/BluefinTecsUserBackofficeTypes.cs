// Typed reference models for the BluefinTecsUserBackoffice SDK.
//
// GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
// params (op.<name>.points[].args.params[]). Field/param types come from the
// canonical type sentinels (source of truth: @voxgig/apidef VALID_CANON). Do
// not edit by hand.
//
// These records are documentation/DX reference shapes ONLY. The SDK ops take
// and return the loose object model (Dictionary<string, object?> / object?) at
// runtime, so these types are not wired into the op signatures — use them to
// describe a payload before converting it to a dictionary. Optional (req:false)
// keys are modelled as nullable properties.

namespace BluefinTecsUserBackofficeSdk.Types;

public record OutputActivateDigitalModule
{
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
}

public record OutputActivateDigitalModuleCreateData
{
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
}

public record OutputActivatePortalModule
{
    public string clientSecret { get; init; }
    public string notificationEmail { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
}

public record OutputActivatePortalModuleCreateData
{
    public string clientSecret { get; init; }
    public string notificationEmail { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
}

public record OutputActivateStoreModule
{
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
}

public record OutputActivateStoreModuleCreateData
{
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
}

public record OutputActivateUser
{
    public string? consumerUUID { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
}

public record OutputActivateUserCreateData
{
    public string? consumerUUID { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
}

public record OutputAssignRole
{
    public string consumerUUID { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
    public List<object?> roles { get; init; }
}

public record OutputAssignRoleCreateData
{
    public string consumerUUID { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
    public List<object?> roles { get; init; }
}

public record OutputChangeLogo
{
    public string contentAsBase64 { get; init; }
    public string mimeType { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
}

public record OutputChangeLogoCreateData
{
    public string contentAsBase64 { get; init; }
    public string mimeType { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
}

public record OutputCreateMandator
{
    public string? city { get; init; }
    public string? country { get; init; }
    public string? dateOfBirth { get; init; }
    public string? description { get; init; }
    public string? driversLicenseNumber { get; init; }
    public string email { get; init; }
    public string? firstName { get; init; }
    public string? identificationNumber { get; init; }
    public string? lastName { get; init; }
    public string login { get; init; }
    public string? name { get; init; }
    public string? passportNumber { get; init; }
    public string phone { get; init; }
    public string? salutation { get; init; }
    public string? state { get; init; }
    public string? street1 { get; init; }
    public string? street2 { get; init; }
    public string? zipCode { get; init; }
}

public record OutputCreateMandatorCreateData
{
    public string? city { get; init; }
    public string? country { get; init; }
    public string? dateOfBirth { get; init; }
    public string? description { get; init; }
    public string? driversLicenseNumber { get; init; }
    public string email { get; init; }
    public string? firstName { get; init; }
    public string? identificationNumber { get; init; }
    public string? lastName { get; init; }
    public string login { get; init; }
    public string? name { get; init; }
    public string? passportNumber { get; init; }
    public string phone { get; init; }
    public string? salutation { get; init; }
    public string? state { get; init; }
    public string? street1 { get; init; }
    public string? street2 { get; init; }
    public string? zipCode { get; init; }
}

public record OutputCreateServiceUser
{
    public string mandatorName { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
}

public record OutputCreateServiceUserCreateData
{
    public string mandatorName { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
}

public record OutputDeactivateUser
{
    public string? consumerUUID { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
}

public record OutputDeactivateUserCreateData
{
    public string? consumerUUID { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
}

public record OutputGetKycDocument
{
    public string? caseID { get; init; }
    public string? encodedDataBase64 { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
}

public record OutputGetKycDocumentCreateData
{
    public string? caseID { get; init; }
    public string? encodedDataBase64 { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
}

public record OutputGetLogo
{
    public string contentAsBase64 { get; init; }
    public string mimeType { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
}

public record OutputGetLogoLoadMatch
{
    public string? contentAsBase64 { get; init; }
    public string? mimeType { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
}

public record OutputListOfAvailableRole
{
    public List<object?>? availableRoles { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
}

public record OutputListOfAvailableRoleCreateData
{
    public List<object?>? availableRoles { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
}

public record OutputListOfMandator
{
    public Dictionary<string, object?>? filter { get; init; }
    public List<object?>? list { get; init; }
    public Dictionary<string, object?>? pagination { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
    public Dictionary<string, object?>? sorting { get; init; }
}

public record OutputListOfMandatorCreateData
{
    public Dictionary<string, object?>? filter { get; init; }
    public List<object?>? list { get; init; }
    public Dictionary<string, object?>? pagination { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
    public Dictionary<string, object?>? sorting { get; init; }
}

public record OutputListOfModule
{
    public List<object?>? list { get; init; }
    public Dictionary<string, object?>? pagination { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
}

public record OutputListOfModuleCreateData
{
    public List<object?>? list { get; init; }
    public Dictionary<string, object?>? pagination { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
}

public record OutputListOfRoleGroup
{
    public Dictionary<string, object?>? filter { get; init; }
    public List<object?>? groupRoles { get; init; }
    public Dictionary<string, object?>? pagination { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
    public Dictionary<string, object?>? sorting { get; init; }
}

public record OutputListOfRoleGroupCreateData
{
    public Dictionary<string, object?>? filter { get; init; }
    public List<object?>? groupRoles { get; init; }
    public Dictionary<string, object?>? pagination { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
    public Dictionary<string, object?>? sorting { get; init; }
}

public record OutputListOfTransactionsHistory
{
    public Dictionary<string, object?>? filter { get; init; }
    public List<object?>? list { get; init; }
    public Dictionary<string, object?>? pagination { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
    public Dictionary<string, object?>? sorting { get; init; }
}

public record OutputListOfTransactionsHistoryCreateData
{
    public Dictionary<string, object?>? filter { get; init; }
    public List<object?>? list { get; init; }
    public Dictionary<string, object?>? pagination { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
    public Dictionary<string, object?>? sorting { get; init; }
}

public record OutputListOfUser
{
    public Dictionary<string, object?>? filter { get; init; }
    public List<object?>? list { get; init; }
    public Dictionary<string, object?>? pagination { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
    public Dictionary<string, object?>? sorting { get; init; }
}

public record OutputListOfUserCreateData
{
    public Dictionary<string, object?>? filter { get; init; }
    public List<object?>? list { get; init; }
    public Dictionary<string, object?>? pagination { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
    public Dictionary<string, object?>? sorting { get; init; }
}

public record OutputProvideCredential
{
    public string mandatorName { get; init; }
    public string? password { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
    public string? username { get; init; }
}

public record OutputProvideCredentialCreateData
{
    public string mandatorName { get; init; }
    public string? password { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
    public string? username { get; init; }
}

public record OutputRegisterUser
{
    public string? city { get; init; }
    public string? consumerId { get; init; }
    public string? consumerLanguage { get; init; }
    public string? country { get; init; }
    public string? dateOfBirth { get; init; }
    public string? driverLicenceNumber { get; init; }
    public string email { get; init; }
    public string? firstName { get; init; }
    public string? identificationNumber { get; init; }
    public string? lastName { get; init; }
    public string? login { get; init; }
    public string? module { get; init; }
    public string? passportNumber { get; init; }
    public string? phone { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
    public string? salutation { get; init; }
    public string? state { get; init; }
    public string? street1 { get; init; }
    public string? street2 { get; init; }
    public string? zip { get; init; }
}

public record OutputRegisterUserCreateData
{
    public string? city { get; init; }
    public string? consumerId { get; init; }
    public string? consumerLanguage { get; init; }
    public string? country { get; init; }
    public string? dateOfBirth { get; init; }
    public string? driverLicenceNumber { get; init; }
    public string email { get; init; }
    public string? firstName { get; init; }
    public string? identificationNumber { get; init; }
    public string? lastName { get; init; }
    public string? login { get; init; }
    public string? module { get; init; }
    public string? passportNumber { get; init; }
    public string? phone { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
    public string? salutation { get; init; }
    public string? state { get; init; }
    public string? street1 { get; init; }
    public string? street2 { get; init; }
    public string? zip { get; init; }
}

public record OutputRemoveRole
{
    public string? consumerUUID { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
    public List<object?>? roles { get; init; }
}

public record OutputRemoveRoleCreateData
{
    public string? consumerUUID { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
    public List<object?>? roles { get; init; }
}

public record OutputResendLink
{
    public string? businessRegistrationNumber { get; init; }
    public string consumerUUID { get; init; }
    public string? emailConfirmationCode { get; init; }
    public string? phoneNumber { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
}

public record OutputResendLinkCreateData
{
    public string? businessRegistrationNumber { get; init; }
    public string consumerUUID { get; init; }
    public string? emailConfirmationCode { get; init; }
    public string? phoneNumber { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
}

public record OutputResetPassword
{
    public string? consumerUuid { get; init; }
    public string? phoneNumber { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
}

public record OutputResetPasswordCreateData
{
    public string? consumerUuid { get; init; }
    public string? phoneNumber { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
}

public record OutputUpdateConsumer
{
    public string? city { get; init; }
    public string consumerUuid { get; init; }
    public string? consumerlanguage { get; init; }
    public string? country { get; init; }
    public string? dateOfBirth { get; init; }
    public string? datetime_created { get; init; }
    public string? driverLicenceNumber { get; init; }
    public string? email { get; init; }
    public string? firstName { get; init; }
    public string? identificationNumber { get; init; }
    public bool? kycPassed { get; init; }
    public string? lastName { get; init; }
    public string? nationality { get; init; }
    public string? passportNumber { get; init; }
    public string? phoneNumber { get; init; }
    public string? placeOfBirth { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
    public string? state { get; init; }
    public string? street1 { get; init; }
    public string? street2 { get; init; }
    public string? transactionhistory_id { get; init; }
    public string? zip { get; init; }
}

public record OutputUpdateConsumerCreateData
{
    public string? city { get; init; }
    public string consumerUuid { get; init; }
    public string? consumerlanguage { get; init; }
    public string? country { get; init; }
    public string? dateOfBirth { get; init; }
    public string? datetime_created { get; init; }
    public string? driverLicenceNumber { get; init; }
    public string? email { get; init; }
    public string? firstName { get; init; }
    public string? identificationNumber { get; init; }
    public bool? kycPassed { get; init; }
    public string? lastName { get; init; }
    public string? nationality { get; init; }
    public string? passportNumber { get; init; }
    public string? phoneNumber { get; init; }
    public string? placeOfBirth { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
    public string? state { get; init; }
    public string? street1 { get; init; }
    public string? street2 { get; init; }
    public string? transactionhistory_id { get; init; }
    public string? zip { get; init; }
}

public record OutputUpdateProfile
{
    public string? consumerLanguage { get; init; }
    public string? email { get; init; }
    public string? firstName { get; init; }
    public string? lastName { get; init; }
    public string? phoneNumber { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
}

public record OutputUpdateProfileCreateData
{
    public string? consumerLanguage { get; init; }
    public string? email { get; init; }
    public string? firstName { get; init; }
    public string? lastName { get; init; }
    public string? phoneNumber { get; init; }
    public long? responseCode { get; init; }
    public string? responseMessage { get; init; }
}

public record Version
{
    public string? appName { get; init; }
    public string? buildDate { get; init; }
    public string? version { get; init; }
}

public record VersionLoadMatch
{
    public string? appName { get; init; }
    public string? buildDate { get; init; }
    public string? version { get; init; }
}


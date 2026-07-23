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
    public long? response_code { get; init; }
    public string? response_message { get; init; }
}

public record OutputActivateDigitalModuleCreateData
{
    public long? response_code { get; init; }
    public string? response_message { get; init; }
}

public record OutputActivatePortalModule
{
    public string client_secret { get; init; }
    public string notification_email { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
}

public record OutputActivatePortalModuleCreateData
{
    public string client_secret { get; init; }
    public string notification_email { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
}

public record OutputActivateStoreModule
{
    public long? response_code { get; init; }
    public string? response_message { get; init; }
}

public record OutputActivateStoreModuleCreateData
{
    public long? response_code { get; init; }
    public string? response_message { get; init; }
}

public record OutputActivateUser
{
    public string? consumer_uuid { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
}

public record OutputActivateUserCreateData
{
    public string? consumer_uuid { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
}

public record OutputAssignRole
{
    public string consumer_uuid { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
    public List<object?> role { get; init; }
}

public record OutputAssignRoleCreateData
{
    public string consumer_uuid { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
    public List<object?> role { get; init; }
}

public record OutputChangeLogo
{
    public string content_as_base64 { get; init; }
    public string mime_type { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
}

public record OutputChangeLogoCreateData
{
    public string content_as_base64 { get; init; }
    public string mime_type { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
}

public record OutputCreateMandator
{
    public string? city { get; init; }
    public string? country { get; init; }
    public string? date_of_birth { get; init; }
    public string description { get; init; }
    public string? drivers_license_number { get; init; }
    public string email { get; init; }
    public string? first_name { get; init; }
    public string? identification_number { get; init; }
    public string? last_name { get; init; }
    public string login { get; init; }
    public Dictionary<string, object?>? mandator { get; init; }
    public string name { get; init; }
    public string? passport_number { get; init; }
    public string phone { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
    public string? salutation { get; init; }
    public string? state { get; init; }
    public string? street1 { get; init; }
    public string? street2 { get; init; }
    public string? zip_code { get; init; }
}

public record OutputCreateMandatorCreateData
{
    public string? city { get; init; }
    public string? country { get; init; }
    public string? date_of_birth { get; init; }
    public string description { get; init; }
    public string? drivers_license_number { get; init; }
    public string email { get; init; }
    public string? first_name { get; init; }
    public string? identification_number { get; init; }
    public string? last_name { get; init; }
    public string login { get; init; }
    public Dictionary<string, object?>? mandator { get; init; }
    public string name { get; init; }
    public string? passport_number { get; init; }
    public string phone { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
    public string? salutation { get; init; }
    public string? state { get; init; }
    public string? street1 { get; init; }
    public string? street2 { get; init; }
    public string? zip_code { get; init; }
}

public record OutputCreateServiceUser
{
    public string mandator_name { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
}

public record OutputCreateServiceUserCreateData
{
    public string mandator_name { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
}

public record OutputDeactivateUser
{
    public string? consumer_uuid { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
}

public record OutputDeactivateUserCreateData
{
    public string? consumer_uuid { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
}

public record OutputGetKycDocument
{
    public string? case_id { get; init; }
    public string? encoded_data_base64 { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
}

public record OutputGetKycDocumentCreateData
{
    public string? case_id { get; init; }
    public string? encoded_data_base64 { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
}

public record OutputGetLogo
{
    public string content_as_base64 { get; init; }
    public string mime_type { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
}

public record OutputGetLogoLoadMatch
{
    public string? content_as_base64 { get; init; }
    public string? mime_type { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
}

public record OutputListOfAvailableRole
{
    public List<object?>? available_role { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
}

public record OutputListOfAvailableRoleCreateData
{
    public List<object?>? available_role { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
}

public record OutputListOfMandator
{
    public Dictionary<string, object?>? filter { get; init; }
    public List<object?>? list { get; init; }
    public Dictionary<string, object?>? pagination { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
    public Dictionary<string, object?>? sorting { get; init; }
}

public record OutputListOfMandatorCreateData
{
    public Dictionary<string, object?>? filter { get; init; }
    public List<object?>? list { get; init; }
    public Dictionary<string, object?>? pagination { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
    public Dictionary<string, object?>? sorting { get; init; }
}

public record OutputListOfModule
{
    public List<object?>? list { get; init; }
    public Dictionary<string, object?>? pagination { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
}

public record OutputListOfModuleCreateData
{
    public List<object?>? list { get; init; }
    public Dictionary<string, object?>? pagination { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
}

public record OutputListOfRoleGroup
{
    public Dictionary<string, object?>? filter { get; init; }
    public List<object?>? group_role { get; init; }
    public Dictionary<string, object?>? pagination { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
    public Dictionary<string, object?>? sorting { get; init; }
}

public record OutputListOfRoleGroupCreateData
{
    public Dictionary<string, object?>? filter { get; init; }
    public List<object?>? group_role { get; init; }
    public Dictionary<string, object?>? pagination { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
    public Dictionary<string, object?>? sorting { get; init; }
}

public record OutputListOfTransactionsHistory
{
    public Dictionary<string, object?>? filter { get; init; }
    public List<object?>? list { get; init; }
    public Dictionary<string, object?>? pagination { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
    public Dictionary<string, object?>? sorting { get; init; }
}

public record OutputListOfTransactionsHistoryCreateData
{
    public Dictionary<string, object?>? filter { get; init; }
    public List<object?>? list { get; init; }
    public Dictionary<string, object?>? pagination { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
    public Dictionary<string, object?>? sorting { get; init; }
}

public record OutputListOfUser
{
    public Dictionary<string, object?>? filter { get; init; }
    public List<object?>? list { get; init; }
    public Dictionary<string, object?>? pagination { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
    public Dictionary<string, object?>? sorting { get; init; }
}

public record OutputListOfUserCreateData
{
    public Dictionary<string, object?>? filter { get; init; }
    public List<object?>? list { get; init; }
    public Dictionary<string, object?>? pagination { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
    public Dictionary<string, object?>? sorting { get; init; }
}

public record OutputProvideCredential
{
    public string mandator_name { get; init; }
    public string? password { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
    public string? username { get; init; }
}

public record OutputProvideCredentialCreateData
{
    public string mandator_name { get; init; }
    public string? password { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
    public string? username { get; init; }
}

public record OutputRegisterUser
{
    public string? city { get; init; }
    public string? consumer_id { get; init; }
    public string? consumer_language { get; init; }
    public string? country { get; init; }
    public string? date_of_birth { get; init; }
    public string? driver_licence_number { get; init; }
    public string email { get; init; }
    public string? first_name { get; init; }
    public string? identification_number { get; init; }
    public string? last_name { get; init; }
    public string? login { get; init; }
    public string? module { get; init; }
    public string? passport_number { get; init; }
    public string? phone { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
    public string? salutation { get; init; }
    public string? state { get; init; }
    public string? street1 { get; init; }
    public string? street2 { get; init; }
    public string? zip { get; init; }
}

public record OutputRegisterUserCreateData
{
    public string? city { get; init; }
    public string? consumer_id { get; init; }
    public string? consumer_language { get; init; }
    public string? country { get; init; }
    public string? date_of_birth { get; init; }
    public string? driver_licence_number { get; init; }
    public string email { get; init; }
    public string? first_name { get; init; }
    public string? identification_number { get; init; }
    public string? last_name { get; init; }
    public string? login { get; init; }
    public string? module { get; init; }
    public string? passport_number { get; init; }
    public string? phone { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
    public string? salutation { get; init; }
    public string? state { get; init; }
    public string? street1 { get; init; }
    public string? street2 { get; init; }
    public string? zip { get; init; }
}

public record OutputRemoveRole
{
    public string? consumer_uuid { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
    public List<object?>? role { get; init; }
}

public record OutputRemoveRoleCreateData
{
    public string? consumer_uuid { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
    public List<object?>? role { get; init; }
}

public record OutputResendLink
{
    public string? business_registration_number { get; init; }
    public string consumer_uuid { get; init; }
    public string? email_confirmation_code { get; init; }
    public string? phone_number { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
}

public record OutputResendLinkCreateData
{
    public string? business_registration_number { get; init; }
    public string consumer_uuid { get; init; }
    public string? email_confirmation_code { get; init; }
    public string? phone_number { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
}

public record OutputResetPassword
{
    public string? consumer_uuid { get; init; }
    public string? phone_number { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
}

public record OutputResetPasswordCreateData
{
    public string? consumer_uuid { get; init; }
    public string? phone_number { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
}

public record OutputUpdateConsumer
{
    public string? city { get; init; }
    public string consumer_uuid { get; init; }
    public string? consumerlanguage { get; init; }
    public string? country { get; init; }
    public string? date_of_birth { get; init; }
    public string? datetime_created { get; init; }
    public string? driver_licence_number { get; init; }
    public string? email { get; init; }
    public string? first_name { get; init; }
    public string? identification_number { get; init; }
    public bool? kyc_passed { get; init; }
    public string? last_name { get; init; }
    public string? nationality { get; init; }
    public string? passport_number { get; init; }
    public string? phone_number { get; init; }
    public string? place_of_birth { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
    public string? state { get; init; }
    public string? street1 { get; init; }
    public string? street2 { get; init; }
    public string? transactionhistory_id { get; init; }
    public string? zip { get; init; }
}

public record OutputUpdateConsumerCreateData
{
    public string? city { get; init; }
    public string consumer_uuid { get; init; }
    public string? consumerlanguage { get; init; }
    public string? country { get; init; }
    public string? date_of_birth { get; init; }
    public string? datetime_created { get; init; }
    public string? driver_licence_number { get; init; }
    public string? email { get; init; }
    public string? first_name { get; init; }
    public string? identification_number { get; init; }
    public bool? kyc_passed { get; init; }
    public string? last_name { get; init; }
    public string? nationality { get; init; }
    public string? passport_number { get; init; }
    public string? phone_number { get; init; }
    public string? place_of_birth { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
    public string? state { get; init; }
    public string? street1 { get; init; }
    public string? street2 { get; init; }
    public string? transactionhistory_id { get; init; }
    public string? zip { get; init; }
}

public record OutputUpdateProfile
{
    public string? consumer_language { get; init; }
    public string? email { get; init; }
    public string? first_name { get; init; }
    public string? last_name { get; init; }
    public string? phone_number { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
}

public record OutputUpdateProfileCreateData
{
    public string? consumer_language { get; init; }
    public string? email { get; init; }
    public string? first_name { get; init; }
    public string? last_name { get; init; }
    public string? phone_number { get; init; }
    public long? response_code { get; init; }
    public string? response_message { get; init; }
}

public record Version
{
    public string? app_name { get; init; }
    public string? build_date { get; init; }
    public string? version { get; init; }
}

public record VersionLoadMatch
{
    public string? app_name { get; init; }
    public string? build_date { get; init; }
    public string? version { get; init; }
}


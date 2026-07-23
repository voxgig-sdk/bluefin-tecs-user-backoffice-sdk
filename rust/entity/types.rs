// Typed models for the BluefinTecsUserBackoffice SDK.
//
// GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
// params (op.<name>.points[].args.params[]). Field/param types are mapped
// from the canonical type sentinels. Do not edit by hand.
//
// These are DOCUMENTARY: the SDK runtime is dynamic (ops take/return the
// `Value` enum), so nothing consumes these structs yet — they mirror the
// entity/op shapes for reference and IDE support.
#![allow(dead_code, non_snake_case, unused_imports)]

use crate::utility::voxgigstruct::Value;

/// OutputActivateDigitalModule is the typed data model for the output_activate_digital_module entity.
#[derive(Debug, Clone)]
pub struct OutputActivateDigitalModule {
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
}

/// OutputActivateDigitalModuleCreateData is the typed request payload for OutputActivateDigitalModule.create.
#[derive(Debug, Clone)]
pub struct OutputActivateDigitalModuleCreateData {
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
}

/// OutputActivatePortalModule is the typed data model for the output_activate_portal_module entity.
#[derive(Debug, Clone)]
pub struct OutputActivatePortalModule {
    pub client_secret: String,
    pub notification_email: String,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
}

/// OutputActivatePortalModuleCreateData is the typed request payload for OutputActivatePortalModule.create.
#[derive(Debug, Clone)]
pub struct OutputActivatePortalModuleCreateData {
    pub client_secret: String,
    pub notification_email: String,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
}

/// OutputActivateStoreModule is the typed data model for the output_activate_store_module entity.
#[derive(Debug, Clone)]
pub struct OutputActivateStoreModule {
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
}

/// OutputActivateStoreModuleCreateData is the typed request payload for OutputActivateStoreModule.create.
#[derive(Debug, Clone)]
pub struct OutputActivateStoreModuleCreateData {
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
}

/// OutputActivateUser is the typed data model for the output_activate_user entity.
#[derive(Debug, Clone)]
pub struct OutputActivateUser {
    pub consumer_uuid: Option<String>,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
}

/// OutputActivateUserCreateData is the typed request payload for OutputActivateUser.create.
#[derive(Debug, Clone)]
pub struct OutputActivateUserCreateData {
    pub consumer_uuid: Option<String>,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
}

/// OutputAssignRole is the typed data model for the output_assign_role entity.
#[derive(Debug, Clone)]
pub struct OutputAssignRole {
    pub consumer_uuid: String,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
    pub role: Vec<Value>,
}

/// OutputAssignRoleCreateData is the typed request payload for OutputAssignRole.create.
#[derive(Debug, Clone)]
pub struct OutputAssignRoleCreateData {
    pub consumer_uuid: String,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
    pub role: Vec<Value>,
}

/// OutputChangeLogo is the typed data model for the output_change_logo entity.
#[derive(Debug, Clone)]
pub struct OutputChangeLogo {
    pub content_as_base64: String,
    pub mime_type: String,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
}

/// OutputChangeLogoCreateData is the typed request payload for OutputChangeLogo.create.
#[derive(Debug, Clone)]
pub struct OutputChangeLogoCreateData {
    pub content_as_base64: String,
    pub mime_type: String,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
}

/// OutputCreateMandator is the typed data model for the output_create_mandator entity.
#[derive(Debug, Clone)]
pub struct OutputCreateMandator {
    pub city: Option<String>,
    pub country: Option<String>,
    pub date_of_birth: Option<String>,
    pub description: String,
    pub drivers_license_number: Option<String>,
    pub email: String,
    pub first_name: Option<String>,
    pub identification_number: Option<String>,
    pub last_name: Option<String>,
    pub login: String,
    pub mandator: Option<std::collections::HashMap<String, Value>>,
    pub name: String,
    pub passport_number: Option<String>,
    pub phone: String,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
    pub salutation: Option<String>,
    pub state: Option<String>,
    pub street1: Option<String>,
    pub street2: Option<String>,
    pub zip_code: Option<String>,
}

/// OutputCreateMandatorCreateData is the typed request payload for OutputCreateMandator.create.
#[derive(Debug, Clone)]
pub struct OutputCreateMandatorCreateData {
    pub city: Option<String>,
    pub country: Option<String>,
    pub date_of_birth: Option<String>,
    pub description: String,
    pub drivers_license_number: Option<String>,
    pub email: String,
    pub first_name: Option<String>,
    pub identification_number: Option<String>,
    pub last_name: Option<String>,
    pub login: String,
    pub mandator: Option<std::collections::HashMap<String, Value>>,
    pub name: String,
    pub passport_number: Option<String>,
    pub phone: String,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
    pub salutation: Option<String>,
    pub state: Option<String>,
    pub street1: Option<String>,
    pub street2: Option<String>,
    pub zip_code: Option<String>,
}

/// OutputCreateServiceUser is the typed data model for the output_create_service_user entity.
#[derive(Debug, Clone)]
pub struct OutputCreateServiceUser {
    pub mandator_name: String,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
}

/// OutputCreateServiceUserCreateData is the typed request payload for OutputCreateServiceUser.create.
#[derive(Debug, Clone)]
pub struct OutputCreateServiceUserCreateData {
    pub mandator_name: String,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
}

/// OutputDeactivateUser is the typed data model for the output_deactivate_user entity.
#[derive(Debug, Clone)]
pub struct OutputDeactivateUser {
    pub consumer_uuid: Option<String>,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
}

/// OutputDeactivateUserCreateData is the typed request payload for OutputDeactivateUser.create.
#[derive(Debug, Clone)]
pub struct OutputDeactivateUserCreateData {
    pub consumer_uuid: Option<String>,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
}

/// OutputGetKycDocument is the typed data model for the output_get_kyc_document entity.
#[derive(Debug, Clone)]
pub struct OutputGetKycDocument {
    pub case_id: Option<String>,
    pub encoded_data_base64: Option<String>,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
}

/// OutputGetKycDocumentCreateData is the typed request payload for OutputGetKycDocument.create.
#[derive(Debug, Clone)]
pub struct OutputGetKycDocumentCreateData {
    pub case_id: Option<String>,
    pub encoded_data_base64: Option<String>,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
}

/// OutputGetLogo is the typed data model for the output_get_logo entity.
#[derive(Debug, Clone)]
pub struct OutputGetLogo {
    pub content_as_base64: String,
    pub mime_type: String,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
}

/// OutputGetLogoLoadMatch is the typed request payload for OutputGetLogo.load.
#[derive(Debug, Clone)]
pub struct OutputGetLogoLoadMatch {
    pub content_as_base64: Option<String>,
    pub mime_type: Option<String>,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
}

/// OutputListOfAvailableRole is the typed data model for the output_list_of_available_role entity.
#[derive(Debug, Clone)]
pub struct OutputListOfAvailableRole {
    pub available_role: Option<Vec<Value>>,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
}

/// OutputListOfAvailableRoleCreateData is the typed request payload for OutputListOfAvailableRole.create.
#[derive(Debug, Clone)]
pub struct OutputListOfAvailableRoleCreateData {
    pub available_role: Option<Vec<Value>>,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
}

/// OutputListOfMandator is the typed data model for the output_list_of_mandator entity.
#[derive(Debug, Clone)]
pub struct OutputListOfMandator {
    pub filter: Option<std::collections::HashMap<String, Value>>,
    pub list: Option<Vec<Value>>,
    pub pagination: Option<std::collections::HashMap<String, Value>>,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
    pub sorting: Option<std::collections::HashMap<String, Value>>,
}

/// OutputListOfMandatorCreateData is the typed request payload for OutputListOfMandator.create.
#[derive(Debug, Clone)]
pub struct OutputListOfMandatorCreateData {
    pub filter: Option<std::collections::HashMap<String, Value>>,
    pub list: Option<Vec<Value>>,
    pub pagination: Option<std::collections::HashMap<String, Value>>,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
    pub sorting: Option<std::collections::HashMap<String, Value>>,
}

/// OutputListOfModule is the typed data model for the output_list_of_module entity.
#[derive(Debug, Clone)]
pub struct OutputListOfModule {
    pub list: Option<Vec<Value>>,
    pub pagination: Option<std::collections::HashMap<String, Value>>,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
}

/// OutputListOfModuleCreateData is the typed request payload for OutputListOfModule.create.
#[derive(Debug, Clone)]
pub struct OutputListOfModuleCreateData {
    pub list: Option<Vec<Value>>,
    pub pagination: Option<std::collections::HashMap<String, Value>>,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
}

/// OutputListOfRoleGroup is the typed data model for the output_list_of_role_group entity.
#[derive(Debug, Clone)]
pub struct OutputListOfRoleGroup {
    pub filter: Option<std::collections::HashMap<String, Value>>,
    pub group_role: Option<Vec<Value>>,
    pub pagination: Option<std::collections::HashMap<String, Value>>,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
    pub sorting: Option<std::collections::HashMap<String, Value>>,
}

/// OutputListOfRoleGroupCreateData is the typed request payload for OutputListOfRoleGroup.create.
#[derive(Debug, Clone)]
pub struct OutputListOfRoleGroupCreateData {
    pub filter: Option<std::collections::HashMap<String, Value>>,
    pub group_role: Option<Vec<Value>>,
    pub pagination: Option<std::collections::HashMap<String, Value>>,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
    pub sorting: Option<std::collections::HashMap<String, Value>>,
}

/// OutputListOfTransactionsHistory is the typed data model for the output_list_of_transactions_history entity.
#[derive(Debug, Clone)]
pub struct OutputListOfTransactionsHistory {
    pub filter: Option<std::collections::HashMap<String, Value>>,
    pub list: Option<Vec<Value>>,
    pub pagination: Option<std::collections::HashMap<String, Value>>,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
    pub sorting: Option<std::collections::HashMap<String, Value>>,
}

/// OutputListOfTransactionsHistoryCreateData is the typed request payload for OutputListOfTransactionsHistory.create.
#[derive(Debug, Clone)]
pub struct OutputListOfTransactionsHistoryCreateData {
    pub filter: Option<std::collections::HashMap<String, Value>>,
    pub list: Option<Vec<Value>>,
    pub pagination: Option<std::collections::HashMap<String, Value>>,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
    pub sorting: Option<std::collections::HashMap<String, Value>>,
}

/// OutputListOfUser is the typed data model for the output_list_of_user entity.
#[derive(Debug, Clone)]
pub struct OutputListOfUser {
    pub filter: Option<std::collections::HashMap<String, Value>>,
    pub list: Option<Vec<Value>>,
    pub pagination: Option<std::collections::HashMap<String, Value>>,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
    pub sorting: Option<std::collections::HashMap<String, Value>>,
}

/// OutputListOfUserCreateData is the typed request payload for OutputListOfUser.create.
#[derive(Debug, Clone)]
pub struct OutputListOfUserCreateData {
    pub filter: Option<std::collections::HashMap<String, Value>>,
    pub list: Option<Vec<Value>>,
    pub pagination: Option<std::collections::HashMap<String, Value>>,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
    pub sorting: Option<std::collections::HashMap<String, Value>>,
}

/// OutputProvideCredential is the typed data model for the output_provide_credential entity.
#[derive(Debug, Clone)]
pub struct OutputProvideCredential {
    pub mandator_name: String,
    pub password: Option<String>,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
    pub username: Option<String>,
}

/// OutputProvideCredentialCreateData is the typed request payload for OutputProvideCredential.create.
#[derive(Debug, Clone)]
pub struct OutputProvideCredentialCreateData {
    pub mandator_name: String,
    pub password: Option<String>,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
    pub username: Option<String>,
}

/// OutputRegisterUser is the typed data model for the output_register_user entity.
#[derive(Debug, Clone)]
pub struct OutputRegisterUser {
    pub city: Option<String>,
    pub consumer_id: Option<String>,
    pub consumer_language: Option<String>,
    pub country: Option<String>,
    pub date_of_birth: Option<String>,
    pub driver_licence_number: Option<String>,
    pub email: String,
    pub first_name: Option<String>,
    pub identification_number: Option<String>,
    pub last_name: Option<String>,
    pub login: Option<String>,
    pub module: Option<String>,
    pub passport_number: Option<String>,
    pub phone: Option<String>,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
    pub salutation: Option<String>,
    pub state: Option<String>,
    pub street1: Option<String>,
    pub street2: Option<String>,
    pub zip: Option<String>,
}

/// OutputRegisterUserCreateData is the typed request payload for OutputRegisterUser.create.
#[derive(Debug, Clone)]
pub struct OutputRegisterUserCreateData {
    pub city: Option<String>,
    pub consumer_id: Option<String>,
    pub consumer_language: Option<String>,
    pub country: Option<String>,
    pub date_of_birth: Option<String>,
    pub driver_licence_number: Option<String>,
    pub email: String,
    pub first_name: Option<String>,
    pub identification_number: Option<String>,
    pub last_name: Option<String>,
    pub login: Option<String>,
    pub module: Option<String>,
    pub passport_number: Option<String>,
    pub phone: Option<String>,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
    pub salutation: Option<String>,
    pub state: Option<String>,
    pub street1: Option<String>,
    pub street2: Option<String>,
    pub zip: Option<String>,
}

/// OutputRemoveRole is the typed data model for the output_remove_role entity.
#[derive(Debug, Clone)]
pub struct OutputRemoveRole {
    pub consumer_uuid: Option<String>,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
    pub role: Option<Vec<Value>>,
}

/// OutputRemoveRoleCreateData is the typed request payload for OutputRemoveRole.create.
#[derive(Debug, Clone)]
pub struct OutputRemoveRoleCreateData {
    pub consumer_uuid: Option<String>,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
    pub role: Option<Vec<Value>>,
}

/// OutputResendLink is the typed data model for the output_resend_link entity.
#[derive(Debug, Clone)]
pub struct OutputResendLink {
    pub business_registration_number: Option<String>,
    pub consumer_uuid: String,
    pub email_confirmation_code: Option<String>,
    pub phone_number: Option<String>,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
}

/// OutputResendLinkCreateData is the typed request payload for OutputResendLink.create.
#[derive(Debug, Clone)]
pub struct OutputResendLinkCreateData {
    pub business_registration_number: Option<String>,
    pub consumer_uuid: String,
    pub email_confirmation_code: Option<String>,
    pub phone_number: Option<String>,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
}

/// OutputResetPassword is the typed data model for the output_reset_password entity.
#[derive(Debug, Clone)]
pub struct OutputResetPassword {
    pub consumer_uuid: Option<String>,
    pub phone_number: Option<String>,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
}

/// OutputResetPasswordCreateData is the typed request payload for OutputResetPassword.create.
#[derive(Debug, Clone)]
pub struct OutputResetPasswordCreateData {
    pub consumer_uuid: Option<String>,
    pub phone_number: Option<String>,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
}

/// OutputUpdateConsumer is the typed data model for the output_update_consumer entity.
#[derive(Debug, Clone)]
pub struct OutputUpdateConsumer {
    pub city: Option<String>,
    pub consumer_uuid: String,
    pub consumerlanguage: Option<String>,
    pub country: Option<String>,
    pub date_of_birth: Option<String>,
    pub datetime_created: Option<String>,
    pub driver_licence_number: Option<String>,
    pub email: Option<String>,
    pub first_name: Option<String>,
    pub identification_number: Option<String>,
    pub kyc_passed: Option<bool>,
    pub last_name: Option<String>,
    pub nationality: Option<String>,
    pub passport_number: Option<String>,
    pub phone_number: Option<String>,
    pub place_of_birth: Option<String>,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
    pub state: Option<String>,
    pub street1: Option<String>,
    pub street2: Option<String>,
    pub transactionhistory_id: Option<String>,
    pub zip: Option<String>,
}

/// OutputUpdateConsumerCreateData is the typed request payload for OutputUpdateConsumer.create.
#[derive(Debug, Clone)]
pub struct OutputUpdateConsumerCreateData {
    pub city: Option<String>,
    pub consumer_uuid: String,
    pub consumerlanguage: Option<String>,
    pub country: Option<String>,
    pub date_of_birth: Option<String>,
    pub datetime_created: Option<String>,
    pub driver_licence_number: Option<String>,
    pub email: Option<String>,
    pub first_name: Option<String>,
    pub identification_number: Option<String>,
    pub kyc_passed: Option<bool>,
    pub last_name: Option<String>,
    pub nationality: Option<String>,
    pub passport_number: Option<String>,
    pub phone_number: Option<String>,
    pub place_of_birth: Option<String>,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
    pub state: Option<String>,
    pub street1: Option<String>,
    pub street2: Option<String>,
    pub transactionhistory_id: Option<String>,
    pub zip: Option<String>,
}

/// OutputUpdateProfile is the typed data model for the output_update_profile entity.
#[derive(Debug, Clone)]
pub struct OutputUpdateProfile {
    pub consumer_language: Option<String>,
    pub email: Option<String>,
    pub first_name: Option<String>,
    pub last_name: Option<String>,
    pub phone_number: Option<String>,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
}

/// OutputUpdateProfileCreateData is the typed request payload for OutputUpdateProfile.create.
#[derive(Debug, Clone)]
pub struct OutputUpdateProfileCreateData {
    pub consumer_language: Option<String>,
    pub email: Option<String>,
    pub first_name: Option<String>,
    pub last_name: Option<String>,
    pub phone_number: Option<String>,
    pub response_code: Option<i64>,
    pub response_message: Option<String>,
}

/// Version is the typed data model for the version entity.
#[derive(Debug, Clone)]
pub struct Version {
    pub app_name: Option<String>,
    pub build_date: Option<String>,
    pub version: Option<String>,
}

/// VersionLoadMatch is the typed request payload for Version.load.
#[derive(Debug, Clone)]
pub struct VersionLoadMatch {
    pub app_name: Option<String>,
    pub build_date: Option<String>,
    pub version: Option<String>,
}


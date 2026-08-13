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
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
}

/// OutputActivateDigitalModuleCreateData is the typed request payload for OutputActivateDigitalModule.create.
#[derive(Debug, Clone)]
pub struct OutputActivateDigitalModuleCreateData {
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
}

/// OutputActivatePortalModule is the typed data model for the output_activate_portal_module entity.
#[derive(Debug, Clone)]
pub struct OutputActivatePortalModule {
    pub clientsecret: String,
    pub notificationemail: String,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
}

/// OutputActivatePortalModuleCreateData is the typed request payload for OutputActivatePortalModule.create.
#[derive(Debug, Clone)]
pub struct OutputActivatePortalModuleCreateData {
    pub clientsecret: String,
    pub notificationemail: String,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
}

/// OutputActivateStoreModule is the typed data model for the output_activate_store_module entity.
#[derive(Debug, Clone)]
pub struct OutputActivateStoreModule {
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
}

/// OutputActivateStoreModuleCreateData is the typed request payload for OutputActivateStoreModule.create.
#[derive(Debug, Clone)]
pub struct OutputActivateStoreModuleCreateData {
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
}

/// OutputActivateUser is the typed data model for the output_activate_user entity.
#[derive(Debug, Clone)]
pub struct OutputActivateUser {
    pub consumeruuid: Option<String>,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
}

/// OutputActivateUserCreateData is the typed request payload for OutputActivateUser.create.
#[derive(Debug, Clone)]
pub struct OutputActivateUserCreateData {
    pub consumeruuid: Option<String>,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
}

/// OutputAssignRole is the typed data model for the output_assign_role entity.
#[derive(Debug, Clone)]
pub struct OutputAssignRole {
    pub consumeruuid: String,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
    pub roles: Vec<Value>,
}

/// OutputAssignRoleCreateData is the typed request payload for OutputAssignRole.create.
#[derive(Debug, Clone)]
pub struct OutputAssignRoleCreateData {
    pub consumeruuid: String,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
    pub roles: Vec<Value>,
}

/// OutputChangeLogo is the typed data model for the output_change_logo entity.
#[derive(Debug, Clone)]
pub struct OutputChangeLogo {
    pub contentasbase64: String,
    pub mimetype: String,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
}

/// OutputChangeLogoCreateData is the typed request payload for OutputChangeLogo.create.
#[derive(Debug, Clone)]
pub struct OutputChangeLogoCreateData {
    pub contentasbase64: String,
    pub mimetype: String,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
}

/// OutputCreateMandator is the typed data model for the output_create_mandator entity.
#[derive(Debug, Clone)]
pub struct OutputCreateMandator {
    pub city: Option<String>,
    pub country: Option<String>,
    pub dateofbirth: Option<String>,
    pub description: Option<String>,
    pub driverslicensenumber: Option<String>,
    pub email: String,
    pub firstname: Option<String>,
    pub identificationnumber: Option<String>,
    pub lastname: Option<String>,
    pub login: String,
    pub name: Option<String>,
    pub passportnumber: Option<String>,
    pub phone: String,
    pub salutation: Option<String>,
    pub state: Option<String>,
    pub street1: Option<String>,
    pub street2: Option<String>,
    pub zipcode: Option<String>,
}

/// OutputCreateMandatorCreateData is the typed request payload for OutputCreateMandator.create.
#[derive(Debug, Clone)]
pub struct OutputCreateMandatorCreateData {
    pub city: Option<String>,
    pub country: Option<String>,
    pub dateofbirth: Option<String>,
    pub description: Option<String>,
    pub driverslicensenumber: Option<String>,
    pub email: String,
    pub firstname: Option<String>,
    pub identificationnumber: Option<String>,
    pub lastname: Option<String>,
    pub login: String,
    pub name: Option<String>,
    pub passportnumber: Option<String>,
    pub phone: String,
    pub salutation: Option<String>,
    pub state: Option<String>,
    pub street1: Option<String>,
    pub street2: Option<String>,
    pub zipcode: Option<String>,
}

/// OutputCreateServiceUser is the typed data model for the output_create_service_user entity.
#[derive(Debug, Clone)]
pub struct OutputCreateServiceUser {
    pub mandatorname: String,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
}

/// OutputCreateServiceUserCreateData is the typed request payload for OutputCreateServiceUser.create.
#[derive(Debug, Clone)]
pub struct OutputCreateServiceUserCreateData {
    pub mandatorname: String,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
}

/// OutputDeactivateUser is the typed data model for the output_deactivate_user entity.
#[derive(Debug, Clone)]
pub struct OutputDeactivateUser {
    pub consumeruuid: Option<String>,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
}

/// OutputDeactivateUserCreateData is the typed request payload for OutputDeactivateUser.create.
#[derive(Debug, Clone)]
pub struct OutputDeactivateUserCreateData {
    pub consumeruuid: Option<String>,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
}

/// OutputGetKycDocument is the typed data model for the output_get_kyc_document entity.
#[derive(Debug, Clone)]
pub struct OutputGetKycDocument {
    pub caseid: Option<String>,
    pub encodeddatabase64: Option<String>,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
}

/// OutputGetKycDocumentCreateData is the typed request payload for OutputGetKycDocument.create.
#[derive(Debug, Clone)]
pub struct OutputGetKycDocumentCreateData {
    pub caseid: Option<String>,
    pub encodeddatabase64: Option<String>,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
}

/// OutputGetLogo is the typed data model for the output_get_logo entity.
#[derive(Debug, Clone)]
pub struct OutputGetLogo {
    pub contentasbase64: String,
    pub mimetype: String,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
}

/// OutputGetLogoLoadMatch is the typed request payload for OutputGetLogo.load.
#[derive(Debug, Clone)]
pub struct OutputGetLogoLoadMatch {
    pub contentasbase64: Option<String>,
    pub mimetype: Option<String>,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
}

/// OutputListOfAvailableRole is the typed data model for the output_list_of_available_role entity.
#[derive(Debug, Clone)]
pub struct OutputListOfAvailableRole {
    pub availableroles: Option<Vec<Value>>,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
}

/// OutputListOfAvailableRoleCreateData is the typed request payload for OutputListOfAvailableRole.create.
#[derive(Debug, Clone)]
pub struct OutputListOfAvailableRoleCreateData {
    pub availableroles: Option<Vec<Value>>,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
}

/// OutputListOfMandator is the typed data model for the output_list_of_mandator entity.
#[derive(Debug, Clone)]
pub struct OutputListOfMandator {
    pub filter: Option<std::collections::HashMap<String, Value>>,
    pub list: Option<Vec<Value>>,
    pub pagination: Option<std::collections::HashMap<String, Value>>,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
    pub sorting: Option<std::collections::HashMap<String, Value>>,
}

/// OutputListOfMandatorCreateData is the typed request payload for OutputListOfMandator.create.
#[derive(Debug, Clone)]
pub struct OutputListOfMandatorCreateData {
    pub filter: Option<std::collections::HashMap<String, Value>>,
    pub list: Option<Vec<Value>>,
    pub pagination: Option<std::collections::HashMap<String, Value>>,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
    pub sorting: Option<std::collections::HashMap<String, Value>>,
}

/// OutputListOfModule is the typed data model for the output_list_of_module entity.
#[derive(Debug, Clone)]
pub struct OutputListOfModule {
    pub list: Option<Vec<Value>>,
    pub pagination: Option<std::collections::HashMap<String, Value>>,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
}

/// OutputListOfModuleCreateData is the typed request payload for OutputListOfModule.create.
#[derive(Debug, Clone)]
pub struct OutputListOfModuleCreateData {
    pub list: Option<Vec<Value>>,
    pub pagination: Option<std::collections::HashMap<String, Value>>,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
}

/// OutputListOfRoleGroup is the typed data model for the output_list_of_role_group entity.
#[derive(Debug, Clone)]
pub struct OutputListOfRoleGroup {
    pub filter: Option<std::collections::HashMap<String, Value>>,
    pub grouproles: Option<Vec<Value>>,
    pub pagination: Option<std::collections::HashMap<String, Value>>,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
    pub sorting: Option<std::collections::HashMap<String, Value>>,
}

/// OutputListOfRoleGroupCreateData is the typed request payload for OutputListOfRoleGroup.create.
#[derive(Debug, Clone)]
pub struct OutputListOfRoleGroupCreateData {
    pub filter: Option<std::collections::HashMap<String, Value>>,
    pub grouproles: Option<Vec<Value>>,
    pub pagination: Option<std::collections::HashMap<String, Value>>,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
    pub sorting: Option<std::collections::HashMap<String, Value>>,
}

/// OutputListOfTransactionsHistory is the typed data model for the output_list_of_transactions_history entity.
#[derive(Debug, Clone)]
pub struct OutputListOfTransactionsHistory {
    pub filter: Option<std::collections::HashMap<String, Value>>,
    pub list: Option<Vec<Value>>,
    pub pagination: Option<std::collections::HashMap<String, Value>>,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
    pub sorting: Option<std::collections::HashMap<String, Value>>,
}

/// OutputListOfTransactionsHistoryCreateData is the typed request payload for OutputListOfTransactionsHistory.create.
#[derive(Debug, Clone)]
pub struct OutputListOfTransactionsHistoryCreateData {
    pub filter: Option<std::collections::HashMap<String, Value>>,
    pub list: Option<Vec<Value>>,
    pub pagination: Option<std::collections::HashMap<String, Value>>,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
    pub sorting: Option<std::collections::HashMap<String, Value>>,
}

/// OutputListOfUser is the typed data model for the output_list_of_user entity.
#[derive(Debug, Clone)]
pub struct OutputListOfUser {
    pub filter: Option<std::collections::HashMap<String, Value>>,
    pub list: Option<Vec<Value>>,
    pub pagination: Option<std::collections::HashMap<String, Value>>,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
    pub sorting: Option<std::collections::HashMap<String, Value>>,
}

/// OutputListOfUserCreateData is the typed request payload for OutputListOfUser.create.
#[derive(Debug, Clone)]
pub struct OutputListOfUserCreateData {
    pub filter: Option<std::collections::HashMap<String, Value>>,
    pub list: Option<Vec<Value>>,
    pub pagination: Option<std::collections::HashMap<String, Value>>,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
    pub sorting: Option<std::collections::HashMap<String, Value>>,
}

/// OutputProvideCredential is the typed data model for the output_provide_credential entity.
#[derive(Debug, Clone)]
pub struct OutputProvideCredential {
    pub mandatorname: String,
    pub password: Option<String>,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
    pub username: Option<String>,
}

/// OutputProvideCredentialCreateData is the typed request payload for OutputProvideCredential.create.
#[derive(Debug, Clone)]
pub struct OutputProvideCredentialCreateData {
    pub mandatorname: String,
    pub password: Option<String>,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
    pub username: Option<String>,
}

/// OutputRegisterUser is the typed data model for the output_register_user entity.
#[derive(Debug, Clone)]
pub struct OutputRegisterUser {
    pub city: Option<String>,
    pub consumerid: Option<String>,
    pub consumerlanguage: Option<String>,
    pub country: Option<String>,
    pub dateofbirth: Option<String>,
    pub driverlicencenumber: Option<String>,
    pub email: String,
    pub firstname: Option<String>,
    pub identificationnumber: Option<String>,
    pub lastname: Option<String>,
    pub login: Option<String>,
    pub module: Option<String>,
    pub passportnumber: Option<String>,
    pub phone: Option<String>,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
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
    pub consumerid: Option<String>,
    pub consumerlanguage: Option<String>,
    pub country: Option<String>,
    pub dateofbirth: Option<String>,
    pub driverlicencenumber: Option<String>,
    pub email: String,
    pub firstname: Option<String>,
    pub identificationnumber: Option<String>,
    pub lastname: Option<String>,
    pub login: Option<String>,
    pub module: Option<String>,
    pub passportnumber: Option<String>,
    pub phone: Option<String>,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
    pub salutation: Option<String>,
    pub state: Option<String>,
    pub street1: Option<String>,
    pub street2: Option<String>,
    pub zip: Option<String>,
}

/// OutputRemoveRole is the typed data model for the output_remove_role entity.
#[derive(Debug, Clone)]
pub struct OutputRemoveRole {
    pub consumeruuid: Option<String>,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
    pub roles: Option<Vec<Value>>,
}

/// OutputRemoveRoleCreateData is the typed request payload for OutputRemoveRole.create.
#[derive(Debug, Clone)]
pub struct OutputRemoveRoleCreateData {
    pub consumeruuid: Option<String>,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
    pub roles: Option<Vec<Value>>,
}

/// OutputResendLink is the typed data model for the output_resend_link entity.
#[derive(Debug, Clone)]
pub struct OutputResendLink {
    pub businessregistrationnumber: Option<String>,
    pub consumeruuid: String,
    pub emailconfirmationcode: Option<String>,
    pub phonenumber: Option<String>,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
}

/// OutputResendLinkCreateData is the typed request payload for OutputResendLink.create.
#[derive(Debug, Clone)]
pub struct OutputResendLinkCreateData {
    pub businessregistrationnumber: Option<String>,
    pub consumeruuid: String,
    pub emailconfirmationcode: Option<String>,
    pub phonenumber: Option<String>,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
}

/// OutputResetPassword is the typed data model for the output_reset_password entity.
#[derive(Debug, Clone)]
pub struct OutputResetPassword {
    pub consumeruuid: Option<String>,
    pub phonenumber: Option<String>,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
}

/// OutputResetPasswordCreateData is the typed request payload for OutputResetPassword.create.
#[derive(Debug, Clone)]
pub struct OutputResetPasswordCreateData {
    pub consumeruuid: Option<String>,
    pub phonenumber: Option<String>,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
}

/// OutputUpdateConsumer is the typed data model for the output_update_consumer entity.
#[derive(Debug, Clone)]
pub struct OutputUpdateConsumer {
    pub city: Option<String>,
    pub consumeruuid: String,
    pub consumerlanguage: Option<String>,
    pub country: Option<String>,
    pub dateofbirth: Option<String>,
    pub datetime_created: Option<String>,
    pub driverlicencenumber: Option<String>,
    pub email: Option<String>,
    pub firstname: Option<String>,
    pub identificationnumber: Option<String>,
    pub kycpassed: Option<bool>,
    pub lastname: Option<String>,
    pub nationality: Option<String>,
    pub passportnumber: Option<String>,
    pub phonenumber: Option<String>,
    pub placeofbirth: Option<String>,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
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
    pub consumeruuid: String,
    pub consumerlanguage: Option<String>,
    pub country: Option<String>,
    pub dateofbirth: Option<String>,
    pub datetime_created: Option<String>,
    pub driverlicencenumber: Option<String>,
    pub email: Option<String>,
    pub firstname: Option<String>,
    pub identificationnumber: Option<String>,
    pub kycpassed: Option<bool>,
    pub lastname: Option<String>,
    pub nationality: Option<String>,
    pub passportnumber: Option<String>,
    pub phonenumber: Option<String>,
    pub placeofbirth: Option<String>,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
    pub state: Option<String>,
    pub street1: Option<String>,
    pub street2: Option<String>,
    pub transactionhistory_id: Option<String>,
    pub zip: Option<String>,
}

/// OutputUpdateProfile is the typed data model for the output_update_profile entity.
#[derive(Debug, Clone)]
pub struct OutputUpdateProfile {
    pub consumerlanguage: Option<String>,
    pub email: Option<String>,
    pub firstname: Option<String>,
    pub lastname: Option<String>,
    pub phonenumber: Option<String>,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
}

/// OutputUpdateProfileCreateData is the typed request payload for OutputUpdateProfile.create.
#[derive(Debug, Clone)]
pub struct OutputUpdateProfileCreateData {
    pub consumerlanguage: Option<String>,
    pub email: Option<String>,
    pub firstname: Option<String>,
    pub lastname: Option<String>,
    pub phonenumber: Option<String>,
    pub responsecode: Option<i64>,
    pub responsemessage: Option<String>,
}

/// Version is the typed data model for the version entity.
#[derive(Debug, Clone)]
pub struct Version {
    pub appname: Option<String>,
    pub builddate: Option<String>,
    pub version: Option<String>,
}

/// VersionLoadMatch is the typed request payload for Version.load.
#[derive(Debug, Clone)]
pub struct VersionLoadMatch {
    pub appname: Option<String>,
    pub builddate: Option<String>,
    pub version: Option<String>,
}


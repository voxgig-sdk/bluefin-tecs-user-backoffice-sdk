// Typed models for the BluefinTecsUserBackoffice SDK.
//
// GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
// params (op.<name>.points[].args.params[]). Field/param types are mapped
// from the canonical type sentinels. Do not edit by hand.
//
// These are DOCUMENTARY: the SDK runtime is dynamic (ops take/return
// `voxgig_value*`), so nothing consumes these structs yet — they mirror the
// entity/op shapes for reference and IDE support. This header is standalone
// and is not #included by any generated .c.

#ifndef BLUEFINTECSUSERBACKOFFICE_ENTITY_TYPES_H
#define BLUEFINTECSUSERBACKOFFICE_ENTITY_TYPES_H

#include "sdk.h"

// OutputActivateDigitalModule is the typed data model for the output_activate_digital_module entity.
typedef struct {
  int64_t response_code;  // optional
  char*response_message;  // optional
} OutputActivateDigitalModule;

// OutputActivateDigitalModuleCreateData is the typed request payload for OutputActivateDigitalModule.create.
typedef struct {
  int64_t response_code;  // optional
  char*response_message;  // optional
} OutputActivateDigitalModuleCreateData;

// OutputActivatePortalModule is the typed data model for the output_activate_portal_module entity.
typedef struct {
  char*client_secret;
  char*notification_email;
  int64_t response_code;  // optional
  char*response_message;  // optional
} OutputActivatePortalModule;

// OutputActivatePortalModuleCreateData is the typed request payload for OutputActivatePortalModule.create.
typedef struct {
  char*client_secret;
  char*notification_email;
  int64_t response_code;  // optional
  char*response_message;  // optional
} OutputActivatePortalModuleCreateData;

// OutputActivateStoreModule is the typed data model for the output_activate_store_module entity.
typedef struct {
  int64_t response_code;  // optional
  char*response_message;  // optional
} OutputActivateStoreModule;

// OutputActivateStoreModuleCreateData is the typed request payload for OutputActivateStoreModule.create.
typedef struct {
  int64_t response_code;  // optional
  char*response_message;  // optional
} OutputActivateStoreModuleCreateData;

// OutputActivateUser is the typed data model for the output_activate_user entity.
typedef struct {
  char*consumer_uuid;  // optional
  int64_t response_code;  // optional
  char*response_message;  // optional
} OutputActivateUser;

// OutputActivateUserCreateData is the typed request payload for OutputActivateUser.create.
typedef struct {
  char*consumer_uuid;  // optional
  int64_t response_code;  // optional
  char*response_message;  // optional
} OutputActivateUserCreateData;

// OutputAssignRole is the typed data model for the output_assign_role entity.
typedef struct {
  char*consumer_uuid;
  int64_t response_code;  // optional
  char*response_message;  // optional
  voxgig_value*role;
} OutputAssignRole;

// OutputAssignRoleCreateData is the typed request payload for OutputAssignRole.create.
typedef struct {
  char*consumer_uuid;
  int64_t response_code;  // optional
  char*response_message;  // optional
  voxgig_value*role;
} OutputAssignRoleCreateData;

// OutputChangeLogo is the typed data model for the output_change_logo entity.
typedef struct {
  char*content_as_base64;
  char*mime_type;
  int64_t response_code;  // optional
  char*response_message;  // optional
} OutputChangeLogo;

// OutputChangeLogoCreateData is the typed request payload for OutputChangeLogo.create.
typedef struct {
  char*content_as_base64;
  char*mime_type;
  int64_t response_code;  // optional
  char*response_message;  // optional
} OutputChangeLogoCreateData;

// OutputCreateMandator is the typed data model for the output_create_mandator entity.
typedef struct {
  char*city;  // optional
  char*country;  // optional
  char*date_of_birth;  // optional
  char*description;
  char*drivers_license_number;  // optional
  char*email;
  char*first_name;  // optional
  char*identification_number;  // optional
  char*last_name;  // optional
  char*login;
  voxgig_value*mandator;  // optional
  char*name;
  char*passport_number;  // optional
  char*phone;
  int64_t response_code;  // optional
  char*response_message;  // optional
  char*salutation;  // optional
  char*state;  // optional
  char*street1;  // optional
  char*street2;  // optional
  char*zip_code;  // optional
} OutputCreateMandator;

// OutputCreateMandatorCreateData is the typed request payload for OutputCreateMandator.create.
typedef struct {
  char*city;  // optional
  char*country;  // optional
  char*date_of_birth;  // optional
  char*description;
  char*drivers_license_number;  // optional
  char*email;
  char*first_name;  // optional
  char*identification_number;  // optional
  char*last_name;  // optional
  char*login;
  voxgig_value*mandator;  // optional
  char*name;
  char*passport_number;  // optional
  char*phone;
  int64_t response_code;  // optional
  char*response_message;  // optional
  char*salutation;  // optional
  char*state;  // optional
  char*street1;  // optional
  char*street2;  // optional
  char*zip_code;  // optional
} OutputCreateMandatorCreateData;

// OutputCreateServiceUser is the typed data model for the output_create_service_user entity.
typedef struct {
  char*mandator_name;
  int64_t response_code;  // optional
  char*response_message;  // optional
} OutputCreateServiceUser;

// OutputCreateServiceUserCreateData is the typed request payload for OutputCreateServiceUser.create.
typedef struct {
  char*mandator_name;
  int64_t response_code;  // optional
  char*response_message;  // optional
} OutputCreateServiceUserCreateData;

// OutputDeactivateUser is the typed data model for the output_deactivate_user entity.
typedef struct {
  char*consumer_uuid;  // optional
  int64_t response_code;  // optional
  char*response_message;  // optional
} OutputDeactivateUser;

// OutputDeactivateUserCreateData is the typed request payload for OutputDeactivateUser.create.
typedef struct {
  char*consumer_uuid;  // optional
  int64_t response_code;  // optional
  char*response_message;  // optional
} OutputDeactivateUserCreateData;

// OutputGetKycDocument is the typed data model for the output_get_kyc_document entity.
typedef struct {
  char*case_id;  // optional
  char*encoded_data_base64;  // optional
  int64_t response_code;  // optional
  char*response_message;  // optional
} OutputGetKycDocument;

// OutputGetKycDocumentCreateData is the typed request payload for OutputGetKycDocument.create.
typedef struct {
  char*case_id;  // optional
  char*encoded_data_base64;  // optional
  int64_t response_code;  // optional
  char*response_message;  // optional
} OutputGetKycDocumentCreateData;

// OutputGetLogo is the typed data model for the output_get_logo entity.
typedef struct {
  char*content_as_base64;
  char*mime_type;
  int64_t response_code;  // optional
  char*response_message;  // optional
} OutputGetLogo;

// OutputGetLogoLoadMatch is the typed request payload for OutputGetLogo.load.
typedef struct {
  char*content_as_base64;  // optional
  char*mime_type;  // optional
  int64_t response_code;  // optional
  char*response_message;  // optional
} OutputGetLogoLoadMatch;

// OutputListOfAvailableRole is the typed data model for the output_list_of_available_role entity.
typedef struct {
  voxgig_value*available_role;  // optional
  int64_t response_code;  // optional
  char*response_message;  // optional
} OutputListOfAvailableRole;

// OutputListOfAvailableRoleCreateData is the typed request payload for OutputListOfAvailableRole.create.
typedef struct {
  voxgig_value*available_role;  // optional
  int64_t response_code;  // optional
  char*response_message;  // optional
} OutputListOfAvailableRoleCreateData;

// OutputListOfMandator is the typed data model for the output_list_of_mandator entity.
typedef struct {
  voxgig_value*filter;  // optional
  voxgig_value*list;  // optional
  voxgig_value*pagination;  // optional
  int64_t response_code;  // optional
  char*response_message;  // optional
  voxgig_value*sorting;  // optional
} OutputListOfMandator;

// OutputListOfMandatorCreateData is the typed request payload for OutputListOfMandator.create.
typedef struct {
  voxgig_value*filter;  // optional
  voxgig_value*list;  // optional
  voxgig_value*pagination;  // optional
  int64_t response_code;  // optional
  char*response_message;  // optional
  voxgig_value*sorting;  // optional
} OutputListOfMandatorCreateData;

// OutputListOfModule is the typed data model for the output_list_of_module entity.
typedef struct {
  voxgig_value*list;  // optional
  voxgig_value*pagination;  // optional
  int64_t response_code;  // optional
  char*response_message;  // optional
} OutputListOfModule;

// OutputListOfModuleCreateData is the typed request payload for OutputListOfModule.create.
typedef struct {
  voxgig_value*list;  // optional
  voxgig_value*pagination;  // optional
  int64_t response_code;  // optional
  char*response_message;  // optional
} OutputListOfModuleCreateData;

// OutputListOfRoleGroup is the typed data model for the output_list_of_role_group entity.
typedef struct {
  voxgig_value*filter;  // optional
  voxgig_value*group_role;  // optional
  voxgig_value*pagination;  // optional
  int64_t response_code;  // optional
  char*response_message;  // optional
  voxgig_value*sorting;  // optional
} OutputListOfRoleGroup;

// OutputListOfRoleGroupCreateData is the typed request payload for OutputListOfRoleGroup.create.
typedef struct {
  voxgig_value*filter;  // optional
  voxgig_value*group_role;  // optional
  voxgig_value*pagination;  // optional
  int64_t response_code;  // optional
  char*response_message;  // optional
  voxgig_value*sorting;  // optional
} OutputListOfRoleGroupCreateData;

// OutputListOfTransactionsHistory is the typed data model for the output_list_of_transactions_history entity.
typedef struct {
  voxgig_value*filter;  // optional
  voxgig_value*list;  // optional
  voxgig_value*pagination;  // optional
  int64_t response_code;  // optional
  char*response_message;  // optional
  voxgig_value*sorting;  // optional
} OutputListOfTransactionsHistory;

// OutputListOfTransactionsHistoryCreateData is the typed request payload for OutputListOfTransactionsHistory.create.
typedef struct {
  voxgig_value*filter;  // optional
  voxgig_value*list;  // optional
  voxgig_value*pagination;  // optional
  int64_t response_code;  // optional
  char*response_message;  // optional
  voxgig_value*sorting;  // optional
} OutputListOfTransactionsHistoryCreateData;

// OutputListOfUser is the typed data model for the output_list_of_user entity.
typedef struct {
  voxgig_value*filter;  // optional
  voxgig_value*list;  // optional
  voxgig_value*pagination;  // optional
  int64_t response_code;  // optional
  char*response_message;  // optional
  voxgig_value*sorting;  // optional
} OutputListOfUser;

// OutputListOfUserCreateData is the typed request payload for OutputListOfUser.create.
typedef struct {
  voxgig_value*filter;  // optional
  voxgig_value*list;  // optional
  voxgig_value*pagination;  // optional
  int64_t response_code;  // optional
  char*response_message;  // optional
  voxgig_value*sorting;  // optional
} OutputListOfUserCreateData;

// OutputProvideCredential is the typed data model for the output_provide_credential entity.
typedef struct {
  char*mandator_name;
  char*password;  // optional
  int64_t response_code;  // optional
  char*response_message;  // optional
  char*username;  // optional
} OutputProvideCredential;

// OutputProvideCredentialCreateData is the typed request payload for OutputProvideCredential.create.
typedef struct {
  char*mandator_name;
  char*password;  // optional
  int64_t response_code;  // optional
  char*response_message;  // optional
  char*username;  // optional
} OutputProvideCredentialCreateData;

// OutputRegisterUser is the typed data model for the output_register_user entity.
typedef struct {
  char*city;  // optional
  char*consumer_id;  // optional
  char*consumer_language;  // optional
  char*country;  // optional
  char*date_of_birth;  // optional
  char*driver_licence_number;  // optional
  char*email;
  char*first_name;  // optional
  char*identification_number;  // optional
  char*last_name;  // optional
  char*login;  // optional
  char*module;  // optional
  char*passport_number;  // optional
  char*phone;  // optional
  int64_t response_code;  // optional
  char*response_message;  // optional
  char*salutation;  // optional
  char*state;  // optional
  char*street1;  // optional
  char*street2;  // optional
  char*zip;  // optional
} OutputRegisterUser;

// OutputRegisterUserCreateData is the typed request payload for OutputRegisterUser.create.
typedef struct {
  char*city;  // optional
  char*consumer_id;  // optional
  char*consumer_language;  // optional
  char*country;  // optional
  char*date_of_birth;  // optional
  char*driver_licence_number;  // optional
  char*email;
  char*first_name;  // optional
  char*identification_number;  // optional
  char*last_name;  // optional
  char*login;  // optional
  char*module;  // optional
  char*passport_number;  // optional
  char*phone;  // optional
  int64_t response_code;  // optional
  char*response_message;  // optional
  char*salutation;  // optional
  char*state;  // optional
  char*street1;  // optional
  char*street2;  // optional
  char*zip;  // optional
} OutputRegisterUserCreateData;

// OutputRemoveRole is the typed data model for the output_remove_role entity.
typedef struct {
  char*consumer_uuid;  // optional
  int64_t response_code;  // optional
  char*response_message;  // optional
  voxgig_value*role;  // optional
} OutputRemoveRole;

// OutputRemoveRoleCreateData is the typed request payload for OutputRemoveRole.create.
typedef struct {
  char*consumer_uuid;  // optional
  int64_t response_code;  // optional
  char*response_message;  // optional
  voxgig_value*role;  // optional
} OutputRemoveRoleCreateData;

// OutputResendLink is the typed data model for the output_resend_link entity.
typedef struct {
  char*business_registration_number;  // optional
  char*consumer_uuid;
  char*email_confirmation_code;  // optional
  char*phone_number;  // optional
  int64_t response_code;  // optional
  char*response_message;  // optional
} OutputResendLink;

// OutputResendLinkCreateData is the typed request payload for OutputResendLink.create.
typedef struct {
  char*business_registration_number;  // optional
  char*consumer_uuid;
  char*email_confirmation_code;  // optional
  char*phone_number;  // optional
  int64_t response_code;  // optional
  char*response_message;  // optional
} OutputResendLinkCreateData;

// OutputResetPassword is the typed data model for the output_reset_password entity.
typedef struct {
  char*consumer_uuid;  // optional
  char*phone_number;  // optional
  int64_t response_code;  // optional
  char*response_message;  // optional
} OutputResetPassword;

// OutputResetPasswordCreateData is the typed request payload for OutputResetPassword.create.
typedef struct {
  char*consumer_uuid;  // optional
  char*phone_number;  // optional
  int64_t response_code;  // optional
  char*response_message;  // optional
} OutputResetPasswordCreateData;

// OutputUpdateConsumer is the typed data model for the output_update_consumer entity.
typedef struct {
  char*city;  // optional
  char*consumer_uuid;
  char*consumerlanguage;  // optional
  char*country;  // optional
  char*date_of_birth;  // optional
  char*datetime_created;  // optional
  char*driver_licence_number;  // optional
  char*email;  // optional
  char*first_name;  // optional
  char*identification_number;  // optional
  bool kyc_passed;  // optional
  char*last_name;  // optional
  char*nationality;  // optional
  char*passport_number;  // optional
  char*phone_number;  // optional
  char*place_of_birth;  // optional
  int64_t response_code;  // optional
  char*response_message;  // optional
  char*state;  // optional
  char*street1;  // optional
  char*street2;  // optional
  char*transactionhistory_id;  // optional
  char*zip;  // optional
} OutputUpdateConsumer;

// OutputUpdateConsumerCreateData is the typed request payload for OutputUpdateConsumer.create.
typedef struct {
  char*city;  // optional
  char*consumer_uuid;
  char*consumerlanguage;  // optional
  char*country;  // optional
  char*date_of_birth;  // optional
  char*datetime_created;  // optional
  char*driver_licence_number;  // optional
  char*email;  // optional
  char*first_name;  // optional
  char*identification_number;  // optional
  bool kyc_passed;  // optional
  char*last_name;  // optional
  char*nationality;  // optional
  char*passport_number;  // optional
  char*phone_number;  // optional
  char*place_of_birth;  // optional
  int64_t response_code;  // optional
  char*response_message;  // optional
  char*state;  // optional
  char*street1;  // optional
  char*street2;  // optional
  char*transactionhistory_id;  // optional
  char*zip;  // optional
} OutputUpdateConsumerCreateData;

// OutputUpdateProfile is the typed data model for the output_update_profile entity.
typedef struct {
  char*consumer_language;  // optional
  char*email;  // optional
  char*first_name;  // optional
  char*last_name;  // optional
  char*phone_number;  // optional
  int64_t response_code;  // optional
  char*response_message;  // optional
} OutputUpdateProfile;

// OutputUpdateProfileCreateData is the typed request payload for OutputUpdateProfile.create.
typedef struct {
  char*consumer_language;  // optional
  char*email;  // optional
  char*first_name;  // optional
  char*last_name;  // optional
  char*phone_number;  // optional
  int64_t response_code;  // optional
  char*response_message;  // optional
} OutputUpdateProfileCreateData;

// Version is the typed data model for the version entity.
typedef struct {
  char*app_name;  // optional
  char*build_date;  // optional
  char*version;  // optional
} Version;

// VersionLoadMatch is the typed request payload for Version.load.
typedef struct {
  char*app_name;  // optional
  char*build_date;  // optional
  char*version;  // optional
} VersionLoadMatch;

#endif // BLUEFINTECSUSERBACKOFFICE_ENTITY_TYPES_H

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
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
} OutputActivateDigitalModule;

// OutputActivateDigitalModuleCreateData is the typed request payload for OutputActivateDigitalModule.create.
typedef struct {
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
} OutputActivateDigitalModuleCreateData;

// OutputActivatePortalModule is the typed data model for the output_activate_portal_module entity.
typedef struct {
  char*clientsecret;
  char*notificationemail;
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
} OutputActivatePortalModule;

// OutputActivatePortalModuleCreateData is the typed request payload for OutputActivatePortalModule.create.
typedef struct {
  char*clientsecret;
  char*notificationemail;
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
} OutputActivatePortalModuleCreateData;

// OutputActivateStoreModule is the typed data model for the output_activate_store_module entity.
typedef struct {
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
} OutputActivateStoreModule;

// OutputActivateStoreModuleCreateData is the typed request payload for OutputActivateStoreModule.create.
typedef struct {
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
} OutputActivateStoreModuleCreateData;

// OutputActivateUser is the typed data model for the output_activate_user entity.
typedef struct {
  char*consumeruuid;  // optional
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
} OutputActivateUser;

// OutputActivateUserCreateData is the typed request payload for OutputActivateUser.create.
typedef struct {
  char*consumeruuid;  // optional
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
} OutputActivateUserCreateData;

// OutputAssignRole is the typed data model for the output_assign_role entity.
typedef struct {
  char*consumeruuid;
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
  voxgig_value*roles;
} OutputAssignRole;

// OutputAssignRoleCreateData is the typed request payload for OutputAssignRole.create.
typedef struct {
  char*consumeruuid;
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
  voxgig_value*roles;
} OutputAssignRoleCreateData;

// OutputChangeLogo is the typed data model for the output_change_logo entity.
typedef struct {
  char*contentasbase64;
  char*mimetype;
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
} OutputChangeLogo;

// OutputChangeLogoCreateData is the typed request payload for OutputChangeLogo.create.
typedef struct {
  char*contentasbase64;
  char*mimetype;
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
} OutputChangeLogoCreateData;

// OutputCreateMandator is the typed data model for the output_create_mandator entity.
typedef struct {
  char*city;  // optional
  char*country;  // optional
  char*dateofbirth;  // optional
  char*description;  // optional
  char*driverslicensenumber;  // optional
  char*email;
  char*firstname;  // optional
  char*identificationnumber;  // optional
  char*lastname;  // optional
  char*login;
  char*name;  // optional
  char*passportnumber;  // optional
  char*phone;
  char*salutation;  // optional
  char*state;  // optional
  char*street1;  // optional
  char*street2;  // optional
  char*zipcode;  // optional
} OutputCreateMandator;

// OutputCreateMandatorCreateData is the typed request payload for OutputCreateMandator.create.
typedef struct {
  char*city;  // optional
  char*country;  // optional
  char*dateofbirth;  // optional
  char*description;  // optional
  char*driverslicensenumber;  // optional
  char*email;
  char*firstname;  // optional
  char*identificationnumber;  // optional
  char*lastname;  // optional
  char*login;
  char*name;  // optional
  char*passportnumber;  // optional
  char*phone;
  char*salutation;  // optional
  char*state;  // optional
  char*street1;  // optional
  char*street2;  // optional
  char*zipcode;  // optional
} OutputCreateMandatorCreateData;

// OutputCreateServiceUser is the typed data model for the output_create_service_user entity.
typedef struct {
  char*mandatorname;
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
} OutputCreateServiceUser;

// OutputCreateServiceUserCreateData is the typed request payload for OutputCreateServiceUser.create.
typedef struct {
  char*mandatorname;
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
} OutputCreateServiceUserCreateData;

// OutputDeactivateUser is the typed data model for the output_deactivate_user entity.
typedef struct {
  char*consumeruuid;  // optional
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
} OutputDeactivateUser;

// OutputDeactivateUserCreateData is the typed request payload for OutputDeactivateUser.create.
typedef struct {
  char*consumeruuid;  // optional
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
} OutputDeactivateUserCreateData;

// OutputGetKycDocument is the typed data model for the output_get_kyc_document entity.
typedef struct {
  char*caseid;  // optional
  char*encodeddatabase64;  // optional
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
} OutputGetKycDocument;

// OutputGetKycDocumentCreateData is the typed request payload for OutputGetKycDocument.create.
typedef struct {
  char*caseid;  // optional
  char*encodeddatabase64;  // optional
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
} OutputGetKycDocumentCreateData;

// OutputGetLogo is the typed data model for the output_get_logo entity.
typedef struct {
  char*contentasbase64;
  char*mimetype;
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
} OutputGetLogo;

// OutputGetLogoLoadMatch is the typed request payload for OutputGetLogo.load.
typedef struct {
  char*contentasbase64;  // optional
  char*mimetype;  // optional
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
} OutputGetLogoLoadMatch;

// OutputListOfAvailableRole is the typed data model for the output_list_of_available_role entity.
typedef struct {
  voxgig_value*availableroles;  // optional
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
} OutputListOfAvailableRole;

// OutputListOfAvailableRoleCreateData is the typed request payload for OutputListOfAvailableRole.create.
typedef struct {
  voxgig_value*availableroles;  // optional
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
} OutputListOfAvailableRoleCreateData;

// OutputListOfMandator is the typed data model for the output_list_of_mandator entity.
typedef struct {
  voxgig_value*filter;  // optional
  voxgig_value*list;  // optional
  voxgig_value*pagination;  // optional
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
  voxgig_value*sorting;  // optional
} OutputListOfMandator;

// OutputListOfMandatorCreateData is the typed request payload for OutputListOfMandator.create.
typedef struct {
  voxgig_value*filter;  // optional
  voxgig_value*list;  // optional
  voxgig_value*pagination;  // optional
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
  voxgig_value*sorting;  // optional
} OutputListOfMandatorCreateData;

// OutputListOfModule is the typed data model for the output_list_of_module entity.
typedef struct {
  voxgig_value*list;  // optional
  voxgig_value*pagination;  // optional
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
} OutputListOfModule;

// OutputListOfModuleCreateData is the typed request payload for OutputListOfModule.create.
typedef struct {
  voxgig_value*list;  // optional
  voxgig_value*pagination;  // optional
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
} OutputListOfModuleCreateData;

// OutputListOfRoleGroup is the typed data model for the output_list_of_role_group entity.
typedef struct {
  voxgig_value*filter;  // optional
  voxgig_value*grouproles;  // optional
  voxgig_value*pagination;  // optional
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
  voxgig_value*sorting;  // optional
} OutputListOfRoleGroup;

// OutputListOfRoleGroupCreateData is the typed request payload for OutputListOfRoleGroup.create.
typedef struct {
  voxgig_value*filter;  // optional
  voxgig_value*grouproles;  // optional
  voxgig_value*pagination;  // optional
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
  voxgig_value*sorting;  // optional
} OutputListOfRoleGroupCreateData;

// OutputListOfTransactionsHistory is the typed data model for the output_list_of_transactions_history entity.
typedef struct {
  voxgig_value*filter;  // optional
  voxgig_value*list;  // optional
  voxgig_value*pagination;  // optional
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
  voxgig_value*sorting;  // optional
} OutputListOfTransactionsHistory;

// OutputListOfTransactionsHistoryCreateData is the typed request payload for OutputListOfTransactionsHistory.create.
typedef struct {
  voxgig_value*filter;  // optional
  voxgig_value*list;  // optional
  voxgig_value*pagination;  // optional
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
  voxgig_value*sorting;  // optional
} OutputListOfTransactionsHistoryCreateData;

// OutputListOfUser is the typed data model for the output_list_of_user entity.
typedef struct {
  voxgig_value*filter;  // optional
  voxgig_value*list;  // optional
  voxgig_value*pagination;  // optional
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
  voxgig_value*sorting;  // optional
} OutputListOfUser;

// OutputListOfUserCreateData is the typed request payload for OutputListOfUser.create.
typedef struct {
  voxgig_value*filter;  // optional
  voxgig_value*list;  // optional
  voxgig_value*pagination;  // optional
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
  voxgig_value*sorting;  // optional
} OutputListOfUserCreateData;

// OutputProvideCredential is the typed data model for the output_provide_credential entity.
typedef struct {
  char*mandatorname;
  char*password;  // optional
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
  char*username;  // optional
} OutputProvideCredential;

// OutputProvideCredentialCreateData is the typed request payload for OutputProvideCredential.create.
typedef struct {
  char*mandatorname;
  char*password;  // optional
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
  char*username;  // optional
} OutputProvideCredentialCreateData;

// OutputRegisterUser is the typed data model for the output_register_user entity.
typedef struct {
  char*city;  // optional
  char*consumerid;  // optional
  char*consumerlanguage;  // optional
  char*country;  // optional
  char*dateofbirth;  // optional
  char*driverlicencenumber;  // optional
  char*email;
  char*firstname;  // optional
  char*identificationnumber;  // optional
  char*lastname;  // optional
  char*login;  // optional
  char*module;  // optional
  char*passportnumber;  // optional
  char*phone;  // optional
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
  char*salutation;  // optional
  char*state;  // optional
  char*street1;  // optional
  char*street2;  // optional
  char*zip;  // optional
} OutputRegisterUser;

// OutputRegisterUserCreateData is the typed request payload for OutputRegisterUser.create.
typedef struct {
  char*city;  // optional
  char*consumerid;  // optional
  char*consumerlanguage;  // optional
  char*country;  // optional
  char*dateofbirth;  // optional
  char*driverlicencenumber;  // optional
  char*email;
  char*firstname;  // optional
  char*identificationnumber;  // optional
  char*lastname;  // optional
  char*login;  // optional
  char*module;  // optional
  char*passportnumber;  // optional
  char*phone;  // optional
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
  char*salutation;  // optional
  char*state;  // optional
  char*street1;  // optional
  char*street2;  // optional
  char*zip;  // optional
} OutputRegisterUserCreateData;

// OutputRemoveRole is the typed data model for the output_remove_role entity.
typedef struct {
  char*consumeruuid;  // optional
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
  voxgig_value*roles;  // optional
} OutputRemoveRole;

// OutputRemoveRoleCreateData is the typed request payload for OutputRemoveRole.create.
typedef struct {
  char*consumeruuid;  // optional
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
  voxgig_value*roles;  // optional
} OutputRemoveRoleCreateData;

// OutputResendLink is the typed data model for the output_resend_link entity.
typedef struct {
  char*businessregistrationnumber;  // optional
  char*consumeruuid;
  char*emailconfirmationcode;  // optional
  char*phonenumber;  // optional
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
} OutputResendLink;

// OutputResendLinkCreateData is the typed request payload for OutputResendLink.create.
typedef struct {
  char*businessregistrationnumber;  // optional
  char*consumeruuid;
  char*emailconfirmationcode;  // optional
  char*phonenumber;  // optional
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
} OutputResendLinkCreateData;

// OutputResetPassword is the typed data model for the output_reset_password entity.
typedef struct {
  char*consumeruuid;  // optional
  char*phonenumber;  // optional
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
} OutputResetPassword;

// OutputResetPasswordCreateData is the typed request payload for OutputResetPassword.create.
typedef struct {
  char*consumeruuid;  // optional
  char*phonenumber;  // optional
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
} OutputResetPasswordCreateData;

// OutputUpdateConsumer is the typed data model for the output_update_consumer entity.
typedef struct {
  char*city;  // optional
  char*consumeruuid;
  char*consumerlanguage;  // optional
  char*country;  // optional
  char*dateofbirth;  // optional
  char*datetime_created;  // optional
  char*driverlicencenumber;  // optional
  char*email;  // optional
  char*firstname;  // optional
  char*identificationnumber;  // optional
  bool kycpassed;  // optional
  char*lastname;  // optional
  char*nationality;  // optional
  char*passportnumber;  // optional
  char*phonenumber;  // optional
  char*placeofbirth;  // optional
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
  char*state;  // optional
  char*street1;  // optional
  char*street2;  // optional
  char*transactionhistory_id;  // optional
  char*zip;  // optional
} OutputUpdateConsumer;

// OutputUpdateConsumerCreateData is the typed request payload for OutputUpdateConsumer.create.
typedef struct {
  char*city;  // optional
  char*consumeruuid;
  char*consumerlanguage;  // optional
  char*country;  // optional
  char*dateofbirth;  // optional
  char*datetime_created;  // optional
  char*driverlicencenumber;  // optional
  char*email;  // optional
  char*firstname;  // optional
  char*identificationnumber;  // optional
  bool kycpassed;  // optional
  char*lastname;  // optional
  char*nationality;  // optional
  char*passportnumber;  // optional
  char*phonenumber;  // optional
  char*placeofbirth;  // optional
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
  char*state;  // optional
  char*street1;  // optional
  char*street2;  // optional
  char*transactionhistory_id;  // optional
  char*zip;  // optional
} OutputUpdateConsumerCreateData;

// OutputUpdateProfile is the typed data model for the output_update_profile entity.
typedef struct {
  char*consumerlanguage;  // optional
  char*email;  // optional
  char*firstname;  // optional
  char*lastname;  // optional
  char*phonenumber;  // optional
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
} OutputUpdateProfile;

// OutputUpdateProfileCreateData is the typed request payload for OutputUpdateProfile.create.
typedef struct {
  char*consumerlanguage;  // optional
  char*email;  // optional
  char*firstname;  // optional
  char*lastname;  // optional
  char*phonenumber;  // optional
  int64_t responsecode;  // optional
  char*responsemessage;  // optional
} OutputUpdateProfileCreateData;

// Version is the typed data model for the version entity.
typedef struct {
  char*appname;  // optional
  char*builddate;  // optional
  char*version;  // optional
} Version;

// VersionLoadMatch is the typed request payload for Version.load.
typedef struct {
  char*appname;  // optional
  char*builddate;  // optional
  char*version;  // optional
} VersionLoadMatch;

#endif // BLUEFINTECSUSERBACKOFFICE_ENTITY_TYPES_H

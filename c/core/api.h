// BluefinTecsUserBackoffice SDK public API (generated).

#ifndef BLUEFIN_TECS_USER_BACKOFFICE_API_H
#define BLUEFIN_TECS_USER_BACKOFFICE_API_H

#include "sdk.h"

// OutputActivateDigitalModule entity.
Entity* output_activate_digital_module_entity_new(BluefinTecsUserBackofficeSDK* client, voxgig_value* entopts);
Entity* bluefin_tecs_user_backoffice_output_activate_digital_module(BluefinTecsUserBackofficeSDK* client, voxgig_value* entopts);
voxgig_value* output_activate_digital_module_stream(Entity* e, const char* action, voxgig_value* args, voxgig_value* callopts, PNError** err);
// OutputActivatePortalModule entity.
Entity* output_activate_portal_module_entity_new(BluefinTecsUserBackofficeSDK* client, voxgig_value* entopts);
Entity* bluefin_tecs_user_backoffice_output_activate_portal_module(BluefinTecsUserBackofficeSDK* client, voxgig_value* entopts);
voxgig_value* output_activate_portal_module_stream(Entity* e, const char* action, voxgig_value* args, voxgig_value* callopts, PNError** err);
// OutputActivateStoreModule entity.
Entity* output_activate_store_module_entity_new(BluefinTecsUserBackofficeSDK* client, voxgig_value* entopts);
Entity* bluefin_tecs_user_backoffice_output_activate_store_module(BluefinTecsUserBackofficeSDK* client, voxgig_value* entopts);
voxgig_value* output_activate_store_module_stream(Entity* e, const char* action, voxgig_value* args, voxgig_value* callopts, PNError** err);
// OutputActivateUser entity.
Entity* output_activate_user_entity_new(BluefinTecsUserBackofficeSDK* client, voxgig_value* entopts);
Entity* bluefin_tecs_user_backoffice_output_activate_user(BluefinTecsUserBackofficeSDK* client, voxgig_value* entopts);
voxgig_value* output_activate_user_stream(Entity* e, const char* action, voxgig_value* args, voxgig_value* callopts, PNError** err);
// OutputAssignRole entity.
Entity* output_assign_role_entity_new(BluefinTecsUserBackofficeSDK* client, voxgig_value* entopts);
Entity* bluefin_tecs_user_backoffice_output_assign_role(BluefinTecsUserBackofficeSDK* client, voxgig_value* entopts);
voxgig_value* output_assign_role_stream(Entity* e, const char* action, voxgig_value* args, voxgig_value* callopts, PNError** err);
// OutputChangeLogo entity.
Entity* output_change_logo_entity_new(BluefinTecsUserBackofficeSDK* client, voxgig_value* entopts);
Entity* bluefin_tecs_user_backoffice_output_change_logo(BluefinTecsUserBackofficeSDK* client, voxgig_value* entopts);
voxgig_value* output_change_logo_stream(Entity* e, const char* action, voxgig_value* args, voxgig_value* callopts, PNError** err);
// OutputCreateMandator entity.
Entity* output_create_mandator_entity_new(BluefinTecsUserBackofficeSDK* client, voxgig_value* entopts);
Entity* bluefin_tecs_user_backoffice_output_create_mandator(BluefinTecsUserBackofficeSDK* client, voxgig_value* entopts);
voxgig_value* output_create_mandator_stream(Entity* e, const char* action, voxgig_value* args, voxgig_value* callopts, PNError** err);
// OutputCreateServiceUser entity.
Entity* output_create_service_user_entity_new(BluefinTecsUserBackofficeSDK* client, voxgig_value* entopts);
Entity* bluefin_tecs_user_backoffice_output_create_service_user(BluefinTecsUserBackofficeSDK* client, voxgig_value* entopts);
voxgig_value* output_create_service_user_stream(Entity* e, const char* action, voxgig_value* args, voxgig_value* callopts, PNError** err);
// OutputDeactivateUser entity.
Entity* output_deactivate_user_entity_new(BluefinTecsUserBackofficeSDK* client, voxgig_value* entopts);
Entity* bluefin_tecs_user_backoffice_output_deactivate_user(BluefinTecsUserBackofficeSDK* client, voxgig_value* entopts);
voxgig_value* output_deactivate_user_stream(Entity* e, const char* action, voxgig_value* args, voxgig_value* callopts, PNError** err);
// OutputGetKycDocument entity.
Entity* output_get_kyc_document_entity_new(BluefinTecsUserBackofficeSDK* client, voxgig_value* entopts);
Entity* bluefin_tecs_user_backoffice_output_get_kyc_document(BluefinTecsUserBackofficeSDK* client, voxgig_value* entopts);
voxgig_value* output_get_kyc_document_stream(Entity* e, const char* action, voxgig_value* args, voxgig_value* callopts, PNError** err);
// OutputGetLogo entity.
Entity* output_get_logo_entity_new(BluefinTecsUserBackofficeSDK* client, voxgig_value* entopts);
Entity* bluefin_tecs_user_backoffice_output_get_logo(BluefinTecsUserBackofficeSDK* client, voxgig_value* entopts);
voxgig_value* output_get_logo_stream(Entity* e, const char* action, voxgig_value* args, voxgig_value* callopts, PNError** err);
// OutputListOfAvailableRole entity.
Entity* output_list_of_available_role_entity_new(BluefinTecsUserBackofficeSDK* client, voxgig_value* entopts);
Entity* bluefin_tecs_user_backoffice_output_list_of_available_role(BluefinTecsUserBackofficeSDK* client, voxgig_value* entopts);
voxgig_value* output_list_of_available_role_stream(Entity* e, const char* action, voxgig_value* args, voxgig_value* callopts, PNError** err);
// OutputListOfMandator entity.
Entity* output_list_of_mandator_entity_new(BluefinTecsUserBackofficeSDK* client, voxgig_value* entopts);
Entity* bluefin_tecs_user_backoffice_output_list_of_mandator(BluefinTecsUserBackofficeSDK* client, voxgig_value* entopts);
voxgig_value* output_list_of_mandator_stream(Entity* e, const char* action, voxgig_value* args, voxgig_value* callopts, PNError** err);
// OutputListOfModule entity.
Entity* output_list_of_module_entity_new(BluefinTecsUserBackofficeSDK* client, voxgig_value* entopts);
Entity* bluefin_tecs_user_backoffice_output_list_of_module(BluefinTecsUserBackofficeSDK* client, voxgig_value* entopts);
voxgig_value* output_list_of_module_stream(Entity* e, const char* action, voxgig_value* args, voxgig_value* callopts, PNError** err);
// OutputListOfRoleGroup entity.
Entity* output_list_of_role_group_entity_new(BluefinTecsUserBackofficeSDK* client, voxgig_value* entopts);
Entity* bluefin_tecs_user_backoffice_output_list_of_role_group(BluefinTecsUserBackofficeSDK* client, voxgig_value* entopts);
voxgig_value* output_list_of_role_group_stream(Entity* e, const char* action, voxgig_value* args, voxgig_value* callopts, PNError** err);
// OutputListOfTransactionsHistory entity.
Entity* output_list_of_transactions_history_entity_new(BluefinTecsUserBackofficeSDK* client, voxgig_value* entopts);
Entity* bluefin_tecs_user_backoffice_output_list_of_transactions_history(BluefinTecsUserBackofficeSDK* client, voxgig_value* entopts);
voxgig_value* output_list_of_transactions_history_stream(Entity* e, const char* action, voxgig_value* args, voxgig_value* callopts, PNError** err);
// OutputListOfUser entity.
Entity* output_list_of_user_entity_new(BluefinTecsUserBackofficeSDK* client, voxgig_value* entopts);
Entity* bluefin_tecs_user_backoffice_output_list_of_user(BluefinTecsUserBackofficeSDK* client, voxgig_value* entopts);
voxgig_value* output_list_of_user_stream(Entity* e, const char* action, voxgig_value* args, voxgig_value* callopts, PNError** err);
// OutputProvideCredential entity.
Entity* output_provide_credential_entity_new(BluefinTecsUserBackofficeSDK* client, voxgig_value* entopts);
Entity* bluefin_tecs_user_backoffice_output_provide_credential(BluefinTecsUserBackofficeSDK* client, voxgig_value* entopts);
voxgig_value* output_provide_credential_stream(Entity* e, const char* action, voxgig_value* args, voxgig_value* callopts, PNError** err);
// OutputRegisterUser entity.
Entity* output_register_user_entity_new(BluefinTecsUserBackofficeSDK* client, voxgig_value* entopts);
Entity* bluefin_tecs_user_backoffice_output_register_user(BluefinTecsUserBackofficeSDK* client, voxgig_value* entopts);
voxgig_value* output_register_user_stream(Entity* e, const char* action, voxgig_value* args, voxgig_value* callopts, PNError** err);
// OutputRemoveRole entity.
Entity* output_remove_role_entity_new(BluefinTecsUserBackofficeSDK* client, voxgig_value* entopts);
Entity* bluefin_tecs_user_backoffice_output_remove_role(BluefinTecsUserBackofficeSDK* client, voxgig_value* entopts);
voxgig_value* output_remove_role_stream(Entity* e, const char* action, voxgig_value* args, voxgig_value* callopts, PNError** err);
// OutputResendLink entity.
Entity* output_resend_link_entity_new(BluefinTecsUserBackofficeSDK* client, voxgig_value* entopts);
Entity* bluefin_tecs_user_backoffice_output_resend_link(BluefinTecsUserBackofficeSDK* client, voxgig_value* entopts);
voxgig_value* output_resend_link_stream(Entity* e, const char* action, voxgig_value* args, voxgig_value* callopts, PNError** err);
// OutputResetPassword entity.
Entity* output_reset_password_entity_new(BluefinTecsUserBackofficeSDK* client, voxgig_value* entopts);
Entity* bluefin_tecs_user_backoffice_output_reset_password(BluefinTecsUserBackofficeSDK* client, voxgig_value* entopts);
voxgig_value* output_reset_password_stream(Entity* e, const char* action, voxgig_value* args, voxgig_value* callopts, PNError** err);
// OutputUpdateConsumer entity.
Entity* output_update_consumer_entity_new(BluefinTecsUserBackofficeSDK* client, voxgig_value* entopts);
Entity* bluefin_tecs_user_backoffice_output_update_consumer(BluefinTecsUserBackofficeSDK* client, voxgig_value* entopts);
voxgig_value* output_update_consumer_stream(Entity* e, const char* action, voxgig_value* args, voxgig_value* callopts, PNError** err);
// OutputUpdateProfile entity.
Entity* output_update_profile_entity_new(BluefinTecsUserBackofficeSDK* client, voxgig_value* entopts);
Entity* bluefin_tecs_user_backoffice_output_update_profile(BluefinTecsUserBackofficeSDK* client, voxgig_value* entopts);
voxgig_value* output_update_profile_stream(Entity* e, const char* action, voxgig_value* args, voxgig_value* callopts, PNError** err);
// Version entity.
Entity* version_entity_new(BluefinTecsUserBackofficeSDK* client, voxgig_value* entopts);
Entity* bluefin_tecs_user_backoffice_version(BluefinTecsUserBackofficeSDK* client, voxgig_value* entopts);
voxgig_value* version_stream(Entity* e, const char* action, voxgig_value* args, voxgig_value* callopts, PNError** err);

#endif // BLUEFIN_TECS_USER_BACKOFFICE_API_H

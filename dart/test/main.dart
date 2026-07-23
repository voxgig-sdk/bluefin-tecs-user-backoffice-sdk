// BluefinTecsUserBackoffice SDK test suite entry. GENERATED — do not edit.

import 'dart:io';

import 'harness.dart' as harness;

import 'exists_test.dart' as exists_test;
import 'struct_test.dart' as struct_test;
import 'primary_test.dart' as primary_test;
import 'pipeline_test.dart' as pipeline_test;
import 'feature_test.dart' as feature_test;
import 'netsim_test.dart' as netsim_test;
import 'custom_test.dart' as custom_test;
import 'readme_examples_test.dart' as readme_examples_test;
import 'entity/output_activate_digital_module/OutputActivateDigitalModuleEntity_test.dart' as output_activate_digital_module_entity_test;
import 'entity/output_activate_portal_module/OutputActivatePortalModuleEntity_test.dart' as output_activate_portal_module_entity_test;
import 'entity/output_activate_store_module/OutputActivateStoreModuleEntity_test.dart' as output_activate_store_module_entity_test;
import 'entity/output_activate_user/OutputActivateUserEntity_test.dart' as output_activate_user_entity_test;
import 'entity/output_assign_role/OutputAssignRoleEntity_test.dart' as output_assign_role_entity_test;
import 'entity/output_change_logo/OutputChangeLogoEntity_test.dart' as output_change_logo_entity_test;
import 'entity/output_create_mandator/OutputCreateMandatorEntity_test.dart' as output_create_mandator_entity_test;
import 'entity/output_create_service_user/OutputCreateServiceUserEntity_test.dart' as output_create_service_user_entity_test;
import 'entity/output_deactivate_user/OutputDeactivateUserEntity_test.dart' as output_deactivate_user_entity_test;
import 'entity/output_get_kyc_document/OutputGetKycDocumentEntity_test.dart' as output_get_kyc_document_entity_test;
import 'entity/output_get_logo/OutputGetLogoEntity_test.dart' as output_get_logo_entity_test;
import 'entity/output_get_logo/OutputGetLogoDirect_test.dart' as output_get_logo_direct_test;
import 'entity/output_list_of_available_role/OutputListOfAvailableRoleEntity_test.dart' as output_list_of_available_role_entity_test;
import 'entity/output_list_of_mandator/OutputListOfMandatorEntity_test.dart' as output_list_of_mandator_entity_test;
import 'entity/output_list_of_module/OutputListOfModuleEntity_test.dart' as output_list_of_module_entity_test;
import 'entity/output_list_of_role_group/OutputListOfRoleGroupEntity_test.dart' as output_list_of_role_group_entity_test;
import 'entity/output_list_of_transactions_history/OutputListOfTransactionsHistoryEntity_test.dart' as output_list_of_transactions_history_entity_test;
import 'entity/output_list_of_user/OutputListOfUserEntity_test.dart' as output_list_of_user_entity_test;
import 'entity/output_provide_credential/OutputProvideCredentialEntity_test.dart' as output_provide_credential_entity_test;
import 'entity/output_register_user/OutputRegisterUserEntity_test.dart' as output_register_user_entity_test;
import 'entity/output_remove_role/OutputRemoveRoleEntity_test.dart' as output_remove_role_entity_test;
import 'entity/output_resend_link/OutputResendLinkEntity_test.dart' as output_resend_link_entity_test;
import 'entity/output_reset_password/OutputResetPasswordEntity_test.dart' as output_reset_password_entity_test;
import 'entity/output_update_consumer/OutputUpdateConsumerEntity_test.dart' as output_update_consumer_entity_test;
import 'entity/output_update_profile/OutputUpdateProfileEntity_test.dart' as output_update_profile_entity_test;
import 'entity/version/VersionEntity_test.dart' as version_entity_test;
import 'entity/version/VersionDirect_test.dart' as version_direct_test;

Future<void> main() async {
  exists_test.tests();
  struct_test.tests();
  primary_test.tests();
  pipeline_test.tests();
  feature_test.tests();
  netsim_test.tests();
  custom_test.tests();
  readme_examples_test.tests();
  output_activate_digital_module_entity_test.tests();
  output_activate_portal_module_entity_test.tests();
  output_activate_store_module_entity_test.tests();
  output_activate_user_entity_test.tests();
  output_assign_role_entity_test.tests();
  output_change_logo_entity_test.tests();
  output_create_mandator_entity_test.tests();
  output_create_service_user_entity_test.tests();
  output_deactivate_user_entity_test.tests();
  output_get_kyc_document_entity_test.tests();
  output_get_logo_entity_test.tests();
  output_get_logo_direct_test.tests();
  output_list_of_available_role_entity_test.tests();
  output_list_of_mandator_entity_test.tests();
  output_list_of_module_entity_test.tests();
  output_list_of_role_group_entity_test.tests();
  output_list_of_transactions_history_entity_test.tests();
  output_list_of_user_entity_test.tests();
  output_provide_credential_entity_test.tests();
  output_register_user_entity_test.tests();
  output_remove_role_entity_test.tests();
  output_resend_link_entity_test.tests();
  output_reset_password_entity_test.tests();
  output_update_consumer_entity_test.tests();
  output_update_profile_entity_test.tests();
  version_entity_test.tests();
  version_direct_test.tests();

  final failed = await harness.runAll();
  if (0 < failed) {
    exitCode = 1;
  }
}

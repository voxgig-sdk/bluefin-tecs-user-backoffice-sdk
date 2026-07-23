// BluefinTecsUserBackoffice SDK client. All transport and pipeline behaviour lives in the
// SdkClient base (core/types.hpp); this class binds the API-specific entity
// accessors and the test-mode constructor.

#ifndef SDK_CORE_CLIENT_HPP
#define SDK_CORE_CLIENT_HPP

#include <memory>

#include "../core/types.hpp"
#include "../entity/entities.hpp"

namespace sdk {

class BluefinTecsUserBackofficeSDK : public SdkClient {
public:
  explicit BluefinTecsUserBackofficeSDK(Value options = Value::undef()) : SdkClient(options) {}


  // OutputActivateDigitalModule entity bound to this client.
  std::shared_ptr<OutputActivateDigitalModuleEntity> output_activate_digital_module(Value entopts = Value::undef()) {
    return std::make_shared<OutputActivateDigitalModuleEntity>(this, entopts);
  }

  // OutputActivatePortalModule entity bound to this client.
  std::shared_ptr<OutputActivatePortalModuleEntity> output_activate_portal_module(Value entopts = Value::undef()) {
    return std::make_shared<OutputActivatePortalModuleEntity>(this, entopts);
  }

  // OutputActivateStoreModule entity bound to this client.
  std::shared_ptr<OutputActivateStoreModuleEntity> output_activate_store_module(Value entopts = Value::undef()) {
    return std::make_shared<OutputActivateStoreModuleEntity>(this, entopts);
  }

  // OutputActivateUser entity bound to this client.
  std::shared_ptr<OutputActivateUserEntity> output_activate_user(Value entopts = Value::undef()) {
    return std::make_shared<OutputActivateUserEntity>(this, entopts);
  }

  // OutputAssignRole entity bound to this client.
  std::shared_ptr<OutputAssignRoleEntity> output_assign_role(Value entopts = Value::undef()) {
    return std::make_shared<OutputAssignRoleEntity>(this, entopts);
  }

  // OutputChangeLogo entity bound to this client.
  std::shared_ptr<OutputChangeLogoEntity> output_change_logo(Value entopts = Value::undef()) {
    return std::make_shared<OutputChangeLogoEntity>(this, entopts);
  }

  // OutputCreateMandator entity bound to this client.
  std::shared_ptr<OutputCreateMandatorEntity> output_create_mandator(Value entopts = Value::undef()) {
    return std::make_shared<OutputCreateMandatorEntity>(this, entopts);
  }

  // OutputCreateServiceUser entity bound to this client.
  std::shared_ptr<OutputCreateServiceUserEntity> output_create_service_user(Value entopts = Value::undef()) {
    return std::make_shared<OutputCreateServiceUserEntity>(this, entopts);
  }

  // OutputDeactivateUser entity bound to this client.
  std::shared_ptr<OutputDeactivateUserEntity> output_deactivate_user(Value entopts = Value::undef()) {
    return std::make_shared<OutputDeactivateUserEntity>(this, entopts);
  }

  // OutputGetKycDocument entity bound to this client.
  std::shared_ptr<OutputGetKycDocumentEntity> output_get_kyc_document(Value entopts = Value::undef()) {
    return std::make_shared<OutputGetKycDocumentEntity>(this, entopts);
  }

  // OutputGetLogo entity bound to this client.
  std::shared_ptr<OutputGetLogoEntity> output_get_logo(Value entopts = Value::undef()) {
    return std::make_shared<OutputGetLogoEntity>(this, entopts);
  }

  // OutputListOfAvailableRole entity bound to this client.
  std::shared_ptr<OutputListOfAvailableRoleEntity> output_list_of_available_role(Value entopts = Value::undef()) {
    return std::make_shared<OutputListOfAvailableRoleEntity>(this, entopts);
  }

  // OutputListOfMandator entity bound to this client.
  std::shared_ptr<OutputListOfMandatorEntity> output_list_of_mandator(Value entopts = Value::undef()) {
    return std::make_shared<OutputListOfMandatorEntity>(this, entopts);
  }

  // OutputListOfModule entity bound to this client.
  std::shared_ptr<OutputListOfModuleEntity> output_list_of_module(Value entopts = Value::undef()) {
    return std::make_shared<OutputListOfModuleEntity>(this, entopts);
  }

  // OutputListOfRoleGroup entity bound to this client.
  std::shared_ptr<OutputListOfRoleGroupEntity> output_list_of_role_group(Value entopts = Value::undef()) {
    return std::make_shared<OutputListOfRoleGroupEntity>(this, entopts);
  }

  // OutputListOfTransactionsHistory entity bound to this client.
  std::shared_ptr<OutputListOfTransactionsHistoryEntity> output_list_of_transactions_history(Value entopts = Value::undef()) {
    return std::make_shared<OutputListOfTransactionsHistoryEntity>(this, entopts);
  }

  // OutputListOfUser entity bound to this client.
  std::shared_ptr<OutputListOfUserEntity> output_list_of_user(Value entopts = Value::undef()) {
    return std::make_shared<OutputListOfUserEntity>(this, entopts);
  }

  // OutputProvideCredential entity bound to this client.
  std::shared_ptr<OutputProvideCredentialEntity> output_provide_credential(Value entopts = Value::undef()) {
    return std::make_shared<OutputProvideCredentialEntity>(this, entopts);
  }

  // OutputRegisterUser entity bound to this client.
  std::shared_ptr<OutputRegisterUserEntity> output_register_user(Value entopts = Value::undef()) {
    return std::make_shared<OutputRegisterUserEntity>(this, entopts);
  }

  // OutputRemoveRole entity bound to this client.
  std::shared_ptr<OutputRemoveRoleEntity> output_remove_role(Value entopts = Value::undef()) {
    return std::make_shared<OutputRemoveRoleEntity>(this, entopts);
  }

  // OutputResendLink entity bound to this client.
  std::shared_ptr<OutputResendLinkEntity> output_resend_link(Value entopts = Value::undef()) {
    return std::make_shared<OutputResendLinkEntity>(this, entopts);
  }

  // OutputResetPassword entity bound to this client.
  std::shared_ptr<OutputResetPasswordEntity> output_reset_password(Value entopts = Value::undef()) {
    return std::make_shared<OutputResetPasswordEntity>(this, entopts);
  }

  // OutputUpdateConsumer entity bound to this client.
  std::shared_ptr<OutputUpdateConsumerEntity> output_update_consumer(Value entopts = Value::undef()) {
    return std::make_shared<OutputUpdateConsumerEntity>(this, entopts);
  }

  // OutputUpdateProfile entity bound to this client.
  std::shared_ptr<OutputUpdateProfileEntity> output_update_profile(Value entopts = Value::undef()) {
    return std::make_shared<OutputUpdateProfileEntity>(this, entopts);
  }

  // Version entity bound to this client.
  std::shared_ptr<VersionEntity> version(Value entopts = Value::undef()) {
    return std::make_shared<VersionEntity>(this, entopts);
  }


  // testSDK builds a client in test mode: the test feature is activated,
  // installing the in-memory mock transport (no network activity).
  static std::shared_ptr<BluefinTecsUserBackofficeSDK> testSDK() {
    return testSDK(Value::undef(), Value::undef());
  }

  static std::shared_ptr<BluefinTecsUserBackofficeSDK> testSDK(Value testopts, Value sdkopts) {
    auto sdk = std::make_shared<BluefinTecsUserBackofficeSDK>(SdkClient::testOptions(testopts, sdkopts));
    sdk->mode = "test";
    return sdk;
  }

  // Convenience no-arg constructor.
  static std::shared_ptr<BluefinTecsUserBackofficeSDK> create() {
    return std::make_shared<BluefinTecsUserBackofficeSDK>(Value::undef());
  }
};

using BluefinTecsUserBackofficeSDKPtr = std::shared_ptr<BluefinTecsUserBackofficeSDK>;

} // namespace sdk

#endif // SDK_CORE_CLIENT_HPP

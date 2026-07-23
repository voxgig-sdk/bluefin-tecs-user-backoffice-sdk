package voxgig.bluefintecsuserbackofficesdk.core;

import java.util.Map;

/**
 * BluefinTecsUserBackoffice SDK client. All transport and pipeline behaviour lives in
 * the SdkClient base (core/SdkClient.java); this class binds the
 * API-specific entity accessors and the test-mode constructor.
 */
public class BluefinTecsUserBackofficeSDK extends SdkClient {

  public BluefinTecsUserBackofficeSDK() {
    this(null);
  }

  public BluefinTecsUserBackofficeSDK(Map<String, Object> options) {
    super(options);
  }


  /**
   * Returns a output_activate_digital_module entity bound to this client.
   * Idiomatic usage: client.outputActivateDigitalModule(null).list(null, null) or
   * client.outputActivateDigitalModule(null).load(Map.of("id", ...), null).
   */
  public SdkEntity outputActivateDigitalModule(Map<String, Object> entopts) {
    return new voxgig.bluefintecsuserbackofficesdk.entity.OutputActivateDigitalModuleEntity(this, entopts);
  }

  /**
   * Returns a output_activate_portal_module entity bound to this client.
   * Idiomatic usage: client.outputActivatePortalModule(null).list(null, null) or
   * client.outputActivatePortalModule(null).load(Map.of("id", ...), null).
   */
  public SdkEntity outputActivatePortalModule(Map<String, Object> entopts) {
    return new voxgig.bluefintecsuserbackofficesdk.entity.OutputActivatePortalModuleEntity(this, entopts);
  }

  /**
   * Returns a output_activate_store_module entity bound to this client.
   * Idiomatic usage: client.outputActivateStoreModule(null).list(null, null) or
   * client.outputActivateStoreModule(null).load(Map.of("id", ...), null).
   */
  public SdkEntity outputActivateStoreModule(Map<String, Object> entopts) {
    return new voxgig.bluefintecsuserbackofficesdk.entity.OutputActivateStoreModuleEntity(this, entopts);
  }

  /**
   * Returns a output_activate_user entity bound to this client.
   * Idiomatic usage: client.outputActivateUser(null).list(null, null) or
   * client.outputActivateUser(null).load(Map.of("id", ...), null).
   */
  public SdkEntity outputActivateUser(Map<String, Object> entopts) {
    return new voxgig.bluefintecsuserbackofficesdk.entity.OutputActivateUserEntity(this, entopts);
  }

  /**
   * Returns a output_assign_role entity bound to this client.
   * Idiomatic usage: client.outputAssignRole(null).list(null, null) or
   * client.outputAssignRole(null).load(Map.of("id", ...), null).
   */
  public SdkEntity outputAssignRole(Map<String, Object> entopts) {
    return new voxgig.bluefintecsuserbackofficesdk.entity.OutputAssignRoleEntity(this, entopts);
  }

  /**
   * Returns a output_change_logo entity bound to this client.
   * Idiomatic usage: client.outputChangeLogo(null).list(null, null) or
   * client.outputChangeLogo(null).load(Map.of("id", ...), null).
   */
  public SdkEntity outputChangeLogo(Map<String, Object> entopts) {
    return new voxgig.bluefintecsuserbackofficesdk.entity.OutputChangeLogoEntity(this, entopts);
  }

  /**
   * Returns a output_create_mandator entity bound to this client.
   * Idiomatic usage: client.outputCreateMandator(null).list(null, null) or
   * client.outputCreateMandator(null).load(Map.of("id", ...), null).
   */
  public SdkEntity outputCreateMandator(Map<String, Object> entopts) {
    return new voxgig.bluefintecsuserbackofficesdk.entity.OutputCreateMandatorEntity(this, entopts);
  }

  /**
   * Returns a output_create_service_user entity bound to this client.
   * Idiomatic usage: client.outputCreateServiceUser(null).list(null, null) or
   * client.outputCreateServiceUser(null).load(Map.of("id", ...), null).
   */
  public SdkEntity outputCreateServiceUser(Map<String, Object> entopts) {
    return new voxgig.bluefintecsuserbackofficesdk.entity.OutputCreateServiceUserEntity(this, entopts);
  }

  /**
   * Returns a output_deactivate_user entity bound to this client.
   * Idiomatic usage: client.outputDeactivateUser(null).list(null, null) or
   * client.outputDeactivateUser(null).load(Map.of("id", ...), null).
   */
  public SdkEntity outputDeactivateUser(Map<String, Object> entopts) {
    return new voxgig.bluefintecsuserbackofficesdk.entity.OutputDeactivateUserEntity(this, entopts);
  }

  /**
   * Returns a output_get_kyc_document entity bound to this client.
   * Idiomatic usage: client.outputGetKycDocument(null).list(null, null) or
   * client.outputGetKycDocument(null).load(Map.of("id", ...), null).
   */
  public SdkEntity outputGetKycDocument(Map<String, Object> entopts) {
    return new voxgig.bluefintecsuserbackofficesdk.entity.OutputGetKycDocumentEntity(this, entopts);
  }

  /**
   * Returns a output_get_logo entity bound to this client.
   * Idiomatic usage: client.outputGetLogo(null).list(null, null) or
   * client.outputGetLogo(null).load(Map.of("id", ...), null).
   */
  public SdkEntity outputGetLogo(Map<String, Object> entopts) {
    return new voxgig.bluefintecsuserbackofficesdk.entity.OutputGetLogoEntity(this, entopts);
  }

  /**
   * Returns a output_list_of_available_role entity bound to this client.
   * Idiomatic usage: client.outputListOfAvailableRole(null).list(null, null) or
   * client.outputListOfAvailableRole(null).load(Map.of("id", ...), null).
   */
  public SdkEntity outputListOfAvailableRole(Map<String, Object> entopts) {
    return new voxgig.bluefintecsuserbackofficesdk.entity.OutputListOfAvailableRoleEntity(this, entopts);
  }

  /**
   * Returns a output_list_of_mandator entity bound to this client.
   * Idiomatic usage: client.outputListOfMandator(null).list(null, null) or
   * client.outputListOfMandator(null).load(Map.of("id", ...), null).
   */
  public SdkEntity outputListOfMandator(Map<String, Object> entopts) {
    return new voxgig.bluefintecsuserbackofficesdk.entity.OutputListOfMandatorEntity(this, entopts);
  }

  /**
   * Returns a output_list_of_module entity bound to this client.
   * Idiomatic usage: client.outputListOfModule(null).list(null, null) or
   * client.outputListOfModule(null).load(Map.of("id", ...), null).
   */
  public SdkEntity outputListOfModule(Map<String, Object> entopts) {
    return new voxgig.bluefintecsuserbackofficesdk.entity.OutputListOfModuleEntity(this, entopts);
  }

  /**
   * Returns a output_list_of_role_group entity bound to this client.
   * Idiomatic usage: client.outputListOfRoleGroup(null).list(null, null) or
   * client.outputListOfRoleGroup(null).load(Map.of("id", ...), null).
   */
  public SdkEntity outputListOfRoleGroup(Map<String, Object> entopts) {
    return new voxgig.bluefintecsuserbackofficesdk.entity.OutputListOfRoleGroupEntity(this, entopts);
  }

  /**
   * Returns a output_list_of_transactions_history entity bound to this client.
   * Idiomatic usage: client.outputListOfTransactionsHistory(null).list(null, null) or
   * client.outputListOfTransactionsHistory(null).load(Map.of("id", ...), null).
   */
  public SdkEntity outputListOfTransactionsHistory(Map<String, Object> entopts) {
    return new voxgig.bluefintecsuserbackofficesdk.entity.OutputListOfTransactionsHistoryEntity(this, entopts);
  }

  /**
   * Returns a output_list_of_user entity bound to this client.
   * Idiomatic usage: client.outputListOfUser(null).list(null, null) or
   * client.outputListOfUser(null).load(Map.of("id", ...), null).
   */
  public SdkEntity outputListOfUser(Map<String, Object> entopts) {
    return new voxgig.bluefintecsuserbackofficesdk.entity.OutputListOfUserEntity(this, entopts);
  }

  /**
   * Returns a output_provide_credential entity bound to this client.
   * Idiomatic usage: client.outputProvideCredential(null).list(null, null) or
   * client.outputProvideCredential(null).load(Map.of("id", ...), null).
   */
  public SdkEntity outputProvideCredential(Map<String, Object> entopts) {
    return new voxgig.bluefintecsuserbackofficesdk.entity.OutputProvideCredentialEntity(this, entopts);
  }

  /**
   * Returns a output_register_user entity bound to this client.
   * Idiomatic usage: client.outputRegisterUser(null).list(null, null) or
   * client.outputRegisterUser(null).load(Map.of("id", ...), null).
   */
  public SdkEntity outputRegisterUser(Map<String, Object> entopts) {
    return new voxgig.bluefintecsuserbackofficesdk.entity.OutputRegisterUserEntity(this, entopts);
  }

  /**
   * Returns a output_remove_role entity bound to this client.
   * Idiomatic usage: client.outputRemoveRole(null).list(null, null) or
   * client.outputRemoveRole(null).load(Map.of("id", ...), null).
   */
  public SdkEntity outputRemoveRole(Map<String, Object> entopts) {
    return new voxgig.bluefintecsuserbackofficesdk.entity.OutputRemoveRoleEntity(this, entopts);
  }

  /**
   * Returns a output_resend_link entity bound to this client.
   * Idiomatic usage: client.outputResendLink(null).list(null, null) or
   * client.outputResendLink(null).load(Map.of("id", ...), null).
   */
  public SdkEntity outputResendLink(Map<String, Object> entopts) {
    return new voxgig.bluefintecsuserbackofficesdk.entity.OutputResendLinkEntity(this, entopts);
  }

  /**
   * Returns a output_reset_password entity bound to this client.
   * Idiomatic usage: client.outputResetPassword(null).list(null, null) or
   * client.outputResetPassword(null).load(Map.of("id", ...), null).
   */
  public SdkEntity outputResetPassword(Map<String, Object> entopts) {
    return new voxgig.bluefintecsuserbackofficesdk.entity.OutputResetPasswordEntity(this, entopts);
  }

  /**
   * Returns a output_update_consumer entity bound to this client.
   * Idiomatic usage: client.outputUpdateConsumer(null).list(null, null) or
   * client.outputUpdateConsumer(null).load(Map.of("id", ...), null).
   */
  public SdkEntity outputUpdateConsumer(Map<String, Object> entopts) {
    return new voxgig.bluefintecsuserbackofficesdk.entity.OutputUpdateConsumerEntity(this, entopts);
  }

  /**
   * Returns a output_update_profile entity bound to this client.
   * Idiomatic usage: client.outputUpdateProfile(null).list(null, null) or
   * client.outputUpdateProfile(null).load(Map.of("id", ...), null).
   */
  public SdkEntity outputUpdateProfile(Map<String, Object> entopts) {
    return new voxgig.bluefintecsuserbackofficesdk.entity.OutputUpdateProfileEntity(this, entopts);
  }

  /**
   * Returns a version entity bound to this client.
   * Idiomatic usage: client.version(null).list(null, null) or
   * client.version(null).load(Map.of("id", ...), null).
   */
  public SdkEntity version(Map<String, Object> entopts) {
    return new voxgig.bluefintecsuserbackofficesdk.entity.VersionEntity(this, entopts);
  }


  // testSDK builds a client in test mode: the test feature is activated,
  // installing the in-memory mock transport (no network activity).
  public static BluefinTecsUserBackofficeSDK testSDK() {
    return testSDK(null, null);
  }

  public static BluefinTecsUserBackofficeSDK testSDK(
      Map<String, Object> testopts, Map<String, Object> sdkopts) {
    BluefinTecsUserBackofficeSDK sdk = new BluefinTecsUserBackofficeSDK(SdkClient.testOptions(testopts, sdkopts));
    sdk.mode = "test";
    return sdk;
  }
}

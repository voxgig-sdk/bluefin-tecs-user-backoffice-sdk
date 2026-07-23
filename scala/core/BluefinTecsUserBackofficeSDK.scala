package voxgig.bluefintecsuserbackofficesdk.core

import java.util.{Map => JMap}

// BluefinTecsUserBackoffice SDK client. All transport and pipeline behaviour lives in the
// SdkClient base (core/SdkClient.scala); this class binds the API-specific
// entity accessors and the test-mode constructor.
class BluefinTecsUserBackofficeSDK(options: JMap[String, Object]) extends SdkClient(options) {

  def this() = this(null)


  /**
   * Returns a output_activate_digital_module entity bound to this client.
   * Idiomatic usage: client.outputActivateDigitalModule(null).list(null, null) or
   * client.outputActivateDigitalModule(null).load(java.util.Map.of("id", ...), null).
   */
  def outputActivateDigitalModule(entopts: java.util.Map[String, Object]): SdkEntity =
    new voxgig.bluefintecsuserbackofficesdk.entity.OutputActivateDigitalModuleEntity(this, entopts)

  /**
   * Returns a output_activate_portal_module entity bound to this client.
   * Idiomatic usage: client.outputActivatePortalModule(null).list(null, null) or
   * client.outputActivatePortalModule(null).load(java.util.Map.of("id", ...), null).
   */
  def outputActivatePortalModule(entopts: java.util.Map[String, Object]): SdkEntity =
    new voxgig.bluefintecsuserbackofficesdk.entity.OutputActivatePortalModuleEntity(this, entopts)

  /**
   * Returns a output_activate_store_module entity bound to this client.
   * Idiomatic usage: client.outputActivateStoreModule(null).list(null, null) or
   * client.outputActivateStoreModule(null).load(java.util.Map.of("id", ...), null).
   */
  def outputActivateStoreModule(entopts: java.util.Map[String, Object]): SdkEntity =
    new voxgig.bluefintecsuserbackofficesdk.entity.OutputActivateStoreModuleEntity(this, entopts)

  /**
   * Returns a output_activate_user entity bound to this client.
   * Idiomatic usage: client.outputActivateUser(null).list(null, null) or
   * client.outputActivateUser(null).load(java.util.Map.of("id", ...), null).
   */
  def outputActivateUser(entopts: java.util.Map[String, Object]): SdkEntity =
    new voxgig.bluefintecsuserbackofficesdk.entity.OutputActivateUserEntity(this, entopts)

  /**
   * Returns a output_assign_role entity bound to this client.
   * Idiomatic usage: client.outputAssignRole(null).list(null, null) or
   * client.outputAssignRole(null).load(java.util.Map.of("id", ...), null).
   */
  def outputAssignRole(entopts: java.util.Map[String, Object]): SdkEntity =
    new voxgig.bluefintecsuserbackofficesdk.entity.OutputAssignRoleEntity(this, entopts)

  /**
   * Returns a output_change_logo entity bound to this client.
   * Idiomatic usage: client.outputChangeLogo(null).list(null, null) or
   * client.outputChangeLogo(null).load(java.util.Map.of("id", ...), null).
   */
  def outputChangeLogo(entopts: java.util.Map[String, Object]): SdkEntity =
    new voxgig.bluefintecsuserbackofficesdk.entity.OutputChangeLogoEntity(this, entopts)

  /**
   * Returns a output_create_mandator entity bound to this client.
   * Idiomatic usage: client.outputCreateMandator(null).list(null, null) or
   * client.outputCreateMandator(null).load(java.util.Map.of("id", ...), null).
   */
  def outputCreateMandator(entopts: java.util.Map[String, Object]): SdkEntity =
    new voxgig.bluefintecsuserbackofficesdk.entity.OutputCreateMandatorEntity(this, entopts)

  /**
   * Returns a output_create_service_user entity bound to this client.
   * Idiomatic usage: client.outputCreateServiceUser(null).list(null, null) or
   * client.outputCreateServiceUser(null).load(java.util.Map.of("id", ...), null).
   */
  def outputCreateServiceUser(entopts: java.util.Map[String, Object]): SdkEntity =
    new voxgig.bluefintecsuserbackofficesdk.entity.OutputCreateServiceUserEntity(this, entopts)

  /**
   * Returns a output_deactivate_user entity bound to this client.
   * Idiomatic usage: client.outputDeactivateUser(null).list(null, null) or
   * client.outputDeactivateUser(null).load(java.util.Map.of("id", ...), null).
   */
  def outputDeactivateUser(entopts: java.util.Map[String, Object]): SdkEntity =
    new voxgig.bluefintecsuserbackofficesdk.entity.OutputDeactivateUserEntity(this, entopts)

  /**
   * Returns a output_get_kyc_document entity bound to this client.
   * Idiomatic usage: client.outputGetKycDocument(null).list(null, null) or
   * client.outputGetKycDocument(null).load(java.util.Map.of("id", ...), null).
   */
  def outputGetKycDocument(entopts: java.util.Map[String, Object]): SdkEntity =
    new voxgig.bluefintecsuserbackofficesdk.entity.OutputGetKycDocumentEntity(this, entopts)

  /**
   * Returns a output_get_logo entity bound to this client.
   * Idiomatic usage: client.outputGetLogo(null).list(null, null) or
   * client.outputGetLogo(null).load(java.util.Map.of("id", ...), null).
   */
  def outputGetLogo(entopts: java.util.Map[String, Object]): SdkEntity =
    new voxgig.bluefintecsuserbackofficesdk.entity.OutputGetLogoEntity(this, entopts)

  /**
   * Returns a output_list_of_available_role entity bound to this client.
   * Idiomatic usage: client.outputListOfAvailableRole(null).list(null, null) or
   * client.outputListOfAvailableRole(null).load(java.util.Map.of("id", ...), null).
   */
  def outputListOfAvailableRole(entopts: java.util.Map[String, Object]): SdkEntity =
    new voxgig.bluefintecsuserbackofficesdk.entity.OutputListOfAvailableRoleEntity(this, entopts)

  /**
   * Returns a output_list_of_mandator entity bound to this client.
   * Idiomatic usage: client.outputListOfMandator(null).list(null, null) or
   * client.outputListOfMandator(null).load(java.util.Map.of("id", ...), null).
   */
  def outputListOfMandator(entopts: java.util.Map[String, Object]): SdkEntity =
    new voxgig.bluefintecsuserbackofficesdk.entity.OutputListOfMandatorEntity(this, entopts)

  /**
   * Returns a output_list_of_module entity bound to this client.
   * Idiomatic usage: client.outputListOfModule(null).list(null, null) or
   * client.outputListOfModule(null).load(java.util.Map.of("id", ...), null).
   */
  def outputListOfModule(entopts: java.util.Map[String, Object]): SdkEntity =
    new voxgig.bluefintecsuserbackofficesdk.entity.OutputListOfModuleEntity(this, entopts)

  /**
   * Returns a output_list_of_role_group entity bound to this client.
   * Idiomatic usage: client.outputListOfRoleGroup(null).list(null, null) or
   * client.outputListOfRoleGroup(null).load(java.util.Map.of("id", ...), null).
   */
  def outputListOfRoleGroup(entopts: java.util.Map[String, Object]): SdkEntity =
    new voxgig.bluefintecsuserbackofficesdk.entity.OutputListOfRoleGroupEntity(this, entopts)

  /**
   * Returns a output_list_of_transactions_history entity bound to this client.
   * Idiomatic usage: client.outputListOfTransactionsHistory(null).list(null, null) or
   * client.outputListOfTransactionsHistory(null).load(java.util.Map.of("id", ...), null).
   */
  def outputListOfTransactionsHistory(entopts: java.util.Map[String, Object]): SdkEntity =
    new voxgig.bluefintecsuserbackofficesdk.entity.OutputListOfTransactionsHistoryEntity(this, entopts)

  /**
   * Returns a output_list_of_user entity bound to this client.
   * Idiomatic usage: client.outputListOfUser(null).list(null, null) or
   * client.outputListOfUser(null).load(java.util.Map.of("id", ...), null).
   */
  def outputListOfUser(entopts: java.util.Map[String, Object]): SdkEntity =
    new voxgig.bluefintecsuserbackofficesdk.entity.OutputListOfUserEntity(this, entopts)

  /**
   * Returns a output_provide_credential entity bound to this client.
   * Idiomatic usage: client.outputProvideCredential(null).list(null, null) or
   * client.outputProvideCredential(null).load(java.util.Map.of("id", ...), null).
   */
  def outputProvideCredential(entopts: java.util.Map[String, Object]): SdkEntity =
    new voxgig.bluefintecsuserbackofficesdk.entity.OutputProvideCredentialEntity(this, entopts)

  /**
   * Returns a output_register_user entity bound to this client.
   * Idiomatic usage: client.outputRegisterUser(null).list(null, null) or
   * client.outputRegisterUser(null).load(java.util.Map.of("id", ...), null).
   */
  def outputRegisterUser(entopts: java.util.Map[String, Object]): SdkEntity =
    new voxgig.bluefintecsuserbackofficesdk.entity.OutputRegisterUserEntity(this, entopts)

  /**
   * Returns a output_remove_role entity bound to this client.
   * Idiomatic usage: client.outputRemoveRole(null).list(null, null) or
   * client.outputRemoveRole(null).load(java.util.Map.of("id", ...), null).
   */
  def outputRemoveRole(entopts: java.util.Map[String, Object]): SdkEntity =
    new voxgig.bluefintecsuserbackofficesdk.entity.OutputRemoveRoleEntity(this, entopts)

  /**
   * Returns a output_resend_link entity bound to this client.
   * Idiomatic usage: client.outputResendLink(null).list(null, null) or
   * client.outputResendLink(null).load(java.util.Map.of("id", ...), null).
   */
  def outputResendLink(entopts: java.util.Map[String, Object]): SdkEntity =
    new voxgig.bluefintecsuserbackofficesdk.entity.OutputResendLinkEntity(this, entopts)

  /**
   * Returns a output_reset_password entity bound to this client.
   * Idiomatic usage: client.outputResetPassword(null).list(null, null) or
   * client.outputResetPassword(null).load(java.util.Map.of("id", ...), null).
   */
  def outputResetPassword(entopts: java.util.Map[String, Object]): SdkEntity =
    new voxgig.bluefintecsuserbackofficesdk.entity.OutputResetPasswordEntity(this, entopts)

  /**
   * Returns a output_update_consumer entity bound to this client.
   * Idiomatic usage: client.outputUpdateConsumer(null).list(null, null) or
   * client.outputUpdateConsumer(null).load(java.util.Map.of("id", ...), null).
   */
  def outputUpdateConsumer(entopts: java.util.Map[String, Object]): SdkEntity =
    new voxgig.bluefintecsuserbackofficesdk.entity.OutputUpdateConsumerEntity(this, entopts)

  /**
   * Returns a output_update_profile entity bound to this client.
   * Idiomatic usage: client.outputUpdateProfile(null).list(null, null) or
   * client.outputUpdateProfile(null).load(java.util.Map.of("id", ...), null).
   */
  def outputUpdateProfile(entopts: java.util.Map[String, Object]): SdkEntity =
    new voxgig.bluefintecsuserbackofficesdk.entity.OutputUpdateProfileEntity(this, entopts)

  /**
   * Returns a version entity bound to this client.
   * Idiomatic usage: client.version(null).list(null, null) or
   * client.version(null).load(java.util.Map.of("id", ...), null).
   */
  def version(entopts: java.util.Map[String, Object]): SdkEntity =
    new voxgig.bluefintecsuserbackofficesdk.entity.VersionEntity(this, entopts)


}

object BluefinTecsUserBackofficeSDK {

  // testSDK builds a client in test mode: the test feature is activated,
  // installing the in-memory mock transport (no network activity).
  def testSDK(): BluefinTecsUserBackofficeSDK = testSDK(null, null)

  def testSDK(testopts: JMap[String, Object], sdkopts: JMap[String, Object]): BluefinTecsUserBackofficeSDK = {
    val sdk = new BluefinTecsUserBackofficeSDK(SdkClient.testOptions(testopts, sdkopts))
    sdk.mode = "test"
    sdk
  }
}

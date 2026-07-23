package voxgig.bluefintecsuserbackofficesdk.core

/**
 * BluefinTecsUserBackoffice SDK client. All transport and pipeline behaviour lives in the
 * SdkClient base (core/SdkClient.kt); this class binds the API-specific
 * entity accessors and the test-mode constructor.
 */
class BluefinTecsUserBackofficeSDK(options: MutableMap<String, Any?>?) : SdkClient(options) {

  constructor() : this(null)


  /**
   * Returns a output_activate_digital_module entity bound to this client.
   * Idiomatic usage: client.outputActivateDigitalModule(null).list(null, null) or
   * client.outputActivateDigitalModule(null).load(mutableMapOf("id" to ...), null).
   */
  fun outputActivateDigitalModule(entopts: MutableMap<String, Any?>?): SdkEntity {
    return voxgig.bluefintecsuserbackofficesdk.entity.OutputActivateDigitalModuleEntity(this, entopts)
  }

  /**
   * Returns a output_activate_portal_module entity bound to this client.
   * Idiomatic usage: client.outputActivatePortalModule(null).list(null, null) or
   * client.outputActivatePortalModule(null).load(mutableMapOf("id" to ...), null).
   */
  fun outputActivatePortalModule(entopts: MutableMap<String, Any?>?): SdkEntity {
    return voxgig.bluefintecsuserbackofficesdk.entity.OutputActivatePortalModuleEntity(this, entopts)
  }

  /**
   * Returns a output_activate_store_module entity bound to this client.
   * Idiomatic usage: client.outputActivateStoreModule(null).list(null, null) or
   * client.outputActivateStoreModule(null).load(mutableMapOf("id" to ...), null).
   */
  fun outputActivateStoreModule(entopts: MutableMap<String, Any?>?): SdkEntity {
    return voxgig.bluefintecsuserbackofficesdk.entity.OutputActivateStoreModuleEntity(this, entopts)
  }

  /**
   * Returns a output_activate_user entity bound to this client.
   * Idiomatic usage: client.outputActivateUser(null).list(null, null) or
   * client.outputActivateUser(null).load(mutableMapOf("id" to ...), null).
   */
  fun outputActivateUser(entopts: MutableMap<String, Any?>?): SdkEntity {
    return voxgig.bluefintecsuserbackofficesdk.entity.OutputActivateUserEntity(this, entopts)
  }

  /**
   * Returns a output_assign_role entity bound to this client.
   * Idiomatic usage: client.outputAssignRole(null).list(null, null) or
   * client.outputAssignRole(null).load(mutableMapOf("id" to ...), null).
   */
  fun outputAssignRole(entopts: MutableMap<String, Any?>?): SdkEntity {
    return voxgig.bluefintecsuserbackofficesdk.entity.OutputAssignRoleEntity(this, entopts)
  }

  /**
   * Returns a output_change_logo entity bound to this client.
   * Idiomatic usage: client.outputChangeLogo(null).list(null, null) or
   * client.outputChangeLogo(null).load(mutableMapOf("id" to ...), null).
   */
  fun outputChangeLogo(entopts: MutableMap<String, Any?>?): SdkEntity {
    return voxgig.bluefintecsuserbackofficesdk.entity.OutputChangeLogoEntity(this, entopts)
  }

  /**
   * Returns a output_create_mandator entity bound to this client.
   * Idiomatic usage: client.outputCreateMandator(null).list(null, null) or
   * client.outputCreateMandator(null).load(mutableMapOf("id" to ...), null).
   */
  fun outputCreateMandator(entopts: MutableMap<String, Any?>?): SdkEntity {
    return voxgig.bluefintecsuserbackofficesdk.entity.OutputCreateMandatorEntity(this, entopts)
  }

  /**
   * Returns a output_create_service_user entity bound to this client.
   * Idiomatic usage: client.outputCreateServiceUser(null).list(null, null) or
   * client.outputCreateServiceUser(null).load(mutableMapOf("id" to ...), null).
   */
  fun outputCreateServiceUser(entopts: MutableMap<String, Any?>?): SdkEntity {
    return voxgig.bluefintecsuserbackofficesdk.entity.OutputCreateServiceUserEntity(this, entopts)
  }

  /**
   * Returns a output_deactivate_user entity bound to this client.
   * Idiomatic usage: client.outputDeactivateUser(null).list(null, null) or
   * client.outputDeactivateUser(null).load(mutableMapOf("id" to ...), null).
   */
  fun outputDeactivateUser(entopts: MutableMap<String, Any?>?): SdkEntity {
    return voxgig.bluefintecsuserbackofficesdk.entity.OutputDeactivateUserEntity(this, entopts)
  }

  /**
   * Returns a output_get_kyc_document entity bound to this client.
   * Idiomatic usage: client.outputGetKycDocument(null).list(null, null) or
   * client.outputGetKycDocument(null).load(mutableMapOf("id" to ...), null).
   */
  fun outputGetKycDocument(entopts: MutableMap<String, Any?>?): SdkEntity {
    return voxgig.bluefintecsuserbackofficesdk.entity.OutputGetKycDocumentEntity(this, entopts)
  }

  /**
   * Returns a output_get_logo entity bound to this client.
   * Idiomatic usage: client.outputGetLogo(null).list(null, null) or
   * client.outputGetLogo(null).load(mutableMapOf("id" to ...), null).
   */
  fun outputGetLogo(entopts: MutableMap<String, Any?>?): SdkEntity {
    return voxgig.bluefintecsuserbackofficesdk.entity.OutputGetLogoEntity(this, entopts)
  }

  /**
   * Returns a output_list_of_available_role entity bound to this client.
   * Idiomatic usage: client.outputListOfAvailableRole(null).list(null, null) or
   * client.outputListOfAvailableRole(null).load(mutableMapOf("id" to ...), null).
   */
  fun outputListOfAvailableRole(entopts: MutableMap<String, Any?>?): SdkEntity {
    return voxgig.bluefintecsuserbackofficesdk.entity.OutputListOfAvailableRoleEntity(this, entopts)
  }

  /**
   * Returns a output_list_of_mandator entity bound to this client.
   * Idiomatic usage: client.outputListOfMandator(null).list(null, null) or
   * client.outputListOfMandator(null).load(mutableMapOf("id" to ...), null).
   */
  fun outputListOfMandator(entopts: MutableMap<String, Any?>?): SdkEntity {
    return voxgig.bluefintecsuserbackofficesdk.entity.OutputListOfMandatorEntity(this, entopts)
  }

  /**
   * Returns a output_list_of_module entity bound to this client.
   * Idiomatic usage: client.outputListOfModule(null).list(null, null) or
   * client.outputListOfModule(null).load(mutableMapOf("id" to ...), null).
   */
  fun outputListOfModule(entopts: MutableMap<String, Any?>?): SdkEntity {
    return voxgig.bluefintecsuserbackofficesdk.entity.OutputListOfModuleEntity(this, entopts)
  }

  /**
   * Returns a output_list_of_role_group entity bound to this client.
   * Idiomatic usage: client.outputListOfRoleGroup(null).list(null, null) or
   * client.outputListOfRoleGroup(null).load(mutableMapOf("id" to ...), null).
   */
  fun outputListOfRoleGroup(entopts: MutableMap<String, Any?>?): SdkEntity {
    return voxgig.bluefintecsuserbackofficesdk.entity.OutputListOfRoleGroupEntity(this, entopts)
  }

  /**
   * Returns a output_list_of_transactions_history entity bound to this client.
   * Idiomatic usage: client.outputListOfTransactionsHistory(null).list(null, null) or
   * client.outputListOfTransactionsHistory(null).load(mutableMapOf("id" to ...), null).
   */
  fun outputListOfTransactionsHistory(entopts: MutableMap<String, Any?>?): SdkEntity {
    return voxgig.bluefintecsuserbackofficesdk.entity.OutputListOfTransactionsHistoryEntity(this, entopts)
  }

  /**
   * Returns a output_list_of_user entity bound to this client.
   * Idiomatic usage: client.outputListOfUser(null).list(null, null) or
   * client.outputListOfUser(null).load(mutableMapOf("id" to ...), null).
   */
  fun outputListOfUser(entopts: MutableMap<String, Any?>?): SdkEntity {
    return voxgig.bluefintecsuserbackofficesdk.entity.OutputListOfUserEntity(this, entopts)
  }

  /**
   * Returns a output_provide_credential entity bound to this client.
   * Idiomatic usage: client.outputProvideCredential(null).list(null, null) or
   * client.outputProvideCredential(null).load(mutableMapOf("id" to ...), null).
   */
  fun outputProvideCredential(entopts: MutableMap<String, Any?>?): SdkEntity {
    return voxgig.bluefintecsuserbackofficesdk.entity.OutputProvideCredentialEntity(this, entopts)
  }

  /**
   * Returns a output_register_user entity bound to this client.
   * Idiomatic usage: client.outputRegisterUser(null).list(null, null) or
   * client.outputRegisterUser(null).load(mutableMapOf("id" to ...), null).
   */
  fun outputRegisterUser(entopts: MutableMap<String, Any?>?): SdkEntity {
    return voxgig.bluefintecsuserbackofficesdk.entity.OutputRegisterUserEntity(this, entopts)
  }

  /**
   * Returns a output_remove_role entity bound to this client.
   * Idiomatic usage: client.outputRemoveRole(null).list(null, null) or
   * client.outputRemoveRole(null).load(mutableMapOf("id" to ...), null).
   */
  fun outputRemoveRole(entopts: MutableMap<String, Any?>?): SdkEntity {
    return voxgig.bluefintecsuserbackofficesdk.entity.OutputRemoveRoleEntity(this, entopts)
  }

  /**
   * Returns a output_resend_link entity bound to this client.
   * Idiomatic usage: client.outputResendLink(null).list(null, null) or
   * client.outputResendLink(null).load(mutableMapOf("id" to ...), null).
   */
  fun outputResendLink(entopts: MutableMap<String, Any?>?): SdkEntity {
    return voxgig.bluefintecsuserbackofficesdk.entity.OutputResendLinkEntity(this, entopts)
  }

  /**
   * Returns a output_reset_password entity bound to this client.
   * Idiomatic usage: client.outputResetPassword(null).list(null, null) or
   * client.outputResetPassword(null).load(mutableMapOf("id" to ...), null).
   */
  fun outputResetPassword(entopts: MutableMap<String, Any?>?): SdkEntity {
    return voxgig.bluefintecsuserbackofficesdk.entity.OutputResetPasswordEntity(this, entopts)
  }

  /**
   * Returns a output_update_consumer entity bound to this client.
   * Idiomatic usage: client.outputUpdateConsumer(null).list(null, null) or
   * client.outputUpdateConsumer(null).load(mutableMapOf("id" to ...), null).
   */
  fun outputUpdateConsumer(entopts: MutableMap<String, Any?>?): SdkEntity {
    return voxgig.bluefintecsuserbackofficesdk.entity.OutputUpdateConsumerEntity(this, entopts)
  }

  /**
   * Returns a output_update_profile entity bound to this client.
   * Idiomatic usage: client.outputUpdateProfile(null).list(null, null) or
   * client.outputUpdateProfile(null).load(mutableMapOf("id" to ...), null).
   */
  fun outputUpdateProfile(entopts: MutableMap<String, Any?>?): SdkEntity {
    return voxgig.bluefintecsuserbackofficesdk.entity.OutputUpdateProfileEntity(this, entopts)
  }

  /**
   * Returns a version entity bound to this client.
   * Idiomatic usage: client.version(null).list(null, null) or
   * client.version(null).load(mutableMapOf("id" to ...), null).
   */
  fun version(entopts: MutableMap<String, Any?>?): SdkEntity {
    return voxgig.bluefintecsuserbackofficesdk.entity.VersionEntity(this, entopts)
  }


  companion object {
    // testSDK builds a client in test mode: the test feature is activated,
    // installing the in-memory mock transport (no network activity).
    fun testSDK(): BluefinTecsUserBackofficeSDK = testSDK(null, null)

    fun testSDK(
      testopts: MutableMap<String, Any?>?,
      sdkopts: MutableMap<String, Any?>?,
    ): BluefinTecsUserBackofficeSDK {
      val sdk = BluefinTecsUserBackofficeSDK(testOptions(testopts, sdkopts))
      sdk.mode = "test"
      return sdk
    }
  }
}

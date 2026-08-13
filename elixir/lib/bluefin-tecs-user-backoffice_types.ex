# Typed models for the BluefinTecsUserBackoffice SDK.
#
# GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
# params (op.<name>.points[].args.params[]). Member types come from the
# canonical type sentinels. The SDK carries data as string-keyed struct value
# nodes, so each alias is an open string-keyed map; the @typedoc member lists
# document the concrete shapes. Do not edit by hand.

defmodule BluefinTecsUserBackoffice.Types do
  @moduledoc """
  Documented shapes for the BluefinTecsUserBackoffice SDK entities and operation payloads.

  Every alias resolves to an open string-keyed map because the SDK carries
  data as string-keyed struct value nodes; consult each type's member list for
  the concrete field/param types.
  """

  @typedoc """
  OutputActivateDigitalModule entity data model.

  Members:
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
  """
  @type output_activate_digital_module :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for OutputActivateDigitalModule create.

  Members:
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
  """
  @type output_activate_digital_module_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  OutputActivatePortalModule entity data model.

  Members:
    * `"clientSecret"` — String.t() (required)
    * `"notificationEmail"` — String.t() (required)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
  """
  @type output_activate_portal_module :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for OutputActivatePortalModule create.

  Members:
    * `"clientSecret"` — String.t() (required)
    * `"notificationEmail"` — String.t() (required)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
  """
  @type output_activate_portal_module_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  OutputActivateStoreModule entity data model.

  Members:
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
  """
  @type output_activate_store_module :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for OutputActivateStoreModule create.

  Members:
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
  """
  @type output_activate_store_module_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  OutputActivateUser entity data model.

  Members:
    * `"consumerUUID"` — String.t() (optional)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
  """
  @type output_activate_user :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for OutputActivateUser create.

  Members:
    * `"consumerUUID"` — String.t() (optional)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
  """
  @type output_activate_user_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  OutputAssignRole entity data model.

  Members:
    * `"consumerUUID"` — String.t() (required)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
    * `"roles"` — list() (required)
  """
  @type output_assign_role :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for OutputAssignRole create.

  Members:
    * `"consumerUUID"` — String.t() (required)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
    * `"roles"` — list() (required)
  """
  @type output_assign_role_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  OutputChangeLogo entity data model.

  Members:
    * `"contentAsBase64"` — String.t() (required)
    * `"mimeType"` — String.t() (required)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
  """
  @type output_change_logo :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for OutputChangeLogo create.

  Members:
    * `"contentAsBase64"` — String.t() (required)
    * `"mimeType"` — String.t() (required)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
  """
  @type output_change_logo_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  OutputCreateMandator entity data model.

  Members:
    * `"city"` — String.t() (optional)
    * `"country"` — String.t() (optional)
    * `"dateOfBirth"` — String.t() (optional)
    * `"description"` — String.t() (optional)
    * `"driversLicenseNumber"` — String.t() (optional)
    * `"email"` — String.t() (required)
    * `"firstName"` — String.t() (optional)
    * `"identificationNumber"` — String.t() (optional)
    * `"lastName"` — String.t() (optional)
    * `"login"` — String.t() (required)
    * `"name"` — String.t() (optional)
    * `"passportNumber"` — String.t() (optional)
    * `"phone"` — String.t() (required)
    * `"salutation"` — String.t() (optional)
    * `"state"` — String.t() (optional)
    * `"street1"` — String.t() (optional)
    * `"street2"` — String.t() (optional)
    * `"zipCode"` — String.t() (optional)
  """
  @type output_create_mandator :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for OutputCreateMandator create.

  Members:
    * `"city"` — String.t() (optional)
    * `"country"` — String.t() (optional)
    * `"dateOfBirth"` — String.t() (optional)
    * `"description"` — String.t() (optional)
    * `"driversLicenseNumber"` — String.t() (optional)
    * `"email"` — String.t() (required)
    * `"firstName"` — String.t() (optional)
    * `"identificationNumber"` — String.t() (optional)
    * `"lastName"` — String.t() (optional)
    * `"login"` — String.t() (required)
    * `"name"` — String.t() (optional)
    * `"passportNumber"` — String.t() (optional)
    * `"phone"` — String.t() (required)
    * `"salutation"` — String.t() (optional)
    * `"state"` — String.t() (optional)
    * `"street1"` — String.t() (optional)
    * `"street2"` — String.t() (optional)
    * `"zipCode"` — String.t() (optional)
  """
  @type output_create_mandator_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  OutputCreateServiceUser entity data model.

  Members:
    * `"mandatorName"` — String.t() (required)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
  """
  @type output_create_service_user :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for OutputCreateServiceUser create.

  Members:
    * `"mandatorName"` — String.t() (required)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
  """
  @type output_create_service_user_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  OutputDeactivateUser entity data model.

  Members:
    * `"consumerUUID"` — String.t() (optional)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
  """
  @type output_deactivate_user :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for OutputDeactivateUser create.

  Members:
    * `"consumerUUID"` — String.t() (optional)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
  """
  @type output_deactivate_user_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  OutputGetKycDocument entity data model.

  Members:
    * `"caseID"` — String.t() (optional)
    * `"encodedDataBase64"` — String.t() (optional)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
  """
  @type output_get_kyc_document :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for OutputGetKycDocument create.

  Members:
    * `"caseID"` — String.t() (optional)
    * `"encodedDataBase64"` — String.t() (optional)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
  """
  @type output_get_kyc_document_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  OutputGetLogo entity data model.

  Members:
    * `"contentAsBase64"` — String.t() (required)
    * `"mimeType"` — String.t() (required)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
  """
  @type output_get_logo :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for OutputGetLogo load.

  Members:
    * `"contentAsBase64"` — String.t() (optional)
    * `"mimeType"` — String.t() (optional)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
  """
  @type output_get_logo_load_match :: %{optional(String.t()) => any()}

  @typedoc """
  OutputListOfAvailableRole entity data model.

  Members:
    * `"availableRoles"` — list() (optional)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
  """
  @type output_list_of_available_role :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for OutputListOfAvailableRole create.

  Members:
    * `"availableRoles"` — list() (optional)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
  """
  @type output_list_of_available_role_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  OutputListOfMandator entity data model.

  Members:
    * `"filter"` — map() (optional)
    * `"list"` — list() (optional)
    * `"pagination"` — map() (optional)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
    * `"sorting"` — map() (optional)
  """
  @type output_list_of_mandator :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for OutputListOfMandator create.

  Members:
    * `"filter"` — map() (optional)
    * `"list"` — list() (optional)
    * `"pagination"` — map() (optional)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
    * `"sorting"` — map() (optional)
  """
  @type output_list_of_mandator_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  OutputListOfModule entity data model.

  Members:
    * `"list"` — list() (optional)
    * `"pagination"` — map() (optional)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
  """
  @type output_list_of_module :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for OutputListOfModule create.

  Members:
    * `"list"` — list() (optional)
    * `"pagination"` — map() (optional)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
  """
  @type output_list_of_module_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  OutputListOfRoleGroup entity data model.

  Members:
    * `"filter"` — map() (optional)
    * `"groupRoles"` — list() (optional)
    * `"pagination"` — map() (optional)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
    * `"sorting"` — map() (optional)
  """
  @type output_list_of_role_group :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for OutputListOfRoleGroup create.

  Members:
    * `"filter"` — map() (optional)
    * `"groupRoles"` — list() (optional)
    * `"pagination"` — map() (optional)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
    * `"sorting"` — map() (optional)
  """
  @type output_list_of_role_group_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  OutputListOfTransactionsHistory entity data model.

  Members:
    * `"filter"` — map() (optional)
    * `"list"` — list() (optional)
    * `"pagination"` — map() (optional)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
    * `"sorting"` — map() (optional)
  """
  @type output_list_of_transactions_history :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for OutputListOfTransactionsHistory create.

  Members:
    * `"filter"` — map() (optional)
    * `"list"` — list() (optional)
    * `"pagination"` — map() (optional)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
    * `"sorting"` — map() (optional)
  """
  @type output_list_of_transactions_history_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  OutputListOfUser entity data model.

  Members:
    * `"filter"` — map() (optional)
    * `"list"` — list() (optional)
    * `"pagination"` — map() (optional)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
    * `"sorting"` — map() (optional)
  """
  @type output_list_of_user :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for OutputListOfUser create.

  Members:
    * `"filter"` — map() (optional)
    * `"list"` — list() (optional)
    * `"pagination"` — map() (optional)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
    * `"sorting"` — map() (optional)
  """
  @type output_list_of_user_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  OutputProvideCredential entity data model.

  Members:
    * `"mandatorName"` — String.t() (required)
    * `"password"` — String.t() (optional)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
    * `"username"` — String.t() (optional)
  """
  @type output_provide_credential :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for OutputProvideCredential create.

  Members:
    * `"mandatorName"` — String.t() (required)
    * `"password"` — String.t() (optional)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
    * `"username"` — String.t() (optional)
  """
  @type output_provide_credential_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  OutputRegisterUser entity data model.

  Members:
    * `"city"` — String.t() (optional)
    * `"consumerId"` — String.t() (optional)
    * `"consumerLanguage"` — String.t() (optional)
    * `"country"` — String.t() (optional)
    * `"dateOfBirth"` — String.t() (optional)
    * `"driverLicenceNumber"` — String.t() (optional)
    * `"email"` — String.t() (required)
    * `"firstName"` — String.t() (optional)
    * `"identificationNumber"` — String.t() (optional)
    * `"lastName"` — String.t() (optional)
    * `"login"` — String.t() (optional)
    * `"module"` — String.t() (optional)
    * `"passportNumber"` — String.t() (optional)
    * `"phone"` — String.t() (optional)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
    * `"salutation"` — String.t() (optional)
    * `"state"` — String.t() (optional)
    * `"street1"` — String.t() (optional)
    * `"street2"` — String.t() (optional)
    * `"zip"` — String.t() (optional)
  """
  @type output_register_user :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for OutputRegisterUser create.

  Members:
    * `"city"` — String.t() (optional)
    * `"consumerId"` — String.t() (optional)
    * `"consumerLanguage"` — String.t() (optional)
    * `"country"` — String.t() (optional)
    * `"dateOfBirth"` — String.t() (optional)
    * `"driverLicenceNumber"` — String.t() (optional)
    * `"email"` — String.t() (required)
    * `"firstName"` — String.t() (optional)
    * `"identificationNumber"` — String.t() (optional)
    * `"lastName"` — String.t() (optional)
    * `"login"` — String.t() (optional)
    * `"module"` — String.t() (optional)
    * `"passportNumber"` — String.t() (optional)
    * `"phone"` — String.t() (optional)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
    * `"salutation"` — String.t() (optional)
    * `"state"` — String.t() (optional)
    * `"street1"` — String.t() (optional)
    * `"street2"` — String.t() (optional)
    * `"zip"` — String.t() (optional)
  """
  @type output_register_user_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  OutputRemoveRole entity data model.

  Members:
    * `"consumerUUID"` — String.t() (optional)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
    * `"roles"` — list() (optional)
  """
  @type output_remove_role :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for OutputRemoveRole create.

  Members:
    * `"consumerUUID"` — String.t() (optional)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
    * `"roles"` — list() (optional)
  """
  @type output_remove_role_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  OutputResendLink entity data model.

  Members:
    * `"businessRegistrationNumber"` — String.t() (optional)
    * `"consumerUUID"` — String.t() (required)
    * `"emailConfirmationCode"` — String.t() (optional)
    * `"phoneNumber"` — String.t() (optional)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
  """
  @type output_resend_link :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for OutputResendLink create.

  Members:
    * `"businessRegistrationNumber"` — String.t() (optional)
    * `"consumerUUID"` — String.t() (required)
    * `"emailConfirmationCode"` — String.t() (optional)
    * `"phoneNumber"` — String.t() (optional)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
  """
  @type output_resend_link_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  OutputResetPassword entity data model.

  Members:
    * `"consumerUuid"` — String.t() (optional)
    * `"phoneNumber"` — String.t() (optional)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
  """
  @type output_reset_password :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for OutputResetPassword create.

  Members:
    * `"consumerUuid"` — String.t() (optional)
    * `"phoneNumber"` — String.t() (optional)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
  """
  @type output_reset_password_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  OutputUpdateConsumer entity data model.

  Members:
    * `"city"` — String.t() (optional)
    * `"consumerUuid"` — String.t() (required)
    * `"consumerlanguage"` — String.t() (optional)
    * `"country"` — String.t() (optional)
    * `"dateOfBirth"` — String.t() (optional)
    * `"datetime_created"` — String.t() (optional)
    * `"driverLicenceNumber"` — String.t() (optional)
    * `"email"` — String.t() (optional)
    * `"firstName"` — String.t() (optional)
    * `"identificationNumber"` — String.t() (optional)
    * `"kycPassed"` — boolean() (optional)
    * `"lastName"` — String.t() (optional)
    * `"nationality"` — String.t() (optional)
    * `"passportNumber"` — String.t() (optional)
    * `"phoneNumber"` — String.t() (optional)
    * `"placeOfBirth"` — String.t() (optional)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
    * `"state"` — String.t() (optional)
    * `"street1"` — String.t() (optional)
    * `"street2"` — String.t() (optional)
    * `"transactionhistory_id"` — String.t() (optional)
    * `"zip"` — String.t() (optional)
  """
  @type output_update_consumer :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for OutputUpdateConsumer create.

  Members:
    * `"city"` — String.t() (optional)
    * `"consumerUuid"` — String.t() (required)
    * `"consumerlanguage"` — String.t() (optional)
    * `"country"` — String.t() (optional)
    * `"dateOfBirth"` — String.t() (optional)
    * `"datetime_created"` — String.t() (optional)
    * `"driverLicenceNumber"` — String.t() (optional)
    * `"email"` — String.t() (optional)
    * `"firstName"` — String.t() (optional)
    * `"identificationNumber"` — String.t() (optional)
    * `"kycPassed"` — boolean() (optional)
    * `"lastName"` — String.t() (optional)
    * `"nationality"` — String.t() (optional)
    * `"passportNumber"` — String.t() (optional)
    * `"phoneNumber"` — String.t() (optional)
    * `"placeOfBirth"` — String.t() (optional)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
    * `"state"` — String.t() (optional)
    * `"street1"` — String.t() (optional)
    * `"street2"` — String.t() (optional)
    * `"transactionhistory_id"` — String.t() (optional)
    * `"zip"` — String.t() (optional)
  """
  @type output_update_consumer_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  OutputUpdateProfile entity data model.

  Members:
    * `"consumerLanguage"` — String.t() (optional)
    * `"email"` — String.t() (optional)
    * `"firstName"` — String.t() (optional)
    * `"lastName"` — String.t() (optional)
    * `"phoneNumber"` — String.t() (optional)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
  """
  @type output_update_profile :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for OutputUpdateProfile create.

  Members:
    * `"consumerLanguage"` — String.t() (optional)
    * `"email"` — String.t() (optional)
    * `"firstName"` — String.t() (optional)
    * `"lastName"` — String.t() (optional)
    * `"phoneNumber"` — String.t() (optional)
    * `"responseCode"` — integer() (optional)
    * `"responseMessage"` — String.t() (optional)
  """
  @type output_update_profile_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  Version entity data model.

  Members:
    * `"appName"` — String.t() (optional)
    * `"buildDate"` — String.t() (optional)
    * `"version"` — String.t() (optional)
  """
  @type version :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for Version load.

  Members:
    * `"appName"` — String.t() (optional)
    * `"buildDate"` — String.t() (optional)
    * `"version"` — String.t() (optional)
  """
  @type version_load_match :: %{optional(String.t()) => any()}

end

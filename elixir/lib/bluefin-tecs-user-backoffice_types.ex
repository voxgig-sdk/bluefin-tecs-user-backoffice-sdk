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
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
  """
  @type output_activate_digital_module :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for OutputActivateDigitalModule create.

  Members:
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
  """
  @type output_activate_digital_module_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  OutputActivatePortalModule entity data model.

  Members:
    * `"client_secret"` — String.t() (required)
    * `"notification_email"` — String.t() (required)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
  """
  @type output_activate_portal_module :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for OutputActivatePortalModule create.

  Members:
    * `"client_secret"` — String.t() (required)
    * `"notification_email"` — String.t() (required)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
  """
  @type output_activate_portal_module_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  OutputActivateStoreModule entity data model.

  Members:
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
  """
  @type output_activate_store_module :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for OutputActivateStoreModule create.

  Members:
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
  """
  @type output_activate_store_module_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  OutputActivateUser entity data model.

  Members:
    * `"consumer_uuid"` — String.t() (optional)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
  """
  @type output_activate_user :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for OutputActivateUser create.

  Members:
    * `"consumer_uuid"` — String.t() (optional)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
  """
  @type output_activate_user_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  OutputAssignRole entity data model.

  Members:
    * `"consumer_uuid"` — String.t() (required)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
    * `"role"` — list() (required)
  """
  @type output_assign_role :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for OutputAssignRole create.

  Members:
    * `"consumer_uuid"` — String.t() (required)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
    * `"role"` — list() (required)
  """
  @type output_assign_role_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  OutputChangeLogo entity data model.

  Members:
    * `"content_as_base64"` — String.t() (required)
    * `"mime_type"` — String.t() (required)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
  """
  @type output_change_logo :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for OutputChangeLogo create.

  Members:
    * `"content_as_base64"` — String.t() (required)
    * `"mime_type"` — String.t() (required)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
  """
  @type output_change_logo_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  OutputCreateMandator entity data model.

  Members:
    * `"city"` — String.t() (optional)
    * `"country"` — String.t() (optional)
    * `"date_of_birth"` — String.t() (optional)
    * `"description"` — String.t() (required)
    * `"drivers_license_number"` — String.t() (optional)
    * `"email"` — String.t() (required)
    * `"first_name"` — String.t() (optional)
    * `"identification_number"` — String.t() (optional)
    * `"last_name"` — String.t() (optional)
    * `"login"` — String.t() (required)
    * `"mandator"` — map() (optional)
    * `"name"` — String.t() (required)
    * `"passport_number"` — String.t() (optional)
    * `"phone"` — String.t() (required)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
    * `"salutation"` — String.t() (optional)
    * `"state"` — String.t() (optional)
    * `"street1"` — String.t() (optional)
    * `"street2"` — String.t() (optional)
    * `"zip_code"` — String.t() (optional)
  """
  @type output_create_mandator :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for OutputCreateMandator create.

  Members:
    * `"city"` — String.t() (optional)
    * `"country"` — String.t() (optional)
    * `"date_of_birth"` — String.t() (optional)
    * `"description"` — String.t() (required)
    * `"drivers_license_number"` — String.t() (optional)
    * `"email"` — String.t() (required)
    * `"first_name"` — String.t() (optional)
    * `"identification_number"` — String.t() (optional)
    * `"last_name"` — String.t() (optional)
    * `"login"` — String.t() (required)
    * `"mandator"` — map() (optional)
    * `"name"` — String.t() (required)
    * `"passport_number"` — String.t() (optional)
    * `"phone"` — String.t() (required)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
    * `"salutation"` — String.t() (optional)
    * `"state"` — String.t() (optional)
    * `"street1"` — String.t() (optional)
    * `"street2"` — String.t() (optional)
    * `"zip_code"` — String.t() (optional)
  """
  @type output_create_mandator_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  OutputCreateServiceUser entity data model.

  Members:
    * `"mandator_name"` — String.t() (required)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
  """
  @type output_create_service_user :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for OutputCreateServiceUser create.

  Members:
    * `"mandator_name"` — String.t() (required)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
  """
  @type output_create_service_user_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  OutputDeactivateUser entity data model.

  Members:
    * `"consumer_uuid"` — String.t() (optional)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
  """
  @type output_deactivate_user :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for OutputDeactivateUser create.

  Members:
    * `"consumer_uuid"` — String.t() (optional)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
  """
  @type output_deactivate_user_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  OutputGetKycDocument entity data model.

  Members:
    * `"case_id"` — String.t() (optional)
    * `"encoded_data_base64"` — String.t() (optional)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
  """
  @type output_get_kyc_document :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for OutputGetKycDocument create.

  Members:
    * `"case_id"` — String.t() (optional)
    * `"encoded_data_base64"` — String.t() (optional)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
  """
  @type output_get_kyc_document_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  OutputGetLogo entity data model.

  Members:
    * `"content_as_base64"` — String.t() (required)
    * `"mime_type"` — String.t() (required)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
  """
  @type output_get_logo :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for OutputGetLogo load.

  Members:
    * `"content_as_base64"` — String.t() (optional)
    * `"mime_type"` — String.t() (optional)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
  """
  @type output_get_logo_load_match :: %{optional(String.t()) => any()}

  @typedoc """
  OutputListOfAvailableRole entity data model.

  Members:
    * `"available_role"` — list() (optional)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
  """
  @type output_list_of_available_role :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for OutputListOfAvailableRole create.

  Members:
    * `"available_role"` — list() (optional)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
  """
  @type output_list_of_available_role_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  OutputListOfMandator entity data model.

  Members:
    * `"filter"` — map() (optional)
    * `"list"` — list() (optional)
    * `"pagination"` — map() (optional)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
    * `"sorting"` — map() (optional)
  """
  @type output_list_of_mandator :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for OutputListOfMandator create.

  Members:
    * `"filter"` — map() (optional)
    * `"list"` — list() (optional)
    * `"pagination"` — map() (optional)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
    * `"sorting"` — map() (optional)
  """
  @type output_list_of_mandator_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  OutputListOfModule entity data model.

  Members:
    * `"list"` — list() (optional)
    * `"pagination"` — map() (optional)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
  """
  @type output_list_of_module :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for OutputListOfModule create.

  Members:
    * `"list"` — list() (optional)
    * `"pagination"` — map() (optional)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
  """
  @type output_list_of_module_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  OutputListOfRoleGroup entity data model.

  Members:
    * `"filter"` — map() (optional)
    * `"group_role"` — list() (optional)
    * `"pagination"` — map() (optional)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
    * `"sorting"` — map() (optional)
  """
  @type output_list_of_role_group :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for OutputListOfRoleGroup create.

  Members:
    * `"filter"` — map() (optional)
    * `"group_role"` — list() (optional)
    * `"pagination"` — map() (optional)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
    * `"sorting"` — map() (optional)
  """
  @type output_list_of_role_group_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  OutputListOfTransactionsHistory entity data model.

  Members:
    * `"filter"` — map() (optional)
    * `"list"` — list() (optional)
    * `"pagination"` — map() (optional)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
    * `"sorting"` — map() (optional)
  """
  @type output_list_of_transactions_history :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for OutputListOfTransactionsHistory create.

  Members:
    * `"filter"` — map() (optional)
    * `"list"` — list() (optional)
    * `"pagination"` — map() (optional)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
    * `"sorting"` — map() (optional)
  """
  @type output_list_of_transactions_history_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  OutputListOfUser entity data model.

  Members:
    * `"filter"` — map() (optional)
    * `"list"` — list() (optional)
    * `"pagination"` — map() (optional)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
    * `"sorting"` — map() (optional)
  """
  @type output_list_of_user :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for OutputListOfUser create.

  Members:
    * `"filter"` — map() (optional)
    * `"list"` — list() (optional)
    * `"pagination"` — map() (optional)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
    * `"sorting"` — map() (optional)
  """
  @type output_list_of_user_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  OutputProvideCredential entity data model.

  Members:
    * `"mandator_name"` — String.t() (required)
    * `"password"` — String.t() (optional)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
    * `"username"` — String.t() (optional)
  """
  @type output_provide_credential :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for OutputProvideCredential create.

  Members:
    * `"mandator_name"` — String.t() (required)
    * `"password"` — String.t() (optional)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
    * `"username"` — String.t() (optional)
  """
  @type output_provide_credential_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  OutputRegisterUser entity data model.

  Members:
    * `"city"` — String.t() (optional)
    * `"consumer_id"` — String.t() (optional)
    * `"consumer_language"` — String.t() (optional)
    * `"country"` — String.t() (optional)
    * `"date_of_birth"` — String.t() (optional)
    * `"driver_licence_number"` — String.t() (optional)
    * `"email"` — String.t() (required)
    * `"first_name"` — String.t() (optional)
    * `"identification_number"` — String.t() (optional)
    * `"last_name"` — String.t() (optional)
    * `"login"` — String.t() (optional)
    * `"module"` — String.t() (optional)
    * `"passport_number"` — String.t() (optional)
    * `"phone"` — String.t() (optional)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
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
    * `"consumer_id"` — String.t() (optional)
    * `"consumer_language"` — String.t() (optional)
    * `"country"` — String.t() (optional)
    * `"date_of_birth"` — String.t() (optional)
    * `"driver_licence_number"` — String.t() (optional)
    * `"email"` — String.t() (required)
    * `"first_name"` — String.t() (optional)
    * `"identification_number"` — String.t() (optional)
    * `"last_name"` — String.t() (optional)
    * `"login"` — String.t() (optional)
    * `"module"` — String.t() (optional)
    * `"passport_number"` — String.t() (optional)
    * `"phone"` — String.t() (optional)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
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
    * `"consumer_uuid"` — String.t() (optional)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
    * `"role"` — list() (optional)
  """
  @type output_remove_role :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for OutputRemoveRole create.

  Members:
    * `"consumer_uuid"` — String.t() (optional)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
    * `"role"` — list() (optional)
  """
  @type output_remove_role_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  OutputResendLink entity data model.

  Members:
    * `"business_registration_number"` — String.t() (optional)
    * `"consumer_uuid"` — String.t() (required)
    * `"email_confirmation_code"` — String.t() (optional)
    * `"phone_number"` — String.t() (optional)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
  """
  @type output_resend_link :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for OutputResendLink create.

  Members:
    * `"business_registration_number"` — String.t() (optional)
    * `"consumer_uuid"` — String.t() (required)
    * `"email_confirmation_code"` — String.t() (optional)
    * `"phone_number"` — String.t() (optional)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
  """
  @type output_resend_link_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  OutputResetPassword entity data model.

  Members:
    * `"consumer_uuid"` — String.t() (optional)
    * `"phone_number"` — String.t() (optional)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
  """
  @type output_reset_password :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for OutputResetPassword create.

  Members:
    * `"consumer_uuid"` — String.t() (optional)
    * `"phone_number"` — String.t() (optional)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
  """
  @type output_reset_password_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  OutputUpdateConsumer entity data model.

  Members:
    * `"city"` — String.t() (optional)
    * `"consumer_uuid"` — String.t() (required)
    * `"consumerlanguage"` — String.t() (optional)
    * `"country"` — String.t() (optional)
    * `"date_of_birth"` — String.t() (optional)
    * `"datetime_created"` — String.t() (optional)
    * `"driver_licence_number"` — String.t() (optional)
    * `"email"` — String.t() (optional)
    * `"first_name"` — String.t() (optional)
    * `"identification_number"` — String.t() (optional)
    * `"kyc_passed"` — boolean() (optional)
    * `"last_name"` — String.t() (optional)
    * `"nationality"` — String.t() (optional)
    * `"passport_number"` — String.t() (optional)
    * `"phone_number"` — String.t() (optional)
    * `"place_of_birth"` — String.t() (optional)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
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
    * `"consumer_uuid"` — String.t() (required)
    * `"consumerlanguage"` — String.t() (optional)
    * `"country"` — String.t() (optional)
    * `"date_of_birth"` — String.t() (optional)
    * `"datetime_created"` — String.t() (optional)
    * `"driver_licence_number"` — String.t() (optional)
    * `"email"` — String.t() (optional)
    * `"first_name"` — String.t() (optional)
    * `"identification_number"` — String.t() (optional)
    * `"kyc_passed"` — boolean() (optional)
    * `"last_name"` — String.t() (optional)
    * `"nationality"` — String.t() (optional)
    * `"passport_number"` — String.t() (optional)
    * `"phone_number"` — String.t() (optional)
    * `"place_of_birth"` — String.t() (optional)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
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
    * `"consumer_language"` — String.t() (optional)
    * `"email"` — String.t() (optional)
    * `"first_name"` — String.t() (optional)
    * `"last_name"` — String.t() (optional)
    * `"phone_number"` — String.t() (optional)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
  """
  @type output_update_profile :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for OutputUpdateProfile create.

  Members:
    * `"consumer_language"` — String.t() (optional)
    * `"email"` — String.t() (optional)
    * `"first_name"` — String.t() (optional)
    * `"last_name"` — String.t() (optional)
    * `"phone_number"` — String.t() (optional)
    * `"response_code"` — integer() (optional)
    * `"response_message"` — String.t() (optional)
  """
  @type output_update_profile_create_data :: %{optional(String.t()) => any()}

  @typedoc """
  Version entity data model.

  Members:
    * `"app_name"` — String.t() (optional)
    * `"build_date"` — String.t() (optional)
    * `"version"` — String.t() (optional)
  """
  @type version :: %{optional(String.t()) => any()}

  @typedoc """
  Request payload for Version load.

  Members:
    * `"app_name"` — String.t() (optional)
    * `"build_date"` — String.t() (optional)
    * `"version"` — String.t() (optional)
  """
  @type version_load_match :: %{optional(String.t()) => any()}

end

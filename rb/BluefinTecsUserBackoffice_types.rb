# frozen_string_literal: true

# Typed models for the BluefinTecsUserBackoffice SDK.
#
# GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
# params (op.<name>.points[].args.params[]). Member types come from the
# canonical type sentinels via @voxgig/sdkgen canonToType (source of truth:
# @voxgig/apidef VALID_CANON). Ruby types are unenforced; these YARD
# annotations document the shapes. Do not edit by hand.

# OutputActivateDigitalModule entity data model.
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
OutputActivateDigitalModule = Struct.new(
  :response_code,
  :response_message,
  keyword_init: true
)

# Request payload for OutputActivateDigitalModule#create.
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
OutputActivateDigitalModuleCreateData = Struct.new(
  :response_code,
  :response_message,
  keyword_init: true
)

# OutputActivatePortalModule entity data model.
#
# @!attribute [rw] client_secret
#   @return [String]
#
# @!attribute [rw] notification_email
#   @return [String]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
OutputActivatePortalModule = Struct.new(
  :client_secret,
  :notification_email,
  :response_code,
  :response_message,
  keyword_init: true
)

# Request payload for OutputActivatePortalModule#create.
#
# @!attribute [rw] client_secret
#   @return [String]
#
# @!attribute [rw] notification_email
#   @return [String]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
OutputActivatePortalModuleCreateData = Struct.new(
  :client_secret,
  :notification_email,
  :response_code,
  :response_message,
  keyword_init: true
)

# OutputActivateStoreModule entity data model.
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
OutputActivateStoreModule = Struct.new(
  :response_code,
  :response_message,
  keyword_init: true
)

# Request payload for OutputActivateStoreModule#create.
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
OutputActivateStoreModuleCreateData = Struct.new(
  :response_code,
  :response_message,
  keyword_init: true
)

# OutputActivateUser entity data model.
#
# @!attribute [rw] consumer_uuid
#   @return [String, nil]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
OutputActivateUser = Struct.new(
  :consumer_uuid,
  :response_code,
  :response_message,
  keyword_init: true
)

# Request payload for OutputActivateUser#create.
#
# @!attribute [rw] consumer_uuid
#   @return [String, nil]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
OutputActivateUserCreateData = Struct.new(
  :consumer_uuid,
  :response_code,
  :response_message,
  keyword_init: true
)

# OutputAssignRole entity data model.
#
# @!attribute [rw] consumer_uuid
#   @return [String]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
#
# @!attribute [rw] role
#   @return [Array]
OutputAssignRole = Struct.new(
  :consumer_uuid,
  :response_code,
  :response_message,
  :role,
  keyword_init: true
)

# Request payload for OutputAssignRole#create.
#
# @!attribute [rw] consumer_uuid
#   @return [String]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
#
# @!attribute [rw] role
#   @return [Array]
OutputAssignRoleCreateData = Struct.new(
  :consumer_uuid,
  :response_code,
  :response_message,
  :role,
  keyword_init: true
)

# OutputChangeLogo entity data model.
#
# @!attribute [rw] content_as_base64
#   @return [String]
#
# @!attribute [rw] mime_type
#   @return [String]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
OutputChangeLogo = Struct.new(
  :content_as_base64,
  :mime_type,
  :response_code,
  :response_message,
  keyword_init: true
)

# Request payload for OutputChangeLogo#create.
#
# @!attribute [rw] content_as_base64
#   @return [String]
#
# @!attribute [rw] mime_type
#   @return [String]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
OutputChangeLogoCreateData = Struct.new(
  :content_as_base64,
  :mime_type,
  :response_code,
  :response_message,
  keyword_init: true
)

# OutputCreateMandator entity data model.
#
# @!attribute [rw] city
#   @return [String, nil]
#
# @!attribute [rw] country
#   @return [String, nil]
#
# @!attribute [rw] date_of_birth
#   @return [String, nil]
#
# @!attribute [rw] description
#   @return [String]
#
# @!attribute [rw] drivers_license_number
#   @return [String, nil]
#
# @!attribute [rw] email
#   @return [String]
#
# @!attribute [rw] first_name
#   @return [String, nil]
#
# @!attribute [rw] identification_number
#   @return [String, nil]
#
# @!attribute [rw] last_name
#   @return [String, nil]
#
# @!attribute [rw] login
#   @return [String]
#
# @!attribute [rw] mandator
#   @return [Hash, nil]
#
# @!attribute [rw] name
#   @return [String]
#
# @!attribute [rw] passport_number
#   @return [String, nil]
#
# @!attribute [rw] phone
#   @return [String]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
#
# @!attribute [rw] salutation
#   @return [String, nil]
#
# @!attribute [rw] state
#   @return [String, nil]
#
# @!attribute [rw] street1
#   @return [String, nil]
#
# @!attribute [rw] street2
#   @return [String, nil]
#
# @!attribute [rw] zip_code
#   @return [String, nil]
OutputCreateMandator = Struct.new(
  :city,
  :country,
  :date_of_birth,
  :description,
  :drivers_license_number,
  :email,
  :first_name,
  :identification_number,
  :last_name,
  :login,
  :mandator,
  :name,
  :passport_number,
  :phone,
  :response_code,
  :response_message,
  :salutation,
  :state,
  :street1,
  :street2,
  :zip_code,
  keyword_init: true
)

# Request payload for OutputCreateMandator#create.
#
# @!attribute [rw] city
#   @return [String, nil]
#
# @!attribute [rw] country
#   @return [String, nil]
#
# @!attribute [rw] date_of_birth
#   @return [String, nil]
#
# @!attribute [rw] description
#   @return [String]
#
# @!attribute [rw] drivers_license_number
#   @return [String, nil]
#
# @!attribute [rw] email
#   @return [String]
#
# @!attribute [rw] first_name
#   @return [String, nil]
#
# @!attribute [rw] identification_number
#   @return [String, nil]
#
# @!attribute [rw] last_name
#   @return [String, nil]
#
# @!attribute [rw] login
#   @return [String]
#
# @!attribute [rw] mandator
#   @return [Hash, nil]
#
# @!attribute [rw] name
#   @return [String]
#
# @!attribute [rw] passport_number
#   @return [String, nil]
#
# @!attribute [rw] phone
#   @return [String]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
#
# @!attribute [rw] salutation
#   @return [String, nil]
#
# @!attribute [rw] state
#   @return [String, nil]
#
# @!attribute [rw] street1
#   @return [String, nil]
#
# @!attribute [rw] street2
#   @return [String, nil]
#
# @!attribute [rw] zip_code
#   @return [String, nil]
OutputCreateMandatorCreateData = Struct.new(
  :city,
  :country,
  :date_of_birth,
  :description,
  :drivers_license_number,
  :email,
  :first_name,
  :identification_number,
  :last_name,
  :login,
  :mandator,
  :name,
  :passport_number,
  :phone,
  :response_code,
  :response_message,
  :salutation,
  :state,
  :street1,
  :street2,
  :zip_code,
  keyword_init: true
)

# OutputCreateServiceUser entity data model.
#
# @!attribute [rw] mandator_name
#   @return [String]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
OutputCreateServiceUser = Struct.new(
  :mandator_name,
  :response_code,
  :response_message,
  keyword_init: true
)

# Request payload for OutputCreateServiceUser#create.
#
# @!attribute [rw] mandator_name
#   @return [String]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
OutputCreateServiceUserCreateData = Struct.new(
  :mandator_name,
  :response_code,
  :response_message,
  keyword_init: true
)

# OutputDeactivateUser entity data model.
#
# @!attribute [rw] consumer_uuid
#   @return [String, nil]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
OutputDeactivateUser = Struct.new(
  :consumer_uuid,
  :response_code,
  :response_message,
  keyword_init: true
)

# Request payload for OutputDeactivateUser#create.
#
# @!attribute [rw] consumer_uuid
#   @return [String, nil]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
OutputDeactivateUserCreateData = Struct.new(
  :consumer_uuid,
  :response_code,
  :response_message,
  keyword_init: true
)

# OutputGetKycDocument entity data model.
#
# @!attribute [rw] case_id
#   @return [String, nil]
#
# @!attribute [rw] encoded_data_base64
#   @return [String, nil]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
OutputGetKycDocument = Struct.new(
  :case_id,
  :encoded_data_base64,
  :response_code,
  :response_message,
  keyword_init: true
)

# Request payload for OutputGetKycDocument#create.
#
# @!attribute [rw] case_id
#   @return [String, nil]
#
# @!attribute [rw] encoded_data_base64
#   @return [String, nil]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
OutputGetKycDocumentCreateData = Struct.new(
  :case_id,
  :encoded_data_base64,
  :response_code,
  :response_message,
  keyword_init: true
)

# OutputGetLogo entity data model.
#
# @!attribute [rw] content_as_base64
#   @return [String]
#
# @!attribute [rw] mime_type
#   @return [String]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
OutputGetLogo = Struct.new(
  :content_as_base64,
  :mime_type,
  :response_code,
  :response_message,
  keyword_init: true
)

# Request payload for OutputGetLogo#load.
#
# @!attribute [rw] content_as_base64
#   @return [String, nil]
#
# @!attribute [rw] mime_type
#   @return [String, nil]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
OutputGetLogoLoadMatch = Struct.new(
  :content_as_base64,
  :mime_type,
  :response_code,
  :response_message,
  keyword_init: true
)

# OutputListOfAvailableRole entity data model.
#
# @!attribute [rw] available_role
#   @return [Array, nil]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
OutputListOfAvailableRole = Struct.new(
  :available_role,
  :response_code,
  :response_message,
  keyword_init: true
)

# Request payload for OutputListOfAvailableRole#create.
#
# @!attribute [rw] available_role
#   @return [Array, nil]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
OutputListOfAvailableRoleCreateData = Struct.new(
  :available_role,
  :response_code,
  :response_message,
  keyword_init: true
)

# OutputListOfMandator entity data model.
#
# @!attribute [rw] filter
#   @return [Hash, nil]
#
# @!attribute [rw] list
#   @return [Array, nil]
#
# @!attribute [rw] pagination
#   @return [Hash, nil]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
#
# @!attribute [rw] sorting
#   @return [Hash, nil]
OutputListOfMandator = Struct.new(
  :filter,
  :list,
  :pagination,
  :response_code,
  :response_message,
  :sorting,
  keyword_init: true
)

# Request payload for OutputListOfMandator#create.
#
# @!attribute [rw] filter
#   @return [Hash, nil]
#
# @!attribute [rw] list
#   @return [Array, nil]
#
# @!attribute [rw] pagination
#   @return [Hash, nil]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
#
# @!attribute [rw] sorting
#   @return [Hash, nil]
OutputListOfMandatorCreateData = Struct.new(
  :filter,
  :list,
  :pagination,
  :response_code,
  :response_message,
  :sorting,
  keyword_init: true
)

# OutputListOfModule entity data model.
#
# @!attribute [rw] list
#   @return [Array, nil]
#
# @!attribute [rw] pagination
#   @return [Hash, nil]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
OutputListOfModule = Struct.new(
  :list,
  :pagination,
  :response_code,
  :response_message,
  keyword_init: true
)

# Request payload for OutputListOfModule#create.
#
# @!attribute [rw] list
#   @return [Array, nil]
#
# @!attribute [rw] pagination
#   @return [Hash, nil]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
OutputListOfModuleCreateData = Struct.new(
  :list,
  :pagination,
  :response_code,
  :response_message,
  keyword_init: true
)

# OutputListOfRoleGroup entity data model.
#
# @!attribute [rw] filter
#   @return [Hash, nil]
#
# @!attribute [rw] group_role
#   @return [Array, nil]
#
# @!attribute [rw] pagination
#   @return [Hash, nil]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
#
# @!attribute [rw] sorting
#   @return [Hash, nil]
OutputListOfRoleGroup = Struct.new(
  :filter,
  :group_role,
  :pagination,
  :response_code,
  :response_message,
  :sorting,
  keyword_init: true
)

# Request payload for OutputListOfRoleGroup#create.
#
# @!attribute [rw] filter
#   @return [Hash, nil]
#
# @!attribute [rw] group_role
#   @return [Array, nil]
#
# @!attribute [rw] pagination
#   @return [Hash, nil]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
#
# @!attribute [rw] sorting
#   @return [Hash, nil]
OutputListOfRoleGroupCreateData = Struct.new(
  :filter,
  :group_role,
  :pagination,
  :response_code,
  :response_message,
  :sorting,
  keyword_init: true
)

# OutputListOfTransactionsHistory entity data model.
#
# @!attribute [rw] filter
#   @return [Hash, nil]
#
# @!attribute [rw] list
#   @return [Array, nil]
#
# @!attribute [rw] pagination
#   @return [Hash, nil]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
#
# @!attribute [rw] sorting
#   @return [Hash, nil]
OutputListOfTransactionsHistory = Struct.new(
  :filter,
  :list,
  :pagination,
  :response_code,
  :response_message,
  :sorting,
  keyword_init: true
)

# Request payload for OutputListOfTransactionsHistory#create.
#
# @!attribute [rw] filter
#   @return [Hash, nil]
#
# @!attribute [rw] list
#   @return [Array, nil]
#
# @!attribute [rw] pagination
#   @return [Hash, nil]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
#
# @!attribute [rw] sorting
#   @return [Hash, nil]
OutputListOfTransactionsHistoryCreateData = Struct.new(
  :filter,
  :list,
  :pagination,
  :response_code,
  :response_message,
  :sorting,
  keyword_init: true
)

# OutputListOfUser entity data model.
#
# @!attribute [rw] filter
#   @return [Hash, nil]
#
# @!attribute [rw] list
#   @return [Array, nil]
#
# @!attribute [rw] pagination
#   @return [Hash, nil]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
#
# @!attribute [rw] sorting
#   @return [Hash, nil]
OutputListOfUser = Struct.new(
  :filter,
  :list,
  :pagination,
  :response_code,
  :response_message,
  :sorting,
  keyword_init: true
)

# Request payload for OutputListOfUser#create.
#
# @!attribute [rw] filter
#   @return [Hash, nil]
#
# @!attribute [rw] list
#   @return [Array, nil]
#
# @!attribute [rw] pagination
#   @return [Hash, nil]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
#
# @!attribute [rw] sorting
#   @return [Hash, nil]
OutputListOfUserCreateData = Struct.new(
  :filter,
  :list,
  :pagination,
  :response_code,
  :response_message,
  :sorting,
  keyword_init: true
)

# OutputProvideCredential entity data model.
#
# @!attribute [rw] mandator_name
#   @return [String]
#
# @!attribute [rw] password
#   @return [String, nil]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
#
# @!attribute [rw] username
#   @return [String, nil]
OutputProvideCredential = Struct.new(
  :mandator_name,
  :password,
  :response_code,
  :response_message,
  :username,
  keyword_init: true
)

# Request payload for OutputProvideCredential#create.
#
# @!attribute [rw] mandator_name
#   @return [String]
#
# @!attribute [rw] password
#   @return [String, nil]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
#
# @!attribute [rw] username
#   @return [String, nil]
OutputProvideCredentialCreateData = Struct.new(
  :mandator_name,
  :password,
  :response_code,
  :response_message,
  :username,
  keyword_init: true
)

# OutputRegisterUser entity data model.
#
# @!attribute [rw] city
#   @return [String, nil]
#
# @!attribute [rw] consumer_id
#   @return [String, nil]
#
# @!attribute [rw] consumer_language
#   @return [String, nil]
#
# @!attribute [rw] country
#   @return [String, nil]
#
# @!attribute [rw] date_of_birth
#   @return [String, nil]
#
# @!attribute [rw] driver_licence_number
#   @return [String, nil]
#
# @!attribute [rw] email
#   @return [String]
#
# @!attribute [rw] first_name
#   @return [String, nil]
#
# @!attribute [rw] identification_number
#   @return [String, nil]
#
# @!attribute [rw] last_name
#   @return [String, nil]
#
# @!attribute [rw] login
#   @return [String, nil]
#
# @!attribute [rw] module
#   @return [String, nil]
#
# @!attribute [rw] passport_number
#   @return [String, nil]
#
# @!attribute [rw] phone
#   @return [String, nil]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
#
# @!attribute [rw] salutation
#   @return [String, nil]
#
# @!attribute [rw] state
#   @return [String, nil]
#
# @!attribute [rw] street1
#   @return [String, nil]
#
# @!attribute [rw] street2
#   @return [String, nil]
#
# @!attribute [rw] zip
#   @return [String, nil]
OutputRegisterUser = Struct.new(
  :city,
  :consumer_id,
  :consumer_language,
  :country,
  :date_of_birth,
  :driver_licence_number,
  :email,
  :first_name,
  :identification_number,
  :last_name,
  :login,
  :module,
  :passport_number,
  :phone,
  :response_code,
  :response_message,
  :salutation,
  :state,
  :street1,
  :street2,
  :zip,
  keyword_init: true
)

# Request payload for OutputRegisterUser#create.
#
# @!attribute [rw] city
#   @return [String, nil]
#
# @!attribute [rw] consumer_id
#   @return [String, nil]
#
# @!attribute [rw] consumer_language
#   @return [String, nil]
#
# @!attribute [rw] country
#   @return [String, nil]
#
# @!attribute [rw] date_of_birth
#   @return [String, nil]
#
# @!attribute [rw] driver_licence_number
#   @return [String, nil]
#
# @!attribute [rw] email
#   @return [String]
#
# @!attribute [rw] first_name
#   @return [String, nil]
#
# @!attribute [rw] identification_number
#   @return [String, nil]
#
# @!attribute [rw] last_name
#   @return [String, nil]
#
# @!attribute [rw] login
#   @return [String, nil]
#
# @!attribute [rw] module
#   @return [String, nil]
#
# @!attribute [rw] passport_number
#   @return [String, nil]
#
# @!attribute [rw] phone
#   @return [String, nil]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
#
# @!attribute [rw] salutation
#   @return [String, nil]
#
# @!attribute [rw] state
#   @return [String, nil]
#
# @!attribute [rw] street1
#   @return [String, nil]
#
# @!attribute [rw] street2
#   @return [String, nil]
#
# @!attribute [rw] zip
#   @return [String, nil]
OutputRegisterUserCreateData = Struct.new(
  :city,
  :consumer_id,
  :consumer_language,
  :country,
  :date_of_birth,
  :driver_licence_number,
  :email,
  :first_name,
  :identification_number,
  :last_name,
  :login,
  :module,
  :passport_number,
  :phone,
  :response_code,
  :response_message,
  :salutation,
  :state,
  :street1,
  :street2,
  :zip,
  keyword_init: true
)

# OutputRemoveRole entity data model.
#
# @!attribute [rw] consumer_uuid
#   @return [String, nil]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
#
# @!attribute [rw] role
#   @return [Array, nil]
OutputRemoveRole = Struct.new(
  :consumer_uuid,
  :response_code,
  :response_message,
  :role,
  keyword_init: true
)

# Request payload for OutputRemoveRole#create.
#
# @!attribute [rw] consumer_uuid
#   @return [String, nil]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
#
# @!attribute [rw] role
#   @return [Array, nil]
OutputRemoveRoleCreateData = Struct.new(
  :consumer_uuid,
  :response_code,
  :response_message,
  :role,
  keyword_init: true
)

# OutputResendLink entity data model.
#
# @!attribute [rw] business_registration_number
#   @return [String, nil]
#
# @!attribute [rw] consumer_uuid
#   @return [String]
#
# @!attribute [rw] email_confirmation_code
#   @return [String, nil]
#
# @!attribute [rw] phone_number
#   @return [String, nil]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
OutputResendLink = Struct.new(
  :business_registration_number,
  :consumer_uuid,
  :email_confirmation_code,
  :phone_number,
  :response_code,
  :response_message,
  keyword_init: true
)

# Request payload for OutputResendLink#create.
#
# @!attribute [rw] business_registration_number
#   @return [String, nil]
#
# @!attribute [rw] consumer_uuid
#   @return [String]
#
# @!attribute [rw] email_confirmation_code
#   @return [String, nil]
#
# @!attribute [rw] phone_number
#   @return [String, nil]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
OutputResendLinkCreateData = Struct.new(
  :business_registration_number,
  :consumer_uuid,
  :email_confirmation_code,
  :phone_number,
  :response_code,
  :response_message,
  keyword_init: true
)

# OutputResetPassword entity data model.
#
# @!attribute [rw] consumer_uuid
#   @return [String, nil]
#
# @!attribute [rw] phone_number
#   @return [String, nil]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
OutputResetPassword = Struct.new(
  :consumer_uuid,
  :phone_number,
  :response_code,
  :response_message,
  keyword_init: true
)

# Request payload for OutputResetPassword#create.
#
# @!attribute [rw] consumer_uuid
#   @return [String, nil]
#
# @!attribute [rw] phone_number
#   @return [String, nil]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
OutputResetPasswordCreateData = Struct.new(
  :consumer_uuid,
  :phone_number,
  :response_code,
  :response_message,
  keyword_init: true
)

# OutputUpdateConsumer entity data model.
#
# @!attribute [rw] city
#   @return [String, nil]
#
# @!attribute [rw] consumer_uuid
#   @return [String]
#
# @!attribute [rw] consumerlanguage
#   @return [String, nil]
#
# @!attribute [rw] country
#   @return [String, nil]
#
# @!attribute [rw] date_of_birth
#   @return [String, nil]
#
# @!attribute [rw] datetime_created
#   @return [String, nil]
#
# @!attribute [rw] driver_licence_number
#   @return [String, nil]
#
# @!attribute [rw] email
#   @return [String, nil]
#
# @!attribute [rw] first_name
#   @return [String, nil]
#
# @!attribute [rw] identification_number
#   @return [String, nil]
#
# @!attribute [rw] kyc_passed
#   @return [Boolean, nil]
#
# @!attribute [rw] last_name
#   @return [String, nil]
#
# @!attribute [rw] nationality
#   @return [String, nil]
#
# @!attribute [rw] passport_number
#   @return [String, nil]
#
# @!attribute [rw] phone_number
#   @return [String, nil]
#
# @!attribute [rw] place_of_birth
#   @return [String, nil]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
#
# @!attribute [rw] state
#   @return [String, nil]
#
# @!attribute [rw] street1
#   @return [String, nil]
#
# @!attribute [rw] street2
#   @return [String, nil]
#
# @!attribute [rw] transactionhistory_id
#   @return [String, nil]
#
# @!attribute [rw] zip
#   @return [String, nil]
OutputUpdateConsumer = Struct.new(
  :city,
  :consumer_uuid,
  :consumerlanguage,
  :country,
  :date_of_birth,
  :datetime_created,
  :driver_licence_number,
  :email,
  :first_name,
  :identification_number,
  :kyc_passed,
  :last_name,
  :nationality,
  :passport_number,
  :phone_number,
  :place_of_birth,
  :response_code,
  :response_message,
  :state,
  :street1,
  :street2,
  :transactionhistory_id,
  :zip,
  keyword_init: true
)

# Request payload for OutputUpdateConsumer#create.
#
# @!attribute [rw] city
#   @return [String, nil]
#
# @!attribute [rw] consumer_uuid
#   @return [String]
#
# @!attribute [rw] consumerlanguage
#   @return [String, nil]
#
# @!attribute [rw] country
#   @return [String, nil]
#
# @!attribute [rw] date_of_birth
#   @return [String, nil]
#
# @!attribute [rw] datetime_created
#   @return [String, nil]
#
# @!attribute [rw] driver_licence_number
#   @return [String, nil]
#
# @!attribute [rw] email
#   @return [String, nil]
#
# @!attribute [rw] first_name
#   @return [String, nil]
#
# @!attribute [rw] identification_number
#   @return [String, nil]
#
# @!attribute [rw] kyc_passed
#   @return [Boolean, nil]
#
# @!attribute [rw] last_name
#   @return [String, nil]
#
# @!attribute [rw] nationality
#   @return [String, nil]
#
# @!attribute [rw] passport_number
#   @return [String, nil]
#
# @!attribute [rw] phone_number
#   @return [String, nil]
#
# @!attribute [rw] place_of_birth
#   @return [String, nil]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
#
# @!attribute [rw] state
#   @return [String, nil]
#
# @!attribute [rw] street1
#   @return [String, nil]
#
# @!attribute [rw] street2
#   @return [String, nil]
#
# @!attribute [rw] transactionhistory_id
#   @return [String, nil]
#
# @!attribute [rw] zip
#   @return [String, nil]
OutputUpdateConsumerCreateData = Struct.new(
  :city,
  :consumer_uuid,
  :consumerlanguage,
  :country,
  :date_of_birth,
  :datetime_created,
  :driver_licence_number,
  :email,
  :first_name,
  :identification_number,
  :kyc_passed,
  :last_name,
  :nationality,
  :passport_number,
  :phone_number,
  :place_of_birth,
  :response_code,
  :response_message,
  :state,
  :street1,
  :street2,
  :transactionhistory_id,
  :zip,
  keyword_init: true
)

# OutputUpdateProfile entity data model.
#
# @!attribute [rw] consumer_language
#   @return [String, nil]
#
# @!attribute [rw] email
#   @return [String, nil]
#
# @!attribute [rw] first_name
#   @return [String, nil]
#
# @!attribute [rw] last_name
#   @return [String, nil]
#
# @!attribute [rw] phone_number
#   @return [String, nil]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
OutputUpdateProfile = Struct.new(
  :consumer_language,
  :email,
  :first_name,
  :last_name,
  :phone_number,
  :response_code,
  :response_message,
  keyword_init: true
)

# Request payload for OutputUpdateProfile#create.
#
# @!attribute [rw] consumer_language
#   @return [String, nil]
#
# @!attribute [rw] email
#   @return [String, nil]
#
# @!attribute [rw] first_name
#   @return [String, nil]
#
# @!attribute [rw] last_name
#   @return [String, nil]
#
# @!attribute [rw] phone_number
#   @return [String, nil]
#
# @!attribute [rw] response_code
#   @return [Integer, nil]
#
# @!attribute [rw] response_message
#   @return [String, nil]
OutputUpdateProfileCreateData = Struct.new(
  :consumer_language,
  :email,
  :first_name,
  :last_name,
  :phone_number,
  :response_code,
  :response_message,
  keyword_init: true
)

# Version entity data model.
#
# @!attribute [rw] app_name
#   @return [String, nil]
#
# @!attribute [rw] build_date
#   @return [String, nil]
#
# @!attribute [rw] version
#   @return [String, nil]
Version = Struct.new(
  :app_name,
  :build_date,
  :version,
  keyword_init: true
)

# Request payload for Version#load.
#
# @!attribute [rw] app_name
#   @return [String, nil]
#
# @!attribute [rw] build_date
#   @return [String, nil]
#
# @!attribute [rw] version
#   @return [String, nil]
VersionLoadMatch = Struct.new(
  :app_name,
  :build_date,
  :version,
  keyword_init: true
)


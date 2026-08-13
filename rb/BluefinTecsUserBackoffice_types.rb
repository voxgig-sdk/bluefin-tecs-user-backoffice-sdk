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
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
OutputActivateDigitalModule = Struct.new(
  :responseCode,
  :responseMessage,
  keyword_init: true
)

# Request payload for OutputActivateDigitalModule#create.
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
OutputActivateDigitalModuleCreateData = Struct.new(
  :responseCode,
  :responseMessage,
  keyword_init: true
)

# OutputActivatePortalModule entity data model.
#
# @!attribute [rw] clientSecret
#   @return [String]
#
# @!attribute [rw] notificationEmail
#   @return [String]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
OutputActivatePortalModule = Struct.new(
  :clientSecret,
  :notificationEmail,
  :responseCode,
  :responseMessage,
  keyword_init: true
)

# Request payload for OutputActivatePortalModule#create.
#
# @!attribute [rw] clientSecret
#   @return [String]
#
# @!attribute [rw] notificationEmail
#   @return [String]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
OutputActivatePortalModuleCreateData = Struct.new(
  :clientSecret,
  :notificationEmail,
  :responseCode,
  :responseMessage,
  keyword_init: true
)

# OutputActivateStoreModule entity data model.
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
OutputActivateStoreModule = Struct.new(
  :responseCode,
  :responseMessage,
  keyword_init: true
)

# Request payload for OutputActivateStoreModule#create.
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
OutputActivateStoreModuleCreateData = Struct.new(
  :responseCode,
  :responseMessage,
  keyword_init: true
)

# OutputActivateUser entity data model.
#
# @!attribute [rw] consumerUUID
#   @return [String, nil]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
OutputActivateUser = Struct.new(
  :consumerUUID,
  :responseCode,
  :responseMessage,
  keyword_init: true
)

# Request payload for OutputActivateUser#create.
#
# @!attribute [rw] consumerUUID
#   @return [String, nil]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
OutputActivateUserCreateData = Struct.new(
  :consumerUUID,
  :responseCode,
  :responseMessage,
  keyword_init: true
)

# OutputAssignRole entity data model.
#
# @!attribute [rw] consumerUUID
#   @return [String]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
#
# @!attribute [rw] roles
#   @return [Array]
OutputAssignRole = Struct.new(
  :consumerUUID,
  :responseCode,
  :responseMessage,
  :roles,
  keyword_init: true
)

# Request payload for OutputAssignRole#create.
#
# @!attribute [rw] consumerUUID
#   @return [String]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
#
# @!attribute [rw] roles
#   @return [Array]
OutputAssignRoleCreateData = Struct.new(
  :consumerUUID,
  :responseCode,
  :responseMessage,
  :roles,
  keyword_init: true
)

# OutputChangeLogo entity data model.
#
# @!attribute [rw] contentAsBase64
#   @return [String]
#
# @!attribute [rw] mimeType
#   @return [String]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
OutputChangeLogo = Struct.new(
  :contentAsBase64,
  :mimeType,
  :responseCode,
  :responseMessage,
  keyword_init: true
)

# Request payload for OutputChangeLogo#create.
#
# @!attribute [rw] contentAsBase64
#   @return [String]
#
# @!attribute [rw] mimeType
#   @return [String]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
OutputChangeLogoCreateData = Struct.new(
  :contentAsBase64,
  :mimeType,
  :responseCode,
  :responseMessage,
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
# @!attribute [rw] dateOfBirth
#   @return [String, nil]
#
# @!attribute [rw] description
#   @return [String, nil]
#
# @!attribute [rw] driversLicenseNumber
#   @return [String, nil]
#
# @!attribute [rw] email
#   @return [String]
#
# @!attribute [rw] firstName
#   @return [String, nil]
#
# @!attribute [rw] identificationNumber
#   @return [String, nil]
#
# @!attribute [rw] lastName
#   @return [String, nil]
#
# @!attribute [rw] login
#   @return [String]
#
# @!attribute [rw] name
#   @return [String, nil]
#
# @!attribute [rw] passportNumber
#   @return [String, nil]
#
# @!attribute [rw] phone
#   @return [String]
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
# @!attribute [rw] zipCode
#   @return [String, nil]
OutputCreateMandator = Struct.new(
  :city,
  :country,
  :dateOfBirth,
  :description,
  :driversLicenseNumber,
  :email,
  :firstName,
  :identificationNumber,
  :lastName,
  :login,
  :name,
  :passportNumber,
  :phone,
  :salutation,
  :state,
  :street1,
  :street2,
  :zipCode,
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
# @!attribute [rw] dateOfBirth
#   @return [String, nil]
#
# @!attribute [rw] description
#   @return [String, nil]
#
# @!attribute [rw] driversLicenseNumber
#   @return [String, nil]
#
# @!attribute [rw] email
#   @return [String]
#
# @!attribute [rw] firstName
#   @return [String, nil]
#
# @!attribute [rw] identificationNumber
#   @return [String, nil]
#
# @!attribute [rw] lastName
#   @return [String, nil]
#
# @!attribute [rw] login
#   @return [String]
#
# @!attribute [rw] name
#   @return [String, nil]
#
# @!attribute [rw] passportNumber
#   @return [String, nil]
#
# @!attribute [rw] phone
#   @return [String]
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
# @!attribute [rw] zipCode
#   @return [String, nil]
OutputCreateMandatorCreateData = Struct.new(
  :city,
  :country,
  :dateOfBirth,
  :description,
  :driversLicenseNumber,
  :email,
  :firstName,
  :identificationNumber,
  :lastName,
  :login,
  :name,
  :passportNumber,
  :phone,
  :salutation,
  :state,
  :street1,
  :street2,
  :zipCode,
  keyword_init: true
)

# OutputCreateServiceUser entity data model.
#
# @!attribute [rw] mandatorName
#   @return [String]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
OutputCreateServiceUser = Struct.new(
  :mandatorName,
  :responseCode,
  :responseMessage,
  keyword_init: true
)

# Request payload for OutputCreateServiceUser#create.
#
# @!attribute [rw] mandatorName
#   @return [String]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
OutputCreateServiceUserCreateData = Struct.new(
  :mandatorName,
  :responseCode,
  :responseMessage,
  keyword_init: true
)

# OutputDeactivateUser entity data model.
#
# @!attribute [rw] consumerUUID
#   @return [String, nil]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
OutputDeactivateUser = Struct.new(
  :consumerUUID,
  :responseCode,
  :responseMessage,
  keyword_init: true
)

# Request payload for OutputDeactivateUser#create.
#
# @!attribute [rw] consumerUUID
#   @return [String, nil]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
OutputDeactivateUserCreateData = Struct.new(
  :consumerUUID,
  :responseCode,
  :responseMessage,
  keyword_init: true
)

# OutputGetKycDocument entity data model.
#
# @!attribute [rw] caseID
#   @return [String, nil]
#
# @!attribute [rw] encodedDataBase64
#   @return [String, nil]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
OutputGetKycDocument = Struct.new(
  :caseID,
  :encodedDataBase64,
  :responseCode,
  :responseMessage,
  keyword_init: true
)

# Request payload for OutputGetKycDocument#create.
#
# @!attribute [rw] caseID
#   @return [String, nil]
#
# @!attribute [rw] encodedDataBase64
#   @return [String, nil]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
OutputGetKycDocumentCreateData = Struct.new(
  :caseID,
  :encodedDataBase64,
  :responseCode,
  :responseMessage,
  keyword_init: true
)

# OutputGetLogo entity data model.
#
# @!attribute [rw] contentAsBase64
#   @return [String]
#
# @!attribute [rw] mimeType
#   @return [String]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
OutputGetLogo = Struct.new(
  :contentAsBase64,
  :mimeType,
  :responseCode,
  :responseMessage,
  keyword_init: true
)

# Request payload for OutputGetLogo#load.
#
# @!attribute [rw] contentAsBase64
#   @return [String, nil]
#
# @!attribute [rw] mimeType
#   @return [String, nil]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
OutputGetLogoLoadMatch = Struct.new(
  :contentAsBase64,
  :mimeType,
  :responseCode,
  :responseMessage,
  keyword_init: true
)

# OutputListOfAvailableRole entity data model.
#
# @!attribute [rw] availableRoles
#   @return [Array, nil]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
OutputListOfAvailableRole = Struct.new(
  :availableRoles,
  :responseCode,
  :responseMessage,
  keyword_init: true
)

# Request payload for OutputListOfAvailableRole#create.
#
# @!attribute [rw] availableRoles
#   @return [Array, nil]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
OutputListOfAvailableRoleCreateData = Struct.new(
  :availableRoles,
  :responseCode,
  :responseMessage,
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
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
#
# @!attribute [rw] sorting
#   @return [Hash, nil]
OutputListOfMandator = Struct.new(
  :filter,
  :list,
  :pagination,
  :responseCode,
  :responseMessage,
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
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
#
# @!attribute [rw] sorting
#   @return [Hash, nil]
OutputListOfMandatorCreateData = Struct.new(
  :filter,
  :list,
  :pagination,
  :responseCode,
  :responseMessage,
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
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
OutputListOfModule = Struct.new(
  :list,
  :pagination,
  :responseCode,
  :responseMessage,
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
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
OutputListOfModuleCreateData = Struct.new(
  :list,
  :pagination,
  :responseCode,
  :responseMessage,
  keyword_init: true
)

# OutputListOfRoleGroup entity data model.
#
# @!attribute [rw] filter
#   @return [Hash, nil]
#
# @!attribute [rw] groupRoles
#   @return [Array, nil]
#
# @!attribute [rw] pagination
#   @return [Hash, nil]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
#
# @!attribute [rw] sorting
#   @return [Hash, nil]
OutputListOfRoleGroup = Struct.new(
  :filter,
  :groupRoles,
  :pagination,
  :responseCode,
  :responseMessage,
  :sorting,
  keyword_init: true
)

# Request payload for OutputListOfRoleGroup#create.
#
# @!attribute [rw] filter
#   @return [Hash, nil]
#
# @!attribute [rw] groupRoles
#   @return [Array, nil]
#
# @!attribute [rw] pagination
#   @return [Hash, nil]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
#
# @!attribute [rw] sorting
#   @return [Hash, nil]
OutputListOfRoleGroupCreateData = Struct.new(
  :filter,
  :groupRoles,
  :pagination,
  :responseCode,
  :responseMessage,
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
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
#
# @!attribute [rw] sorting
#   @return [Hash, nil]
OutputListOfTransactionsHistory = Struct.new(
  :filter,
  :list,
  :pagination,
  :responseCode,
  :responseMessage,
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
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
#
# @!attribute [rw] sorting
#   @return [Hash, nil]
OutputListOfTransactionsHistoryCreateData = Struct.new(
  :filter,
  :list,
  :pagination,
  :responseCode,
  :responseMessage,
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
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
#
# @!attribute [rw] sorting
#   @return [Hash, nil]
OutputListOfUser = Struct.new(
  :filter,
  :list,
  :pagination,
  :responseCode,
  :responseMessage,
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
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
#
# @!attribute [rw] sorting
#   @return [Hash, nil]
OutputListOfUserCreateData = Struct.new(
  :filter,
  :list,
  :pagination,
  :responseCode,
  :responseMessage,
  :sorting,
  keyword_init: true
)

# OutputProvideCredential entity data model.
#
# @!attribute [rw] mandatorName
#   @return [String]
#
# @!attribute [rw] password
#   @return [String, nil]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
#
# @!attribute [rw] username
#   @return [String, nil]
OutputProvideCredential = Struct.new(
  :mandatorName,
  :password,
  :responseCode,
  :responseMessage,
  :username,
  keyword_init: true
)

# Request payload for OutputProvideCredential#create.
#
# @!attribute [rw] mandatorName
#   @return [String]
#
# @!attribute [rw] password
#   @return [String, nil]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
#
# @!attribute [rw] username
#   @return [String, nil]
OutputProvideCredentialCreateData = Struct.new(
  :mandatorName,
  :password,
  :responseCode,
  :responseMessage,
  :username,
  keyword_init: true
)

# OutputRegisterUser entity data model.
#
# @!attribute [rw] city
#   @return [String, nil]
#
# @!attribute [rw] consumerId
#   @return [String, nil]
#
# @!attribute [rw] consumerLanguage
#   @return [String, nil]
#
# @!attribute [rw] country
#   @return [String, nil]
#
# @!attribute [rw] dateOfBirth
#   @return [String, nil]
#
# @!attribute [rw] driverLicenceNumber
#   @return [String, nil]
#
# @!attribute [rw] email
#   @return [String]
#
# @!attribute [rw] firstName
#   @return [String, nil]
#
# @!attribute [rw] identificationNumber
#   @return [String, nil]
#
# @!attribute [rw] lastName
#   @return [String, nil]
#
# @!attribute [rw] login
#   @return [String, nil]
#
# @!attribute [rw] module
#   @return [String, nil]
#
# @!attribute [rw] passportNumber
#   @return [String, nil]
#
# @!attribute [rw] phone
#   @return [String, nil]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
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
  :consumerId,
  :consumerLanguage,
  :country,
  :dateOfBirth,
  :driverLicenceNumber,
  :email,
  :firstName,
  :identificationNumber,
  :lastName,
  :login,
  :module,
  :passportNumber,
  :phone,
  :responseCode,
  :responseMessage,
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
# @!attribute [rw] consumerId
#   @return [String, nil]
#
# @!attribute [rw] consumerLanguage
#   @return [String, nil]
#
# @!attribute [rw] country
#   @return [String, nil]
#
# @!attribute [rw] dateOfBirth
#   @return [String, nil]
#
# @!attribute [rw] driverLicenceNumber
#   @return [String, nil]
#
# @!attribute [rw] email
#   @return [String]
#
# @!attribute [rw] firstName
#   @return [String, nil]
#
# @!attribute [rw] identificationNumber
#   @return [String, nil]
#
# @!attribute [rw] lastName
#   @return [String, nil]
#
# @!attribute [rw] login
#   @return [String, nil]
#
# @!attribute [rw] module
#   @return [String, nil]
#
# @!attribute [rw] passportNumber
#   @return [String, nil]
#
# @!attribute [rw] phone
#   @return [String, nil]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
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
  :consumerId,
  :consumerLanguage,
  :country,
  :dateOfBirth,
  :driverLicenceNumber,
  :email,
  :firstName,
  :identificationNumber,
  :lastName,
  :login,
  :module,
  :passportNumber,
  :phone,
  :responseCode,
  :responseMessage,
  :salutation,
  :state,
  :street1,
  :street2,
  :zip,
  keyword_init: true
)

# OutputRemoveRole entity data model.
#
# @!attribute [rw] consumerUUID
#   @return [String, nil]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
#
# @!attribute [rw] roles
#   @return [Array, nil]
OutputRemoveRole = Struct.new(
  :consumerUUID,
  :responseCode,
  :responseMessage,
  :roles,
  keyword_init: true
)

# Request payload for OutputRemoveRole#create.
#
# @!attribute [rw] consumerUUID
#   @return [String, nil]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
#
# @!attribute [rw] roles
#   @return [Array, nil]
OutputRemoveRoleCreateData = Struct.new(
  :consumerUUID,
  :responseCode,
  :responseMessage,
  :roles,
  keyword_init: true
)

# OutputResendLink entity data model.
#
# @!attribute [rw] businessRegistrationNumber
#   @return [String, nil]
#
# @!attribute [rw] consumerUUID
#   @return [String]
#
# @!attribute [rw] emailConfirmationCode
#   @return [String, nil]
#
# @!attribute [rw] phoneNumber
#   @return [String, nil]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
OutputResendLink = Struct.new(
  :businessRegistrationNumber,
  :consumerUUID,
  :emailConfirmationCode,
  :phoneNumber,
  :responseCode,
  :responseMessage,
  keyword_init: true
)

# Request payload for OutputResendLink#create.
#
# @!attribute [rw] businessRegistrationNumber
#   @return [String, nil]
#
# @!attribute [rw] consumerUUID
#   @return [String]
#
# @!attribute [rw] emailConfirmationCode
#   @return [String, nil]
#
# @!attribute [rw] phoneNumber
#   @return [String, nil]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
OutputResendLinkCreateData = Struct.new(
  :businessRegistrationNumber,
  :consumerUUID,
  :emailConfirmationCode,
  :phoneNumber,
  :responseCode,
  :responseMessage,
  keyword_init: true
)

# OutputResetPassword entity data model.
#
# @!attribute [rw] consumerUuid
#   @return [String, nil]
#
# @!attribute [rw] phoneNumber
#   @return [String, nil]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
OutputResetPassword = Struct.new(
  :consumerUuid,
  :phoneNumber,
  :responseCode,
  :responseMessage,
  keyword_init: true
)

# Request payload for OutputResetPassword#create.
#
# @!attribute [rw] consumerUuid
#   @return [String, nil]
#
# @!attribute [rw] phoneNumber
#   @return [String, nil]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
OutputResetPasswordCreateData = Struct.new(
  :consumerUuid,
  :phoneNumber,
  :responseCode,
  :responseMessage,
  keyword_init: true
)

# OutputUpdateConsumer entity data model.
#
# @!attribute [rw] city
#   @return [String, nil]
#
# @!attribute [rw] consumerUuid
#   @return [String]
#
# @!attribute [rw] consumerlanguage
#   @return [String, nil]
#
# @!attribute [rw] country
#   @return [String, nil]
#
# @!attribute [rw] dateOfBirth
#   @return [String, nil]
#
# @!attribute [rw] datetime_created
#   @return [String, nil]
#
# @!attribute [rw] driverLicenceNumber
#   @return [String, nil]
#
# @!attribute [rw] email
#   @return [String, nil]
#
# @!attribute [rw] firstName
#   @return [String, nil]
#
# @!attribute [rw] identificationNumber
#   @return [String, nil]
#
# @!attribute [rw] kycPassed
#   @return [Boolean, nil]
#
# @!attribute [rw] lastName
#   @return [String, nil]
#
# @!attribute [rw] nationality
#   @return [String, nil]
#
# @!attribute [rw] passportNumber
#   @return [String, nil]
#
# @!attribute [rw] phoneNumber
#   @return [String, nil]
#
# @!attribute [rw] placeOfBirth
#   @return [String, nil]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
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
  :consumerUuid,
  :consumerlanguage,
  :country,
  :dateOfBirth,
  :datetime_created,
  :driverLicenceNumber,
  :email,
  :firstName,
  :identificationNumber,
  :kycPassed,
  :lastName,
  :nationality,
  :passportNumber,
  :phoneNumber,
  :placeOfBirth,
  :responseCode,
  :responseMessage,
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
# @!attribute [rw] consumerUuid
#   @return [String]
#
# @!attribute [rw] consumerlanguage
#   @return [String, nil]
#
# @!attribute [rw] country
#   @return [String, nil]
#
# @!attribute [rw] dateOfBirth
#   @return [String, nil]
#
# @!attribute [rw] datetime_created
#   @return [String, nil]
#
# @!attribute [rw] driverLicenceNumber
#   @return [String, nil]
#
# @!attribute [rw] email
#   @return [String, nil]
#
# @!attribute [rw] firstName
#   @return [String, nil]
#
# @!attribute [rw] identificationNumber
#   @return [String, nil]
#
# @!attribute [rw] kycPassed
#   @return [Boolean, nil]
#
# @!attribute [rw] lastName
#   @return [String, nil]
#
# @!attribute [rw] nationality
#   @return [String, nil]
#
# @!attribute [rw] passportNumber
#   @return [String, nil]
#
# @!attribute [rw] phoneNumber
#   @return [String, nil]
#
# @!attribute [rw] placeOfBirth
#   @return [String, nil]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
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
  :consumerUuid,
  :consumerlanguage,
  :country,
  :dateOfBirth,
  :datetime_created,
  :driverLicenceNumber,
  :email,
  :firstName,
  :identificationNumber,
  :kycPassed,
  :lastName,
  :nationality,
  :passportNumber,
  :phoneNumber,
  :placeOfBirth,
  :responseCode,
  :responseMessage,
  :state,
  :street1,
  :street2,
  :transactionhistory_id,
  :zip,
  keyword_init: true
)

# OutputUpdateProfile entity data model.
#
# @!attribute [rw] consumerLanguage
#   @return [String, nil]
#
# @!attribute [rw] email
#   @return [String, nil]
#
# @!attribute [rw] firstName
#   @return [String, nil]
#
# @!attribute [rw] lastName
#   @return [String, nil]
#
# @!attribute [rw] phoneNumber
#   @return [String, nil]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
OutputUpdateProfile = Struct.new(
  :consumerLanguage,
  :email,
  :firstName,
  :lastName,
  :phoneNumber,
  :responseCode,
  :responseMessage,
  keyword_init: true
)

# Request payload for OutputUpdateProfile#create.
#
# @!attribute [rw] consumerLanguage
#   @return [String, nil]
#
# @!attribute [rw] email
#   @return [String, nil]
#
# @!attribute [rw] firstName
#   @return [String, nil]
#
# @!attribute [rw] lastName
#   @return [String, nil]
#
# @!attribute [rw] phoneNumber
#   @return [String, nil]
#
# @!attribute [rw] responseCode
#   @return [Integer, nil]
#
# @!attribute [rw] responseMessage
#   @return [String, nil]
OutputUpdateProfileCreateData = Struct.new(
  :consumerLanguage,
  :email,
  :firstName,
  :lastName,
  :phoneNumber,
  :responseCode,
  :responseMessage,
  keyword_init: true
)

# Version entity data model.
#
# @!attribute [rw] appName
#   @return [String, nil]
#
# @!attribute [rw] buildDate
#   @return [String, nil]
#
# @!attribute [rw] version
#   @return [String, nil]
Version = Struct.new(
  :appName,
  :buildDate,
  :version,
  keyword_init: true
)

# Request payload for Version#load.
#
# @!attribute [rw] appName
#   @return [String, nil]
#
# @!attribute [rw] buildDate
#   @return [String, nil]
#
# @!attribute [rw] version
#   @return [String, nil]
VersionLoadMatch = Struct.new(
  :appName,
  :buildDate,
  :version,
  keyword_init: true
)


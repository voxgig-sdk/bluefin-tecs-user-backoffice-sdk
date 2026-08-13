-- Typed models for the BluefinTecsUserBackoffice SDK (LuaLS annotations).
--
-- GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
-- params (op.<name>.points[].args.params[]). Field/param types come from the
-- canonical type sentinels via @voxgig/sdkgen canonToType (source of truth:
-- @voxgig/apidef VALID_CANON). Annotations only — no runtime effect. Do not
-- edit by hand.

---@class OutputActivateDigitalModule
---@field responseCode? number
---@field responseMessage? string

---@class OutputActivateDigitalModuleCreateData
---@field responseCode? number
---@field responseMessage? string

---@class OutputActivatePortalModule
---@field clientSecret string
---@field notificationEmail string
---@field responseCode? number
---@field responseMessage? string

---@class OutputActivatePortalModuleCreateData
---@field clientSecret string
---@field notificationEmail string
---@field responseCode? number
---@field responseMessage? string

---@class OutputActivateStoreModule
---@field responseCode? number
---@field responseMessage? string

---@class OutputActivateStoreModuleCreateData
---@field responseCode? number
---@field responseMessage? string

---@class OutputActivateUser
---@field consumerUUID? string
---@field responseCode? number
---@field responseMessage? string

---@class OutputActivateUserCreateData
---@field consumerUUID? string
---@field responseCode? number
---@field responseMessage? string

---@class OutputAssignRole
---@field consumerUUID string
---@field responseCode? number
---@field responseMessage? string
---@field roles table

---@class OutputAssignRoleCreateData
---@field consumerUUID string
---@field responseCode? number
---@field responseMessage? string
---@field roles table

---@class OutputChangeLogo
---@field contentAsBase64 string
---@field mimeType string
---@field responseCode? number
---@field responseMessage? string

---@class OutputChangeLogoCreateData
---@field contentAsBase64 string
---@field mimeType string
---@field responseCode? number
---@field responseMessage? string

---@class OutputCreateMandator
---@field city? string
---@field country? string
---@field dateOfBirth? string
---@field description? string
---@field driversLicenseNumber? string
---@field email string
---@field firstName? string
---@field identificationNumber? string
---@field lastName? string
---@field login string
---@field name? string
---@field passportNumber? string
---@field phone string
---@field salutation? string
---@field state? string
---@field street1? string
---@field street2? string
---@field zipCode? string

---@class OutputCreateMandatorCreateData
---@field city? string
---@field country? string
---@field dateOfBirth? string
---@field description? string
---@field driversLicenseNumber? string
---@field email string
---@field firstName? string
---@field identificationNumber? string
---@field lastName? string
---@field login string
---@field name? string
---@field passportNumber? string
---@field phone string
---@field salutation? string
---@field state? string
---@field street1? string
---@field street2? string
---@field zipCode? string

---@class OutputCreateServiceUser
---@field mandatorName string
---@field responseCode? number
---@field responseMessage? string

---@class OutputCreateServiceUserCreateData
---@field mandatorName string
---@field responseCode? number
---@field responseMessage? string

---@class OutputDeactivateUser
---@field consumerUUID? string
---@field responseCode? number
---@field responseMessage? string

---@class OutputDeactivateUserCreateData
---@field consumerUUID? string
---@field responseCode? number
---@field responseMessage? string

---@class OutputGetKycDocument
---@field caseID? string
---@field encodedDataBase64? string
---@field responseCode? number
---@field responseMessage? string

---@class OutputGetKycDocumentCreateData
---@field caseID? string
---@field encodedDataBase64? string
---@field responseCode? number
---@field responseMessage? string

---@class OutputGetLogo
---@field contentAsBase64 string
---@field mimeType string
---@field responseCode? number
---@field responseMessage? string

---@class OutputGetLogoLoadMatch
---@field contentAsBase64? string
---@field mimeType? string
---@field responseCode? number
---@field responseMessage? string

---@class OutputListOfAvailableRole
---@field availableRoles? table
---@field responseCode? number
---@field responseMessage? string

---@class OutputListOfAvailableRoleCreateData
---@field availableRoles? table
---@field responseCode? number
---@field responseMessage? string

---@class OutputListOfMandator
---@field filter? table
---@field list? table
---@field pagination? table
---@field responseCode? number
---@field responseMessage? string
---@field sorting? table

---@class OutputListOfMandatorCreateData
---@field filter? table
---@field list? table
---@field pagination? table
---@field responseCode? number
---@field responseMessage? string
---@field sorting? table

---@class OutputListOfModule
---@field list? table
---@field pagination? table
---@field responseCode? number
---@field responseMessage? string

---@class OutputListOfModuleCreateData
---@field list? table
---@field pagination? table
---@field responseCode? number
---@field responseMessage? string

---@class OutputListOfRoleGroup
---@field filter? table
---@field groupRoles? table
---@field pagination? table
---@field responseCode? number
---@field responseMessage? string
---@field sorting? table

---@class OutputListOfRoleGroupCreateData
---@field filter? table
---@field groupRoles? table
---@field pagination? table
---@field responseCode? number
---@field responseMessage? string
---@field sorting? table

---@class OutputListOfTransactionsHistory
---@field filter? table
---@field list? table
---@field pagination? table
---@field responseCode? number
---@field responseMessage? string
---@field sorting? table

---@class OutputListOfTransactionsHistoryCreateData
---@field filter? table
---@field list? table
---@field pagination? table
---@field responseCode? number
---@field responseMessage? string
---@field sorting? table

---@class OutputListOfUser
---@field filter? table
---@field list? table
---@field pagination? table
---@field responseCode? number
---@field responseMessage? string
---@field sorting? table

---@class OutputListOfUserCreateData
---@field filter? table
---@field list? table
---@field pagination? table
---@field responseCode? number
---@field responseMessage? string
---@field sorting? table

---@class OutputProvideCredential
---@field mandatorName string
---@field password? string
---@field responseCode? number
---@field responseMessage? string
---@field username? string

---@class OutputProvideCredentialCreateData
---@field mandatorName string
---@field password? string
---@field responseCode? number
---@field responseMessage? string
---@field username? string

---@class OutputRegisterUser
---@field city? string
---@field consumerId? string
---@field consumerLanguage? string
---@field country? string
---@field dateOfBirth? string
---@field driverLicenceNumber? string
---@field email string
---@field firstName? string
---@field identificationNumber? string
---@field lastName? string
---@field login? string
---@field module? string
---@field passportNumber? string
---@field phone? string
---@field responseCode? number
---@field responseMessage? string
---@field salutation? string
---@field state? string
---@field street1? string
---@field street2? string
---@field zip? string

---@class OutputRegisterUserCreateData
---@field city? string
---@field consumerId? string
---@field consumerLanguage? string
---@field country? string
---@field dateOfBirth? string
---@field driverLicenceNumber? string
---@field email string
---@field firstName? string
---@field identificationNumber? string
---@field lastName? string
---@field login? string
---@field module? string
---@field passportNumber? string
---@field phone? string
---@field responseCode? number
---@field responseMessage? string
---@field salutation? string
---@field state? string
---@field street1? string
---@field street2? string
---@field zip? string

---@class OutputRemoveRole
---@field consumerUUID? string
---@field responseCode? number
---@field responseMessage? string
---@field roles? table

---@class OutputRemoveRoleCreateData
---@field consumerUUID? string
---@field responseCode? number
---@field responseMessage? string
---@field roles? table

---@class OutputResendLink
---@field businessRegistrationNumber? string
---@field consumerUUID string
---@field emailConfirmationCode? string
---@field phoneNumber? string
---@field responseCode? number
---@field responseMessage? string

---@class OutputResendLinkCreateData
---@field businessRegistrationNumber? string
---@field consumerUUID string
---@field emailConfirmationCode? string
---@field phoneNumber? string
---@field responseCode? number
---@field responseMessage? string

---@class OutputResetPassword
---@field consumerUuid? string
---@field phoneNumber? string
---@field responseCode? number
---@field responseMessage? string

---@class OutputResetPasswordCreateData
---@field consumerUuid? string
---@field phoneNumber? string
---@field responseCode? number
---@field responseMessage? string

---@class OutputUpdateConsumer
---@field city? string
---@field consumerUuid string
---@field consumerlanguage? string
---@field country? string
---@field dateOfBirth? string
---@field datetime_created? string
---@field driverLicenceNumber? string
---@field email? string
---@field firstName? string
---@field identificationNumber? string
---@field kycPassed? boolean
---@field lastName? string
---@field nationality? string
---@field passportNumber? string
---@field phoneNumber? string
---@field placeOfBirth? string
---@field responseCode? number
---@field responseMessage? string
---@field state? string
---@field street1? string
---@field street2? string
---@field transactionhistory_id? string
---@field zip? string

---@class OutputUpdateConsumerCreateData
---@field city? string
---@field consumerUuid string
---@field consumerlanguage? string
---@field country? string
---@field dateOfBirth? string
---@field datetime_created? string
---@field driverLicenceNumber? string
---@field email? string
---@field firstName? string
---@field identificationNumber? string
---@field kycPassed? boolean
---@field lastName? string
---@field nationality? string
---@field passportNumber? string
---@field phoneNumber? string
---@field placeOfBirth? string
---@field responseCode? number
---@field responseMessage? string
---@field state? string
---@field street1? string
---@field street2? string
---@field transactionhistory_id? string
---@field zip? string

---@class OutputUpdateProfile
---@field consumerLanguage? string
---@field email? string
---@field firstName? string
---@field lastName? string
---@field phoneNumber? string
---@field responseCode? number
---@field responseMessage? string

---@class OutputUpdateProfileCreateData
---@field consumerLanguage? string
---@field email? string
---@field firstName? string
---@field lastName? string
---@field phoneNumber? string
---@field responseCode? number
---@field responseMessage? string

---@class Version
---@field appName? string
---@field buildDate? string
---@field version? string

---@class VersionLoadMatch
---@field appName? string
---@field buildDate? string
---@field version? string

local M = {}

return M

-- Typed models for the BluefinTecsUserBackoffice SDK (LuaLS annotations).
--
-- GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
-- params (op.<name>.points[].args.params[]). Field/param types come from the
-- canonical type sentinels via @voxgig/sdkgen canonToType (source of truth:
-- @voxgig/apidef VALID_CANON). Annotations only — no runtime effect. Do not
-- edit by hand.

---@class OutputActivateDigitalModule
---@field response_code? number
---@field response_message? string

---@class OutputActivateDigitalModuleCreateData
---@field response_code? number
---@field response_message? string

---@class OutputActivatePortalModule
---@field client_secret string
---@field notification_email string
---@field response_code? number
---@field response_message? string

---@class OutputActivatePortalModuleCreateData
---@field client_secret string
---@field notification_email string
---@field response_code? number
---@field response_message? string

---@class OutputActivateStoreModule
---@field response_code? number
---@field response_message? string

---@class OutputActivateStoreModuleCreateData
---@field response_code? number
---@field response_message? string

---@class OutputActivateUser
---@field consumer_uuid? string
---@field response_code? number
---@field response_message? string

---@class OutputActivateUserCreateData
---@field consumer_uuid? string
---@field response_code? number
---@field response_message? string

---@class OutputAssignRole
---@field consumer_uuid string
---@field response_code? number
---@field response_message? string
---@field role table

---@class OutputAssignRoleCreateData
---@field consumer_uuid string
---@field response_code? number
---@field response_message? string
---@field role table

---@class OutputChangeLogo
---@field content_as_base64 string
---@field mime_type string
---@field response_code? number
---@field response_message? string

---@class OutputChangeLogoCreateData
---@field content_as_base64 string
---@field mime_type string
---@field response_code? number
---@field response_message? string

---@class OutputCreateMandator
---@field city? string
---@field country? string
---@field date_of_birth? string
---@field description string
---@field drivers_license_number? string
---@field email string
---@field first_name? string
---@field identification_number? string
---@field last_name? string
---@field login string
---@field mandator? table
---@field name string
---@field passport_number? string
---@field phone string
---@field response_code? number
---@field response_message? string
---@field salutation? string
---@field state? string
---@field street1? string
---@field street2? string
---@field zip_code? string

---@class OutputCreateMandatorCreateData
---@field city? string
---@field country? string
---@field date_of_birth? string
---@field description string
---@field drivers_license_number? string
---@field email string
---@field first_name? string
---@field identification_number? string
---@field last_name? string
---@field login string
---@field mandator? table
---@field name string
---@field passport_number? string
---@field phone string
---@field response_code? number
---@field response_message? string
---@field salutation? string
---@field state? string
---@field street1? string
---@field street2? string
---@field zip_code? string

---@class OutputCreateServiceUser
---@field mandator_name string
---@field response_code? number
---@field response_message? string

---@class OutputCreateServiceUserCreateData
---@field mandator_name string
---@field response_code? number
---@field response_message? string

---@class OutputDeactivateUser
---@field consumer_uuid? string
---@field response_code? number
---@field response_message? string

---@class OutputDeactivateUserCreateData
---@field consumer_uuid? string
---@field response_code? number
---@field response_message? string

---@class OutputGetKycDocument
---@field case_id? string
---@field encoded_data_base64? string
---@field response_code? number
---@field response_message? string

---@class OutputGetKycDocumentCreateData
---@field case_id? string
---@field encoded_data_base64? string
---@field response_code? number
---@field response_message? string

---@class OutputGetLogo
---@field content_as_base64 string
---@field mime_type string
---@field response_code? number
---@field response_message? string

---@class OutputGetLogoLoadMatch
---@field content_as_base64? string
---@field mime_type? string
---@field response_code? number
---@field response_message? string

---@class OutputListOfAvailableRole
---@field available_role? table
---@field response_code? number
---@field response_message? string

---@class OutputListOfAvailableRoleCreateData
---@field available_role? table
---@field response_code? number
---@field response_message? string

---@class OutputListOfMandator
---@field filter? table
---@field list? table
---@field pagination? table
---@field response_code? number
---@field response_message? string
---@field sorting? table

---@class OutputListOfMandatorCreateData
---@field filter? table
---@field list? table
---@field pagination? table
---@field response_code? number
---@field response_message? string
---@field sorting? table

---@class OutputListOfModule
---@field list? table
---@field pagination? table
---@field response_code? number
---@field response_message? string

---@class OutputListOfModuleCreateData
---@field list? table
---@field pagination? table
---@field response_code? number
---@field response_message? string

---@class OutputListOfRoleGroup
---@field filter? table
---@field group_role? table
---@field pagination? table
---@field response_code? number
---@field response_message? string
---@field sorting? table

---@class OutputListOfRoleGroupCreateData
---@field filter? table
---@field group_role? table
---@field pagination? table
---@field response_code? number
---@field response_message? string
---@field sorting? table

---@class OutputListOfTransactionsHistory
---@field filter? table
---@field list? table
---@field pagination? table
---@field response_code? number
---@field response_message? string
---@field sorting? table

---@class OutputListOfTransactionsHistoryCreateData
---@field filter? table
---@field list? table
---@field pagination? table
---@field response_code? number
---@field response_message? string
---@field sorting? table

---@class OutputListOfUser
---@field filter? table
---@field list? table
---@field pagination? table
---@field response_code? number
---@field response_message? string
---@field sorting? table

---@class OutputListOfUserCreateData
---@field filter? table
---@field list? table
---@field pagination? table
---@field response_code? number
---@field response_message? string
---@field sorting? table

---@class OutputProvideCredential
---@field mandator_name string
---@field password? string
---@field response_code? number
---@field response_message? string
---@field username? string

---@class OutputProvideCredentialCreateData
---@field mandator_name string
---@field password? string
---@field response_code? number
---@field response_message? string
---@field username? string

---@class OutputRegisterUser
---@field city? string
---@field consumer_id? string
---@field consumer_language? string
---@field country? string
---@field date_of_birth? string
---@field driver_licence_number? string
---@field email string
---@field first_name? string
---@field identification_number? string
---@field last_name? string
---@field login? string
---@field module? string
---@field passport_number? string
---@field phone? string
---@field response_code? number
---@field response_message? string
---@field salutation? string
---@field state? string
---@field street1? string
---@field street2? string
---@field zip? string

---@class OutputRegisterUserCreateData
---@field city? string
---@field consumer_id? string
---@field consumer_language? string
---@field country? string
---@field date_of_birth? string
---@field driver_licence_number? string
---@field email string
---@field first_name? string
---@field identification_number? string
---@field last_name? string
---@field login? string
---@field module? string
---@field passport_number? string
---@field phone? string
---@field response_code? number
---@field response_message? string
---@field salutation? string
---@field state? string
---@field street1? string
---@field street2? string
---@field zip? string

---@class OutputRemoveRole
---@field consumer_uuid? string
---@field response_code? number
---@field response_message? string
---@field role? table

---@class OutputRemoveRoleCreateData
---@field consumer_uuid? string
---@field response_code? number
---@field response_message? string
---@field role? table

---@class OutputResendLink
---@field business_registration_number? string
---@field consumer_uuid string
---@field email_confirmation_code? string
---@field phone_number? string
---@field response_code? number
---@field response_message? string

---@class OutputResendLinkCreateData
---@field business_registration_number? string
---@field consumer_uuid string
---@field email_confirmation_code? string
---@field phone_number? string
---@field response_code? number
---@field response_message? string

---@class OutputResetPassword
---@field consumer_uuid? string
---@field phone_number? string
---@field response_code? number
---@field response_message? string

---@class OutputResetPasswordCreateData
---@field consumer_uuid? string
---@field phone_number? string
---@field response_code? number
---@field response_message? string

---@class OutputUpdateConsumer
---@field city? string
---@field consumer_uuid string
---@field consumerlanguage? string
---@field country? string
---@field date_of_birth? string
---@field datetime_created? string
---@field driver_licence_number? string
---@field email? string
---@field first_name? string
---@field identification_number? string
---@field kyc_passed? boolean
---@field last_name? string
---@field nationality? string
---@field passport_number? string
---@field phone_number? string
---@field place_of_birth? string
---@field response_code? number
---@field response_message? string
---@field state? string
---@field street1? string
---@field street2? string
---@field transactionhistory_id? string
---@field zip? string

---@class OutputUpdateConsumerCreateData
---@field city? string
---@field consumer_uuid string
---@field consumerlanguage? string
---@field country? string
---@field date_of_birth? string
---@field datetime_created? string
---@field driver_licence_number? string
---@field email? string
---@field first_name? string
---@field identification_number? string
---@field kyc_passed? boolean
---@field last_name? string
---@field nationality? string
---@field passport_number? string
---@field phone_number? string
---@field place_of_birth? string
---@field response_code? number
---@field response_message? string
---@field state? string
---@field street1? string
---@field street2? string
---@field transactionhistory_id? string
---@field zip? string

---@class OutputUpdateProfile
---@field consumer_language? string
---@field email? string
---@field first_name? string
---@field last_name? string
---@field phone_number? string
---@field response_code? number
---@field response_message? string

---@class OutputUpdateProfileCreateData
---@field consumer_language? string
---@field email? string
---@field first_name? string
---@field last_name? string
---@field phone_number? string
---@field response_code? number
---@field response_message? string

---@class Version
---@field app_name? string
---@field build_date? string
---@field version? string

---@class VersionLoadMatch
---@field app_name? string
---@field build_date? string
---@field version? string

local M = {}

return M

// Typed models for the BluefinTecsUserBackoffice SDK.
//
// GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
// params (op.<name>.points[].args.params[]). Field/param types come from the
// canonical type sentinels via @voxgig/sdkgen canonToType (source of truth:
// @voxgig/apidef VALID_CANON). Do not edit by hand.

export interface OutputActivateDigitalModule {
  response_code?: number
  response_message?: string
}

export interface OutputActivateDigitalModuleCreateData {
  response_code?: number
  response_message?: string
}

export interface OutputActivatePortalModule {
  client_secret: string
  notification_email: string
  response_code?: number
  response_message?: string
}

export interface OutputActivatePortalModuleCreateData {
  client_secret: string
  notification_email: string
  response_code?: number
  response_message?: string
}

export interface OutputActivateStoreModule {
  response_code?: number
  response_message?: string
}

export interface OutputActivateStoreModuleCreateData {
  response_code?: number
  response_message?: string
}

export interface OutputActivateUser {
  consumer_uuid?: string
  response_code?: number
  response_message?: string
}

export interface OutputActivateUserCreateData {
  consumer_uuid?: string
  response_code?: number
  response_message?: string
}

export interface OutputAssignRole {
  consumer_uuid: string
  response_code?: number
  response_message?: string
  role: any[]
}

export interface OutputAssignRoleCreateData {
  consumer_uuid: string
  response_code?: number
  response_message?: string
  role: any[]
}

export interface OutputChangeLogo {
  content_as_base64: string
  mime_type: string
  response_code?: number
  response_message?: string
}

export interface OutputChangeLogoCreateData {
  content_as_base64: string
  mime_type: string
  response_code?: number
  response_message?: string
}

export interface OutputCreateMandator {
  city?: string
  country?: string
  date_of_birth?: string
  description: string
  drivers_license_number?: string
  email: string
  first_name?: string
  identification_number?: string
  last_name?: string
  login: string
  mandator?: Record<string, any>
  name: string
  passport_number?: string
  phone: string
  response_code?: number
  response_message?: string
  salutation?: string
  state?: string
  street1?: string
  street2?: string
  zip_code?: string
}

export interface OutputCreateMandatorCreateData {
  city?: string
  country?: string
  date_of_birth?: string
  description: string
  drivers_license_number?: string
  email: string
  first_name?: string
  identification_number?: string
  last_name?: string
  login: string
  mandator?: Record<string, any>
  name: string
  passport_number?: string
  phone: string
  response_code?: number
  response_message?: string
  salutation?: string
  state?: string
  street1?: string
  street2?: string
  zip_code?: string
}

export interface OutputCreateServiceUser {
  mandator_name: string
  response_code?: number
  response_message?: string
}

export interface OutputCreateServiceUserCreateData {
  mandator_name: string
  response_code?: number
  response_message?: string
}

export interface OutputDeactivateUser {
  consumer_uuid?: string
  response_code?: number
  response_message?: string
}

export interface OutputDeactivateUserCreateData {
  consumer_uuid?: string
  response_code?: number
  response_message?: string
}

export interface OutputGetKycDocument {
  case_id?: string
  encoded_data_base64?: string
  response_code?: number
  response_message?: string
}

export interface OutputGetKycDocumentCreateData {
  case_id?: string
  encoded_data_base64?: string
  response_code?: number
  response_message?: string
}

export interface OutputGetLogo {
  content_as_base64: string
  mime_type: string
  response_code?: number
  response_message?: string
}

export interface OutputGetLogoLoadMatch {
  content_as_base64?: string
  mime_type?: string
  response_code?: number
  response_message?: string
}

export interface OutputListOfAvailableRole {
  available_role?: any[]
  response_code?: number
  response_message?: string
}

export interface OutputListOfAvailableRoleCreateData {
  available_role?: any[]
  response_code?: number
  response_message?: string
}

export interface OutputListOfMandator {
  filter?: Record<string, any>
  list?: any[]
  pagination?: Record<string, any>
  response_code?: number
  response_message?: string
  sorting?: Record<string, any>
}

export interface OutputListOfMandatorCreateData {
  filter?: Record<string, any>
  list?: any[]
  pagination?: Record<string, any>
  response_code?: number
  response_message?: string
  sorting?: Record<string, any>
}

export interface OutputListOfModule {
  list?: any[]
  pagination?: Record<string, any>
  response_code?: number
  response_message?: string
}

export interface OutputListOfModuleCreateData {
  list?: any[]
  pagination?: Record<string, any>
  response_code?: number
  response_message?: string
}

export interface OutputListOfRoleGroup {
  filter?: Record<string, any>
  group_role?: any[]
  pagination?: Record<string, any>
  response_code?: number
  response_message?: string
  sorting?: Record<string, any>
}

export interface OutputListOfRoleGroupCreateData {
  filter?: Record<string, any>
  group_role?: any[]
  pagination?: Record<string, any>
  response_code?: number
  response_message?: string
  sorting?: Record<string, any>
}

export interface OutputListOfTransactionsHistory {
  filter?: Record<string, any>
  list?: any[]
  pagination?: Record<string, any>
  response_code?: number
  response_message?: string
  sorting?: Record<string, any>
}

export interface OutputListOfTransactionsHistoryCreateData {
  filter?: Record<string, any>
  list?: any[]
  pagination?: Record<string, any>
  response_code?: number
  response_message?: string
  sorting?: Record<string, any>
}

export interface OutputListOfUser {
  filter?: Record<string, any>
  list?: any[]
  pagination?: Record<string, any>
  response_code?: number
  response_message?: string
  sorting?: Record<string, any>
}

export interface OutputListOfUserCreateData {
  filter?: Record<string, any>
  list?: any[]
  pagination?: Record<string, any>
  response_code?: number
  response_message?: string
  sorting?: Record<string, any>
}

export interface OutputProvideCredential {
  mandator_name: string
  password?: string
  response_code?: number
  response_message?: string
  username?: string
}

export interface OutputProvideCredentialCreateData {
  mandator_name: string
  password?: string
  response_code?: number
  response_message?: string
  username?: string
}

export interface OutputRegisterUser {
  city?: string
  consumer_id?: string
  consumer_language?: string
  country?: string
  date_of_birth?: string
  driver_licence_number?: string
  email: string
  first_name?: string
  identification_number?: string
  last_name?: string
  login?: string
  module?: string
  passport_number?: string
  phone?: string
  response_code?: number
  response_message?: string
  salutation?: string
  state?: string
  street1?: string
  street2?: string
  zip?: string
}

export interface OutputRegisterUserCreateData {
  city?: string
  consumer_id?: string
  consumer_language?: string
  country?: string
  date_of_birth?: string
  driver_licence_number?: string
  email: string
  first_name?: string
  identification_number?: string
  last_name?: string
  login?: string
  module?: string
  passport_number?: string
  phone?: string
  response_code?: number
  response_message?: string
  salutation?: string
  state?: string
  street1?: string
  street2?: string
  zip?: string
}

export interface OutputRemoveRole {
  consumer_uuid?: string
  response_code?: number
  response_message?: string
  role?: any[]
}

export interface OutputRemoveRoleCreateData {
  consumer_uuid?: string
  response_code?: number
  response_message?: string
  role?: any[]
}

export interface OutputResendLink {
  business_registration_number?: string
  consumer_uuid: string
  email_confirmation_code?: string
  phone_number?: string
  response_code?: number
  response_message?: string
}

export interface OutputResendLinkCreateData {
  business_registration_number?: string
  consumer_uuid: string
  email_confirmation_code?: string
  phone_number?: string
  response_code?: number
  response_message?: string
}

export interface OutputResetPassword {
  consumer_uuid?: string
  phone_number?: string
  response_code?: number
  response_message?: string
}

export interface OutputResetPasswordCreateData {
  consumer_uuid?: string
  phone_number?: string
  response_code?: number
  response_message?: string
}

export interface OutputUpdateConsumer {
  city?: string
  consumer_uuid: string
  consumerlanguage?: string
  country?: string
  date_of_birth?: string
  datetime_created?: string
  driver_licence_number?: string
  email?: string
  first_name?: string
  identification_number?: string
  kyc_passed?: boolean
  last_name?: string
  nationality?: string
  passport_number?: string
  phone_number?: string
  place_of_birth?: string
  response_code?: number
  response_message?: string
  state?: string
  street1?: string
  street2?: string
  transactionhistory_id?: string
  zip?: string
}

export interface OutputUpdateConsumerCreateData {
  city?: string
  consumer_uuid: string
  consumerlanguage?: string
  country?: string
  date_of_birth?: string
  datetime_created?: string
  driver_licence_number?: string
  email?: string
  first_name?: string
  identification_number?: string
  kyc_passed?: boolean
  last_name?: string
  nationality?: string
  passport_number?: string
  phone_number?: string
  place_of_birth?: string
  response_code?: number
  response_message?: string
  state?: string
  street1?: string
  street2?: string
  transactionhistory_id?: string
  zip?: string
}

export interface OutputUpdateProfile {
  consumer_language?: string
  email?: string
  first_name?: string
  last_name?: string
  phone_number?: string
  response_code?: number
  response_message?: string
}

export interface OutputUpdateProfileCreateData {
  consumer_language?: string
  email?: string
  first_name?: string
  last_name?: string
  phone_number?: string
  response_code?: number
  response_message?: string
}

export interface Version {
  app_name?: string
  build_date?: string
  version?: string
}

export interface VersionLoadMatch {
  app_name?: string
  build_date?: string
  version?: string
}


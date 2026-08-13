// Typed models for the BluefinTecsUserBackoffice SDK.
//
// GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
// params (op.<name>.points[].args.params[]). Field/param types come from the
// canonical type sentinels via @voxgig/sdkgen canonToType (source of truth:
// @voxgig/apidef VALID_CANON). Do not edit by hand.

export interface OutputActivateDigitalModule {
  responseCode?: number
  responseMessage?: string
}

export interface OutputActivateDigitalModuleCreateData {
  responseCode?: number
  responseMessage?: string
}

export interface OutputActivatePortalModule {
  clientSecret: string
  notificationEmail: string
  responseCode?: number
  responseMessage?: string
}

export interface OutputActivatePortalModuleCreateData {
  clientSecret: string
  notificationEmail: string
  responseCode?: number
  responseMessage?: string
}

export interface OutputActivateStoreModule {
  responseCode?: number
  responseMessage?: string
}

export interface OutputActivateStoreModuleCreateData {
  responseCode?: number
  responseMessage?: string
}

export interface OutputActivateUser {
  consumerUUID?: string
  responseCode?: number
  responseMessage?: string
}

export interface OutputActivateUserCreateData {
  consumerUUID?: string
  responseCode?: number
  responseMessage?: string
}

export interface OutputAssignRole {
  consumerUUID: string
  responseCode?: number
  responseMessage?: string
  roles: any[]
}

export interface OutputAssignRoleCreateData {
  consumerUUID: string
  responseCode?: number
  responseMessage?: string
  roles: any[]
}

export interface OutputChangeLogo {
  contentAsBase64: string
  mimeType: string
  responseCode?: number
  responseMessage?: string
}

export interface OutputChangeLogoCreateData {
  contentAsBase64: string
  mimeType: string
  responseCode?: number
  responseMessage?: string
}

export interface OutputCreateMandator {
  city?: string
  country?: string
  dateOfBirth?: string
  description?: string
  driversLicenseNumber?: string
  email: string
  firstName?: string
  identificationNumber?: string
  lastName?: string
  login: string
  name?: string
  passportNumber?: string
  phone: string
  salutation?: string
  state?: string
  street1?: string
  street2?: string
  zipCode?: string
}

export interface OutputCreateMandatorCreateData {
  city?: string
  country?: string
  dateOfBirth?: string
  description?: string
  driversLicenseNumber?: string
  email: string
  firstName?: string
  identificationNumber?: string
  lastName?: string
  login: string
  name?: string
  passportNumber?: string
  phone: string
  salutation?: string
  state?: string
  street1?: string
  street2?: string
  zipCode?: string
}

export interface OutputCreateServiceUser {
  mandatorName: string
  responseCode?: number
  responseMessage?: string
}

export interface OutputCreateServiceUserCreateData {
  mandatorName: string
  responseCode?: number
  responseMessage?: string
}

export interface OutputDeactivateUser {
  consumerUUID?: string
  responseCode?: number
  responseMessage?: string
}

export interface OutputDeactivateUserCreateData {
  consumerUUID?: string
  responseCode?: number
  responseMessage?: string
}

export interface OutputGetKycDocument {
  caseID?: string
  encodedDataBase64?: string
  responseCode?: number
  responseMessage?: string
}

export interface OutputGetKycDocumentCreateData {
  caseID?: string
  encodedDataBase64?: string
  responseCode?: number
  responseMessage?: string
}

export interface OutputGetLogo {
  contentAsBase64: string
  mimeType: string
  responseCode?: number
  responseMessage?: string
}

export interface OutputGetLogoLoadMatch {
  contentAsBase64?: string
  mimeType?: string
  responseCode?: number
  responseMessage?: string
}

export interface OutputListOfAvailableRole {
  availableRoles?: any[]
  responseCode?: number
  responseMessage?: string
}

export interface OutputListOfAvailableRoleCreateData {
  availableRoles?: any[]
  responseCode?: number
  responseMessage?: string
}

export interface OutputListOfMandator {
  filter?: Record<string, any>
  list?: any[]
  pagination?: Record<string, any>
  responseCode?: number
  responseMessage?: string
  sorting?: Record<string, any>
}

export interface OutputListOfMandatorCreateData {
  filter?: Record<string, any>
  list?: any[]
  pagination?: Record<string, any>
  responseCode?: number
  responseMessage?: string
  sorting?: Record<string, any>
}

export interface OutputListOfModule {
  list?: any[]
  pagination?: Record<string, any>
  responseCode?: number
  responseMessage?: string
}

export interface OutputListOfModuleCreateData {
  list?: any[]
  pagination?: Record<string, any>
  responseCode?: number
  responseMessage?: string
}

export interface OutputListOfRoleGroup {
  filter?: Record<string, any>
  groupRoles?: any[]
  pagination?: Record<string, any>
  responseCode?: number
  responseMessage?: string
  sorting?: Record<string, any>
}

export interface OutputListOfRoleGroupCreateData {
  filter?: Record<string, any>
  groupRoles?: any[]
  pagination?: Record<string, any>
  responseCode?: number
  responseMessage?: string
  sorting?: Record<string, any>
}

export interface OutputListOfTransactionsHistory {
  filter?: Record<string, any>
  list?: any[]
  pagination?: Record<string, any>
  responseCode?: number
  responseMessage?: string
  sorting?: Record<string, any>
}

export interface OutputListOfTransactionsHistoryCreateData {
  filter?: Record<string, any>
  list?: any[]
  pagination?: Record<string, any>
  responseCode?: number
  responseMessage?: string
  sorting?: Record<string, any>
}

export interface OutputListOfUser {
  filter?: Record<string, any>
  list?: any[]
  pagination?: Record<string, any>
  responseCode?: number
  responseMessage?: string
  sorting?: Record<string, any>
}

export interface OutputListOfUserCreateData {
  filter?: Record<string, any>
  list?: any[]
  pagination?: Record<string, any>
  responseCode?: number
  responseMessage?: string
  sorting?: Record<string, any>
}

export interface OutputProvideCredential {
  mandatorName: string
  password?: string
  responseCode?: number
  responseMessage?: string
  username?: string
}

export interface OutputProvideCredentialCreateData {
  mandatorName: string
  password?: string
  responseCode?: number
  responseMessage?: string
  username?: string
}

export interface OutputRegisterUser {
  city?: string
  consumerId?: string
  consumerLanguage?: string
  country?: string
  dateOfBirth?: string
  driverLicenceNumber?: string
  email: string
  firstName?: string
  identificationNumber?: string
  lastName?: string
  login?: string
  module?: string
  passportNumber?: string
  phone?: string
  responseCode?: number
  responseMessage?: string
  salutation?: string
  state?: string
  street1?: string
  street2?: string
  zip?: string
}

export interface OutputRegisterUserCreateData {
  city?: string
  consumerId?: string
  consumerLanguage?: string
  country?: string
  dateOfBirth?: string
  driverLicenceNumber?: string
  email: string
  firstName?: string
  identificationNumber?: string
  lastName?: string
  login?: string
  module?: string
  passportNumber?: string
  phone?: string
  responseCode?: number
  responseMessage?: string
  salutation?: string
  state?: string
  street1?: string
  street2?: string
  zip?: string
}

export interface OutputRemoveRole {
  consumerUUID?: string
  responseCode?: number
  responseMessage?: string
  roles?: any[]
}

export interface OutputRemoveRoleCreateData {
  consumerUUID?: string
  responseCode?: number
  responseMessage?: string
  roles?: any[]
}

export interface OutputResendLink {
  businessRegistrationNumber?: string
  consumerUUID: string
  emailConfirmationCode?: string
  phoneNumber?: string
  responseCode?: number
  responseMessage?: string
}

export interface OutputResendLinkCreateData {
  businessRegistrationNumber?: string
  consumerUUID: string
  emailConfirmationCode?: string
  phoneNumber?: string
  responseCode?: number
  responseMessage?: string
}

export interface OutputResetPassword {
  consumerUuid?: string
  phoneNumber?: string
  responseCode?: number
  responseMessage?: string
}

export interface OutputResetPasswordCreateData {
  consumerUuid?: string
  phoneNumber?: string
  responseCode?: number
  responseMessage?: string
}

export interface OutputUpdateConsumer {
  city?: string
  consumerUuid: string
  consumerlanguage?: string
  country?: string
  dateOfBirth?: string
  datetime_created?: string
  driverLicenceNumber?: string
  email?: string
  firstName?: string
  identificationNumber?: string
  kycPassed?: boolean
  lastName?: string
  nationality?: string
  passportNumber?: string
  phoneNumber?: string
  placeOfBirth?: string
  responseCode?: number
  responseMessage?: string
  state?: string
  street1?: string
  street2?: string
  transactionhistory_id?: string
  zip?: string
}

export interface OutputUpdateConsumerCreateData {
  city?: string
  consumerUuid: string
  consumerlanguage?: string
  country?: string
  dateOfBirth?: string
  datetime_created?: string
  driverLicenceNumber?: string
  email?: string
  firstName?: string
  identificationNumber?: string
  kycPassed?: boolean
  lastName?: string
  nationality?: string
  passportNumber?: string
  phoneNumber?: string
  placeOfBirth?: string
  responseCode?: number
  responseMessage?: string
  state?: string
  street1?: string
  street2?: string
  transactionhistory_id?: string
  zip?: string
}

export interface OutputUpdateProfile {
  consumerLanguage?: string
  email?: string
  firstName?: string
  lastName?: string
  phoneNumber?: string
  responseCode?: number
  responseMessage?: string
}

export interface OutputUpdateProfileCreateData {
  consumerLanguage?: string
  email?: string
  firstName?: string
  lastName?: string
  phoneNumber?: string
  responseCode?: number
  responseMessage?: string
}

export interface Version {
  appName?: string
  buildDate?: string
  version?: string
}

export interface VersionLoadMatch {
  appName?: string
  buildDate?: string
  version?: string
}


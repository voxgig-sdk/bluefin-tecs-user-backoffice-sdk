# Typed models for the BluefinTecsUserBackoffice SDK.
#
# GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
# params (op.<name>.points[].args.params[]). Field/param types come from the
# canonical type sentinels via @voxgig/sdkgen canonToType (source of truth:
# @voxgig/apidef VALID_CANON). Do not edit by hand.
#
# These are TypedDicts, not dataclasses: the SDK ops return/accept plain dicts
# at runtime, and a TypedDict IS a dict shape, so the types match the runtime.
# Optional (req:false) keys are modelled as TypedDict key-optionality
# (total=False), split into a required base + total=False subclass when a type
# has both required and optional keys.

from __future__ import annotations

from typing import TypedDict, Any


class OutputActivateDigitalModule(TypedDict, total=False):
    responseCode: int
    responseMessage: str


class OutputActivateDigitalModuleCreateData(TypedDict, total=False):
    responseCode: int
    responseMessage: str


class OutputActivatePortalModuleRequired(TypedDict):
    clientSecret: str
    notificationEmail: str


class OutputActivatePortalModule(OutputActivatePortalModuleRequired, total=False):
    responseCode: int
    responseMessage: str


class OutputActivatePortalModuleCreateDataRequired(TypedDict):
    clientSecret: str
    notificationEmail: str


class OutputActivatePortalModuleCreateData(OutputActivatePortalModuleCreateDataRequired, total=False):
    responseCode: int
    responseMessage: str


class OutputActivateStoreModule(TypedDict, total=False):
    responseCode: int
    responseMessage: str


class OutputActivateStoreModuleCreateData(TypedDict, total=False):
    responseCode: int
    responseMessage: str


class OutputActivateUser(TypedDict, total=False):
    consumerUUID: str
    responseCode: int
    responseMessage: str


class OutputActivateUserCreateData(TypedDict, total=False):
    consumerUUID: str
    responseCode: int
    responseMessage: str


class OutputAssignRoleRequired(TypedDict):
    consumerUUID: str
    roles: list


class OutputAssignRole(OutputAssignRoleRequired, total=False):
    responseCode: int
    responseMessage: str


class OutputAssignRoleCreateDataRequired(TypedDict):
    consumerUUID: str
    roles: list


class OutputAssignRoleCreateData(OutputAssignRoleCreateDataRequired, total=False):
    responseCode: int
    responseMessage: str


class OutputChangeLogoRequired(TypedDict):
    contentAsBase64: str
    mimeType: str


class OutputChangeLogo(OutputChangeLogoRequired, total=False):
    responseCode: int
    responseMessage: str


class OutputChangeLogoCreateDataRequired(TypedDict):
    contentAsBase64: str
    mimeType: str


class OutputChangeLogoCreateData(OutputChangeLogoCreateDataRequired, total=False):
    responseCode: int
    responseMessage: str


class OutputCreateMandatorRequired(TypedDict):
    email: str
    login: str
    phone: str


class OutputCreateMandator(OutputCreateMandatorRequired, total=False):
    city: str
    country: str
    dateOfBirth: str
    description: str
    driversLicenseNumber: str
    firstName: str
    identificationNumber: str
    lastName: str
    name: str
    passportNumber: str
    salutation: str
    state: str
    street1: str
    street2: str
    zipCode: str


class OutputCreateMandatorCreateDataRequired(TypedDict):
    email: str
    login: str
    phone: str


class OutputCreateMandatorCreateData(OutputCreateMandatorCreateDataRequired, total=False):
    city: str
    country: str
    dateOfBirth: str
    description: str
    driversLicenseNumber: str
    firstName: str
    identificationNumber: str
    lastName: str
    name: str
    passportNumber: str
    salutation: str
    state: str
    street1: str
    street2: str
    zipCode: str


class OutputCreateServiceUserRequired(TypedDict):
    mandatorName: str


class OutputCreateServiceUser(OutputCreateServiceUserRequired, total=False):
    responseCode: int
    responseMessage: str


class OutputCreateServiceUserCreateDataRequired(TypedDict):
    mandatorName: str


class OutputCreateServiceUserCreateData(OutputCreateServiceUserCreateDataRequired, total=False):
    responseCode: int
    responseMessage: str


class OutputDeactivateUser(TypedDict, total=False):
    consumerUUID: str
    responseCode: int
    responseMessage: str


class OutputDeactivateUserCreateData(TypedDict, total=False):
    consumerUUID: str
    responseCode: int
    responseMessage: str


class OutputGetKycDocument(TypedDict, total=False):
    caseID: str
    encodedDataBase64: str
    responseCode: int
    responseMessage: str


class OutputGetKycDocumentCreateData(TypedDict, total=False):
    caseID: str
    encodedDataBase64: str
    responseCode: int
    responseMessage: str


class OutputGetLogoRequired(TypedDict):
    contentAsBase64: str
    mimeType: str


class OutputGetLogo(OutputGetLogoRequired, total=False):
    responseCode: int
    responseMessage: str


class OutputGetLogoLoadMatch(TypedDict, total=False):
    contentAsBase64: str
    mimeType: str
    responseCode: int
    responseMessage: str


class OutputListOfAvailableRole(TypedDict, total=False):
    availableRoles: list
    responseCode: int
    responseMessage: str


class OutputListOfAvailableRoleCreateData(TypedDict, total=False):
    availableRoles: list
    responseCode: int
    responseMessage: str


class OutputListOfMandator(TypedDict, total=False):
    filter: dict
    list: list
    pagination: dict
    responseCode: int
    responseMessage: str
    sorting: dict


class OutputListOfMandatorCreateData(TypedDict, total=False):
    filter: dict
    list: list
    pagination: dict
    responseCode: int
    responseMessage: str
    sorting: dict


class OutputListOfModule(TypedDict, total=False):
    list: list
    pagination: dict
    responseCode: int
    responseMessage: str


class OutputListOfModuleCreateData(TypedDict, total=False):
    list: list
    pagination: dict
    responseCode: int
    responseMessage: str


class OutputListOfRoleGroup(TypedDict, total=False):
    filter: dict
    groupRoles: list
    pagination: dict
    responseCode: int
    responseMessage: str
    sorting: dict


class OutputListOfRoleGroupCreateData(TypedDict, total=False):
    filter: dict
    groupRoles: list
    pagination: dict
    responseCode: int
    responseMessage: str
    sorting: dict


class OutputListOfTransactionsHistory(TypedDict, total=False):
    filter: dict
    list: list
    pagination: dict
    responseCode: int
    responseMessage: str
    sorting: dict


class OutputListOfTransactionsHistoryCreateData(TypedDict, total=False):
    filter: dict
    list: list
    pagination: dict
    responseCode: int
    responseMessage: str
    sorting: dict


class OutputListOfUser(TypedDict, total=False):
    filter: dict
    list: list
    pagination: dict
    responseCode: int
    responseMessage: str
    sorting: dict


class OutputListOfUserCreateData(TypedDict, total=False):
    filter: dict
    list: list
    pagination: dict
    responseCode: int
    responseMessage: str
    sorting: dict


class OutputProvideCredentialRequired(TypedDict):
    mandatorName: str


class OutputProvideCredential(OutputProvideCredentialRequired, total=False):
    password: str
    responseCode: int
    responseMessage: str
    username: str


class OutputProvideCredentialCreateDataRequired(TypedDict):
    mandatorName: str


class OutputProvideCredentialCreateData(OutputProvideCredentialCreateDataRequired, total=False):
    password: str
    responseCode: int
    responseMessage: str
    username: str


class OutputRegisterUserRequired(TypedDict):
    email: str


class OutputRegisterUser(OutputRegisterUserRequired, total=False):
    city: str
    consumerId: str
    consumerLanguage: str
    country: str
    dateOfBirth: str
    driverLicenceNumber: str
    firstName: str
    identificationNumber: str
    lastName: str
    login: str
    module: str
    passportNumber: str
    phone: str
    responseCode: int
    responseMessage: str
    salutation: str
    state: str
    street1: str
    street2: str
    zip: str


class OutputRegisterUserCreateDataRequired(TypedDict):
    email: str


class OutputRegisterUserCreateData(OutputRegisterUserCreateDataRequired, total=False):
    city: str
    consumerId: str
    consumerLanguage: str
    country: str
    dateOfBirth: str
    driverLicenceNumber: str
    firstName: str
    identificationNumber: str
    lastName: str
    login: str
    module: str
    passportNumber: str
    phone: str
    responseCode: int
    responseMessage: str
    salutation: str
    state: str
    street1: str
    street2: str
    zip: str


class OutputRemoveRole(TypedDict, total=False):
    consumerUUID: str
    responseCode: int
    responseMessage: str
    roles: list


class OutputRemoveRoleCreateData(TypedDict, total=False):
    consumerUUID: str
    responseCode: int
    responseMessage: str
    roles: list


class OutputResendLinkRequired(TypedDict):
    consumerUUID: str


class OutputResendLink(OutputResendLinkRequired, total=False):
    businessRegistrationNumber: str
    emailConfirmationCode: str
    phoneNumber: str
    responseCode: int
    responseMessage: str


class OutputResendLinkCreateDataRequired(TypedDict):
    consumerUUID: str


class OutputResendLinkCreateData(OutputResendLinkCreateDataRequired, total=False):
    businessRegistrationNumber: str
    emailConfirmationCode: str
    phoneNumber: str
    responseCode: int
    responseMessage: str


class OutputResetPassword(TypedDict, total=False):
    consumerUuid: str
    phoneNumber: str
    responseCode: int
    responseMessage: str


class OutputResetPasswordCreateData(TypedDict, total=False):
    consumerUuid: str
    phoneNumber: str
    responseCode: int
    responseMessage: str


class OutputUpdateConsumerRequired(TypedDict):
    consumerUuid: str


class OutputUpdateConsumer(OutputUpdateConsumerRequired, total=False):
    city: str
    consumerlanguage: str
    country: str
    dateOfBirth: str
    datetime_created: str
    driverLicenceNumber: str
    email: str
    firstName: str
    identificationNumber: str
    kycPassed: bool
    lastName: str
    nationality: str
    passportNumber: str
    phoneNumber: str
    placeOfBirth: str
    responseCode: int
    responseMessage: str
    state: str
    street1: str
    street2: str
    transactionhistory_id: str
    zip: str


class OutputUpdateConsumerCreateDataRequired(TypedDict):
    consumerUuid: str


class OutputUpdateConsumerCreateData(OutputUpdateConsumerCreateDataRequired, total=False):
    city: str
    consumerlanguage: str
    country: str
    dateOfBirth: str
    datetime_created: str
    driverLicenceNumber: str
    email: str
    firstName: str
    identificationNumber: str
    kycPassed: bool
    lastName: str
    nationality: str
    passportNumber: str
    phoneNumber: str
    placeOfBirth: str
    responseCode: int
    responseMessage: str
    state: str
    street1: str
    street2: str
    transactionhistory_id: str
    zip: str


class OutputUpdateProfile(TypedDict, total=False):
    consumerLanguage: str
    email: str
    firstName: str
    lastName: str
    phoneNumber: str
    responseCode: int
    responseMessage: str


class OutputUpdateProfileCreateData(TypedDict, total=False):
    consumerLanguage: str
    email: str
    firstName: str
    lastName: str
    phoneNumber: str
    responseCode: int
    responseMessage: str


class Version(TypedDict, total=False):
    appName: str
    buildDate: str
    version: str


class VersionLoadMatch(TypedDict, total=False):
    appName: str
    buildDate: str
    version: str

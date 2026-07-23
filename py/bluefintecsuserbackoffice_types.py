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
    response_code: int
    response_message: str


class OutputActivateDigitalModuleCreateData(TypedDict, total=False):
    response_code: int
    response_message: str


class OutputActivatePortalModuleRequired(TypedDict):
    client_secret: str
    notification_email: str


class OutputActivatePortalModule(OutputActivatePortalModuleRequired, total=False):
    response_code: int
    response_message: str


class OutputActivatePortalModuleCreateDataRequired(TypedDict):
    client_secret: str
    notification_email: str


class OutputActivatePortalModuleCreateData(OutputActivatePortalModuleCreateDataRequired, total=False):
    response_code: int
    response_message: str


class OutputActivateStoreModule(TypedDict, total=False):
    response_code: int
    response_message: str


class OutputActivateStoreModuleCreateData(TypedDict, total=False):
    response_code: int
    response_message: str


class OutputActivateUser(TypedDict, total=False):
    consumer_uuid: str
    response_code: int
    response_message: str


class OutputActivateUserCreateData(TypedDict, total=False):
    consumer_uuid: str
    response_code: int
    response_message: str


class OutputAssignRoleRequired(TypedDict):
    consumer_uuid: str
    role: list


class OutputAssignRole(OutputAssignRoleRequired, total=False):
    response_code: int
    response_message: str


class OutputAssignRoleCreateDataRequired(TypedDict):
    consumer_uuid: str
    role: list


class OutputAssignRoleCreateData(OutputAssignRoleCreateDataRequired, total=False):
    response_code: int
    response_message: str


class OutputChangeLogoRequired(TypedDict):
    content_as_base64: str
    mime_type: str


class OutputChangeLogo(OutputChangeLogoRequired, total=False):
    response_code: int
    response_message: str


class OutputChangeLogoCreateDataRequired(TypedDict):
    content_as_base64: str
    mime_type: str


class OutputChangeLogoCreateData(OutputChangeLogoCreateDataRequired, total=False):
    response_code: int
    response_message: str


class OutputCreateMandatorRequired(TypedDict):
    description: str
    email: str
    login: str
    name: str
    phone: str


class OutputCreateMandator(OutputCreateMandatorRequired, total=False):
    city: str
    country: str
    date_of_birth: str
    drivers_license_number: str
    first_name: str
    identification_number: str
    last_name: str
    mandator: dict
    passport_number: str
    response_code: int
    response_message: str
    salutation: str
    state: str
    street1: str
    street2: str
    zip_code: str


class OutputCreateMandatorCreateDataRequired(TypedDict):
    description: str
    email: str
    login: str
    name: str
    phone: str


class OutputCreateMandatorCreateData(OutputCreateMandatorCreateDataRequired, total=False):
    city: str
    country: str
    date_of_birth: str
    drivers_license_number: str
    first_name: str
    identification_number: str
    last_name: str
    mandator: dict
    passport_number: str
    response_code: int
    response_message: str
    salutation: str
    state: str
    street1: str
    street2: str
    zip_code: str


class OutputCreateServiceUserRequired(TypedDict):
    mandator_name: str


class OutputCreateServiceUser(OutputCreateServiceUserRequired, total=False):
    response_code: int
    response_message: str


class OutputCreateServiceUserCreateDataRequired(TypedDict):
    mandator_name: str


class OutputCreateServiceUserCreateData(OutputCreateServiceUserCreateDataRequired, total=False):
    response_code: int
    response_message: str


class OutputDeactivateUser(TypedDict, total=False):
    consumer_uuid: str
    response_code: int
    response_message: str


class OutputDeactivateUserCreateData(TypedDict, total=False):
    consumer_uuid: str
    response_code: int
    response_message: str


class OutputGetKycDocument(TypedDict, total=False):
    case_id: str
    encoded_data_base64: str
    response_code: int
    response_message: str


class OutputGetKycDocumentCreateData(TypedDict, total=False):
    case_id: str
    encoded_data_base64: str
    response_code: int
    response_message: str


class OutputGetLogoRequired(TypedDict):
    content_as_base64: str
    mime_type: str


class OutputGetLogo(OutputGetLogoRequired, total=False):
    response_code: int
    response_message: str


class OutputGetLogoLoadMatch(TypedDict, total=False):
    content_as_base64: str
    mime_type: str
    response_code: int
    response_message: str


class OutputListOfAvailableRole(TypedDict, total=False):
    available_role: list
    response_code: int
    response_message: str


class OutputListOfAvailableRoleCreateData(TypedDict, total=False):
    available_role: list
    response_code: int
    response_message: str


class OutputListOfMandator(TypedDict, total=False):
    filter: dict
    list: list
    pagination: dict
    response_code: int
    response_message: str
    sorting: dict


class OutputListOfMandatorCreateData(TypedDict, total=False):
    filter: dict
    list: list
    pagination: dict
    response_code: int
    response_message: str
    sorting: dict


class OutputListOfModule(TypedDict, total=False):
    list: list
    pagination: dict
    response_code: int
    response_message: str


class OutputListOfModuleCreateData(TypedDict, total=False):
    list: list
    pagination: dict
    response_code: int
    response_message: str


class OutputListOfRoleGroup(TypedDict, total=False):
    filter: dict
    group_role: list
    pagination: dict
    response_code: int
    response_message: str
    sorting: dict


class OutputListOfRoleGroupCreateData(TypedDict, total=False):
    filter: dict
    group_role: list
    pagination: dict
    response_code: int
    response_message: str
    sorting: dict


class OutputListOfTransactionsHistory(TypedDict, total=False):
    filter: dict
    list: list
    pagination: dict
    response_code: int
    response_message: str
    sorting: dict


class OutputListOfTransactionsHistoryCreateData(TypedDict, total=False):
    filter: dict
    list: list
    pagination: dict
    response_code: int
    response_message: str
    sorting: dict


class OutputListOfUser(TypedDict, total=False):
    filter: dict
    list: list
    pagination: dict
    response_code: int
    response_message: str
    sorting: dict


class OutputListOfUserCreateData(TypedDict, total=False):
    filter: dict
    list: list
    pagination: dict
    response_code: int
    response_message: str
    sorting: dict


class OutputProvideCredentialRequired(TypedDict):
    mandator_name: str


class OutputProvideCredential(OutputProvideCredentialRequired, total=False):
    password: str
    response_code: int
    response_message: str
    username: str


class OutputProvideCredentialCreateDataRequired(TypedDict):
    mandator_name: str


class OutputProvideCredentialCreateData(OutputProvideCredentialCreateDataRequired, total=False):
    password: str
    response_code: int
    response_message: str
    username: str


class OutputRegisterUserRequired(TypedDict):
    email: str


class OutputRegisterUser(OutputRegisterUserRequired, total=False):
    city: str
    consumer_id: str
    consumer_language: str
    country: str
    date_of_birth: str
    driver_licence_number: str
    first_name: str
    identification_number: str
    last_name: str
    login: str
    module: str
    passport_number: str
    phone: str
    response_code: int
    response_message: str
    salutation: str
    state: str
    street1: str
    street2: str
    zip: str


class OutputRegisterUserCreateDataRequired(TypedDict):
    email: str


class OutputRegisterUserCreateData(OutputRegisterUserCreateDataRequired, total=False):
    city: str
    consumer_id: str
    consumer_language: str
    country: str
    date_of_birth: str
    driver_licence_number: str
    first_name: str
    identification_number: str
    last_name: str
    login: str
    module: str
    passport_number: str
    phone: str
    response_code: int
    response_message: str
    salutation: str
    state: str
    street1: str
    street2: str
    zip: str


class OutputRemoveRole(TypedDict, total=False):
    consumer_uuid: str
    response_code: int
    response_message: str
    role: list


class OutputRemoveRoleCreateData(TypedDict, total=False):
    consumer_uuid: str
    response_code: int
    response_message: str
    role: list


class OutputResendLinkRequired(TypedDict):
    consumer_uuid: str


class OutputResendLink(OutputResendLinkRequired, total=False):
    business_registration_number: str
    email_confirmation_code: str
    phone_number: str
    response_code: int
    response_message: str


class OutputResendLinkCreateDataRequired(TypedDict):
    consumer_uuid: str


class OutputResendLinkCreateData(OutputResendLinkCreateDataRequired, total=False):
    business_registration_number: str
    email_confirmation_code: str
    phone_number: str
    response_code: int
    response_message: str


class OutputResetPassword(TypedDict, total=False):
    consumer_uuid: str
    phone_number: str
    response_code: int
    response_message: str


class OutputResetPasswordCreateData(TypedDict, total=False):
    consumer_uuid: str
    phone_number: str
    response_code: int
    response_message: str


class OutputUpdateConsumerRequired(TypedDict):
    consumer_uuid: str


class OutputUpdateConsumer(OutputUpdateConsumerRequired, total=False):
    city: str
    consumerlanguage: str
    country: str
    date_of_birth: str
    datetime_created: str
    driver_licence_number: str
    email: str
    first_name: str
    identification_number: str
    kyc_passed: bool
    last_name: str
    nationality: str
    passport_number: str
    phone_number: str
    place_of_birth: str
    response_code: int
    response_message: str
    state: str
    street1: str
    street2: str
    transactionhistory_id: str
    zip: str


class OutputUpdateConsumerCreateDataRequired(TypedDict):
    consumer_uuid: str


class OutputUpdateConsumerCreateData(OutputUpdateConsumerCreateDataRequired, total=False):
    city: str
    consumerlanguage: str
    country: str
    date_of_birth: str
    datetime_created: str
    driver_licence_number: str
    email: str
    first_name: str
    identification_number: str
    kyc_passed: bool
    last_name: str
    nationality: str
    passport_number: str
    phone_number: str
    place_of_birth: str
    response_code: int
    response_message: str
    state: str
    street1: str
    street2: str
    transactionhistory_id: str
    zip: str


class OutputUpdateProfile(TypedDict, total=False):
    consumer_language: str
    email: str
    first_name: str
    last_name: str
    phone_number: str
    response_code: int
    response_message: str


class OutputUpdateProfileCreateData(TypedDict, total=False):
    consumer_language: str
    email: str
    first_name: str
    last_name: str
    phone_number: str
    response_code: int
    response_message: str


class Version(TypedDict, total=False):
    app_name: str
    build_date: str
    version: str


class VersionLoadMatch(TypedDict, total=False):
    app_name: str
    build_date: str
    version: str

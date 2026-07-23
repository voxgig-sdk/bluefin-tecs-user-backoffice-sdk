<?php
declare(strict_types=1);

// Typed models for the BluefinTecsUserBackoffice SDK.
//
// GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
// params (op.<name>.points[].args.params[]). Field/param types come from the
// canonical type sentinels via @voxgig/sdkgen canonToType (source of truth:
// @voxgig/apidef VALID_CANON). Do not edit by hand.
//
// These are documentation-grade value objects (PHP 8 typed properties),
// registered on the composer classmap autoload. The SDK boundary exchanges
// assoc-arrays; these classes name the shapes for tooling and typed callers.

/** OutputActivateDigitalModule entity data model. */
class OutputActivateDigitalModule
{
    public ?int $response_code = null;
    public ?string $response_message = null;
}

/** Request payload for OutputActivateDigitalModule#create. */
class OutputActivateDigitalModuleCreateData
{
    public ?int $response_code = null;
    public ?string $response_message = null;
}

/** OutputActivatePortalModule entity data model. */
class OutputActivatePortalModule
{
    public string $client_secret;
    public string $notification_email;
    public ?int $response_code = null;
    public ?string $response_message = null;
}

/** Request payload for OutputActivatePortalModule#create. */
class OutputActivatePortalModuleCreateData
{
    public string $client_secret;
    public string $notification_email;
    public ?int $response_code = null;
    public ?string $response_message = null;
}

/** OutputActivateStoreModule entity data model. */
class OutputActivateStoreModule
{
    public ?int $response_code = null;
    public ?string $response_message = null;
}

/** Request payload for OutputActivateStoreModule#create. */
class OutputActivateStoreModuleCreateData
{
    public ?int $response_code = null;
    public ?string $response_message = null;
}

/** OutputActivateUser entity data model. */
class OutputActivateUser
{
    public ?string $consumer_uuid = null;
    public ?int $response_code = null;
    public ?string $response_message = null;
}

/** Request payload for OutputActivateUser#create. */
class OutputActivateUserCreateData
{
    public ?string $consumer_uuid = null;
    public ?int $response_code = null;
    public ?string $response_message = null;
}

/** OutputAssignRole entity data model. */
class OutputAssignRole
{
    public string $consumer_uuid;
    public ?int $response_code = null;
    public ?string $response_message = null;
    public array $role;
}

/** Request payload for OutputAssignRole#create. */
class OutputAssignRoleCreateData
{
    public string $consumer_uuid;
    public ?int $response_code = null;
    public ?string $response_message = null;
    public array $role;
}

/** OutputChangeLogo entity data model. */
class OutputChangeLogo
{
    public string $content_as_base64;
    public string $mime_type;
    public ?int $response_code = null;
    public ?string $response_message = null;
}

/** Request payload for OutputChangeLogo#create. */
class OutputChangeLogoCreateData
{
    public string $content_as_base64;
    public string $mime_type;
    public ?int $response_code = null;
    public ?string $response_message = null;
}

/** OutputCreateMandator entity data model. */
class OutputCreateMandator
{
    public ?string $city = null;
    public ?string $country = null;
    public ?string $date_of_birth = null;
    public string $description;
    public ?string $drivers_license_number = null;
    public string $email;
    public ?string $first_name = null;
    public ?string $identification_number = null;
    public ?string $last_name = null;
    public string $login;
    public ?array $mandator = null;
    public string $name;
    public ?string $passport_number = null;
    public string $phone;
    public ?int $response_code = null;
    public ?string $response_message = null;
    public ?string $salutation = null;
    public ?string $state = null;
    public ?string $street1 = null;
    public ?string $street2 = null;
    public ?string $zip_code = null;
}

/** Request payload for OutputCreateMandator#create. */
class OutputCreateMandatorCreateData
{
    public ?string $city = null;
    public ?string $country = null;
    public ?string $date_of_birth = null;
    public string $description;
    public ?string $drivers_license_number = null;
    public string $email;
    public ?string $first_name = null;
    public ?string $identification_number = null;
    public ?string $last_name = null;
    public string $login;
    public ?array $mandator = null;
    public string $name;
    public ?string $passport_number = null;
    public string $phone;
    public ?int $response_code = null;
    public ?string $response_message = null;
    public ?string $salutation = null;
    public ?string $state = null;
    public ?string $street1 = null;
    public ?string $street2 = null;
    public ?string $zip_code = null;
}

/** OutputCreateServiceUser entity data model. */
class OutputCreateServiceUser
{
    public string $mandator_name;
    public ?int $response_code = null;
    public ?string $response_message = null;
}

/** Request payload for OutputCreateServiceUser#create. */
class OutputCreateServiceUserCreateData
{
    public string $mandator_name;
    public ?int $response_code = null;
    public ?string $response_message = null;
}

/** OutputDeactivateUser entity data model. */
class OutputDeactivateUser
{
    public ?string $consumer_uuid = null;
    public ?int $response_code = null;
    public ?string $response_message = null;
}

/** Request payload for OutputDeactivateUser#create. */
class OutputDeactivateUserCreateData
{
    public ?string $consumer_uuid = null;
    public ?int $response_code = null;
    public ?string $response_message = null;
}

/** OutputGetKycDocument entity data model. */
class OutputGetKycDocument
{
    public ?string $case_id = null;
    public ?string $encoded_data_base64 = null;
    public ?int $response_code = null;
    public ?string $response_message = null;
}

/** Request payload for OutputGetKycDocument#create. */
class OutputGetKycDocumentCreateData
{
    public ?string $case_id = null;
    public ?string $encoded_data_base64 = null;
    public ?int $response_code = null;
    public ?string $response_message = null;
}

/** OutputGetLogo entity data model. */
class OutputGetLogo
{
    public string $content_as_base64;
    public string $mime_type;
    public ?int $response_code = null;
    public ?string $response_message = null;
}

/** Request payload for OutputGetLogo#load. */
class OutputGetLogoLoadMatch
{
    public ?string $content_as_base64 = null;
    public ?string $mime_type = null;
    public ?int $response_code = null;
    public ?string $response_message = null;
}

/** OutputListOfAvailableRole entity data model. */
class OutputListOfAvailableRole
{
    public ?array $available_role = null;
    public ?int $response_code = null;
    public ?string $response_message = null;
}

/** Request payload for OutputListOfAvailableRole#create. */
class OutputListOfAvailableRoleCreateData
{
    public ?array $available_role = null;
    public ?int $response_code = null;
    public ?string $response_message = null;
}

/** OutputListOfMandator entity data model. */
class OutputListOfMandator
{
    public ?array $filter = null;
    public ?array $list = null;
    public ?array $pagination = null;
    public ?int $response_code = null;
    public ?string $response_message = null;
    public ?array $sorting = null;
}

/** Request payload for OutputListOfMandator#create. */
class OutputListOfMandatorCreateData
{
    public ?array $filter = null;
    public ?array $list = null;
    public ?array $pagination = null;
    public ?int $response_code = null;
    public ?string $response_message = null;
    public ?array $sorting = null;
}

/** OutputListOfModule entity data model. */
class OutputListOfModule
{
    public ?array $list = null;
    public ?array $pagination = null;
    public ?int $response_code = null;
    public ?string $response_message = null;
}

/** Request payload for OutputListOfModule#create. */
class OutputListOfModuleCreateData
{
    public ?array $list = null;
    public ?array $pagination = null;
    public ?int $response_code = null;
    public ?string $response_message = null;
}

/** OutputListOfRoleGroup entity data model. */
class OutputListOfRoleGroup
{
    public ?array $filter = null;
    public ?array $group_role = null;
    public ?array $pagination = null;
    public ?int $response_code = null;
    public ?string $response_message = null;
    public ?array $sorting = null;
}

/** Request payload for OutputListOfRoleGroup#create. */
class OutputListOfRoleGroupCreateData
{
    public ?array $filter = null;
    public ?array $group_role = null;
    public ?array $pagination = null;
    public ?int $response_code = null;
    public ?string $response_message = null;
    public ?array $sorting = null;
}

/** OutputListOfTransactionsHistory entity data model. */
class OutputListOfTransactionsHistory
{
    public ?array $filter = null;
    public ?array $list = null;
    public ?array $pagination = null;
    public ?int $response_code = null;
    public ?string $response_message = null;
    public ?array $sorting = null;
}

/** Request payload for OutputListOfTransactionsHistory#create. */
class OutputListOfTransactionsHistoryCreateData
{
    public ?array $filter = null;
    public ?array $list = null;
    public ?array $pagination = null;
    public ?int $response_code = null;
    public ?string $response_message = null;
    public ?array $sorting = null;
}

/** OutputListOfUser entity data model. */
class OutputListOfUser
{
    public ?array $filter = null;
    public ?array $list = null;
    public ?array $pagination = null;
    public ?int $response_code = null;
    public ?string $response_message = null;
    public ?array $sorting = null;
}

/** Request payload for OutputListOfUser#create. */
class OutputListOfUserCreateData
{
    public ?array $filter = null;
    public ?array $list = null;
    public ?array $pagination = null;
    public ?int $response_code = null;
    public ?string $response_message = null;
    public ?array $sorting = null;
}

/** OutputProvideCredential entity data model. */
class OutputProvideCredential
{
    public string $mandator_name;
    public ?string $password = null;
    public ?int $response_code = null;
    public ?string $response_message = null;
    public ?string $username = null;
}

/** Request payload for OutputProvideCredential#create. */
class OutputProvideCredentialCreateData
{
    public string $mandator_name;
    public ?string $password = null;
    public ?int $response_code = null;
    public ?string $response_message = null;
    public ?string $username = null;
}

/** OutputRegisterUser entity data model. */
class OutputRegisterUser
{
    public ?string $city = null;
    public ?string $consumer_id = null;
    public ?string $consumer_language = null;
    public ?string $country = null;
    public ?string $date_of_birth = null;
    public ?string $driver_licence_number = null;
    public string $email;
    public ?string $first_name = null;
    public ?string $identification_number = null;
    public ?string $last_name = null;
    public ?string $login = null;
    public ?string $module = null;
    public ?string $passport_number = null;
    public ?string $phone = null;
    public ?int $response_code = null;
    public ?string $response_message = null;
    public ?string $salutation = null;
    public ?string $state = null;
    public ?string $street1 = null;
    public ?string $street2 = null;
    public ?string $zip = null;
}

/** Request payload for OutputRegisterUser#create. */
class OutputRegisterUserCreateData
{
    public ?string $city = null;
    public ?string $consumer_id = null;
    public ?string $consumer_language = null;
    public ?string $country = null;
    public ?string $date_of_birth = null;
    public ?string $driver_licence_number = null;
    public string $email;
    public ?string $first_name = null;
    public ?string $identification_number = null;
    public ?string $last_name = null;
    public ?string $login = null;
    public ?string $module = null;
    public ?string $passport_number = null;
    public ?string $phone = null;
    public ?int $response_code = null;
    public ?string $response_message = null;
    public ?string $salutation = null;
    public ?string $state = null;
    public ?string $street1 = null;
    public ?string $street2 = null;
    public ?string $zip = null;
}

/** OutputRemoveRole entity data model. */
class OutputRemoveRole
{
    public ?string $consumer_uuid = null;
    public ?int $response_code = null;
    public ?string $response_message = null;
    public ?array $role = null;
}

/** Request payload for OutputRemoveRole#create. */
class OutputRemoveRoleCreateData
{
    public ?string $consumer_uuid = null;
    public ?int $response_code = null;
    public ?string $response_message = null;
    public ?array $role = null;
}

/** OutputResendLink entity data model. */
class OutputResendLink
{
    public ?string $business_registration_number = null;
    public string $consumer_uuid;
    public ?string $email_confirmation_code = null;
    public ?string $phone_number = null;
    public ?int $response_code = null;
    public ?string $response_message = null;
}

/** Request payload for OutputResendLink#create. */
class OutputResendLinkCreateData
{
    public ?string $business_registration_number = null;
    public string $consumer_uuid;
    public ?string $email_confirmation_code = null;
    public ?string $phone_number = null;
    public ?int $response_code = null;
    public ?string $response_message = null;
}

/** OutputResetPassword entity data model. */
class OutputResetPassword
{
    public ?string $consumer_uuid = null;
    public ?string $phone_number = null;
    public ?int $response_code = null;
    public ?string $response_message = null;
}

/** Request payload for OutputResetPassword#create. */
class OutputResetPasswordCreateData
{
    public ?string $consumer_uuid = null;
    public ?string $phone_number = null;
    public ?int $response_code = null;
    public ?string $response_message = null;
}

/** OutputUpdateConsumer entity data model. */
class OutputUpdateConsumer
{
    public ?string $city = null;
    public string $consumer_uuid;
    public ?string $consumerlanguage = null;
    public ?string $country = null;
    public ?string $date_of_birth = null;
    public ?string $datetime_created = null;
    public ?string $driver_licence_number = null;
    public ?string $email = null;
    public ?string $first_name = null;
    public ?string $identification_number = null;
    public ?bool $kyc_passed = null;
    public ?string $last_name = null;
    public ?string $nationality = null;
    public ?string $passport_number = null;
    public ?string $phone_number = null;
    public ?string $place_of_birth = null;
    public ?int $response_code = null;
    public ?string $response_message = null;
    public ?string $state = null;
    public ?string $street1 = null;
    public ?string $street2 = null;
    public ?string $transactionhistory_id = null;
    public ?string $zip = null;
}

/** Request payload for OutputUpdateConsumer#create. */
class OutputUpdateConsumerCreateData
{
    public ?string $city = null;
    public string $consumer_uuid;
    public ?string $consumerlanguage = null;
    public ?string $country = null;
    public ?string $date_of_birth = null;
    public ?string $datetime_created = null;
    public ?string $driver_licence_number = null;
    public ?string $email = null;
    public ?string $first_name = null;
    public ?string $identification_number = null;
    public ?bool $kyc_passed = null;
    public ?string $last_name = null;
    public ?string $nationality = null;
    public ?string $passport_number = null;
    public ?string $phone_number = null;
    public ?string $place_of_birth = null;
    public ?int $response_code = null;
    public ?string $response_message = null;
    public ?string $state = null;
    public ?string $street1 = null;
    public ?string $street2 = null;
    public ?string $transactionhistory_id = null;
    public ?string $zip = null;
}

/** OutputUpdateProfile entity data model. */
class OutputUpdateProfile
{
    public ?string $consumer_language = null;
    public ?string $email = null;
    public ?string $first_name = null;
    public ?string $last_name = null;
    public ?string $phone_number = null;
    public ?int $response_code = null;
    public ?string $response_message = null;
}

/** Request payload for OutputUpdateProfile#create. */
class OutputUpdateProfileCreateData
{
    public ?string $consumer_language = null;
    public ?string $email = null;
    public ?string $first_name = null;
    public ?string $last_name = null;
    public ?string $phone_number = null;
    public ?int $response_code = null;
    public ?string $response_message = null;
}

/** Version entity data model. */
class Version
{
    public ?string $app_name = null;
    public ?string $build_date = null;
    public ?string $version = null;
}

/** Request payload for Version#load. */
class VersionLoadMatch
{
    public ?string $app_name = null;
    public ?string $build_date = null;
    public ?string $version = null;
}


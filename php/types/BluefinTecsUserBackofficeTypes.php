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
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
}

/** Request payload for OutputActivateDigitalModule#create. */
class OutputActivateDigitalModuleCreateData
{
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
}

/** OutputActivatePortalModule entity data model. */
class OutputActivatePortalModule
{
    public string $clientSecret;
    public string $notificationEmail;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
}

/** Request payload for OutputActivatePortalModule#create. */
class OutputActivatePortalModuleCreateData
{
    public string $clientSecret;
    public string $notificationEmail;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
}

/** OutputActivateStoreModule entity data model. */
class OutputActivateStoreModule
{
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
}

/** Request payload for OutputActivateStoreModule#create. */
class OutputActivateStoreModuleCreateData
{
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
}

/** OutputActivateUser entity data model. */
class OutputActivateUser
{
    public ?string $consumerUUID = null;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
}

/** Request payload for OutputActivateUser#create. */
class OutputActivateUserCreateData
{
    public ?string $consumerUUID = null;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
}

/** OutputAssignRole entity data model. */
class OutputAssignRole
{
    public string $consumerUUID;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
    public array $roles;
}

/** Request payload for OutputAssignRole#create. */
class OutputAssignRoleCreateData
{
    public string $consumerUUID;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
    public array $roles;
}

/** OutputChangeLogo entity data model. */
class OutputChangeLogo
{
    public string $contentAsBase64;
    public string $mimeType;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
}

/** Request payload for OutputChangeLogo#create. */
class OutputChangeLogoCreateData
{
    public string $contentAsBase64;
    public string $mimeType;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
}

/** OutputCreateMandator entity data model. */
class OutputCreateMandator
{
    public ?string $city = null;
    public ?string $country = null;
    public ?string $dateOfBirth = null;
    public ?string $description = null;
    public ?string $driversLicenseNumber = null;
    public string $email;
    public ?string $firstName = null;
    public ?string $identificationNumber = null;
    public ?string $lastName = null;
    public string $login;
    public ?string $name = null;
    public ?string $passportNumber = null;
    public string $phone;
    public ?string $salutation = null;
    public ?string $state = null;
    public ?string $street1 = null;
    public ?string $street2 = null;
    public ?string $zipCode = null;
}

/** Request payload for OutputCreateMandator#create. */
class OutputCreateMandatorCreateData
{
    public ?string $city = null;
    public ?string $country = null;
    public ?string $dateOfBirth = null;
    public ?string $description = null;
    public ?string $driversLicenseNumber = null;
    public string $email;
    public ?string $firstName = null;
    public ?string $identificationNumber = null;
    public ?string $lastName = null;
    public string $login;
    public ?string $name = null;
    public ?string $passportNumber = null;
    public string $phone;
    public ?string $salutation = null;
    public ?string $state = null;
    public ?string $street1 = null;
    public ?string $street2 = null;
    public ?string $zipCode = null;
}

/** OutputCreateServiceUser entity data model. */
class OutputCreateServiceUser
{
    public string $mandatorName;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
}

/** Request payload for OutputCreateServiceUser#create. */
class OutputCreateServiceUserCreateData
{
    public string $mandatorName;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
}

/** OutputDeactivateUser entity data model. */
class OutputDeactivateUser
{
    public ?string $consumerUUID = null;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
}

/** Request payload for OutputDeactivateUser#create. */
class OutputDeactivateUserCreateData
{
    public ?string $consumerUUID = null;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
}

/** OutputGetKycDocument entity data model. */
class OutputGetKycDocument
{
    public ?string $caseID = null;
    public ?string $encodedDataBase64 = null;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
}

/** Request payload for OutputGetKycDocument#create. */
class OutputGetKycDocumentCreateData
{
    public ?string $caseID = null;
    public ?string $encodedDataBase64 = null;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
}

/** OutputGetLogo entity data model. */
class OutputGetLogo
{
    public string $contentAsBase64;
    public string $mimeType;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
}

/** Request payload for OutputGetLogo#load. */
class OutputGetLogoLoadMatch
{
    public ?string $contentAsBase64 = null;
    public ?string $mimeType = null;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
}

/** OutputListOfAvailableRole entity data model. */
class OutputListOfAvailableRole
{
    public ?array $availableRoles = null;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
}

/** Request payload for OutputListOfAvailableRole#create. */
class OutputListOfAvailableRoleCreateData
{
    public ?array $availableRoles = null;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
}

/** OutputListOfMandator entity data model. */
class OutputListOfMandator
{
    public ?array $filter = null;
    public ?array $list = null;
    public ?array $pagination = null;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
    public ?array $sorting = null;
}

/** Request payload for OutputListOfMandator#create. */
class OutputListOfMandatorCreateData
{
    public ?array $filter = null;
    public ?array $list = null;
    public ?array $pagination = null;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
    public ?array $sorting = null;
}

/** OutputListOfModule entity data model. */
class OutputListOfModule
{
    public ?array $list = null;
    public ?array $pagination = null;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
}

/** Request payload for OutputListOfModule#create. */
class OutputListOfModuleCreateData
{
    public ?array $list = null;
    public ?array $pagination = null;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
}

/** OutputListOfRoleGroup entity data model. */
class OutputListOfRoleGroup
{
    public ?array $filter = null;
    public ?array $groupRoles = null;
    public ?array $pagination = null;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
    public ?array $sorting = null;
}

/** Request payload for OutputListOfRoleGroup#create. */
class OutputListOfRoleGroupCreateData
{
    public ?array $filter = null;
    public ?array $groupRoles = null;
    public ?array $pagination = null;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
    public ?array $sorting = null;
}

/** OutputListOfTransactionsHistory entity data model. */
class OutputListOfTransactionsHistory
{
    public ?array $filter = null;
    public ?array $list = null;
    public ?array $pagination = null;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
    public ?array $sorting = null;
}

/** Request payload for OutputListOfTransactionsHistory#create. */
class OutputListOfTransactionsHistoryCreateData
{
    public ?array $filter = null;
    public ?array $list = null;
    public ?array $pagination = null;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
    public ?array $sorting = null;
}

/** OutputListOfUser entity data model. */
class OutputListOfUser
{
    public ?array $filter = null;
    public ?array $list = null;
    public ?array $pagination = null;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
    public ?array $sorting = null;
}

/** Request payload for OutputListOfUser#create. */
class OutputListOfUserCreateData
{
    public ?array $filter = null;
    public ?array $list = null;
    public ?array $pagination = null;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
    public ?array $sorting = null;
}

/** OutputProvideCredential entity data model. */
class OutputProvideCredential
{
    public string $mandatorName;
    public ?string $password = null;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
    public ?string $username = null;
}

/** Request payload for OutputProvideCredential#create. */
class OutputProvideCredentialCreateData
{
    public string $mandatorName;
    public ?string $password = null;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
    public ?string $username = null;
}

/** OutputRegisterUser entity data model. */
class OutputRegisterUser
{
    public ?string $city = null;
    public ?string $consumerId = null;
    public ?string $consumerLanguage = null;
    public ?string $country = null;
    public ?string $dateOfBirth = null;
    public ?string $driverLicenceNumber = null;
    public string $email;
    public ?string $firstName = null;
    public ?string $identificationNumber = null;
    public ?string $lastName = null;
    public ?string $login = null;
    public ?string $module = null;
    public ?string $passportNumber = null;
    public ?string $phone = null;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
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
    public ?string $consumerId = null;
    public ?string $consumerLanguage = null;
    public ?string $country = null;
    public ?string $dateOfBirth = null;
    public ?string $driverLicenceNumber = null;
    public string $email;
    public ?string $firstName = null;
    public ?string $identificationNumber = null;
    public ?string $lastName = null;
    public ?string $login = null;
    public ?string $module = null;
    public ?string $passportNumber = null;
    public ?string $phone = null;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
    public ?string $salutation = null;
    public ?string $state = null;
    public ?string $street1 = null;
    public ?string $street2 = null;
    public ?string $zip = null;
}

/** OutputRemoveRole entity data model. */
class OutputRemoveRole
{
    public ?string $consumerUUID = null;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
    public ?array $roles = null;
}

/** Request payload for OutputRemoveRole#create. */
class OutputRemoveRoleCreateData
{
    public ?string $consumerUUID = null;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
    public ?array $roles = null;
}

/** OutputResendLink entity data model. */
class OutputResendLink
{
    public ?string $businessRegistrationNumber = null;
    public string $consumerUUID;
    public ?string $emailConfirmationCode = null;
    public ?string $phoneNumber = null;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
}

/** Request payload for OutputResendLink#create. */
class OutputResendLinkCreateData
{
    public ?string $businessRegistrationNumber = null;
    public string $consumerUUID;
    public ?string $emailConfirmationCode = null;
    public ?string $phoneNumber = null;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
}

/** OutputResetPassword entity data model. */
class OutputResetPassword
{
    public ?string $consumerUuid = null;
    public ?string $phoneNumber = null;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
}

/** Request payload for OutputResetPassword#create. */
class OutputResetPasswordCreateData
{
    public ?string $consumerUuid = null;
    public ?string $phoneNumber = null;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
}

/** OutputUpdateConsumer entity data model. */
class OutputUpdateConsumer
{
    public ?string $city = null;
    public string $consumerUuid;
    public ?string $consumerlanguage = null;
    public ?string $country = null;
    public ?string $dateOfBirth = null;
    public ?string $datetime_created = null;
    public ?string $driverLicenceNumber = null;
    public ?string $email = null;
    public ?string $firstName = null;
    public ?string $identificationNumber = null;
    public ?bool $kycPassed = null;
    public ?string $lastName = null;
    public ?string $nationality = null;
    public ?string $passportNumber = null;
    public ?string $phoneNumber = null;
    public ?string $placeOfBirth = null;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
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
    public string $consumerUuid;
    public ?string $consumerlanguage = null;
    public ?string $country = null;
    public ?string $dateOfBirth = null;
    public ?string $datetime_created = null;
    public ?string $driverLicenceNumber = null;
    public ?string $email = null;
    public ?string $firstName = null;
    public ?string $identificationNumber = null;
    public ?bool $kycPassed = null;
    public ?string $lastName = null;
    public ?string $nationality = null;
    public ?string $passportNumber = null;
    public ?string $phoneNumber = null;
    public ?string $placeOfBirth = null;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
    public ?string $state = null;
    public ?string $street1 = null;
    public ?string $street2 = null;
    public ?string $transactionhistory_id = null;
    public ?string $zip = null;
}

/** OutputUpdateProfile entity data model. */
class OutputUpdateProfile
{
    public ?string $consumerLanguage = null;
    public ?string $email = null;
    public ?string $firstName = null;
    public ?string $lastName = null;
    public ?string $phoneNumber = null;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
}

/** Request payload for OutputUpdateProfile#create. */
class OutputUpdateProfileCreateData
{
    public ?string $consumerLanguage = null;
    public ?string $email = null;
    public ?string $firstName = null;
    public ?string $lastName = null;
    public ?string $phoneNumber = null;
    public ?int $responseCode = null;
    public ?string $responseMessage = null;
}

/** Version entity data model. */
class Version
{
    public ?string $appName = null;
    public ?string $buildDate = null;
    public ?string $version = null;
}

/** Request payload for Version#load. */
class VersionLoadMatch
{
    public ?string $appName = null;
    public ?string $buildDate = null;
    public ?string $version = null;
}


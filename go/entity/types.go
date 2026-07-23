// Typed models for the BluefinTecsUserBackoffice SDK.
//
// GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
// params (op.<name>.points[].args.params[]). Field/param types come from the
// canonical type sentinels via @voxgig/sdkgen canonToType (source of truth:
// @voxgig/apidef VALID_CANON). Do not edit by hand.
package entity

import "encoding/json"

// OutputActivateDigitalModule is the typed data model for the output_activate_digital_module entity.
type OutputActivateDigitalModule struct {
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
}

// OutputActivateDigitalModuleCreateData is the typed request payload for OutputActivateDigitalModule.CreateTyped.
type OutputActivateDigitalModuleCreateData struct {
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
}

// OutputActivatePortalModule is the typed data model for the output_activate_portal_module entity.
type OutputActivatePortalModule struct {
	ClientSecret string `json:"client_secret"`
	NotificationEmail string `json:"notification_email"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
}

// OutputActivatePortalModuleCreateData is the typed request payload for OutputActivatePortalModule.CreateTyped.
type OutputActivatePortalModuleCreateData struct {
	ClientSecret string `json:"client_secret"`
	NotificationEmail string `json:"notification_email"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
}

// OutputActivateStoreModule is the typed data model for the output_activate_store_module entity.
type OutputActivateStoreModule struct {
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
}

// OutputActivateStoreModuleCreateData is the typed request payload for OutputActivateStoreModule.CreateTyped.
type OutputActivateStoreModuleCreateData struct {
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
}

// OutputActivateUser is the typed data model for the output_activate_user entity.
type OutputActivateUser struct {
	ConsumerUuid *string `json:"consumer_uuid,omitempty"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
}

// OutputActivateUserCreateData is the typed request payload for OutputActivateUser.CreateTyped.
type OutputActivateUserCreateData struct {
	ConsumerUuid *string `json:"consumer_uuid,omitempty"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
}

// OutputAssignRole is the typed data model for the output_assign_role entity.
type OutputAssignRole struct {
	ConsumerUuid string `json:"consumer_uuid"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
	Role []any `json:"role"`
}

// OutputAssignRoleCreateData is the typed request payload for OutputAssignRole.CreateTyped.
type OutputAssignRoleCreateData struct {
	ConsumerUuid string `json:"consumer_uuid"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
	Role []any `json:"role"`
}

// OutputChangeLogo is the typed data model for the output_change_logo entity.
type OutputChangeLogo struct {
	ContentAsBase64 string `json:"content_as_base64"`
	MimeType string `json:"mime_type"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
}

// OutputChangeLogoCreateData is the typed request payload for OutputChangeLogo.CreateTyped.
type OutputChangeLogoCreateData struct {
	ContentAsBase64 string `json:"content_as_base64"`
	MimeType string `json:"mime_type"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
}

// OutputCreateMandator is the typed data model for the output_create_mandator entity.
type OutputCreateMandator struct {
	City *string `json:"city,omitempty"`
	Country *string `json:"country,omitempty"`
	DateOfBirth *string `json:"date_of_birth,omitempty"`
	Description string `json:"description"`
	DriversLicenseNumber *string `json:"drivers_license_number,omitempty"`
	Email string `json:"email"`
	FirstName *string `json:"first_name,omitempty"`
	IdentificationNumber *string `json:"identification_number,omitempty"`
	LastName *string `json:"last_name,omitempty"`
	Login string `json:"login"`
	Mandator *map[string]any `json:"mandator,omitempty"`
	Name string `json:"name"`
	PassportNumber *string `json:"passport_number,omitempty"`
	Phone string `json:"phone"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
	Salutation *string `json:"salutation,omitempty"`
	State *string `json:"state,omitempty"`
	Street1 *string `json:"street1,omitempty"`
	Street2 *string `json:"street2,omitempty"`
	ZipCode *string `json:"zip_code,omitempty"`
}

// OutputCreateMandatorCreateData is the typed request payload for OutputCreateMandator.CreateTyped.
type OutputCreateMandatorCreateData struct {
	City *string `json:"city,omitempty"`
	Country *string `json:"country,omitempty"`
	DateOfBirth *string `json:"date_of_birth,omitempty"`
	Description string `json:"description"`
	DriversLicenseNumber *string `json:"drivers_license_number,omitempty"`
	Email string `json:"email"`
	FirstName *string `json:"first_name,omitempty"`
	IdentificationNumber *string `json:"identification_number,omitempty"`
	LastName *string `json:"last_name,omitempty"`
	Login string `json:"login"`
	Mandator *map[string]any `json:"mandator,omitempty"`
	Name string `json:"name"`
	PassportNumber *string `json:"passport_number,omitempty"`
	Phone string `json:"phone"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
	Salutation *string `json:"salutation,omitempty"`
	State *string `json:"state,omitempty"`
	Street1 *string `json:"street1,omitempty"`
	Street2 *string `json:"street2,omitempty"`
	ZipCode *string `json:"zip_code,omitempty"`
}

// OutputCreateServiceUser is the typed data model for the output_create_service_user entity.
type OutputCreateServiceUser struct {
	MandatorName string `json:"mandator_name"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
}

// OutputCreateServiceUserCreateData is the typed request payload for OutputCreateServiceUser.CreateTyped.
type OutputCreateServiceUserCreateData struct {
	MandatorName string `json:"mandator_name"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
}

// OutputDeactivateUser is the typed data model for the output_deactivate_user entity.
type OutputDeactivateUser struct {
	ConsumerUuid *string `json:"consumer_uuid,omitempty"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
}

// OutputDeactivateUserCreateData is the typed request payload for OutputDeactivateUser.CreateTyped.
type OutputDeactivateUserCreateData struct {
	ConsumerUuid *string `json:"consumer_uuid,omitempty"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
}

// OutputGetKycDocument is the typed data model for the output_get_kyc_document entity.
type OutputGetKycDocument struct {
	CaseId *string `json:"case_id,omitempty"`
	EncodedDataBase64 *string `json:"encoded_data_base64,omitempty"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
}

// OutputGetKycDocumentCreateData is the typed request payload for OutputGetKycDocument.CreateTyped.
type OutputGetKycDocumentCreateData struct {
	CaseId *string `json:"case_id,omitempty"`
	EncodedDataBase64 *string `json:"encoded_data_base64,omitempty"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
}

// OutputGetLogo is the typed data model for the output_get_logo entity.
type OutputGetLogo struct {
	ContentAsBase64 string `json:"content_as_base64"`
	MimeType string `json:"mime_type"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
}

// OutputGetLogoLoadMatch is the typed request payload for OutputGetLogo.LoadTyped.
type OutputGetLogoLoadMatch struct {
	ContentAsBase64 *string `json:"content_as_base64,omitempty"`
	MimeType *string `json:"mime_type,omitempty"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
}

// OutputListOfAvailableRole is the typed data model for the output_list_of_available_role entity.
type OutputListOfAvailableRole struct {
	AvailableRole *[]any `json:"available_role,omitempty"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
}

// OutputListOfAvailableRoleCreateData is the typed request payload for OutputListOfAvailableRole.CreateTyped.
type OutputListOfAvailableRoleCreateData struct {
	AvailableRole *[]any `json:"available_role,omitempty"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
}

// OutputListOfMandator is the typed data model for the output_list_of_mandator entity.
type OutputListOfMandator struct {
	Filter *map[string]any `json:"filter,omitempty"`
	List *[]any `json:"list,omitempty"`
	Pagination *map[string]any `json:"pagination,omitempty"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
	Sorting *map[string]any `json:"sorting,omitempty"`
}

// OutputListOfMandatorCreateData is the typed request payload for OutputListOfMandator.CreateTyped.
type OutputListOfMandatorCreateData struct {
	Filter *map[string]any `json:"filter,omitempty"`
	List *[]any `json:"list,omitempty"`
	Pagination *map[string]any `json:"pagination,omitempty"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
	Sorting *map[string]any `json:"sorting,omitempty"`
}

// OutputListOfModule is the typed data model for the output_list_of_module entity.
type OutputListOfModule struct {
	List *[]any `json:"list,omitempty"`
	Pagination *map[string]any `json:"pagination,omitempty"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
}

// OutputListOfModuleCreateData is the typed request payload for OutputListOfModule.CreateTyped.
type OutputListOfModuleCreateData struct {
	List *[]any `json:"list,omitempty"`
	Pagination *map[string]any `json:"pagination,omitempty"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
}

// OutputListOfRoleGroup is the typed data model for the output_list_of_role_group entity.
type OutputListOfRoleGroup struct {
	Filter *map[string]any `json:"filter,omitempty"`
	GroupRole *[]any `json:"group_role,omitempty"`
	Pagination *map[string]any `json:"pagination,omitempty"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
	Sorting *map[string]any `json:"sorting,omitempty"`
}

// OutputListOfRoleGroupCreateData is the typed request payload for OutputListOfRoleGroup.CreateTyped.
type OutputListOfRoleGroupCreateData struct {
	Filter *map[string]any `json:"filter,omitempty"`
	GroupRole *[]any `json:"group_role,omitempty"`
	Pagination *map[string]any `json:"pagination,omitempty"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
	Sorting *map[string]any `json:"sorting,omitempty"`
}

// OutputListOfTransactionsHistory is the typed data model for the output_list_of_transactions_history entity.
type OutputListOfTransactionsHistory struct {
	Filter *map[string]any `json:"filter,omitempty"`
	List *[]any `json:"list,omitempty"`
	Pagination *map[string]any `json:"pagination,omitempty"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
	Sorting *map[string]any `json:"sorting,omitempty"`
}

// OutputListOfTransactionsHistoryCreateData is the typed request payload for OutputListOfTransactionsHistory.CreateTyped.
type OutputListOfTransactionsHistoryCreateData struct {
	Filter *map[string]any `json:"filter,omitempty"`
	List *[]any `json:"list,omitempty"`
	Pagination *map[string]any `json:"pagination,omitempty"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
	Sorting *map[string]any `json:"sorting,omitempty"`
}

// OutputListOfUser is the typed data model for the output_list_of_user entity.
type OutputListOfUser struct {
	Filter *map[string]any `json:"filter,omitempty"`
	List *[]any `json:"list,omitempty"`
	Pagination *map[string]any `json:"pagination,omitempty"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
	Sorting *map[string]any `json:"sorting,omitempty"`
}

// OutputListOfUserCreateData is the typed request payload for OutputListOfUser.CreateTyped.
type OutputListOfUserCreateData struct {
	Filter *map[string]any `json:"filter,omitempty"`
	List *[]any `json:"list,omitempty"`
	Pagination *map[string]any `json:"pagination,omitempty"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
	Sorting *map[string]any `json:"sorting,omitempty"`
}

// OutputProvideCredential is the typed data model for the output_provide_credential entity.
type OutputProvideCredential struct {
	MandatorName string `json:"mandator_name"`
	Password *string `json:"password,omitempty"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
	Username *string `json:"username,omitempty"`
}

// OutputProvideCredentialCreateData is the typed request payload for OutputProvideCredential.CreateTyped.
type OutputProvideCredentialCreateData struct {
	MandatorName string `json:"mandator_name"`
	Password *string `json:"password,omitempty"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
	Username *string `json:"username,omitempty"`
}

// OutputRegisterUser is the typed data model for the output_register_user entity.
type OutputRegisterUser struct {
	City *string `json:"city,omitempty"`
	ConsumerId *string `json:"consumer_id,omitempty"`
	ConsumerLanguage *string `json:"consumer_language,omitempty"`
	Country *string `json:"country,omitempty"`
	DateOfBirth *string `json:"date_of_birth,omitempty"`
	DriverLicenceNumber *string `json:"driver_licence_number,omitempty"`
	Email string `json:"email"`
	FirstName *string `json:"first_name,omitempty"`
	IdentificationNumber *string `json:"identification_number,omitempty"`
	LastName *string `json:"last_name,omitempty"`
	Login *string `json:"login,omitempty"`
	Module *string `json:"module,omitempty"`
	PassportNumber *string `json:"passport_number,omitempty"`
	Phone *string `json:"phone,omitempty"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
	Salutation *string `json:"salutation,omitempty"`
	State *string `json:"state,omitempty"`
	Street1 *string `json:"street1,omitempty"`
	Street2 *string `json:"street2,omitempty"`
	Zip *string `json:"zip,omitempty"`
}

// OutputRegisterUserCreateData is the typed request payload for OutputRegisterUser.CreateTyped.
type OutputRegisterUserCreateData struct {
	City *string `json:"city,omitempty"`
	ConsumerId *string `json:"consumer_id,omitempty"`
	ConsumerLanguage *string `json:"consumer_language,omitempty"`
	Country *string `json:"country,omitempty"`
	DateOfBirth *string `json:"date_of_birth,omitempty"`
	DriverLicenceNumber *string `json:"driver_licence_number,omitempty"`
	Email string `json:"email"`
	FirstName *string `json:"first_name,omitempty"`
	IdentificationNumber *string `json:"identification_number,omitempty"`
	LastName *string `json:"last_name,omitempty"`
	Login *string `json:"login,omitempty"`
	Module *string `json:"module,omitempty"`
	PassportNumber *string `json:"passport_number,omitempty"`
	Phone *string `json:"phone,omitempty"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
	Salutation *string `json:"salutation,omitempty"`
	State *string `json:"state,omitempty"`
	Street1 *string `json:"street1,omitempty"`
	Street2 *string `json:"street2,omitempty"`
	Zip *string `json:"zip,omitempty"`
}

// OutputRemoveRole is the typed data model for the output_remove_role entity.
type OutputRemoveRole struct {
	ConsumerUuid *string `json:"consumer_uuid,omitempty"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
	Role *[]any `json:"role,omitempty"`
}

// OutputRemoveRoleCreateData is the typed request payload for OutputRemoveRole.CreateTyped.
type OutputRemoveRoleCreateData struct {
	ConsumerUuid *string `json:"consumer_uuid,omitempty"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
	Role *[]any `json:"role,omitempty"`
}

// OutputResendLink is the typed data model for the output_resend_link entity.
type OutputResendLink struct {
	BusinessRegistrationNumber *string `json:"business_registration_number,omitempty"`
	ConsumerUuid string `json:"consumer_uuid"`
	EmailConfirmationCode *string `json:"email_confirmation_code,omitempty"`
	PhoneNumber *string `json:"phone_number,omitempty"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
}

// OutputResendLinkCreateData is the typed request payload for OutputResendLink.CreateTyped.
type OutputResendLinkCreateData struct {
	BusinessRegistrationNumber *string `json:"business_registration_number,omitempty"`
	ConsumerUuid string `json:"consumer_uuid"`
	EmailConfirmationCode *string `json:"email_confirmation_code,omitempty"`
	PhoneNumber *string `json:"phone_number,omitempty"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
}

// OutputResetPassword is the typed data model for the output_reset_password entity.
type OutputResetPassword struct {
	ConsumerUuid *string `json:"consumer_uuid,omitempty"`
	PhoneNumber *string `json:"phone_number,omitempty"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
}

// OutputResetPasswordCreateData is the typed request payload for OutputResetPassword.CreateTyped.
type OutputResetPasswordCreateData struct {
	ConsumerUuid *string `json:"consumer_uuid,omitempty"`
	PhoneNumber *string `json:"phone_number,omitempty"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
}

// OutputUpdateConsumer is the typed data model for the output_update_consumer entity.
type OutputUpdateConsumer struct {
	City *string `json:"city,omitempty"`
	ConsumerUuid string `json:"consumer_uuid"`
	Consumerlanguage *string `json:"consumerlanguage,omitempty"`
	Country *string `json:"country,omitempty"`
	DateOfBirth *string `json:"date_of_birth,omitempty"`
	DatetimeCreated *string `json:"datetime_created,omitempty"`
	DriverLicenceNumber *string `json:"driver_licence_number,omitempty"`
	Email *string `json:"email,omitempty"`
	FirstName *string `json:"first_name,omitempty"`
	IdentificationNumber *string `json:"identification_number,omitempty"`
	KycPassed *bool `json:"kyc_passed,omitempty"`
	LastName *string `json:"last_name,omitempty"`
	Nationality *string `json:"nationality,omitempty"`
	PassportNumber *string `json:"passport_number,omitempty"`
	PhoneNumber *string `json:"phone_number,omitempty"`
	PlaceOfBirth *string `json:"place_of_birth,omitempty"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
	State *string `json:"state,omitempty"`
	Street1 *string `json:"street1,omitempty"`
	Street2 *string `json:"street2,omitempty"`
	TransactionhistoryId *string `json:"transactionhistory_id,omitempty"`
	Zip *string `json:"zip,omitempty"`
}

// OutputUpdateConsumerCreateData is the typed request payload for OutputUpdateConsumer.CreateTyped.
type OutputUpdateConsumerCreateData struct {
	City *string `json:"city,omitempty"`
	ConsumerUuid string `json:"consumer_uuid"`
	Consumerlanguage *string `json:"consumerlanguage,omitempty"`
	Country *string `json:"country,omitempty"`
	DateOfBirth *string `json:"date_of_birth,omitempty"`
	DatetimeCreated *string `json:"datetime_created,omitempty"`
	DriverLicenceNumber *string `json:"driver_licence_number,omitempty"`
	Email *string `json:"email,omitempty"`
	FirstName *string `json:"first_name,omitempty"`
	IdentificationNumber *string `json:"identification_number,omitempty"`
	KycPassed *bool `json:"kyc_passed,omitempty"`
	LastName *string `json:"last_name,omitempty"`
	Nationality *string `json:"nationality,omitempty"`
	PassportNumber *string `json:"passport_number,omitempty"`
	PhoneNumber *string `json:"phone_number,omitempty"`
	PlaceOfBirth *string `json:"place_of_birth,omitempty"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
	State *string `json:"state,omitempty"`
	Street1 *string `json:"street1,omitempty"`
	Street2 *string `json:"street2,omitempty"`
	TransactionhistoryId *string `json:"transactionhistory_id,omitempty"`
	Zip *string `json:"zip,omitempty"`
}

// OutputUpdateProfile is the typed data model for the output_update_profile entity.
type OutputUpdateProfile struct {
	ConsumerLanguage *string `json:"consumer_language,omitempty"`
	Email *string `json:"email,omitempty"`
	FirstName *string `json:"first_name,omitempty"`
	LastName *string `json:"last_name,omitempty"`
	PhoneNumber *string `json:"phone_number,omitempty"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
}

// OutputUpdateProfileCreateData is the typed request payload for OutputUpdateProfile.CreateTyped.
type OutputUpdateProfileCreateData struct {
	ConsumerLanguage *string `json:"consumer_language,omitempty"`
	Email *string `json:"email,omitempty"`
	FirstName *string `json:"first_name,omitempty"`
	LastName *string `json:"last_name,omitempty"`
	PhoneNumber *string `json:"phone_number,omitempty"`
	ResponseCode *int `json:"response_code,omitempty"`
	ResponseMessage *string `json:"response_message,omitempty"`
}

// Version is the typed data model for the version entity.
type Version struct {
	AppName *string `json:"app_name,omitempty"`
	BuildDate *string `json:"build_date,omitempty"`
	Version *string `json:"version,omitempty"`
}

// VersionLoadMatch is the typed request payload for Version.LoadTyped.
type VersionLoadMatch struct {
	AppName *string `json:"app_name,omitempty"`
	BuildDate *string `json:"build_date,omitempty"`
	Version *string `json:"version,omitempty"`
}

// asMap turns a typed request/data struct into the map[string]any the
// runtime op pipeline consumes, honouring the json tags above.
func asMap(v any) map[string]any {
	out := map[string]any{}
	b, err := json.Marshal(v)
	if err != nil {
		return out
	}
	_ = json.Unmarshal(b, &out)
	return out
}

// typedFrom decodes a runtime value (a map[string]any produced by the op
// pipeline) into a typed model T via a JSON round-trip. On any error it
// returns the zero value of T; the op's own (value, error) tuple carries the
// real error.
func typedFrom[T any](v any) T {
	var out T
	if v == nil {
		return out
	}
	b, err := json.Marshal(v)
	if err != nil {
		return out
	}
	_ = json.Unmarshal(b, &out)
	return out
}

// typedSliceFrom decodes a runtime list value ([]any of maps) into a typed
// slice []T via a JSON round-trip, for list ops.
func typedSliceFrom[T any](v any) []T {
	var out []T
	if v == nil {
		return out
	}
	b, err := json.Marshal(v)
	if err != nil {
		return out
	}
	_ = json.Unmarshal(b, &out)
	return out
}

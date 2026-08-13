// Typed models for the BluefinTecsUserBackoffice SDK.
//
// GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
// params (op.<name>.points[].args.params[]). Field/param types come from the
// canonical type sentinels via @voxgig/sdkgen canonToType (source of truth:
// @voxgig/apidef VALID_CANON). Do not edit by hand.
package entity

import (
	"encoding/json"

	"github.com/voxgig-sdk/bluefin-tecs-user-backoffice-sdk/go/core"
)

// OutputActivateDigitalModule is the typed data model for the output_activate_digital_module entity.
type OutputActivateDigitalModule struct {
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
}

// OutputActivateDigitalModuleCreateData is the typed request payload for OutputActivateDigitalModule.CreateTyped.
type OutputActivateDigitalModuleCreateData struct {
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
}

// OutputActivatePortalModule is the typed data model for the output_activate_portal_module entity.
type OutputActivatePortalModule struct {
	ClientSecret string `json:"clientSecret"`
	NotificationEmail string `json:"notificationEmail"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
}

// OutputActivatePortalModuleCreateData is the typed request payload for OutputActivatePortalModule.CreateTyped.
type OutputActivatePortalModuleCreateData struct {
	ClientSecret string `json:"clientSecret"`
	NotificationEmail string `json:"notificationEmail"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
}

// OutputActivateStoreModule is the typed data model for the output_activate_store_module entity.
type OutputActivateStoreModule struct {
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
}

// OutputActivateStoreModuleCreateData is the typed request payload for OutputActivateStoreModule.CreateTyped.
type OutputActivateStoreModuleCreateData struct {
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
}

// OutputActivateUser is the typed data model for the output_activate_user entity.
type OutputActivateUser struct {
	ConsumerUUID *string `json:"consumerUUID,omitempty"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
}

// OutputActivateUserCreateData is the typed request payload for OutputActivateUser.CreateTyped.
type OutputActivateUserCreateData struct {
	ConsumerUUID *string `json:"consumerUUID,omitempty"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
}

// OutputAssignRole is the typed data model for the output_assign_role entity.
type OutputAssignRole struct {
	ConsumerUUID string `json:"consumerUUID"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
	Roles []any `json:"roles"`
}

// OutputAssignRoleCreateData is the typed request payload for OutputAssignRole.CreateTyped.
type OutputAssignRoleCreateData struct {
	ConsumerUUID string `json:"consumerUUID"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
	Roles []any `json:"roles"`
}

// OutputChangeLogo is the typed data model for the output_change_logo entity.
type OutputChangeLogo struct {
	ContentAsBase64 string `json:"contentAsBase64"`
	MimeType string `json:"mimeType"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
}

// OutputChangeLogoCreateData is the typed request payload for OutputChangeLogo.CreateTyped.
type OutputChangeLogoCreateData struct {
	ContentAsBase64 string `json:"contentAsBase64"`
	MimeType string `json:"mimeType"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
}

// OutputCreateMandator is the typed data model for the output_create_mandator entity.
type OutputCreateMandator struct {
	City *string `json:"city,omitempty"`
	Country *string `json:"country,omitempty"`
	DateOfBirth *string `json:"dateOfBirth,omitempty"`
	Description *string `json:"description,omitempty"`
	DriversLicenseNumber *string `json:"driversLicenseNumber,omitempty"`
	Email string `json:"email"`
	FirstName *string `json:"firstName,omitempty"`
	IdentificationNumber *string `json:"identificationNumber,omitempty"`
	LastName *string `json:"lastName,omitempty"`
	Login string `json:"login"`
	Name *string `json:"name,omitempty"`
	PassportNumber *string `json:"passportNumber,omitempty"`
	Phone string `json:"phone"`
	Salutation *string `json:"salutation,omitempty"`
	State *string `json:"state,omitempty"`
	Street1 *string `json:"street1,omitempty"`
	Street2 *string `json:"street2,omitempty"`
	ZipCode *string `json:"zipCode,omitempty"`
}

// OutputCreateMandatorCreateData is the typed request payload for OutputCreateMandator.CreateTyped.
type OutputCreateMandatorCreateData struct {
	City *string `json:"city,omitempty"`
	Country *string `json:"country,omitempty"`
	DateOfBirth *string `json:"dateOfBirth,omitempty"`
	Description *string `json:"description,omitempty"`
	DriversLicenseNumber *string `json:"driversLicenseNumber,omitempty"`
	Email string `json:"email"`
	FirstName *string `json:"firstName,omitempty"`
	IdentificationNumber *string `json:"identificationNumber,omitempty"`
	LastName *string `json:"lastName,omitempty"`
	Login string `json:"login"`
	Name *string `json:"name,omitempty"`
	PassportNumber *string `json:"passportNumber,omitempty"`
	Phone string `json:"phone"`
	Salutation *string `json:"salutation,omitempty"`
	State *string `json:"state,omitempty"`
	Street1 *string `json:"street1,omitempty"`
	Street2 *string `json:"street2,omitempty"`
	ZipCode *string `json:"zipCode,omitempty"`
}

// OutputCreateServiceUser is the typed data model for the output_create_service_user entity.
type OutputCreateServiceUser struct {
	MandatorName string `json:"mandatorName"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
}

// OutputCreateServiceUserCreateData is the typed request payload for OutputCreateServiceUser.CreateTyped.
type OutputCreateServiceUserCreateData struct {
	MandatorName string `json:"mandatorName"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
}

// OutputDeactivateUser is the typed data model for the output_deactivate_user entity.
type OutputDeactivateUser struct {
	ConsumerUUID *string `json:"consumerUUID,omitempty"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
}

// OutputDeactivateUserCreateData is the typed request payload for OutputDeactivateUser.CreateTyped.
type OutputDeactivateUserCreateData struct {
	ConsumerUUID *string `json:"consumerUUID,omitempty"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
}

// OutputGetKycDocument is the typed data model for the output_get_kyc_document entity.
type OutputGetKycDocument struct {
	CaseID *string `json:"caseID,omitempty"`
	EncodedDataBase64 *string `json:"encodedDataBase64,omitempty"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
}

// OutputGetKycDocumentCreateData is the typed request payload for OutputGetKycDocument.CreateTyped.
type OutputGetKycDocumentCreateData struct {
	CaseID *string `json:"caseID,omitempty"`
	EncodedDataBase64 *string `json:"encodedDataBase64,omitempty"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
}

// OutputGetLogo is the typed data model for the output_get_logo entity.
type OutputGetLogo struct {
	ContentAsBase64 string `json:"contentAsBase64"`
	MimeType string `json:"mimeType"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
}

// OutputGetLogoLoadMatch is the typed request payload for OutputGetLogo.LoadTyped.
type OutputGetLogoLoadMatch struct {
	ContentAsBase64 *string `json:"contentAsBase64,omitempty"`
	MimeType *string `json:"mimeType,omitempty"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
}

// OutputListOfAvailableRole is the typed data model for the output_list_of_available_role entity.
type OutputListOfAvailableRole struct {
	AvailableRoles *[]any `json:"availableRoles,omitempty"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
}

// OutputListOfAvailableRoleCreateData is the typed request payload for OutputListOfAvailableRole.CreateTyped.
type OutputListOfAvailableRoleCreateData struct {
	AvailableRoles *[]any `json:"availableRoles,omitempty"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
}

// OutputListOfMandator is the typed data model for the output_list_of_mandator entity.
type OutputListOfMandator struct {
	Filter *map[string]any `json:"filter,omitempty"`
	List *[]any `json:"list,omitempty"`
	Pagination *map[string]any `json:"pagination,omitempty"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
	Sorting *map[string]any `json:"sorting,omitempty"`
}

// OutputListOfMandatorCreateData is the typed request payload for OutputListOfMandator.CreateTyped.
type OutputListOfMandatorCreateData struct {
	Filter *map[string]any `json:"filter,omitempty"`
	List *[]any `json:"list,omitempty"`
	Pagination *map[string]any `json:"pagination,omitempty"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
	Sorting *map[string]any `json:"sorting,omitempty"`
}

// OutputListOfModule is the typed data model for the output_list_of_module entity.
type OutputListOfModule struct {
	List *[]any `json:"list,omitempty"`
	Pagination *map[string]any `json:"pagination,omitempty"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
}

// OutputListOfModuleCreateData is the typed request payload for OutputListOfModule.CreateTyped.
type OutputListOfModuleCreateData struct {
	List *[]any `json:"list,omitempty"`
	Pagination *map[string]any `json:"pagination,omitempty"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
}

// OutputListOfRoleGroup is the typed data model for the output_list_of_role_group entity.
type OutputListOfRoleGroup struct {
	Filter *map[string]any `json:"filter,omitempty"`
	GroupRoles *[]any `json:"groupRoles,omitempty"`
	Pagination *map[string]any `json:"pagination,omitempty"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
	Sorting *map[string]any `json:"sorting,omitempty"`
}

// OutputListOfRoleGroupCreateData is the typed request payload for OutputListOfRoleGroup.CreateTyped.
type OutputListOfRoleGroupCreateData struct {
	Filter *map[string]any `json:"filter,omitempty"`
	GroupRoles *[]any `json:"groupRoles,omitempty"`
	Pagination *map[string]any `json:"pagination,omitempty"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
	Sorting *map[string]any `json:"sorting,omitempty"`
}

// OutputListOfTransactionsHistory is the typed data model for the output_list_of_transactions_history entity.
type OutputListOfTransactionsHistory struct {
	Filter *map[string]any `json:"filter,omitempty"`
	List *[]any `json:"list,omitempty"`
	Pagination *map[string]any `json:"pagination,omitempty"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
	Sorting *map[string]any `json:"sorting,omitempty"`
}

// OutputListOfTransactionsHistoryCreateData is the typed request payload for OutputListOfTransactionsHistory.CreateTyped.
type OutputListOfTransactionsHistoryCreateData struct {
	Filter *map[string]any `json:"filter,omitempty"`
	List *[]any `json:"list,omitempty"`
	Pagination *map[string]any `json:"pagination,omitempty"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
	Sorting *map[string]any `json:"sorting,omitempty"`
}

// OutputListOfUser is the typed data model for the output_list_of_user entity.
type OutputListOfUser struct {
	Filter *map[string]any `json:"filter,omitempty"`
	List *[]any `json:"list,omitempty"`
	Pagination *map[string]any `json:"pagination,omitempty"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
	Sorting *map[string]any `json:"sorting,omitempty"`
}

// OutputListOfUserCreateData is the typed request payload for OutputListOfUser.CreateTyped.
type OutputListOfUserCreateData struct {
	Filter *map[string]any `json:"filter,omitempty"`
	List *[]any `json:"list,omitempty"`
	Pagination *map[string]any `json:"pagination,omitempty"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
	Sorting *map[string]any `json:"sorting,omitempty"`
}

// OutputProvideCredential is the typed data model for the output_provide_credential entity.
type OutputProvideCredential struct {
	MandatorName string `json:"mandatorName"`
	Password *string `json:"password,omitempty"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
	Username *string `json:"username,omitempty"`
}

// OutputProvideCredentialCreateData is the typed request payload for OutputProvideCredential.CreateTyped.
type OutputProvideCredentialCreateData struct {
	MandatorName string `json:"mandatorName"`
	Password *string `json:"password,omitempty"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
	Username *string `json:"username,omitempty"`
}

// OutputRegisterUser is the typed data model for the output_register_user entity.
type OutputRegisterUser struct {
	City *string `json:"city,omitempty"`
	ConsumerId *string `json:"consumerId,omitempty"`
	ConsumerLanguage *string `json:"consumerLanguage,omitempty"`
	Country *string `json:"country,omitempty"`
	DateOfBirth *string `json:"dateOfBirth,omitempty"`
	DriverLicenceNumber *string `json:"driverLicenceNumber,omitempty"`
	Email string `json:"email"`
	FirstName *string `json:"firstName,omitempty"`
	IdentificationNumber *string `json:"identificationNumber,omitempty"`
	LastName *string `json:"lastName,omitempty"`
	Login *string `json:"login,omitempty"`
	Module *string `json:"module,omitempty"`
	PassportNumber *string `json:"passportNumber,omitempty"`
	Phone *string `json:"phone,omitempty"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
	Salutation *string `json:"salutation,omitempty"`
	State *string `json:"state,omitempty"`
	Street1 *string `json:"street1,omitempty"`
	Street2 *string `json:"street2,omitempty"`
	Zip *string `json:"zip,omitempty"`
}

// OutputRegisterUserCreateData is the typed request payload for OutputRegisterUser.CreateTyped.
type OutputRegisterUserCreateData struct {
	City *string `json:"city,omitempty"`
	ConsumerId *string `json:"consumerId,omitempty"`
	ConsumerLanguage *string `json:"consumerLanguage,omitempty"`
	Country *string `json:"country,omitempty"`
	DateOfBirth *string `json:"dateOfBirth,omitempty"`
	DriverLicenceNumber *string `json:"driverLicenceNumber,omitempty"`
	Email string `json:"email"`
	FirstName *string `json:"firstName,omitempty"`
	IdentificationNumber *string `json:"identificationNumber,omitempty"`
	LastName *string `json:"lastName,omitempty"`
	Login *string `json:"login,omitempty"`
	Module *string `json:"module,omitempty"`
	PassportNumber *string `json:"passportNumber,omitempty"`
	Phone *string `json:"phone,omitempty"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
	Salutation *string `json:"salutation,omitempty"`
	State *string `json:"state,omitempty"`
	Street1 *string `json:"street1,omitempty"`
	Street2 *string `json:"street2,omitempty"`
	Zip *string `json:"zip,omitempty"`
}

// OutputRemoveRole is the typed data model for the output_remove_role entity.
type OutputRemoveRole struct {
	ConsumerUUID *string `json:"consumerUUID,omitempty"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
	Roles *[]any `json:"roles,omitempty"`
}

// OutputRemoveRoleCreateData is the typed request payload for OutputRemoveRole.CreateTyped.
type OutputRemoveRoleCreateData struct {
	ConsumerUUID *string `json:"consumerUUID,omitempty"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
	Roles *[]any `json:"roles,omitempty"`
}

// OutputResendLink is the typed data model for the output_resend_link entity.
type OutputResendLink struct {
	BusinessRegistrationNumber *string `json:"businessRegistrationNumber,omitempty"`
	ConsumerUUID string `json:"consumerUUID"`
	EmailConfirmationCode *string `json:"emailConfirmationCode,omitempty"`
	PhoneNumber *string `json:"phoneNumber,omitempty"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
}

// OutputResendLinkCreateData is the typed request payload for OutputResendLink.CreateTyped.
type OutputResendLinkCreateData struct {
	BusinessRegistrationNumber *string `json:"businessRegistrationNumber,omitempty"`
	ConsumerUUID string `json:"consumerUUID"`
	EmailConfirmationCode *string `json:"emailConfirmationCode,omitempty"`
	PhoneNumber *string `json:"phoneNumber,omitempty"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
}

// OutputResetPassword is the typed data model for the output_reset_password entity.
type OutputResetPassword struct {
	ConsumerUuid *string `json:"consumerUuid,omitempty"`
	PhoneNumber *string `json:"phoneNumber,omitempty"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
}

// OutputResetPasswordCreateData is the typed request payload for OutputResetPassword.CreateTyped.
type OutputResetPasswordCreateData struct {
	ConsumerUuid *string `json:"consumerUuid,omitempty"`
	PhoneNumber *string `json:"phoneNumber,omitempty"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
}

// OutputUpdateConsumer is the typed data model for the output_update_consumer entity.
type OutputUpdateConsumer struct {
	City *string `json:"city,omitempty"`
	ConsumerUuid string `json:"consumerUuid"`
	Consumerlanguage *string `json:"consumerlanguage,omitempty"`
	Country *string `json:"country,omitempty"`
	DateOfBirth *string `json:"dateOfBirth,omitempty"`
	DatetimeCreated *string `json:"datetime_created,omitempty"`
	DriverLicenceNumber *string `json:"driverLicenceNumber,omitempty"`
	Email *string `json:"email,omitempty"`
	FirstName *string `json:"firstName,omitempty"`
	IdentificationNumber *string `json:"identificationNumber,omitempty"`
	KycPassed *bool `json:"kycPassed,omitempty"`
	LastName *string `json:"lastName,omitempty"`
	Nationality *string `json:"nationality,omitempty"`
	PassportNumber *string `json:"passportNumber,omitempty"`
	PhoneNumber *string `json:"phoneNumber,omitempty"`
	PlaceOfBirth *string `json:"placeOfBirth,omitempty"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
	State *string `json:"state,omitempty"`
	Street1 *string `json:"street1,omitempty"`
	Street2 *string `json:"street2,omitempty"`
	TransactionhistoryId *string `json:"transactionhistory_id,omitempty"`
	Zip *string `json:"zip,omitempty"`
}

// OutputUpdateConsumerCreateData is the typed request payload for OutputUpdateConsumer.CreateTyped.
type OutputUpdateConsumerCreateData struct {
	City *string `json:"city,omitempty"`
	ConsumerUuid string `json:"consumerUuid"`
	Consumerlanguage *string `json:"consumerlanguage,omitempty"`
	Country *string `json:"country,omitempty"`
	DateOfBirth *string `json:"dateOfBirth,omitempty"`
	DatetimeCreated *string `json:"datetime_created,omitempty"`
	DriverLicenceNumber *string `json:"driverLicenceNumber,omitempty"`
	Email *string `json:"email,omitempty"`
	FirstName *string `json:"firstName,omitempty"`
	IdentificationNumber *string `json:"identificationNumber,omitempty"`
	KycPassed *bool `json:"kycPassed,omitempty"`
	LastName *string `json:"lastName,omitempty"`
	Nationality *string `json:"nationality,omitempty"`
	PassportNumber *string `json:"passportNumber,omitempty"`
	PhoneNumber *string `json:"phoneNumber,omitempty"`
	PlaceOfBirth *string `json:"placeOfBirth,omitempty"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
	State *string `json:"state,omitempty"`
	Street1 *string `json:"street1,omitempty"`
	Street2 *string `json:"street2,omitempty"`
	TransactionhistoryId *string `json:"transactionhistory_id,omitempty"`
	Zip *string `json:"zip,omitempty"`
}

// OutputUpdateProfile is the typed data model for the output_update_profile entity.
type OutputUpdateProfile struct {
	ConsumerLanguage *string `json:"consumerLanguage,omitempty"`
	Email *string `json:"email,omitempty"`
	FirstName *string `json:"firstName,omitempty"`
	LastName *string `json:"lastName,omitempty"`
	PhoneNumber *string `json:"phoneNumber,omitempty"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
}

// OutputUpdateProfileCreateData is the typed request payload for OutputUpdateProfile.CreateTyped.
type OutputUpdateProfileCreateData struct {
	ConsumerLanguage *string `json:"consumerLanguage,omitempty"`
	Email *string `json:"email,omitempty"`
	FirstName *string `json:"firstName,omitempty"`
	LastName *string `json:"lastName,omitempty"`
	PhoneNumber *string `json:"phoneNumber,omitempty"`
	ResponseCode *int `json:"responseCode,omitempty"`
	ResponseMessage *string `json:"responseMessage,omitempty"`
}

// Version is the typed data model for the version entity.
type Version struct {
	AppName *string `json:"appName,omitempty"`
	BuildDate *string `json:"buildDate,omitempty"`
	Version *string `json:"version,omitempty"`
}

// VersionLoadMatch is the typed request payload for Version.LoadTyped.
type VersionLoadMatch struct {
	AppName *string `json:"appName,omitempty"`
	BuildDate *string `json:"buildDate,omitempty"`
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

// entityData unwraps an entity to its data map.
//
// Operations resolve to the ENTITY, not the raw data (see AGENTS.md), and an
// entity's fields are UNEXPORTED — marshalling one directly yields `{}`, so
// every typed accessor would silently hand back a zero-valued struct. The
// typed boundary therefore takes the data hop first.
func entityData(v any) any {
	if ent, ok := v.(core.Entity); ok {
		return ent.Data()
	}
	return v
}

// typedFrom decodes a runtime value (an entity, or the map[string]any the op
// pipeline produced) into a typed model T via a JSON round-trip. On any error
// it returns the zero value of T; the op's own (value, error) tuple carries
// the real error.
func typedFrom[T any](v any) T {
	var out T
	v = entityData(v)
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

// typedSliceFrom decodes a runtime list value into a typed slice []T via a
// JSON round-trip, for list ops. `list` resolves to a slice of ENTITY
// instances, so each element takes the data hop.
func typedSliceFrom[T any](v any) []T {
	var out []T
	if v == nil {
		return out
	}
	if list, ok := v.([]any); ok {
		unwrapped := make([]any, 0, len(list))
		for _, item := range list {
			unwrapped = append(unwrapped, entityData(item))
		}
		v = unwrapped
	}
	b, err := json.Marshal(v)
	if err != nil {
		return out
	}
	_ = json.Unmarshal(b, &out)
	return out
}

// Typed reference models for the BluefinTecsUserBackoffice SDK (C++).
//
// GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
// params. The C++ SDK runtime is Value-based, so these structs are
// DOCUMENTATION / convenience types only — the SDK neither includes nor
// requires this header. Array fields surface as std::vector<Value>, object
// fields as std::map<std::string, Value>, and any/null fields as sdk::Value.
// Optional (req:false) members are flagged with a trailing "// optional"
// comment. Do not edit by hand.

#ifndef SDK_BLUEFINTECSUSERBACKOFFICE_TYPES_HPP
#define SDK_BLUEFINTECSUSERBACKOFFICE_TYPES_HPP

#include <cstdint>
#include <map>
#include <string>
#include <vector>

#include "core/types.hpp"

namespace sdk {
namespace types {

struct OutputActivateDigitalModule {
  int64_t response_code;  // optional
  std::string response_message;  // optional
};

struct OutputActivateDigitalModuleCreateData {
  int64_t response_code;  // optional
  std::string response_message;  // optional
};

struct OutputActivatePortalModule {
  std::string client_secret;
  std::string notification_email;
  int64_t response_code;  // optional
  std::string response_message;  // optional
};

struct OutputActivatePortalModuleCreateData {
  std::string client_secret;
  std::string notification_email;
  int64_t response_code;  // optional
  std::string response_message;  // optional
};

struct OutputActivateStoreModule {
  int64_t response_code;  // optional
  std::string response_message;  // optional
};

struct OutputActivateStoreModuleCreateData {
  int64_t response_code;  // optional
  std::string response_message;  // optional
};

struct OutputActivateUser {
  std::string consumer_uuid;  // optional
  int64_t response_code;  // optional
  std::string response_message;  // optional
};

struct OutputActivateUserCreateData {
  std::string consumer_uuid;  // optional
  int64_t response_code;  // optional
  std::string response_message;  // optional
};

struct OutputAssignRole {
  std::string consumer_uuid;
  int64_t response_code;  // optional
  std::string response_message;  // optional
  std::vector<Value> role;
};

struct OutputAssignRoleCreateData {
  std::string consumer_uuid;
  int64_t response_code;  // optional
  std::string response_message;  // optional
  std::vector<Value> role;
};

struct OutputChangeLogo {
  std::string content_as_base64;
  std::string mime_type;
  int64_t response_code;  // optional
  std::string response_message;  // optional
};

struct OutputChangeLogoCreateData {
  std::string content_as_base64;
  std::string mime_type;
  int64_t response_code;  // optional
  std::string response_message;  // optional
};

struct OutputCreateMandator {
  std::string city;  // optional
  std::string country;  // optional
  std::string date_of_birth;  // optional
  std::string description;
  std::string drivers_license_number;  // optional
  std::string email;
  std::string first_name;  // optional
  std::string identification_number;  // optional
  std::string last_name;  // optional
  std::string login;
  std::map<std::string, Value> mandator;  // optional
  std::string name;
  std::string passport_number;  // optional
  std::string phone;
  int64_t response_code;  // optional
  std::string response_message;  // optional
  std::string salutation;  // optional
  std::string state;  // optional
  std::string street1;  // optional
  std::string street2;  // optional
  std::string zip_code;  // optional
};

struct OutputCreateMandatorCreateData {
  std::string city;  // optional
  std::string country;  // optional
  std::string date_of_birth;  // optional
  std::string description;
  std::string drivers_license_number;  // optional
  std::string email;
  std::string first_name;  // optional
  std::string identification_number;  // optional
  std::string last_name;  // optional
  std::string login;
  std::map<std::string, Value> mandator;  // optional
  std::string name;
  std::string passport_number;  // optional
  std::string phone;
  int64_t response_code;  // optional
  std::string response_message;  // optional
  std::string salutation;  // optional
  std::string state;  // optional
  std::string street1;  // optional
  std::string street2;  // optional
  std::string zip_code;  // optional
};

struct OutputCreateServiceUser {
  std::string mandator_name;
  int64_t response_code;  // optional
  std::string response_message;  // optional
};

struct OutputCreateServiceUserCreateData {
  std::string mandator_name;
  int64_t response_code;  // optional
  std::string response_message;  // optional
};

struct OutputDeactivateUser {
  std::string consumer_uuid;  // optional
  int64_t response_code;  // optional
  std::string response_message;  // optional
};

struct OutputDeactivateUserCreateData {
  std::string consumer_uuid;  // optional
  int64_t response_code;  // optional
  std::string response_message;  // optional
};

struct OutputGetKycDocument {
  std::string case_id;  // optional
  std::string encoded_data_base64;  // optional
  int64_t response_code;  // optional
  std::string response_message;  // optional
};

struct OutputGetKycDocumentCreateData {
  std::string case_id;  // optional
  std::string encoded_data_base64;  // optional
  int64_t response_code;  // optional
  std::string response_message;  // optional
};

struct OutputGetLogo {
  std::string content_as_base64;
  std::string mime_type;
  int64_t response_code;  // optional
  std::string response_message;  // optional
};

struct OutputGetLogoLoadMatch {
  std::string content_as_base64;  // optional
  std::string mime_type;  // optional
  int64_t response_code;  // optional
  std::string response_message;  // optional
};

struct OutputListOfAvailableRole {
  std::vector<Value> available_role;  // optional
  int64_t response_code;  // optional
  std::string response_message;  // optional
};

struct OutputListOfAvailableRoleCreateData {
  std::vector<Value> available_role;  // optional
  int64_t response_code;  // optional
  std::string response_message;  // optional
};

struct OutputListOfMandator {
  std::map<std::string, Value> filter;  // optional
  std::vector<Value> list;  // optional
  std::map<std::string, Value> pagination;  // optional
  int64_t response_code;  // optional
  std::string response_message;  // optional
  std::map<std::string, Value> sorting;  // optional
};

struct OutputListOfMandatorCreateData {
  std::map<std::string, Value> filter;  // optional
  std::vector<Value> list;  // optional
  std::map<std::string, Value> pagination;  // optional
  int64_t response_code;  // optional
  std::string response_message;  // optional
  std::map<std::string, Value> sorting;  // optional
};

struct OutputListOfModule {
  std::vector<Value> list;  // optional
  std::map<std::string, Value> pagination;  // optional
  int64_t response_code;  // optional
  std::string response_message;  // optional
};

struct OutputListOfModuleCreateData {
  std::vector<Value> list;  // optional
  std::map<std::string, Value> pagination;  // optional
  int64_t response_code;  // optional
  std::string response_message;  // optional
};

struct OutputListOfRoleGroup {
  std::map<std::string, Value> filter;  // optional
  std::vector<Value> group_role;  // optional
  std::map<std::string, Value> pagination;  // optional
  int64_t response_code;  // optional
  std::string response_message;  // optional
  std::map<std::string, Value> sorting;  // optional
};

struct OutputListOfRoleGroupCreateData {
  std::map<std::string, Value> filter;  // optional
  std::vector<Value> group_role;  // optional
  std::map<std::string, Value> pagination;  // optional
  int64_t response_code;  // optional
  std::string response_message;  // optional
  std::map<std::string, Value> sorting;  // optional
};

struct OutputListOfTransactionsHistory {
  std::map<std::string, Value> filter;  // optional
  std::vector<Value> list;  // optional
  std::map<std::string, Value> pagination;  // optional
  int64_t response_code;  // optional
  std::string response_message;  // optional
  std::map<std::string, Value> sorting;  // optional
};

struct OutputListOfTransactionsHistoryCreateData {
  std::map<std::string, Value> filter;  // optional
  std::vector<Value> list;  // optional
  std::map<std::string, Value> pagination;  // optional
  int64_t response_code;  // optional
  std::string response_message;  // optional
  std::map<std::string, Value> sorting;  // optional
};

struct OutputListOfUser {
  std::map<std::string, Value> filter;  // optional
  std::vector<Value> list;  // optional
  std::map<std::string, Value> pagination;  // optional
  int64_t response_code;  // optional
  std::string response_message;  // optional
  std::map<std::string, Value> sorting;  // optional
};

struct OutputListOfUserCreateData {
  std::map<std::string, Value> filter;  // optional
  std::vector<Value> list;  // optional
  std::map<std::string, Value> pagination;  // optional
  int64_t response_code;  // optional
  std::string response_message;  // optional
  std::map<std::string, Value> sorting;  // optional
};

struct OutputProvideCredential {
  std::string mandator_name;
  std::string password;  // optional
  int64_t response_code;  // optional
  std::string response_message;  // optional
  std::string username;  // optional
};

struct OutputProvideCredentialCreateData {
  std::string mandator_name;
  std::string password;  // optional
  int64_t response_code;  // optional
  std::string response_message;  // optional
  std::string username;  // optional
};

struct OutputRegisterUser {
  std::string city;  // optional
  std::string consumer_id;  // optional
  std::string consumer_language;  // optional
  std::string country;  // optional
  std::string date_of_birth;  // optional
  std::string driver_licence_number;  // optional
  std::string email;
  std::string first_name;  // optional
  std::string identification_number;  // optional
  std::string last_name;  // optional
  std::string login;  // optional
  std::string module;  // optional
  std::string passport_number;  // optional
  std::string phone;  // optional
  int64_t response_code;  // optional
  std::string response_message;  // optional
  std::string salutation;  // optional
  std::string state;  // optional
  std::string street1;  // optional
  std::string street2;  // optional
  std::string zip;  // optional
};

struct OutputRegisterUserCreateData {
  std::string city;  // optional
  std::string consumer_id;  // optional
  std::string consumer_language;  // optional
  std::string country;  // optional
  std::string date_of_birth;  // optional
  std::string driver_licence_number;  // optional
  std::string email;
  std::string first_name;  // optional
  std::string identification_number;  // optional
  std::string last_name;  // optional
  std::string login;  // optional
  std::string module;  // optional
  std::string passport_number;  // optional
  std::string phone;  // optional
  int64_t response_code;  // optional
  std::string response_message;  // optional
  std::string salutation;  // optional
  std::string state;  // optional
  std::string street1;  // optional
  std::string street2;  // optional
  std::string zip;  // optional
};

struct OutputRemoveRole {
  std::string consumer_uuid;  // optional
  int64_t response_code;  // optional
  std::string response_message;  // optional
  std::vector<Value> role;  // optional
};

struct OutputRemoveRoleCreateData {
  std::string consumer_uuid;  // optional
  int64_t response_code;  // optional
  std::string response_message;  // optional
  std::vector<Value> role;  // optional
};

struct OutputResendLink {
  std::string business_registration_number;  // optional
  std::string consumer_uuid;
  std::string email_confirmation_code;  // optional
  std::string phone_number;  // optional
  int64_t response_code;  // optional
  std::string response_message;  // optional
};

struct OutputResendLinkCreateData {
  std::string business_registration_number;  // optional
  std::string consumer_uuid;
  std::string email_confirmation_code;  // optional
  std::string phone_number;  // optional
  int64_t response_code;  // optional
  std::string response_message;  // optional
};

struct OutputResetPassword {
  std::string consumer_uuid;  // optional
  std::string phone_number;  // optional
  int64_t response_code;  // optional
  std::string response_message;  // optional
};

struct OutputResetPasswordCreateData {
  std::string consumer_uuid;  // optional
  std::string phone_number;  // optional
  int64_t response_code;  // optional
  std::string response_message;  // optional
};

struct OutputUpdateConsumer {
  std::string city;  // optional
  std::string consumer_uuid;
  std::string consumerlanguage;  // optional
  std::string country;  // optional
  std::string date_of_birth;  // optional
  std::string datetime_created;  // optional
  std::string driver_licence_number;  // optional
  std::string email;  // optional
  std::string first_name;  // optional
  std::string identification_number;  // optional
  bool kyc_passed;  // optional
  std::string last_name;  // optional
  std::string nationality;  // optional
  std::string passport_number;  // optional
  std::string phone_number;  // optional
  std::string place_of_birth;  // optional
  int64_t response_code;  // optional
  std::string response_message;  // optional
  std::string state;  // optional
  std::string street1;  // optional
  std::string street2;  // optional
  std::string transactionhistory_id;  // optional
  std::string zip;  // optional
};

struct OutputUpdateConsumerCreateData {
  std::string city;  // optional
  std::string consumer_uuid;
  std::string consumerlanguage;  // optional
  std::string country;  // optional
  std::string date_of_birth;  // optional
  std::string datetime_created;  // optional
  std::string driver_licence_number;  // optional
  std::string email;  // optional
  std::string first_name;  // optional
  std::string identification_number;  // optional
  bool kyc_passed;  // optional
  std::string last_name;  // optional
  std::string nationality;  // optional
  std::string passport_number;  // optional
  std::string phone_number;  // optional
  std::string place_of_birth;  // optional
  int64_t response_code;  // optional
  std::string response_message;  // optional
  std::string state;  // optional
  std::string street1;  // optional
  std::string street2;  // optional
  std::string transactionhistory_id;  // optional
  std::string zip;  // optional
};

struct OutputUpdateProfile {
  std::string consumer_language;  // optional
  std::string email;  // optional
  std::string first_name;  // optional
  std::string last_name;  // optional
  std::string phone_number;  // optional
  int64_t response_code;  // optional
  std::string response_message;  // optional
};

struct OutputUpdateProfileCreateData {
  std::string consumer_language;  // optional
  std::string email;  // optional
  std::string first_name;  // optional
  std::string last_name;  // optional
  std::string phone_number;  // optional
  int64_t response_code;  // optional
  std::string response_message;  // optional
};

struct Version {
  std::string app_name;  // optional
  std::string build_date;  // optional
  std::string version;  // optional
};

struct VersionLoadMatch {
  std::string app_name;  // optional
  std::string build_date;  // optional
  std::string version;  // optional
};

} // namespace types
} // namespace sdk

#endif // SDK_BLUEFINTECSUSERBACKOFFICE_TYPES_HPP

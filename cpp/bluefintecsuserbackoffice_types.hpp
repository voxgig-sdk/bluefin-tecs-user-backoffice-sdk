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
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
};

struct OutputActivateDigitalModuleCreateData {
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
};

struct OutputActivatePortalModule {
  std::string clientSecret;
  std::string notificationEmail;
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
};

struct OutputActivatePortalModuleCreateData {
  std::string clientSecret;
  std::string notificationEmail;
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
};

struct OutputActivateStoreModule {
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
};

struct OutputActivateStoreModuleCreateData {
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
};

struct OutputActivateUser {
  std::string consumerUUID;  // optional
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
};

struct OutputActivateUserCreateData {
  std::string consumerUUID;  // optional
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
};

struct OutputAssignRole {
  std::string consumerUUID;
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
  std::vector<Value> roles;
};

struct OutputAssignRoleCreateData {
  std::string consumerUUID;
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
  std::vector<Value> roles;
};

struct OutputChangeLogo {
  std::string contentAsBase64;
  std::string mimeType;
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
};

struct OutputChangeLogoCreateData {
  std::string contentAsBase64;
  std::string mimeType;
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
};

struct OutputCreateMandator {
  std::string city;  // optional
  std::string country;  // optional
  std::string dateOfBirth;  // optional
  std::string description;  // optional
  std::string driversLicenseNumber;  // optional
  std::string email;
  std::string firstName;  // optional
  std::string identificationNumber;  // optional
  std::string lastName;  // optional
  std::string login;
  std::string name;  // optional
  std::string passportNumber;  // optional
  std::string phone;
  std::string salutation;  // optional
  std::string state;  // optional
  std::string street1;  // optional
  std::string street2;  // optional
  std::string zipCode;  // optional
};

struct OutputCreateMandatorCreateData {
  std::string city;  // optional
  std::string country;  // optional
  std::string dateOfBirth;  // optional
  std::string description;  // optional
  std::string driversLicenseNumber;  // optional
  std::string email;
  std::string firstName;  // optional
  std::string identificationNumber;  // optional
  std::string lastName;  // optional
  std::string login;
  std::string name;  // optional
  std::string passportNumber;  // optional
  std::string phone;
  std::string salutation;  // optional
  std::string state;  // optional
  std::string street1;  // optional
  std::string street2;  // optional
  std::string zipCode;  // optional
};

struct OutputCreateServiceUser {
  std::string mandatorName;
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
};

struct OutputCreateServiceUserCreateData {
  std::string mandatorName;
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
};

struct OutputDeactivateUser {
  std::string consumerUUID;  // optional
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
};

struct OutputDeactivateUserCreateData {
  std::string consumerUUID;  // optional
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
};

struct OutputGetKycDocument {
  std::string caseID;  // optional
  std::string encodedDataBase64;  // optional
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
};

struct OutputGetKycDocumentCreateData {
  std::string caseID;  // optional
  std::string encodedDataBase64;  // optional
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
};

struct OutputGetLogo {
  std::string contentAsBase64;
  std::string mimeType;
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
};

struct OutputGetLogoLoadMatch {
  std::string contentAsBase64;  // optional
  std::string mimeType;  // optional
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
};

struct OutputListOfAvailableRole {
  std::vector<Value> availableRoles;  // optional
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
};

struct OutputListOfAvailableRoleCreateData {
  std::vector<Value> availableRoles;  // optional
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
};

struct OutputListOfMandator {
  std::map<std::string, Value> filter;  // optional
  std::vector<Value> list;  // optional
  std::map<std::string, Value> pagination;  // optional
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
  std::map<std::string, Value> sorting;  // optional
};

struct OutputListOfMandatorCreateData {
  std::map<std::string, Value> filter;  // optional
  std::vector<Value> list;  // optional
  std::map<std::string, Value> pagination;  // optional
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
  std::map<std::string, Value> sorting;  // optional
};

struct OutputListOfModule {
  std::vector<Value> list;  // optional
  std::map<std::string, Value> pagination;  // optional
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
};

struct OutputListOfModuleCreateData {
  std::vector<Value> list;  // optional
  std::map<std::string, Value> pagination;  // optional
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
};

struct OutputListOfRoleGroup {
  std::map<std::string, Value> filter;  // optional
  std::vector<Value> groupRoles;  // optional
  std::map<std::string, Value> pagination;  // optional
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
  std::map<std::string, Value> sorting;  // optional
};

struct OutputListOfRoleGroupCreateData {
  std::map<std::string, Value> filter;  // optional
  std::vector<Value> groupRoles;  // optional
  std::map<std::string, Value> pagination;  // optional
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
  std::map<std::string, Value> sorting;  // optional
};

struct OutputListOfTransactionsHistory {
  std::map<std::string, Value> filter;  // optional
  std::vector<Value> list;  // optional
  std::map<std::string, Value> pagination;  // optional
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
  std::map<std::string, Value> sorting;  // optional
};

struct OutputListOfTransactionsHistoryCreateData {
  std::map<std::string, Value> filter;  // optional
  std::vector<Value> list;  // optional
  std::map<std::string, Value> pagination;  // optional
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
  std::map<std::string, Value> sorting;  // optional
};

struct OutputListOfUser {
  std::map<std::string, Value> filter;  // optional
  std::vector<Value> list;  // optional
  std::map<std::string, Value> pagination;  // optional
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
  std::map<std::string, Value> sorting;  // optional
};

struct OutputListOfUserCreateData {
  std::map<std::string, Value> filter;  // optional
  std::vector<Value> list;  // optional
  std::map<std::string, Value> pagination;  // optional
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
  std::map<std::string, Value> sorting;  // optional
};

struct OutputProvideCredential {
  std::string mandatorName;
  std::string password;  // optional
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
  std::string username;  // optional
};

struct OutputProvideCredentialCreateData {
  std::string mandatorName;
  std::string password;  // optional
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
  std::string username;  // optional
};

struct OutputRegisterUser {
  std::string city;  // optional
  std::string consumerId;  // optional
  std::string consumerLanguage;  // optional
  std::string country;  // optional
  std::string dateOfBirth;  // optional
  std::string driverLicenceNumber;  // optional
  std::string email;
  std::string firstName;  // optional
  std::string identificationNumber;  // optional
  std::string lastName;  // optional
  std::string login;  // optional
  std::string module;  // optional
  std::string passportNumber;  // optional
  std::string phone;  // optional
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
  std::string salutation;  // optional
  std::string state;  // optional
  std::string street1;  // optional
  std::string street2;  // optional
  std::string zip;  // optional
};

struct OutputRegisterUserCreateData {
  std::string city;  // optional
  std::string consumerId;  // optional
  std::string consumerLanguage;  // optional
  std::string country;  // optional
  std::string dateOfBirth;  // optional
  std::string driverLicenceNumber;  // optional
  std::string email;
  std::string firstName;  // optional
  std::string identificationNumber;  // optional
  std::string lastName;  // optional
  std::string login;  // optional
  std::string module;  // optional
  std::string passportNumber;  // optional
  std::string phone;  // optional
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
  std::string salutation;  // optional
  std::string state;  // optional
  std::string street1;  // optional
  std::string street2;  // optional
  std::string zip;  // optional
};

struct OutputRemoveRole {
  std::string consumerUUID;  // optional
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
  std::vector<Value> roles;  // optional
};

struct OutputRemoveRoleCreateData {
  std::string consumerUUID;  // optional
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
  std::vector<Value> roles;  // optional
};

struct OutputResendLink {
  std::string businessRegistrationNumber;  // optional
  std::string consumerUUID;
  std::string emailConfirmationCode;  // optional
  std::string phoneNumber;  // optional
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
};

struct OutputResendLinkCreateData {
  std::string businessRegistrationNumber;  // optional
  std::string consumerUUID;
  std::string emailConfirmationCode;  // optional
  std::string phoneNumber;  // optional
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
};

struct OutputResetPassword {
  std::string consumerUuid;  // optional
  std::string phoneNumber;  // optional
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
};

struct OutputResetPasswordCreateData {
  std::string consumerUuid;  // optional
  std::string phoneNumber;  // optional
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
};

struct OutputUpdateConsumer {
  std::string city;  // optional
  std::string consumerUuid;
  std::string consumerlanguage;  // optional
  std::string country;  // optional
  std::string dateOfBirth;  // optional
  std::string datetime_created;  // optional
  std::string driverLicenceNumber;  // optional
  std::string email;  // optional
  std::string firstName;  // optional
  std::string identificationNumber;  // optional
  bool kycPassed;  // optional
  std::string lastName;  // optional
  std::string nationality;  // optional
  std::string passportNumber;  // optional
  std::string phoneNumber;  // optional
  std::string placeOfBirth;  // optional
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
  std::string state;  // optional
  std::string street1;  // optional
  std::string street2;  // optional
  std::string transactionhistory_id;  // optional
  std::string zip;  // optional
};

struct OutputUpdateConsumerCreateData {
  std::string city;  // optional
  std::string consumerUuid;
  std::string consumerlanguage;  // optional
  std::string country;  // optional
  std::string dateOfBirth;  // optional
  std::string datetime_created;  // optional
  std::string driverLicenceNumber;  // optional
  std::string email;  // optional
  std::string firstName;  // optional
  std::string identificationNumber;  // optional
  bool kycPassed;  // optional
  std::string lastName;  // optional
  std::string nationality;  // optional
  std::string passportNumber;  // optional
  std::string phoneNumber;  // optional
  std::string placeOfBirth;  // optional
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
  std::string state;  // optional
  std::string street1;  // optional
  std::string street2;  // optional
  std::string transactionhistory_id;  // optional
  std::string zip;  // optional
};

struct OutputUpdateProfile {
  std::string consumerLanguage;  // optional
  std::string email;  // optional
  std::string firstName;  // optional
  std::string lastName;  // optional
  std::string phoneNumber;  // optional
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
};

struct OutputUpdateProfileCreateData {
  std::string consumerLanguage;  // optional
  std::string email;  // optional
  std::string firstName;  // optional
  std::string lastName;  // optional
  std::string phoneNumber;  // optional
  int64_t responseCode;  // optional
  std::string responseMessage;  // optional
};

struct Version {
  std::string appName;  // optional
  std::string buildDate;  // optional
  std::string version;  // optional
};

struct VersionLoadMatch {
  std::string appName;  // optional
  std::string buildDate;  // optional
  std::string version;  // optional
};

} // namespace types
} // namespace sdk

#endif // SDK_BLUEFINTECSUSERBACKOFFICE_TYPES_HPP

// Typed models for the BluefinTecsUserBackoffice SDK.
//
// GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
// params (op.<name>.points[].args.params[]). Field/param types come from the
// canonical type sentinels (source of truth: @voxgig/apidef VALID_CANON).
// Do not edit by hand.
//
// The operation pipeline passes plain maps; these classes are the typed,
// convertible view: `BluefinTecsUserBackoffice.fromMap(ent.data())` / `model.toMap()`.

class OutputActivateDigitalModule {
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;

  OutputActivateDigitalModule({
    this.responseCode,
    this.responseMessage,
  });

  factory OutputActivateDigitalModule.fromMap(Map<String, dynamic> m) => OutputActivateDigitalModule(
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    return m;
  }
}

class OutputActivateDigitalModuleCreateData {
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;

  OutputActivateDigitalModuleCreateData({
    this.responseCode,
    this.responseMessage,
  });

  factory OutputActivateDigitalModuleCreateData.fromMap(Map<String, dynamic> m) => OutputActivateDigitalModuleCreateData(
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    return m;
  }
}

class OutputActivatePortalModule {
  /// STRING (required at the API)
  String? clientSecret;
  /// STRING (required at the API)
  String? notificationEmail;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;

  OutputActivatePortalModule({
    this.clientSecret,
    this.notificationEmail,
    this.responseCode,
    this.responseMessage,
  });

  factory OutputActivatePortalModule.fromMap(Map<String, dynamic> m) => OutputActivatePortalModule(
        clientSecret: m['clientSecret'] is String ? m['clientSecret'] : null,
        notificationEmail: m['notificationEmail'] is String ? m['notificationEmail'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != clientSecret) {
      m['clientSecret'] = clientSecret;
    }
    if (null != notificationEmail) {
      m['notificationEmail'] = notificationEmail;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    return m;
  }
}

class OutputActivatePortalModuleCreateData {
  /// STRING (required at the API)
  String? clientSecret;
  /// STRING (required at the API)
  String? notificationEmail;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;

  OutputActivatePortalModuleCreateData({
    this.clientSecret,
    this.notificationEmail,
    this.responseCode,
    this.responseMessage,
  });

  factory OutputActivatePortalModuleCreateData.fromMap(Map<String, dynamic> m) => OutputActivatePortalModuleCreateData(
        clientSecret: m['clientSecret'] is String ? m['clientSecret'] : null,
        notificationEmail: m['notificationEmail'] is String ? m['notificationEmail'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != clientSecret) {
      m['clientSecret'] = clientSecret;
    }
    if (null != notificationEmail) {
      m['notificationEmail'] = notificationEmail;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    return m;
  }
}

class OutputActivateStoreModule {
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;

  OutputActivateStoreModule({
    this.responseCode,
    this.responseMessage,
  });

  factory OutputActivateStoreModule.fromMap(Map<String, dynamic> m) => OutputActivateStoreModule(
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    return m;
  }
}

class OutputActivateStoreModuleCreateData {
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;

  OutputActivateStoreModuleCreateData({
    this.responseCode,
    this.responseMessage,
  });

  factory OutputActivateStoreModuleCreateData.fromMap(Map<String, dynamic> m) => OutputActivateStoreModuleCreateData(
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    return m;
  }
}

class OutputActivateUser {
  /// STRING
  String? consumerUUID;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;

  OutputActivateUser({
    this.consumerUUID,
    this.responseCode,
    this.responseMessage,
  });

  factory OutputActivateUser.fromMap(Map<String, dynamic> m) => OutputActivateUser(
        consumerUUID: m['consumerUUID'] is String ? m['consumerUUID'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != consumerUUID) {
      m['consumerUUID'] = consumerUUID;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    return m;
  }
}

class OutputActivateUserCreateData {
  /// STRING
  String? consumerUUID;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;

  OutputActivateUserCreateData({
    this.consumerUUID,
    this.responseCode,
    this.responseMessage,
  });

  factory OutputActivateUserCreateData.fromMap(Map<String, dynamic> m) => OutputActivateUserCreateData(
        consumerUUID: m['consumerUUID'] is String ? m['consumerUUID'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != consumerUUID) {
      m['consumerUUID'] = consumerUUID;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    return m;
  }
}

class OutputAssignRole {
  /// STRING (required at the API)
  String? consumerUUID;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;
  /// ARRAY (required at the API)
  List<dynamic>? roles;

  OutputAssignRole({
    this.consumerUUID,
    this.responseCode,
    this.responseMessage,
    this.roles,
  });

  factory OutputAssignRole.fromMap(Map<String, dynamic> m) => OutputAssignRole(
        consumerUUID: m['consumerUUID'] is String ? m['consumerUUID'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
        roles: m['roles'] is List<dynamic> ? m['roles'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != consumerUUID) {
      m['consumerUUID'] = consumerUUID;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    if (null != roles) {
      m['roles'] = roles;
    }
    return m;
  }
}

class OutputAssignRoleCreateData {
  /// STRING (required at the API)
  String? consumerUUID;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;
  /// ARRAY (required at the API)
  List<dynamic>? roles;

  OutputAssignRoleCreateData({
    this.consumerUUID,
    this.responseCode,
    this.responseMessage,
    this.roles,
  });

  factory OutputAssignRoleCreateData.fromMap(Map<String, dynamic> m) => OutputAssignRoleCreateData(
        consumerUUID: m['consumerUUID'] is String ? m['consumerUUID'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
        roles: m['roles'] is List<dynamic> ? m['roles'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != consumerUUID) {
      m['consumerUUID'] = consumerUUID;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    if (null != roles) {
      m['roles'] = roles;
    }
    return m;
  }
}

class OutputChangeLogo {
  /// STRING (required at the API)
  String? contentAsBase64;
  /// STRING (required at the API)
  String? mimeType;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;

  OutputChangeLogo({
    this.contentAsBase64,
    this.mimeType,
    this.responseCode,
    this.responseMessage,
  });

  factory OutputChangeLogo.fromMap(Map<String, dynamic> m) => OutputChangeLogo(
        contentAsBase64: m['contentAsBase64'] is String ? m['contentAsBase64'] : null,
        mimeType: m['mimeType'] is String ? m['mimeType'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != contentAsBase64) {
      m['contentAsBase64'] = contentAsBase64;
    }
    if (null != mimeType) {
      m['mimeType'] = mimeType;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    return m;
  }
}

class OutputChangeLogoCreateData {
  /// STRING (required at the API)
  String? contentAsBase64;
  /// STRING (required at the API)
  String? mimeType;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;

  OutputChangeLogoCreateData({
    this.contentAsBase64,
    this.mimeType,
    this.responseCode,
    this.responseMessage,
  });

  factory OutputChangeLogoCreateData.fromMap(Map<String, dynamic> m) => OutputChangeLogoCreateData(
        contentAsBase64: m['contentAsBase64'] is String ? m['contentAsBase64'] : null,
        mimeType: m['mimeType'] is String ? m['mimeType'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != contentAsBase64) {
      m['contentAsBase64'] = contentAsBase64;
    }
    if (null != mimeType) {
      m['mimeType'] = mimeType;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    return m;
  }
}

class OutputCreateMandator {
  /// STRING
  String? city;
  /// STRING
  String? country;
  /// STRING
  String? dateOfBirth;
  /// STRING
  String? description;
  /// STRING
  String? driversLicenseNumber;
  /// STRING (required at the API)
  String? email;
  /// STRING
  String? firstName;
  /// STRING
  String? identificationNumber;
  /// STRING
  String? lastName;
  /// STRING (required at the API)
  String? login;
  /// STRING
  String? name;
  /// STRING
  String? passportNumber;
  /// STRING (required at the API)
  String? phone;
  /// STRING
  String? salutation;
  /// STRING
  String? state;
  /// STRING
  String? street1;
  /// STRING
  String? street2;
  /// STRING
  String? zipCode;

  OutputCreateMandator({
    this.city,
    this.country,
    this.dateOfBirth,
    this.description,
    this.driversLicenseNumber,
    this.email,
    this.firstName,
    this.identificationNumber,
    this.lastName,
    this.login,
    this.name,
    this.passportNumber,
    this.phone,
    this.salutation,
    this.state,
    this.street1,
    this.street2,
    this.zipCode,
  });

  factory OutputCreateMandator.fromMap(Map<String, dynamic> m) => OutputCreateMandator(
        city: m['city'] is String ? m['city'] : null,
        country: m['country'] is String ? m['country'] : null,
        dateOfBirth: m['dateOfBirth'] is String ? m['dateOfBirth'] : null,
        description: m['description'] is String ? m['description'] : null,
        driversLicenseNumber: m['driversLicenseNumber'] is String ? m['driversLicenseNumber'] : null,
        email: m['email'] is String ? m['email'] : null,
        firstName: m['firstName'] is String ? m['firstName'] : null,
        identificationNumber: m['identificationNumber'] is String ? m['identificationNumber'] : null,
        lastName: m['lastName'] is String ? m['lastName'] : null,
        login: m['login'] is String ? m['login'] : null,
        name: m['name'] is String ? m['name'] : null,
        passportNumber: m['passportNumber'] is String ? m['passportNumber'] : null,
        phone: m['phone'] is String ? m['phone'] : null,
        salutation: m['salutation'] is String ? m['salutation'] : null,
        state: m['state'] is String ? m['state'] : null,
        street1: m['street1'] is String ? m['street1'] : null,
        street2: m['street2'] is String ? m['street2'] : null,
        zipCode: m['zipCode'] is String ? m['zipCode'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != city) {
      m['city'] = city;
    }
    if (null != country) {
      m['country'] = country;
    }
    if (null != dateOfBirth) {
      m['dateOfBirth'] = dateOfBirth;
    }
    if (null != description) {
      m['description'] = description;
    }
    if (null != driversLicenseNumber) {
      m['driversLicenseNumber'] = driversLicenseNumber;
    }
    if (null != email) {
      m['email'] = email;
    }
    if (null != firstName) {
      m['firstName'] = firstName;
    }
    if (null != identificationNumber) {
      m['identificationNumber'] = identificationNumber;
    }
    if (null != lastName) {
      m['lastName'] = lastName;
    }
    if (null != login) {
      m['login'] = login;
    }
    if (null != name) {
      m['name'] = name;
    }
    if (null != passportNumber) {
      m['passportNumber'] = passportNumber;
    }
    if (null != phone) {
      m['phone'] = phone;
    }
    if (null != salutation) {
      m['salutation'] = salutation;
    }
    if (null != state) {
      m['state'] = state;
    }
    if (null != street1) {
      m['street1'] = street1;
    }
    if (null != street2) {
      m['street2'] = street2;
    }
    if (null != zipCode) {
      m['zipCode'] = zipCode;
    }
    return m;
  }
}

class OutputCreateMandatorCreateData {
  /// STRING
  String? city;
  /// STRING
  String? country;
  /// STRING
  String? dateOfBirth;
  /// STRING
  String? description;
  /// STRING
  String? driversLicenseNumber;
  /// STRING (required at the API)
  String? email;
  /// STRING
  String? firstName;
  /// STRING
  String? identificationNumber;
  /// STRING
  String? lastName;
  /// STRING (required at the API)
  String? login;
  /// STRING
  String? name;
  /// STRING
  String? passportNumber;
  /// STRING (required at the API)
  String? phone;
  /// STRING
  String? salutation;
  /// STRING
  String? state;
  /// STRING
  String? street1;
  /// STRING
  String? street2;
  /// STRING
  String? zipCode;

  OutputCreateMandatorCreateData({
    this.city,
    this.country,
    this.dateOfBirth,
    this.description,
    this.driversLicenseNumber,
    this.email,
    this.firstName,
    this.identificationNumber,
    this.lastName,
    this.login,
    this.name,
    this.passportNumber,
    this.phone,
    this.salutation,
    this.state,
    this.street1,
    this.street2,
    this.zipCode,
  });

  factory OutputCreateMandatorCreateData.fromMap(Map<String, dynamic> m) => OutputCreateMandatorCreateData(
        city: m['city'] is String ? m['city'] : null,
        country: m['country'] is String ? m['country'] : null,
        dateOfBirth: m['dateOfBirth'] is String ? m['dateOfBirth'] : null,
        description: m['description'] is String ? m['description'] : null,
        driversLicenseNumber: m['driversLicenseNumber'] is String ? m['driversLicenseNumber'] : null,
        email: m['email'] is String ? m['email'] : null,
        firstName: m['firstName'] is String ? m['firstName'] : null,
        identificationNumber: m['identificationNumber'] is String ? m['identificationNumber'] : null,
        lastName: m['lastName'] is String ? m['lastName'] : null,
        login: m['login'] is String ? m['login'] : null,
        name: m['name'] is String ? m['name'] : null,
        passportNumber: m['passportNumber'] is String ? m['passportNumber'] : null,
        phone: m['phone'] is String ? m['phone'] : null,
        salutation: m['salutation'] is String ? m['salutation'] : null,
        state: m['state'] is String ? m['state'] : null,
        street1: m['street1'] is String ? m['street1'] : null,
        street2: m['street2'] is String ? m['street2'] : null,
        zipCode: m['zipCode'] is String ? m['zipCode'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != city) {
      m['city'] = city;
    }
    if (null != country) {
      m['country'] = country;
    }
    if (null != dateOfBirth) {
      m['dateOfBirth'] = dateOfBirth;
    }
    if (null != description) {
      m['description'] = description;
    }
    if (null != driversLicenseNumber) {
      m['driversLicenseNumber'] = driversLicenseNumber;
    }
    if (null != email) {
      m['email'] = email;
    }
    if (null != firstName) {
      m['firstName'] = firstName;
    }
    if (null != identificationNumber) {
      m['identificationNumber'] = identificationNumber;
    }
    if (null != lastName) {
      m['lastName'] = lastName;
    }
    if (null != login) {
      m['login'] = login;
    }
    if (null != name) {
      m['name'] = name;
    }
    if (null != passportNumber) {
      m['passportNumber'] = passportNumber;
    }
    if (null != phone) {
      m['phone'] = phone;
    }
    if (null != salutation) {
      m['salutation'] = salutation;
    }
    if (null != state) {
      m['state'] = state;
    }
    if (null != street1) {
      m['street1'] = street1;
    }
    if (null != street2) {
      m['street2'] = street2;
    }
    if (null != zipCode) {
      m['zipCode'] = zipCode;
    }
    return m;
  }
}

class OutputCreateServiceUser {
  /// STRING (required at the API)
  String? mandatorName;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;

  OutputCreateServiceUser({
    this.mandatorName,
    this.responseCode,
    this.responseMessage,
  });

  factory OutputCreateServiceUser.fromMap(Map<String, dynamic> m) => OutputCreateServiceUser(
        mandatorName: m['mandatorName'] is String ? m['mandatorName'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != mandatorName) {
      m['mandatorName'] = mandatorName;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    return m;
  }
}

class OutputCreateServiceUserCreateData {
  /// STRING (required at the API)
  String? mandatorName;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;

  OutputCreateServiceUserCreateData({
    this.mandatorName,
    this.responseCode,
    this.responseMessage,
  });

  factory OutputCreateServiceUserCreateData.fromMap(Map<String, dynamic> m) => OutputCreateServiceUserCreateData(
        mandatorName: m['mandatorName'] is String ? m['mandatorName'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != mandatorName) {
      m['mandatorName'] = mandatorName;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    return m;
  }
}

class OutputDeactivateUser {
  /// STRING
  String? consumerUUID;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;

  OutputDeactivateUser({
    this.consumerUUID,
    this.responseCode,
    this.responseMessage,
  });

  factory OutputDeactivateUser.fromMap(Map<String, dynamic> m) => OutputDeactivateUser(
        consumerUUID: m['consumerUUID'] is String ? m['consumerUUID'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != consumerUUID) {
      m['consumerUUID'] = consumerUUID;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    return m;
  }
}

class OutputDeactivateUserCreateData {
  /// STRING
  String? consumerUUID;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;

  OutputDeactivateUserCreateData({
    this.consumerUUID,
    this.responseCode,
    this.responseMessage,
  });

  factory OutputDeactivateUserCreateData.fromMap(Map<String, dynamic> m) => OutputDeactivateUserCreateData(
        consumerUUID: m['consumerUUID'] is String ? m['consumerUUID'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != consumerUUID) {
      m['consumerUUID'] = consumerUUID;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    return m;
  }
}

class OutputGetKycDocument {
  /// STRING
  String? caseID;
  /// STRING
  String? encodedDataBase64;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;

  OutputGetKycDocument({
    this.caseID,
    this.encodedDataBase64,
    this.responseCode,
    this.responseMessage,
  });

  factory OutputGetKycDocument.fromMap(Map<String, dynamic> m) => OutputGetKycDocument(
        caseID: m['caseID'] is String ? m['caseID'] : null,
        encodedDataBase64: m['encodedDataBase64'] is String ? m['encodedDataBase64'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != caseID) {
      m['caseID'] = caseID;
    }
    if (null != encodedDataBase64) {
      m['encodedDataBase64'] = encodedDataBase64;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    return m;
  }
}

class OutputGetKycDocumentCreateData {
  /// STRING
  String? caseID;
  /// STRING
  String? encodedDataBase64;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;

  OutputGetKycDocumentCreateData({
    this.caseID,
    this.encodedDataBase64,
    this.responseCode,
    this.responseMessage,
  });

  factory OutputGetKycDocumentCreateData.fromMap(Map<String, dynamic> m) => OutputGetKycDocumentCreateData(
        caseID: m['caseID'] is String ? m['caseID'] : null,
        encodedDataBase64: m['encodedDataBase64'] is String ? m['encodedDataBase64'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != caseID) {
      m['caseID'] = caseID;
    }
    if (null != encodedDataBase64) {
      m['encodedDataBase64'] = encodedDataBase64;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    return m;
  }
}

class OutputGetLogo {
  /// STRING (required at the API)
  String? contentAsBase64;
  /// STRING (required at the API)
  String? mimeType;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;

  OutputGetLogo({
    this.contentAsBase64,
    this.mimeType,
    this.responseCode,
    this.responseMessage,
  });

  factory OutputGetLogo.fromMap(Map<String, dynamic> m) => OutputGetLogo(
        contentAsBase64: m['contentAsBase64'] is String ? m['contentAsBase64'] : null,
        mimeType: m['mimeType'] is String ? m['mimeType'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != contentAsBase64) {
      m['contentAsBase64'] = contentAsBase64;
    }
    if (null != mimeType) {
      m['mimeType'] = mimeType;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    return m;
  }
}

class OutputGetLogoLoadMatch {
  /// STRING
  String? contentAsBase64;
  /// STRING
  String? mimeType;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;

  OutputGetLogoLoadMatch({
    this.contentAsBase64,
    this.mimeType,
    this.responseCode,
    this.responseMessage,
  });

  factory OutputGetLogoLoadMatch.fromMap(Map<String, dynamic> m) => OutputGetLogoLoadMatch(
        contentAsBase64: m['contentAsBase64'] is String ? m['contentAsBase64'] : null,
        mimeType: m['mimeType'] is String ? m['mimeType'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != contentAsBase64) {
      m['contentAsBase64'] = contentAsBase64;
    }
    if (null != mimeType) {
      m['mimeType'] = mimeType;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    return m;
  }
}

class OutputListOfAvailableRole {
  /// ARRAY
  List<dynamic>? availableRoles;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;

  OutputListOfAvailableRole({
    this.availableRoles,
    this.responseCode,
    this.responseMessage,
  });

  factory OutputListOfAvailableRole.fromMap(Map<String, dynamic> m) => OutputListOfAvailableRole(
        availableRoles: m['availableRoles'] is List<dynamic> ? m['availableRoles'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != availableRoles) {
      m['availableRoles'] = availableRoles;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    return m;
  }
}

class OutputListOfAvailableRoleCreateData {
  /// ARRAY
  List<dynamic>? availableRoles;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;

  OutputListOfAvailableRoleCreateData({
    this.availableRoles,
    this.responseCode,
    this.responseMessage,
  });

  factory OutputListOfAvailableRoleCreateData.fromMap(Map<String, dynamic> m) => OutputListOfAvailableRoleCreateData(
        availableRoles: m['availableRoles'] is List<dynamic> ? m['availableRoles'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != availableRoles) {
      m['availableRoles'] = availableRoles;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    return m;
  }
}

class OutputListOfMandator {
  /// OBJECT
  Map<String, dynamic>? filter;
  /// ARRAY
  List<dynamic>? list;
  /// OBJECT
  Map<String, dynamic>? pagination;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;
  /// OBJECT
  Map<String, dynamic>? sorting;

  OutputListOfMandator({
    this.filter,
    this.list,
    this.pagination,
    this.responseCode,
    this.responseMessage,
    this.sorting,
  });

  factory OutputListOfMandator.fromMap(Map<String, dynamic> m) => OutputListOfMandator(
        filter: m['filter'] is Map<String, dynamic> ? m['filter'] : null,
        list: m['list'] is List<dynamic> ? m['list'] : null,
        pagination: m['pagination'] is Map<String, dynamic> ? m['pagination'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
        sorting: m['sorting'] is Map<String, dynamic> ? m['sorting'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != filter) {
      m['filter'] = filter;
    }
    if (null != list) {
      m['list'] = list;
    }
    if (null != pagination) {
      m['pagination'] = pagination;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    if (null != sorting) {
      m['sorting'] = sorting;
    }
    return m;
  }
}

class OutputListOfMandatorCreateData {
  /// OBJECT
  Map<String, dynamic>? filter;
  /// ARRAY
  List<dynamic>? list;
  /// OBJECT
  Map<String, dynamic>? pagination;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;
  /// OBJECT
  Map<String, dynamic>? sorting;

  OutputListOfMandatorCreateData({
    this.filter,
    this.list,
    this.pagination,
    this.responseCode,
    this.responseMessage,
    this.sorting,
  });

  factory OutputListOfMandatorCreateData.fromMap(Map<String, dynamic> m) => OutputListOfMandatorCreateData(
        filter: m['filter'] is Map<String, dynamic> ? m['filter'] : null,
        list: m['list'] is List<dynamic> ? m['list'] : null,
        pagination: m['pagination'] is Map<String, dynamic> ? m['pagination'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
        sorting: m['sorting'] is Map<String, dynamic> ? m['sorting'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != filter) {
      m['filter'] = filter;
    }
    if (null != list) {
      m['list'] = list;
    }
    if (null != pagination) {
      m['pagination'] = pagination;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    if (null != sorting) {
      m['sorting'] = sorting;
    }
    return m;
  }
}

class OutputListOfModule {
  /// ARRAY
  List<dynamic>? list;
  /// OBJECT
  Map<String, dynamic>? pagination;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;

  OutputListOfModule({
    this.list,
    this.pagination,
    this.responseCode,
    this.responseMessage,
  });

  factory OutputListOfModule.fromMap(Map<String, dynamic> m) => OutputListOfModule(
        list: m['list'] is List<dynamic> ? m['list'] : null,
        pagination: m['pagination'] is Map<String, dynamic> ? m['pagination'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != list) {
      m['list'] = list;
    }
    if (null != pagination) {
      m['pagination'] = pagination;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    return m;
  }
}

class OutputListOfModuleCreateData {
  /// ARRAY
  List<dynamic>? list;
  /// OBJECT
  Map<String, dynamic>? pagination;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;

  OutputListOfModuleCreateData({
    this.list,
    this.pagination,
    this.responseCode,
    this.responseMessage,
  });

  factory OutputListOfModuleCreateData.fromMap(Map<String, dynamic> m) => OutputListOfModuleCreateData(
        list: m['list'] is List<dynamic> ? m['list'] : null,
        pagination: m['pagination'] is Map<String, dynamic> ? m['pagination'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != list) {
      m['list'] = list;
    }
    if (null != pagination) {
      m['pagination'] = pagination;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    return m;
  }
}

class OutputListOfRoleGroup {
  /// OBJECT
  Map<String, dynamic>? filter;
  /// ARRAY
  List<dynamic>? groupRoles;
  /// OBJECT
  Map<String, dynamic>? pagination;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;
  /// OBJECT
  Map<String, dynamic>? sorting;

  OutputListOfRoleGroup({
    this.filter,
    this.groupRoles,
    this.pagination,
    this.responseCode,
    this.responseMessage,
    this.sorting,
  });

  factory OutputListOfRoleGroup.fromMap(Map<String, dynamic> m) => OutputListOfRoleGroup(
        filter: m['filter'] is Map<String, dynamic> ? m['filter'] : null,
        groupRoles: m['groupRoles'] is List<dynamic> ? m['groupRoles'] : null,
        pagination: m['pagination'] is Map<String, dynamic> ? m['pagination'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
        sorting: m['sorting'] is Map<String, dynamic> ? m['sorting'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != filter) {
      m['filter'] = filter;
    }
    if (null != groupRoles) {
      m['groupRoles'] = groupRoles;
    }
    if (null != pagination) {
      m['pagination'] = pagination;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    if (null != sorting) {
      m['sorting'] = sorting;
    }
    return m;
  }
}

class OutputListOfRoleGroupCreateData {
  /// OBJECT
  Map<String, dynamic>? filter;
  /// ARRAY
  List<dynamic>? groupRoles;
  /// OBJECT
  Map<String, dynamic>? pagination;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;
  /// OBJECT
  Map<String, dynamic>? sorting;

  OutputListOfRoleGroupCreateData({
    this.filter,
    this.groupRoles,
    this.pagination,
    this.responseCode,
    this.responseMessage,
    this.sorting,
  });

  factory OutputListOfRoleGroupCreateData.fromMap(Map<String, dynamic> m) => OutputListOfRoleGroupCreateData(
        filter: m['filter'] is Map<String, dynamic> ? m['filter'] : null,
        groupRoles: m['groupRoles'] is List<dynamic> ? m['groupRoles'] : null,
        pagination: m['pagination'] is Map<String, dynamic> ? m['pagination'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
        sorting: m['sorting'] is Map<String, dynamic> ? m['sorting'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != filter) {
      m['filter'] = filter;
    }
    if (null != groupRoles) {
      m['groupRoles'] = groupRoles;
    }
    if (null != pagination) {
      m['pagination'] = pagination;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    if (null != sorting) {
      m['sorting'] = sorting;
    }
    return m;
  }
}

class OutputListOfTransactionsHistory {
  /// OBJECT
  Map<String, dynamic>? filter;
  /// ARRAY
  List<dynamic>? list;
  /// OBJECT
  Map<String, dynamic>? pagination;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;
  /// OBJECT
  Map<String, dynamic>? sorting;

  OutputListOfTransactionsHistory({
    this.filter,
    this.list,
    this.pagination,
    this.responseCode,
    this.responseMessage,
    this.sorting,
  });

  factory OutputListOfTransactionsHistory.fromMap(Map<String, dynamic> m) => OutputListOfTransactionsHistory(
        filter: m['filter'] is Map<String, dynamic> ? m['filter'] : null,
        list: m['list'] is List<dynamic> ? m['list'] : null,
        pagination: m['pagination'] is Map<String, dynamic> ? m['pagination'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
        sorting: m['sorting'] is Map<String, dynamic> ? m['sorting'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != filter) {
      m['filter'] = filter;
    }
    if (null != list) {
      m['list'] = list;
    }
    if (null != pagination) {
      m['pagination'] = pagination;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    if (null != sorting) {
      m['sorting'] = sorting;
    }
    return m;
  }
}

class OutputListOfTransactionsHistoryCreateData {
  /// OBJECT
  Map<String, dynamic>? filter;
  /// ARRAY
  List<dynamic>? list;
  /// OBJECT
  Map<String, dynamic>? pagination;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;
  /// OBJECT
  Map<String, dynamic>? sorting;

  OutputListOfTransactionsHistoryCreateData({
    this.filter,
    this.list,
    this.pagination,
    this.responseCode,
    this.responseMessage,
    this.sorting,
  });

  factory OutputListOfTransactionsHistoryCreateData.fromMap(Map<String, dynamic> m) => OutputListOfTransactionsHistoryCreateData(
        filter: m['filter'] is Map<String, dynamic> ? m['filter'] : null,
        list: m['list'] is List<dynamic> ? m['list'] : null,
        pagination: m['pagination'] is Map<String, dynamic> ? m['pagination'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
        sorting: m['sorting'] is Map<String, dynamic> ? m['sorting'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != filter) {
      m['filter'] = filter;
    }
    if (null != list) {
      m['list'] = list;
    }
    if (null != pagination) {
      m['pagination'] = pagination;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    if (null != sorting) {
      m['sorting'] = sorting;
    }
    return m;
  }
}

class OutputListOfUser {
  /// OBJECT
  Map<String, dynamic>? filter;
  /// ARRAY
  List<dynamic>? list;
  /// OBJECT
  Map<String, dynamic>? pagination;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;
  /// OBJECT
  Map<String, dynamic>? sorting;

  OutputListOfUser({
    this.filter,
    this.list,
    this.pagination,
    this.responseCode,
    this.responseMessage,
    this.sorting,
  });

  factory OutputListOfUser.fromMap(Map<String, dynamic> m) => OutputListOfUser(
        filter: m['filter'] is Map<String, dynamic> ? m['filter'] : null,
        list: m['list'] is List<dynamic> ? m['list'] : null,
        pagination: m['pagination'] is Map<String, dynamic> ? m['pagination'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
        sorting: m['sorting'] is Map<String, dynamic> ? m['sorting'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != filter) {
      m['filter'] = filter;
    }
    if (null != list) {
      m['list'] = list;
    }
    if (null != pagination) {
      m['pagination'] = pagination;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    if (null != sorting) {
      m['sorting'] = sorting;
    }
    return m;
  }
}

class OutputListOfUserCreateData {
  /// OBJECT
  Map<String, dynamic>? filter;
  /// ARRAY
  List<dynamic>? list;
  /// OBJECT
  Map<String, dynamic>? pagination;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;
  /// OBJECT
  Map<String, dynamic>? sorting;

  OutputListOfUserCreateData({
    this.filter,
    this.list,
    this.pagination,
    this.responseCode,
    this.responseMessage,
    this.sorting,
  });

  factory OutputListOfUserCreateData.fromMap(Map<String, dynamic> m) => OutputListOfUserCreateData(
        filter: m['filter'] is Map<String, dynamic> ? m['filter'] : null,
        list: m['list'] is List<dynamic> ? m['list'] : null,
        pagination: m['pagination'] is Map<String, dynamic> ? m['pagination'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
        sorting: m['sorting'] is Map<String, dynamic> ? m['sorting'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != filter) {
      m['filter'] = filter;
    }
    if (null != list) {
      m['list'] = list;
    }
    if (null != pagination) {
      m['pagination'] = pagination;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    if (null != sorting) {
      m['sorting'] = sorting;
    }
    return m;
  }
}

class OutputProvideCredential {
  /// STRING (required at the API)
  String? mandatorName;
  /// STRING
  String? password;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;
  /// STRING
  String? username;

  OutputProvideCredential({
    this.mandatorName,
    this.password,
    this.responseCode,
    this.responseMessage,
    this.username,
  });

  factory OutputProvideCredential.fromMap(Map<String, dynamic> m) => OutputProvideCredential(
        mandatorName: m['mandatorName'] is String ? m['mandatorName'] : null,
        password: m['password'] is String ? m['password'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
        username: m['username'] is String ? m['username'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != mandatorName) {
      m['mandatorName'] = mandatorName;
    }
    if (null != password) {
      m['password'] = password;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    if (null != username) {
      m['username'] = username;
    }
    return m;
  }
}

class OutputProvideCredentialCreateData {
  /// STRING (required at the API)
  String? mandatorName;
  /// STRING
  String? password;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;
  /// STRING
  String? username;

  OutputProvideCredentialCreateData({
    this.mandatorName,
    this.password,
    this.responseCode,
    this.responseMessage,
    this.username,
  });

  factory OutputProvideCredentialCreateData.fromMap(Map<String, dynamic> m) => OutputProvideCredentialCreateData(
        mandatorName: m['mandatorName'] is String ? m['mandatorName'] : null,
        password: m['password'] is String ? m['password'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
        username: m['username'] is String ? m['username'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != mandatorName) {
      m['mandatorName'] = mandatorName;
    }
    if (null != password) {
      m['password'] = password;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    if (null != username) {
      m['username'] = username;
    }
    return m;
  }
}

class OutputRegisterUser {
  /// STRING
  String? city;
  /// STRING
  String? consumerId;
  /// STRING
  String? consumerLanguage;
  /// STRING
  String? country;
  /// STRING
  String? dateOfBirth;
  /// STRING
  String? driverLicenceNumber;
  /// STRING (required at the API)
  String? email;
  /// STRING
  String? firstName;
  /// STRING
  String? identificationNumber;
  /// STRING
  String? lastName;
  /// STRING
  String? login;
  /// STRING
  String? module;
  /// STRING
  String? passportNumber;
  /// STRING
  String? phone;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;
  /// STRING
  String? salutation;
  /// STRING
  String? state;
  /// STRING
  String? street1;
  /// STRING
  String? street2;
  /// STRING
  String? zip;

  OutputRegisterUser({
    this.city,
    this.consumerId,
    this.consumerLanguage,
    this.country,
    this.dateOfBirth,
    this.driverLicenceNumber,
    this.email,
    this.firstName,
    this.identificationNumber,
    this.lastName,
    this.login,
    this.module,
    this.passportNumber,
    this.phone,
    this.responseCode,
    this.responseMessage,
    this.salutation,
    this.state,
    this.street1,
    this.street2,
    this.zip,
  });

  factory OutputRegisterUser.fromMap(Map<String, dynamic> m) => OutputRegisterUser(
        city: m['city'] is String ? m['city'] : null,
        consumerId: m['consumerId'] is String ? m['consumerId'] : null,
        consumerLanguage: m['consumerLanguage'] is String ? m['consumerLanguage'] : null,
        country: m['country'] is String ? m['country'] : null,
        dateOfBirth: m['dateOfBirth'] is String ? m['dateOfBirth'] : null,
        driverLicenceNumber: m['driverLicenceNumber'] is String ? m['driverLicenceNumber'] : null,
        email: m['email'] is String ? m['email'] : null,
        firstName: m['firstName'] is String ? m['firstName'] : null,
        identificationNumber: m['identificationNumber'] is String ? m['identificationNumber'] : null,
        lastName: m['lastName'] is String ? m['lastName'] : null,
        login: m['login'] is String ? m['login'] : null,
        module: m['module'] is String ? m['module'] : null,
        passportNumber: m['passportNumber'] is String ? m['passportNumber'] : null,
        phone: m['phone'] is String ? m['phone'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
        salutation: m['salutation'] is String ? m['salutation'] : null,
        state: m['state'] is String ? m['state'] : null,
        street1: m['street1'] is String ? m['street1'] : null,
        street2: m['street2'] is String ? m['street2'] : null,
        zip: m['zip'] is String ? m['zip'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != city) {
      m['city'] = city;
    }
    if (null != consumerId) {
      m['consumerId'] = consumerId;
    }
    if (null != consumerLanguage) {
      m['consumerLanguage'] = consumerLanguage;
    }
    if (null != country) {
      m['country'] = country;
    }
    if (null != dateOfBirth) {
      m['dateOfBirth'] = dateOfBirth;
    }
    if (null != driverLicenceNumber) {
      m['driverLicenceNumber'] = driverLicenceNumber;
    }
    if (null != email) {
      m['email'] = email;
    }
    if (null != firstName) {
      m['firstName'] = firstName;
    }
    if (null != identificationNumber) {
      m['identificationNumber'] = identificationNumber;
    }
    if (null != lastName) {
      m['lastName'] = lastName;
    }
    if (null != login) {
      m['login'] = login;
    }
    if (null != module) {
      m['module'] = module;
    }
    if (null != passportNumber) {
      m['passportNumber'] = passportNumber;
    }
    if (null != phone) {
      m['phone'] = phone;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    if (null != salutation) {
      m['salutation'] = salutation;
    }
    if (null != state) {
      m['state'] = state;
    }
    if (null != street1) {
      m['street1'] = street1;
    }
    if (null != street2) {
      m['street2'] = street2;
    }
    if (null != zip) {
      m['zip'] = zip;
    }
    return m;
  }
}

class OutputRegisterUserCreateData {
  /// STRING
  String? city;
  /// STRING
  String? consumerId;
  /// STRING
  String? consumerLanguage;
  /// STRING
  String? country;
  /// STRING
  String? dateOfBirth;
  /// STRING
  String? driverLicenceNumber;
  /// STRING (required at the API)
  String? email;
  /// STRING
  String? firstName;
  /// STRING
  String? identificationNumber;
  /// STRING
  String? lastName;
  /// STRING
  String? login;
  /// STRING
  String? module;
  /// STRING
  String? passportNumber;
  /// STRING
  String? phone;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;
  /// STRING
  String? salutation;
  /// STRING
  String? state;
  /// STRING
  String? street1;
  /// STRING
  String? street2;
  /// STRING
  String? zip;

  OutputRegisterUserCreateData({
    this.city,
    this.consumerId,
    this.consumerLanguage,
    this.country,
    this.dateOfBirth,
    this.driverLicenceNumber,
    this.email,
    this.firstName,
    this.identificationNumber,
    this.lastName,
    this.login,
    this.module,
    this.passportNumber,
    this.phone,
    this.responseCode,
    this.responseMessage,
    this.salutation,
    this.state,
    this.street1,
    this.street2,
    this.zip,
  });

  factory OutputRegisterUserCreateData.fromMap(Map<String, dynamic> m) => OutputRegisterUserCreateData(
        city: m['city'] is String ? m['city'] : null,
        consumerId: m['consumerId'] is String ? m['consumerId'] : null,
        consumerLanguage: m['consumerLanguage'] is String ? m['consumerLanguage'] : null,
        country: m['country'] is String ? m['country'] : null,
        dateOfBirth: m['dateOfBirth'] is String ? m['dateOfBirth'] : null,
        driverLicenceNumber: m['driverLicenceNumber'] is String ? m['driverLicenceNumber'] : null,
        email: m['email'] is String ? m['email'] : null,
        firstName: m['firstName'] is String ? m['firstName'] : null,
        identificationNumber: m['identificationNumber'] is String ? m['identificationNumber'] : null,
        lastName: m['lastName'] is String ? m['lastName'] : null,
        login: m['login'] is String ? m['login'] : null,
        module: m['module'] is String ? m['module'] : null,
        passportNumber: m['passportNumber'] is String ? m['passportNumber'] : null,
        phone: m['phone'] is String ? m['phone'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
        salutation: m['salutation'] is String ? m['salutation'] : null,
        state: m['state'] is String ? m['state'] : null,
        street1: m['street1'] is String ? m['street1'] : null,
        street2: m['street2'] is String ? m['street2'] : null,
        zip: m['zip'] is String ? m['zip'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != city) {
      m['city'] = city;
    }
    if (null != consumerId) {
      m['consumerId'] = consumerId;
    }
    if (null != consumerLanguage) {
      m['consumerLanguage'] = consumerLanguage;
    }
    if (null != country) {
      m['country'] = country;
    }
    if (null != dateOfBirth) {
      m['dateOfBirth'] = dateOfBirth;
    }
    if (null != driverLicenceNumber) {
      m['driverLicenceNumber'] = driverLicenceNumber;
    }
    if (null != email) {
      m['email'] = email;
    }
    if (null != firstName) {
      m['firstName'] = firstName;
    }
    if (null != identificationNumber) {
      m['identificationNumber'] = identificationNumber;
    }
    if (null != lastName) {
      m['lastName'] = lastName;
    }
    if (null != login) {
      m['login'] = login;
    }
    if (null != module) {
      m['module'] = module;
    }
    if (null != passportNumber) {
      m['passportNumber'] = passportNumber;
    }
    if (null != phone) {
      m['phone'] = phone;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    if (null != salutation) {
      m['salutation'] = salutation;
    }
    if (null != state) {
      m['state'] = state;
    }
    if (null != street1) {
      m['street1'] = street1;
    }
    if (null != street2) {
      m['street2'] = street2;
    }
    if (null != zip) {
      m['zip'] = zip;
    }
    return m;
  }
}

class OutputRemoveRole {
  /// STRING
  String? consumerUUID;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;
  /// ARRAY
  List<dynamic>? roles;

  OutputRemoveRole({
    this.consumerUUID,
    this.responseCode,
    this.responseMessage,
    this.roles,
  });

  factory OutputRemoveRole.fromMap(Map<String, dynamic> m) => OutputRemoveRole(
        consumerUUID: m['consumerUUID'] is String ? m['consumerUUID'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
        roles: m['roles'] is List<dynamic> ? m['roles'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != consumerUUID) {
      m['consumerUUID'] = consumerUUID;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    if (null != roles) {
      m['roles'] = roles;
    }
    return m;
  }
}

class OutputRemoveRoleCreateData {
  /// STRING
  String? consumerUUID;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;
  /// ARRAY
  List<dynamic>? roles;

  OutputRemoveRoleCreateData({
    this.consumerUUID,
    this.responseCode,
    this.responseMessage,
    this.roles,
  });

  factory OutputRemoveRoleCreateData.fromMap(Map<String, dynamic> m) => OutputRemoveRoleCreateData(
        consumerUUID: m['consumerUUID'] is String ? m['consumerUUID'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
        roles: m['roles'] is List<dynamic> ? m['roles'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != consumerUUID) {
      m['consumerUUID'] = consumerUUID;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    if (null != roles) {
      m['roles'] = roles;
    }
    return m;
  }
}

class OutputResendLink {
  /// STRING
  String? businessRegistrationNumber;
  /// STRING (required at the API)
  String? consumerUUID;
  /// STRING
  String? emailConfirmationCode;
  /// STRING
  String? phoneNumber;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;

  OutputResendLink({
    this.businessRegistrationNumber,
    this.consumerUUID,
    this.emailConfirmationCode,
    this.phoneNumber,
    this.responseCode,
    this.responseMessage,
  });

  factory OutputResendLink.fromMap(Map<String, dynamic> m) => OutputResendLink(
        businessRegistrationNumber: m['businessRegistrationNumber'] is String ? m['businessRegistrationNumber'] : null,
        consumerUUID: m['consumerUUID'] is String ? m['consumerUUID'] : null,
        emailConfirmationCode: m['emailConfirmationCode'] is String ? m['emailConfirmationCode'] : null,
        phoneNumber: m['phoneNumber'] is String ? m['phoneNumber'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != businessRegistrationNumber) {
      m['businessRegistrationNumber'] = businessRegistrationNumber;
    }
    if (null != consumerUUID) {
      m['consumerUUID'] = consumerUUID;
    }
    if (null != emailConfirmationCode) {
      m['emailConfirmationCode'] = emailConfirmationCode;
    }
    if (null != phoneNumber) {
      m['phoneNumber'] = phoneNumber;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    return m;
  }
}

class OutputResendLinkCreateData {
  /// STRING
  String? businessRegistrationNumber;
  /// STRING (required at the API)
  String? consumerUUID;
  /// STRING
  String? emailConfirmationCode;
  /// STRING
  String? phoneNumber;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;

  OutputResendLinkCreateData({
    this.businessRegistrationNumber,
    this.consumerUUID,
    this.emailConfirmationCode,
    this.phoneNumber,
    this.responseCode,
    this.responseMessage,
  });

  factory OutputResendLinkCreateData.fromMap(Map<String, dynamic> m) => OutputResendLinkCreateData(
        businessRegistrationNumber: m['businessRegistrationNumber'] is String ? m['businessRegistrationNumber'] : null,
        consumerUUID: m['consumerUUID'] is String ? m['consumerUUID'] : null,
        emailConfirmationCode: m['emailConfirmationCode'] is String ? m['emailConfirmationCode'] : null,
        phoneNumber: m['phoneNumber'] is String ? m['phoneNumber'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != businessRegistrationNumber) {
      m['businessRegistrationNumber'] = businessRegistrationNumber;
    }
    if (null != consumerUUID) {
      m['consumerUUID'] = consumerUUID;
    }
    if (null != emailConfirmationCode) {
      m['emailConfirmationCode'] = emailConfirmationCode;
    }
    if (null != phoneNumber) {
      m['phoneNumber'] = phoneNumber;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    return m;
  }
}

class OutputResetPassword {
  /// STRING
  String? consumerUuid;
  /// STRING
  String? phoneNumber;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;

  OutputResetPassword({
    this.consumerUuid,
    this.phoneNumber,
    this.responseCode,
    this.responseMessage,
  });

  factory OutputResetPassword.fromMap(Map<String, dynamic> m) => OutputResetPassword(
        consumerUuid: m['consumerUuid'] is String ? m['consumerUuid'] : null,
        phoneNumber: m['phoneNumber'] is String ? m['phoneNumber'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != consumerUuid) {
      m['consumerUuid'] = consumerUuid;
    }
    if (null != phoneNumber) {
      m['phoneNumber'] = phoneNumber;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    return m;
  }
}

class OutputResetPasswordCreateData {
  /// STRING
  String? consumerUuid;
  /// STRING
  String? phoneNumber;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;

  OutputResetPasswordCreateData({
    this.consumerUuid,
    this.phoneNumber,
    this.responseCode,
    this.responseMessage,
  });

  factory OutputResetPasswordCreateData.fromMap(Map<String, dynamic> m) => OutputResetPasswordCreateData(
        consumerUuid: m['consumerUuid'] is String ? m['consumerUuid'] : null,
        phoneNumber: m['phoneNumber'] is String ? m['phoneNumber'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != consumerUuid) {
      m['consumerUuid'] = consumerUuid;
    }
    if (null != phoneNumber) {
      m['phoneNumber'] = phoneNumber;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    return m;
  }
}

class OutputUpdateConsumer {
  /// STRING
  String? city;
  /// STRING (required at the API)
  String? consumerUuid;
  /// STRING
  String? consumerlanguage;
  /// STRING
  String? country;
  /// STRING
  String? dateOfBirth;
  /// STRING
  String? datetime_created;
  /// STRING
  String? driverLicenceNumber;
  /// STRING
  String? email;
  /// STRING
  String? firstName;
  /// STRING
  String? identificationNumber;
  /// BOOLEAN
  bool? kycPassed;
  /// STRING
  String? lastName;
  /// STRING
  String? nationality;
  /// STRING
  String? passportNumber;
  /// STRING
  String? phoneNumber;
  /// STRING
  String? placeOfBirth;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;
  /// STRING
  String? state;
  /// STRING
  String? street1;
  /// STRING
  String? street2;
  /// STRING
  String? transactionhistory_id;
  /// STRING
  String? zip;

  OutputUpdateConsumer({
    this.city,
    this.consumerUuid,
    this.consumerlanguage,
    this.country,
    this.dateOfBirth,
    this.datetime_created,
    this.driverLicenceNumber,
    this.email,
    this.firstName,
    this.identificationNumber,
    this.kycPassed,
    this.lastName,
    this.nationality,
    this.passportNumber,
    this.phoneNumber,
    this.placeOfBirth,
    this.responseCode,
    this.responseMessage,
    this.state,
    this.street1,
    this.street2,
    this.transactionhistory_id,
    this.zip,
  });

  factory OutputUpdateConsumer.fromMap(Map<String, dynamic> m) => OutputUpdateConsumer(
        city: m['city'] is String ? m['city'] : null,
        consumerUuid: m['consumerUuid'] is String ? m['consumerUuid'] : null,
        consumerlanguage: m['consumerlanguage'] is String ? m['consumerlanguage'] : null,
        country: m['country'] is String ? m['country'] : null,
        dateOfBirth: m['dateOfBirth'] is String ? m['dateOfBirth'] : null,
        datetime_created: m['datetime_created'] is String ? m['datetime_created'] : null,
        driverLicenceNumber: m['driverLicenceNumber'] is String ? m['driverLicenceNumber'] : null,
        email: m['email'] is String ? m['email'] : null,
        firstName: m['firstName'] is String ? m['firstName'] : null,
        identificationNumber: m['identificationNumber'] is String ? m['identificationNumber'] : null,
        kycPassed: m['kycPassed'] is bool ? m['kycPassed'] : null,
        lastName: m['lastName'] is String ? m['lastName'] : null,
        nationality: m['nationality'] is String ? m['nationality'] : null,
        passportNumber: m['passportNumber'] is String ? m['passportNumber'] : null,
        phoneNumber: m['phoneNumber'] is String ? m['phoneNumber'] : null,
        placeOfBirth: m['placeOfBirth'] is String ? m['placeOfBirth'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
        state: m['state'] is String ? m['state'] : null,
        street1: m['street1'] is String ? m['street1'] : null,
        street2: m['street2'] is String ? m['street2'] : null,
        transactionhistory_id: m['transactionhistory_id'] is String ? m['transactionhistory_id'] : null,
        zip: m['zip'] is String ? m['zip'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != city) {
      m['city'] = city;
    }
    if (null != consumerUuid) {
      m['consumerUuid'] = consumerUuid;
    }
    if (null != consumerlanguage) {
      m['consumerlanguage'] = consumerlanguage;
    }
    if (null != country) {
      m['country'] = country;
    }
    if (null != dateOfBirth) {
      m['dateOfBirth'] = dateOfBirth;
    }
    if (null != datetime_created) {
      m['datetime_created'] = datetime_created;
    }
    if (null != driverLicenceNumber) {
      m['driverLicenceNumber'] = driverLicenceNumber;
    }
    if (null != email) {
      m['email'] = email;
    }
    if (null != firstName) {
      m['firstName'] = firstName;
    }
    if (null != identificationNumber) {
      m['identificationNumber'] = identificationNumber;
    }
    if (null != kycPassed) {
      m['kycPassed'] = kycPassed;
    }
    if (null != lastName) {
      m['lastName'] = lastName;
    }
    if (null != nationality) {
      m['nationality'] = nationality;
    }
    if (null != passportNumber) {
      m['passportNumber'] = passportNumber;
    }
    if (null != phoneNumber) {
      m['phoneNumber'] = phoneNumber;
    }
    if (null != placeOfBirth) {
      m['placeOfBirth'] = placeOfBirth;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    if (null != state) {
      m['state'] = state;
    }
    if (null != street1) {
      m['street1'] = street1;
    }
    if (null != street2) {
      m['street2'] = street2;
    }
    if (null != transactionhistory_id) {
      m['transactionhistory_id'] = transactionhistory_id;
    }
    if (null != zip) {
      m['zip'] = zip;
    }
    return m;
  }
}

class OutputUpdateConsumerCreateData {
  /// STRING
  String? city;
  /// STRING (required at the API)
  String? consumerUuid;
  /// STRING
  String? consumerlanguage;
  /// STRING
  String? country;
  /// STRING
  String? dateOfBirth;
  /// STRING
  String? datetime_created;
  /// STRING
  String? driverLicenceNumber;
  /// STRING
  String? email;
  /// STRING
  String? firstName;
  /// STRING
  String? identificationNumber;
  /// BOOLEAN
  bool? kycPassed;
  /// STRING
  String? lastName;
  /// STRING
  String? nationality;
  /// STRING
  String? passportNumber;
  /// STRING
  String? phoneNumber;
  /// STRING
  String? placeOfBirth;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;
  /// STRING
  String? state;
  /// STRING
  String? street1;
  /// STRING
  String? street2;
  /// STRING
  String? transactionhistory_id;
  /// STRING
  String? zip;

  OutputUpdateConsumerCreateData({
    this.city,
    this.consumerUuid,
    this.consumerlanguage,
    this.country,
    this.dateOfBirth,
    this.datetime_created,
    this.driverLicenceNumber,
    this.email,
    this.firstName,
    this.identificationNumber,
    this.kycPassed,
    this.lastName,
    this.nationality,
    this.passportNumber,
    this.phoneNumber,
    this.placeOfBirth,
    this.responseCode,
    this.responseMessage,
    this.state,
    this.street1,
    this.street2,
    this.transactionhistory_id,
    this.zip,
  });

  factory OutputUpdateConsumerCreateData.fromMap(Map<String, dynamic> m) => OutputUpdateConsumerCreateData(
        city: m['city'] is String ? m['city'] : null,
        consumerUuid: m['consumerUuid'] is String ? m['consumerUuid'] : null,
        consumerlanguage: m['consumerlanguage'] is String ? m['consumerlanguage'] : null,
        country: m['country'] is String ? m['country'] : null,
        dateOfBirth: m['dateOfBirth'] is String ? m['dateOfBirth'] : null,
        datetime_created: m['datetime_created'] is String ? m['datetime_created'] : null,
        driverLicenceNumber: m['driverLicenceNumber'] is String ? m['driverLicenceNumber'] : null,
        email: m['email'] is String ? m['email'] : null,
        firstName: m['firstName'] is String ? m['firstName'] : null,
        identificationNumber: m['identificationNumber'] is String ? m['identificationNumber'] : null,
        kycPassed: m['kycPassed'] is bool ? m['kycPassed'] : null,
        lastName: m['lastName'] is String ? m['lastName'] : null,
        nationality: m['nationality'] is String ? m['nationality'] : null,
        passportNumber: m['passportNumber'] is String ? m['passportNumber'] : null,
        phoneNumber: m['phoneNumber'] is String ? m['phoneNumber'] : null,
        placeOfBirth: m['placeOfBirth'] is String ? m['placeOfBirth'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
        state: m['state'] is String ? m['state'] : null,
        street1: m['street1'] is String ? m['street1'] : null,
        street2: m['street2'] is String ? m['street2'] : null,
        transactionhistory_id: m['transactionhistory_id'] is String ? m['transactionhistory_id'] : null,
        zip: m['zip'] is String ? m['zip'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != city) {
      m['city'] = city;
    }
    if (null != consumerUuid) {
      m['consumerUuid'] = consumerUuid;
    }
    if (null != consumerlanguage) {
      m['consumerlanguage'] = consumerlanguage;
    }
    if (null != country) {
      m['country'] = country;
    }
    if (null != dateOfBirth) {
      m['dateOfBirth'] = dateOfBirth;
    }
    if (null != datetime_created) {
      m['datetime_created'] = datetime_created;
    }
    if (null != driverLicenceNumber) {
      m['driverLicenceNumber'] = driverLicenceNumber;
    }
    if (null != email) {
      m['email'] = email;
    }
    if (null != firstName) {
      m['firstName'] = firstName;
    }
    if (null != identificationNumber) {
      m['identificationNumber'] = identificationNumber;
    }
    if (null != kycPassed) {
      m['kycPassed'] = kycPassed;
    }
    if (null != lastName) {
      m['lastName'] = lastName;
    }
    if (null != nationality) {
      m['nationality'] = nationality;
    }
    if (null != passportNumber) {
      m['passportNumber'] = passportNumber;
    }
    if (null != phoneNumber) {
      m['phoneNumber'] = phoneNumber;
    }
    if (null != placeOfBirth) {
      m['placeOfBirth'] = placeOfBirth;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    if (null != state) {
      m['state'] = state;
    }
    if (null != street1) {
      m['street1'] = street1;
    }
    if (null != street2) {
      m['street2'] = street2;
    }
    if (null != transactionhistory_id) {
      m['transactionhistory_id'] = transactionhistory_id;
    }
    if (null != zip) {
      m['zip'] = zip;
    }
    return m;
  }
}

class OutputUpdateProfile {
  /// STRING
  String? consumerLanguage;
  /// STRING
  String? email;
  /// STRING
  String? firstName;
  /// STRING
  String? lastName;
  /// STRING
  String? phoneNumber;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;

  OutputUpdateProfile({
    this.consumerLanguage,
    this.email,
    this.firstName,
    this.lastName,
    this.phoneNumber,
    this.responseCode,
    this.responseMessage,
  });

  factory OutputUpdateProfile.fromMap(Map<String, dynamic> m) => OutputUpdateProfile(
        consumerLanguage: m['consumerLanguage'] is String ? m['consumerLanguage'] : null,
        email: m['email'] is String ? m['email'] : null,
        firstName: m['firstName'] is String ? m['firstName'] : null,
        lastName: m['lastName'] is String ? m['lastName'] : null,
        phoneNumber: m['phoneNumber'] is String ? m['phoneNumber'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != consumerLanguage) {
      m['consumerLanguage'] = consumerLanguage;
    }
    if (null != email) {
      m['email'] = email;
    }
    if (null != firstName) {
      m['firstName'] = firstName;
    }
    if (null != lastName) {
      m['lastName'] = lastName;
    }
    if (null != phoneNumber) {
      m['phoneNumber'] = phoneNumber;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    return m;
  }
}

class OutputUpdateProfileCreateData {
  /// STRING
  String? consumerLanguage;
  /// STRING
  String? email;
  /// STRING
  String? firstName;
  /// STRING
  String? lastName;
  /// STRING
  String? phoneNumber;
  /// INTEGER
  int? responseCode;
  /// STRING
  String? responseMessage;

  OutputUpdateProfileCreateData({
    this.consumerLanguage,
    this.email,
    this.firstName,
    this.lastName,
    this.phoneNumber,
    this.responseCode,
    this.responseMessage,
  });

  factory OutputUpdateProfileCreateData.fromMap(Map<String, dynamic> m) => OutputUpdateProfileCreateData(
        consumerLanguage: m['consumerLanguage'] is String ? m['consumerLanguage'] : null,
        email: m['email'] is String ? m['email'] : null,
        firstName: m['firstName'] is String ? m['firstName'] : null,
        lastName: m['lastName'] is String ? m['lastName'] : null,
        phoneNumber: m['phoneNumber'] is String ? m['phoneNumber'] : null,
        responseCode: m['responseCode'] is int ? m['responseCode'] : null,
        responseMessage: m['responseMessage'] is String ? m['responseMessage'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != consumerLanguage) {
      m['consumerLanguage'] = consumerLanguage;
    }
    if (null != email) {
      m['email'] = email;
    }
    if (null != firstName) {
      m['firstName'] = firstName;
    }
    if (null != lastName) {
      m['lastName'] = lastName;
    }
    if (null != phoneNumber) {
      m['phoneNumber'] = phoneNumber;
    }
    if (null != responseCode) {
      m['responseCode'] = responseCode;
    }
    if (null != responseMessage) {
      m['responseMessage'] = responseMessage;
    }
    return m;
  }
}

class Version {
  /// STRING
  String? appName;
  /// STRING
  String? buildDate;
  /// STRING
  String? version;

  Version({
    this.appName,
    this.buildDate,
    this.version,
  });

  factory Version.fromMap(Map<String, dynamic> m) => Version(
        appName: m['appName'] is String ? m['appName'] : null,
        buildDate: m['buildDate'] is String ? m['buildDate'] : null,
        version: m['version'] is String ? m['version'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != appName) {
      m['appName'] = appName;
    }
    if (null != buildDate) {
      m['buildDate'] = buildDate;
    }
    if (null != version) {
      m['version'] = version;
    }
    return m;
  }
}

class VersionLoadMatch {
  /// STRING
  String? appName;
  /// STRING
  String? buildDate;
  /// STRING
  String? version;

  VersionLoadMatch({
    this.appName,
    this.buildDate,
    this.version,
  });

  factory VersionLoadMatch.fromMap(Map<String, dynamic> m) => VersionLoadMatch(
        appName: m['appName'] is String ? m['appName'] : null,
        buildDate: m['buildDate'] is String ? m['buildDate'] : null,
        version: m['version'] is String ? m['version'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != appName) {
      m['appName'] = appName;
    }
    if (null != buildDate) {
      m['buildDate'] = buildDate;
    }
    if (null != version) {
      m['version'] = version;
    }
    return m;
  }
}


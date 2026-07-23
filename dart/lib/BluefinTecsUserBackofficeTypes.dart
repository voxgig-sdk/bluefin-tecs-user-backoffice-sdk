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
  int? response_code;
  /// STRING
  String? response_message;

  OutputActivateDigitalModule({
    this.response_code,
    this.response_message,
  });

  factory OutputActivateDigitalModule.fromMap(Map<String, dynamic> m) => OutputActivateDigitalModule(
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    return m;
  }
}

class OutputActivateDigitalModuleCreateData {
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;

  OutputActivateDigitalModuleCreateData({
    this.response_code,
    this.response_message,
  });

  factory OutputActivateDigitalModuleCreateData.fromMap(Map<String, dynamic> m) => OutputActivateDigitalModuleCreateData(
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    return m;
  }
}

class OutputActivatePortalModule {
  /// STRING (required at the API)
  String? client_secret;
  /// STRING (required at the API)
  String? notification_email;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;

  OutputActivatePortalModule({
    this.client_secret,
    this.notification_email,
    this.response_code,
    this.response_message,
  });

  factory OutputActivatePortalModule.fromMap(Map<String, dynamic> m) => OutputActivatePortalModule(
        client_secret: m['client_secret'] is String ? m['client_secret'] : null,
        notification_email: m['notification_email'] is String ? m['notification_email'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != client_secret) {
      m['client_secret'] = client_secret;
    }
    if (null != notification_email) {
      m['notification_email'] = notification_email;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    return m;
  }
}

class OutputActivatePortalModuleCreateData {
  /// STRING (required at the API)
  String? client_secret;
  /// STRING (required at the API)
  String? notification_email;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;

  OutputActivatePortalModuleCreateData({
    this.client_secret,
    this.notification_email,
    this.response_code,
    this.response_message,
  });

  factory OutputActivatePortalModuleCreateData.fromMap(Map<String, dynamic> m) => OutputActivatePortalModuleCreateData(
        client_secret: m['client_secret'] is String ? m['client_secret'] : null,
        notification_email: m['notification_email'] is String ? m['notification_email'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != client_secret) {
      m['client_secret'] = client_secret;
    }
    if (null != notification_email) {
      m['notification_email'] = notification_email;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    return m;
  }
}

class OutputActivateStoreModule {
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;

  OutputActivateStoreModule({
    this.response_code,
    this.response_message,
  });

  factory OutputActivateStoreModule.fromMap(Map<String, dynamic> m) => OutputActivateStoreModule(
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    return m;
  }
}

class OutputActivateStoreModuleCreateData {
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;

  OutputActivateStoreModuleCreateData({
    this.response_code,
    this.response_message,
  });

  factory OutputActivateStoreModuleCreateData.fromMap(Map<String, dynamic> m) => OutputActivateStoreModuleCreateData(
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    return m;
  }
}

class OutputActivateUser {
  /// STRING
  String? consumer_uuid;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;

  OutputActivateUser({
    this.consumer_uuid,
    this.response_code,
    this.response_message,
  });

  factory OutputActivateUser.fromMap(Map<String, dynamic> m) => OutputActivateUser(
        consumer_uuid: m['consumer_uuid'] is String ? m['consumer_uuid'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != consumer_uuid) {
      m['consumer_uuid'] = consumer_uuid;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    return m;
  }
}

class OutputActivateUserCreateData {
  /// STRING
  String? consumer_uuid;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;

  OutputActivateUserCreateData({
    this.consumer_uuid,
    this.response_code,
    this.response_message,
  });

  factory OutputActivateUserCreateData.fromMap(Map<String, dynamic> m) => OutputActivateUserCreateData(
        consumer_uuid: m['consumer_uuid'] is String ? m['consumer_uuid'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != consumer_uuid) {
      m['consumer_uuid'] = consumer_uuid;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    return m;
  }
}

class OutputAssignRole {
  /// STRING (required at the API)
  String? consumer_uuid;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;
  /// ARRAY (required at the API)
  List<dynamic>? role;

  OutputAssignRole({
    this.consumer_uuid,
    this.response_code,
    this.response_message,
    this.role,
  });

  factory OutputAssignRole.fromMap(Map<String, dynamic> m) => OutputAssignRole(
        consumer_uuid: m['consumer_uuid'] is String ? m['consumer_uuid'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
        role: m['role'] is List<dynamic> ? m['role'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != consumer_uuid) {
      m['consumer_uuid'] = consumer_uuid;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    if (null != role) {
      m['role'] = role;
    }
    return m;
  }
}

class OutputAssignRoleCreateData {
  /// STRING (required at the API)
  String? consumer_uuid;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;
  /// ARRAY (required at the API)
  List<dynamic>? role;

  OutputAssignRoleCreateData({
    this.consumer_uuid,
    this.response_code,
    this.response_message,
    this.role,
  });

  factory OutputAssignRoleCreateData.fromMap(Map<String, dynamic> m) => OutputAssignRoleCreateData(
        consumer_uuid: m['consumer_uuid'] is String ? m['consumer_uuid'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
        role: m['role'] is List<dynamic> ? m['role'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != consumer_uuid) {
      m['consumer_uuid'] = consumer_uuid;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    if (null != role) {
      m['role'] = role;
    }
    return m;
  }
}

class OutputChangeLogo {
  /// STRING (required at the API)
  String? content_as_base64;
  /// STRING (required at the API)
  String? mime_type;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;

  OutputChangeLogo({
    this.content_as_base64,
    this.mime_type,
    this.response_code,
    this.response_message,
  });

  factory OutputChangeLogo.fromMap(Map<String, dynamic> m) => OutputChangeLogo(
        content_as_base64: m['content_as_base64'] is String ? m['content_as_base64'] : null,
        mime_type: m['mime_type'] is String ? m['mime_type'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != content_as_base64) {
      m['content_as_base64'] = content_as_base64;
    }
    if (null != mime_type) {
      m['mime_type'] = mime_type;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    return m;
  }
}

class OutputChangeLogoCreateData {
  /// STRING (required at the API)
  String? content_as_base64;
  /// STRING (required at the API)
  String? mime_type;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;

  OutputChangeLogoCreateData({
    this.content_as_base64,
    this.mime_type,
    this.response_code,
    this.response_message,
  });

  factory OutputChangeLogoCreateData.fromMap(Map<String, dynamic> m) => OutputChangeLogoCreateData(
        content_as_base64: m['content_as_base64'] is String ? m['content_as_base64'] : null,
        mime_type: m['mime_type'] is String ? m['mime_type'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != content_as_base64) {
      m['content_as_base64'] = content_as_base64;
    }
    if (null != mime_type) {
      m['mime_type'] = mime_type;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
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
  String? date_of_birth;
  /// STRING (required at the API)
  String? description;
  /// STRING
  String? drivers_license_number;
  /// STRING (required at the API)
  String? email;
  /// STRING
  String? first_name;
  /// STRING
  String? identification_number;
  /// STRING
  String? last_name;
  /// STRING (required at the API)
  String? login;
  /// OBJECT
  Map<String, dynamic>? mandator;
  /// STRING (required at the API)
  String? name;
  /// STRING
  String? passport_number;
  /// STRING (required at the API)
  String? phone;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;
  /// STRING
  String? salutation;
  /// STRING
  String? state;
  /// STRING
  String? street1;
  /// STRING
  String? street2;
  /// STRING
  String? zip_code;

  OutputCreateMandator({
    this.city,
    this.country,
    this.date_of_birth,
    this.description,
    this.drivers_license_number,
    this.email,
    this.first_name,
    this.identification_number,
    this.last_name,
    this.login,
    this.mandator,
    this.name,
    this.passport_number,
    this.phone,
    this.response_code,
    this.response_message,
    this.salutation,
    this.state,
    this.street1,
    this.street2,
    this.zip_code,
  });

  factory OutputCreateMandator.fromMap(Map<String, dynamic> m) => OutputCreateMandator(
        city: m['city'] is String ? m['city'] : null,
        country: m['country'] is String ? m['country'] : null,
        date_of_birth: m['date_of_birth'] is String ? m['date_of_birth'] : null,
        description: m['description'] is String ? m['description'] : null,
        drivers_license_number: m['drivers_license_number'] is String ? m['drivers_license_number'] : null,
        email: m['email'] is String ? m['email'] : null,
        first_name: m['first_name'] is String ? m['first_name'] : null,
        identification_number: m['identification_number'] is String ? m['identification_number'] : null,
        last_name: m['last_name'] is String ? m['last_name'] : null,
        login: m['login'] is String ? m['login'] : null,
        mandator: m['mandator'] is Map<String, dynamic> ? m['mandator'] : null,
        name: m['name'] is String ? m['name'] : null,
        passport_number: m['passport_number'] is String ? m['passport_number'] : null,
        phone: m['phone'] is String ? m['phone'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
        salutation: m['salutation'] is String ? m['salutation'] : null,
        state: m['state'] is String ? m['state'] : null,
        street1: m['street1'] is String ? m['street1'] : null,
        street2: m['street2'] is String ? m['street2'] : null,
        zip_code: m['zip_code'] is String ? m['zip_code'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != city) {
      m['city'] = city;
    }
    if (null != country) {
      m['country'] = country;
    }
    if (null != date_of_birth) {
      m['date_of_birth'] = date_of_birth;
    }
    if (null != description) {
      m['description'] = description;
    }
    if (null != drivers_license_number) {
      m['drivers_license_number'] = drivers_license_number;
    }
    if (null != email) {
      m['email'] = email;
    }
    if (null != first_name) {
      m['first_name'] = first_name;
    }
    if (null != identification_number) {
      m['identification_number'] = identification_number;
    }
    if (null != last_name) {
      m['last_name'] = last_name;
    }
    if (null != login) {
      m['login'] = login;
    }
    if (null != mandator) {
      m['mandator'] = mandator;
    }
    if (null != name) {
      m['name'] = name;
    }
    if (null != passport_number) {
      m['passport_number'] = passport_number;
    }
    if (null != phone) {
      m['phone'] = phone;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
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
    if (null != zip_code) {
      m['zip_code'] = zip_code;
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
  String? date_of_birth;
  /// STRING (required at the API)
  String? description;
  /// STRING
  String? drivers_license_number;
  /// STRING (required at the API)
  String? email;
  /// STRING
  String? first_name;
  /// STRING
  String? identification_number;
  /// STRING
  String? last_name;
  /// STRING (required at the API)
  String? login;
  /// OBJECT
  Map<String, dynamic>? mandator;
  /// STRING (required at the API)
  String? name;
  /// STRING
  String? passport_number;
  /// STRING (required at the API)
  String? phone;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;
  /// STRING
  String? salutation;
  /// STRING
  String? state;
  /// STRING
  String? street1;
  /// STRING
  String? street2;
  /// STRING
  String? zip_code;

  OutputCreateMandatorCreateData({
    this.city,
    this.country,
    this.date_of_birth,
    this.description,
    this.drivers_license_number,
    this.email,
    this.first_name,
    this.identification_number,
    this.last_name,
    this.login,
    this.mandator,
    this.name,
    this.passport_number,
    this.phone,
    this.response_code,
    this.response_message,
    this.salutation,
    this.state,
    this.street1,
    this.street2,
    this.zip_code,
  });

  factory OutputCreateMandatorCreateData.fromMap(Map<String, dynamic> m) => OutputCreateMandatorCreateData(
        city: m['city'] is String ? m['city'] : null,
        country: m['country'] is String ? m['country'] : null,
        date_of_birth: m['date_of_birth'] is String ? m['date_of_birth'] : null,
        description: m['description'] is String ? m['description'] : null,
        drivers_license_number: m['drivers_license_number'] is String ? m['drivers_license_number'] : null,
        email: m['email'] is String ? m['email'] : null,
        first_name: m['first_name'] is String ? m['first_name'] : null,
        identification_number: m['identification_number'] is String ? m['identification_number'] : null,
        last_name: m['last_name'] is String ? m['last_name'] : null,
        login: m['login'] is String ? m['login'] : null,
        mandator: m['mandator'] is Map<String, dynamic> ? m['mandator'] : null,
        name: m['name'] is String ? m['name'] : null,
        passport_number: m['passport_number'] is String ? m['passport_number'] : null,
        phone: m['phone'] is String ? m['phone'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
        salutation: m['salutation'] is String ? m['salutation'] : null,
        state: m['state'] is String ? m['state'] : null,
        street1: m['street1'] is String ? m['street1'] : null,
        street2: m['street2'] is String ? m['street2'] : null,
        zip_code: m['zip_code'] is String ? m['zip_code'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != city) {
      m['city'] = city;
    }
    if (null != country) {
      m['country'] = country;
    }
    if (null != date_of_birth) {
      m['date_of_birth'] = date_of_birth;
    }
    if (null != description) {
      m['description'] = description;
    }
    if (null != drivers_license_number) {
      m['drivers_license_number'] = drivers_license_number;
    }
    if (null != email) {
      m['email'] = email;
    }
    if (null != first_name) {
      m['first_name'] = first_name;
    }
    if (null != identification_number) {
      m['identification_number'] = identification_number;
    }
    if (null != last_name) {
      m['last_name'] = last_name;
    }
    if (null != login) {
      m['login'] = login;
    }
    if (null != mandator) {
      m['mandator'] = mandator;
    }
    if (null != name) {
      m['name'] = name;
    }
    if (null != passport_number) {
      m['passport_number'] = passport_number;
    }
    if (null != phone) {
      m['phone'] = phone;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
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
    if (null != zip_code) {
      m['zip_code'] = zip_code;
    }
    return m;
  }
}

class OutputCreateServiceUser {
  /// STRING (required at the API)
  String? mandator_name;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;

  OutputCreateServiceUser({
    this.mandator_name,
    this.response_code,
    this.response_message,
  });

  factory OutputCreateServiceUser.fromMap(Map<String, dynamic> m) => OutputCreateServiceUser(
        mandator_name: m['mandator_name'] is String ? m['mandator_name'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != mandator_name) {
      m['mandator_name'] = mandator_name;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    return m;
  }
}

class OutputCreateServiceUserCreateData {
  /// STRING (required at the API)
  String? mandator_name;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;

  OutputCreateServiceUserCreateData({
    this.mandator_name,
    this.response_code,
    this.response_message,
  });

  factory OutputCreateServiceUserCreateData.fromMap(Map<String, dynamic> m) => OutputCreateServiceUserCreateData(
        mandator_name: m['mandator_name'] is String ? m['mandator_name'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != mandator_name) {
      m['mandator_name'] = mandator_name;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    return m;
  }
}

class OutputDeactivateUser {
  /// STRING
  String? consumer_uuid;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;

  OutputDeactivateUser({
    this.consumer_uuid,
    this.response_code,
    this.response_message,
  });

  factory OutputDeactivateUser.fromMap(Map<String, dynamic> m) => OutputDeactivateUser(
        consumer_uuid: m['consumer_uuid'] is String ? m['consumer_uuid'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != consumer_uuid) {
      m['consumer_uuid'] = consumer_uuid;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    return m;
  }
}

class OutputDeactivateUserCreateData {
  /// STRING
  String? consumer_uuid;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;

  OutputDeactivateUserCreateData({
    this.consumer_uuid,
    this.response_code,
    this.response_message,
  });

  factory OutputDeactivateUserCreateData.fromMap(Map<String, dynamic> m) => OutputDeactivateUserCreateData(
        consumer_uuid: m['consumer_uuid'] is String ? m['consumer_uuid'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != consumer_uuid) {
      m['consumer_uuid'] = consumer_uuid;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    return m;
  }
}

class OutputGetKycDocument {
  /// STRING
  String? case_id;
  /// STRING
  String? encoded_data_base64;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;

  OutputGetKycDocument({
    this.case_id,
    this.encoded_data_base64,
    this.response_code,
    this.response_message,
  });

  factory OutputGetKycDocument.fromMap(Map<String, dynamic> m) => OutputGetKycDocument(
        case_id: m['case_id'] is String ? m['case_id'] : null,
        encoded_data_base64: m['encoded_data_base64'] is String ? m['encoded_data_base64'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != case_id) {
      m['case_id'] = case_id;
    }
    if (null != encoded_data_base64) {
      m['encoded_data_base64'] = encoded_data_base64;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    return m;
  }
}

class OutputGetKycDocumentCreateData {
  /// STRING
  String? case_id;
  /// STRING
  String? encoded_data_base64;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;

  OutputGetKycDocumentCreateData({
    this.case_id,
    this.encoded_data_base64,
    this.response_code,
    this.response_message,
  });

  factory OutputGetKycDocumentCreateData.fromMap(Map<String, dynamic> m) => OutputGetKycDocumentCreateData(
        case_id: m['case_id'] is String ? m['case_id'] : null,
        encoded_data_base64: m['encoded_data_base64'] is String ? m['encoded_data_base64'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != case_id) {
      m['case_id'] = case_id;
    }
    if (null != encoded_data_base64) {
      m['encoded_data_base64'] = encoded_data_base64;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    return m;
  }
}

class OutputGetLogo {
  /// STRING (required at the API)
  String? content_as_base64;
  /// STRING (required at the API)
  String? mime_type;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;

  OutputGetLogo({
    this.content_as_base64,
    this.mime_type,
    this.response_code,
    this.response_message,
  });

  factory OutputGetLogo.fromMap(Map<String, dynamic> m) => OutputGetLogo(
        content_as_base64: m['content_as_base64'] is String ? m['content_as_base64'] : null,
        mime_type: m['mime_type'] is String ? m['mime_type'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != content_as_base64) {
      m['content_as_base64'] = content_as_base64;
    }
    if (null != mime_type) {
      m['mime_type'] = mime_type;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    return m;
  }
}

class OutputGetLogoLoadMatch {
  /// STRING
  String? content_as_base64;
  /// STRING
  String? mime_type;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;

  OutputGetLogoLoadMatch({
    this.content_as_base64,
    this.mime_type,
    this.response_code,
    this.response_message,
  });

  factory OutputGetLogoLoadMatch.fromMap(Map<String, dynamic> m) => OutputGetLogoLoadMatch(
        content_as_base64: m['content_as_base64'] is String ? m['content_as_base64'] : null,
        mime_type: m['mime_type'] is String ? m['mime_type'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != content_as_base64) {
      m['content_as_base64'] = content_as_base64;
    }
    if (null != mime_type) {
      m['mime_type'] = mime_type;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    return m;
  }
}

class OutputListOfAvailableRole {
  /// ARRAY
  List<dynamic>? available_role;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;

  OutputListOfAvailableRole({
    this.available_role,
    this.response_code,
    this.response_message,
  });

  factory OutputListOfAvailableRole.fromMap(Map<String, dynamic> m) => OutputListOfAvailableRole(
        available_role: m['available_role'] is List<dynamic> ? m['available_role'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != available_role) {
      m['available_role'] = available_role;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    return m;
  }
}

class OutputListOfAvailableRoleCreateData {
  /// ARRAY
  List<dynamic>? available_role;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;

  OutputListOfAvailableRoleCreateData({
    this.available_role,
    this.response_code,
    this.response_message,
  });

  factory OutputListOfAvailableRoleCreateData.fromMap(Map<String, dynamic> m) => OutputListOfAvailableRoleCreateData(
        available_role: m['available_role'] is List<dynamic> ? m['available_role'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != available_role) {
      m['available_role'] = available_role;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
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
  int? response_code;
  /// STRING
  String? response_message;
  /// OBJECT
  Map<String, dynamic>? sorting;

  OutputListOfMandator({
    this.filter,
    this.list,
    this.pagination,
    this.response_code,
    this.response_message,
    this.sorting,
  });

  factory OutputListOfMandator.fromMap(Map<String, dynamic> m) => OutputListOfMandator(
        filter: m['filter'] is Map<String, dynamic> ? m['filter'] : null,
        list: m['list'] is List<dynamic> ? m['list'] : null,
        pagination: m['pagination'] is Map<String, dynamic> ? m['pagination'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
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
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
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
  int? response_code;
  /// STRING
  String? response_message;
  /// OBJECT
  Map<String, dynamic>? sorting;

  OutputListOfMandatorCreateData({
    this.filter,
    this.list,
    this.pagination,
    this.response_code,
    this.response_message,
    this.sorting,
  });

  factory OutputListOfMandatorCreateData.fromMap(Map<String, dynamic> m) => OutputListOfMandatorCreateData(
        filter: m['filter'] is Map<String, dynamic> ? m['filter'] : null,
        list: m['list'] is List<dynamic> ? m['list'] : null,
        pagination: m['pagination'] is Map<String, dynamic> ? m['pagination'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
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
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
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
  int? response_code;
  /// STRING
  String? response_message;

  OutputListOfModule({
    this.list,
    this.pagination,
    this.response_code,
    this.response_message,
  });

  factory OutputListOfModule.fromMap(Map<String, dynamic> m) => OutputListOfModule(
        list: m['list'] is List<dynamic> ? m['list'] : null,
        pagination: m['pagination'] is Map<String, dynamic> ? m['pagination'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != list) {
      m['list'] = list;
    }
    if (null != pagination) {
      m['pagination'] = pagination;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
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
  int? response_code;
  /// STRING
  String? response_message;

  OutputListOfModuleCreateData({
    this.list,
    this.pagination,
    this.response_code,
    this.response_message,
  });

  factory OutputListOfModuleCreateData.fromMap(Map<String, dynamic> m) => OutputListOfModuleCreateData(
        list: m['list'] is List<dynamic> ? m['list'] : null,
        pagination: m['pagination'] is Map<String, dynamic> ? m['pagination'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != list) {
      m['list'] = list;
    }
    if (null != pagination) {
      m['pagination'] = pagination;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    return m;
  }
}

class OutputListOfRoleGroup {
  /// OBJECT
  Map<String, dynamic>? filter;
  /// ARRAY
  List<dynamic>? group_role;
  /// OBJECT
  Map<String, dynamic>? pagination;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;
  /// OBJECT
  Map<String, dynamic>? sorting;

  OutputListOfRoleGroup({
    this.filter,
    this.group_role,
    this.pagination,
    this.response_code,
    this.response_message,
    this.sorting,
  });

  factory OutputListOfRoleGroup.fromMap(Map<String, dynamic> m) => OutputListOfRoleGroup(
        filter: m['filter'] is Map<String, dynamic> ? m['filter'] : null,
        group_role: m['group_role'] is List<dynamic> ? m['group_role'] : null,
        pagination: m['pagination'] is Map<String, dynamic> ? m['pagination'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
        sorting: m['sorting'] is Map<String, dynamic> ? m['sorting'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != filter) {
      m['filter'] = filter;
    }
    if (null != group_role) {
      m['group_role'] = group_role;
    }
    if (null != pagination) {
      m['pagination'] = pagination;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
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
  List<dynamic>? group_role;
  /// OBJECT
  Map<String, dynamic>? pagination;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;
  /// OBJECT
  Map<String, dynamic>? sorting;

  OutputListOfRoleGroupCreateData({
    this.filter,
    this.group_role,
    this.pagination,
    this.response_code,
    this.response_message,
    this.sorting,
  });

  factory OutputListOfRoleGroupCreateData.fromMap(Map<String, dynamic> m) => OutputListOfRoleGroupCreateData(
        filter: m['filter'] is Map<String, dynamic> ? m['filter'] : null,
        group_role: m['group_role'] is List<dynamic> ? m['group_role'] : null,
        pagination: m['pagination'] is Map<String, dynamic> ? m['pagination'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
        sorting: m['sorting'] is Map<String, dynamic> ? m['sorting'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != filter) {
      m['filter'] = filter;
    }
    if (null != group_role) {
      m['group_role'] = group_role;
    }
    if (null != pagination) {
      m['pagination'] = pagination;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
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
  int? response_code;
  /// STRING
  String? response_message;
  /// OBJECT
  Map<String, dynamic>? sorting;

  OutputListOfTransactionsHistory({
    this.filter,
    this.list,
    this.pagination,
    this.response_code,
    this.response_message,
    this.sorting,
  });

  factory OutputListOfTransactionsHistory.fromMap(Map<String, dynamic> m) => OutputListOfTransactionsHistory(
        filter: m['filter'] is Map<String, dynamic> ? m['filter'] : null,
        list: m['list'] is List<dynamic> ? m['list'] : null,
        pagination: m['pagination'] is Map<String, dynamic> ? m['pagination'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
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
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
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
  int? response_code;
  /// STRING
  String? response_message;
  /// OBJECT
  Map<String, dynamic>? sorting;

  OutputListOfTransactionsHistoryCreateData({
    this.filter,
    this.list,
    this.pagination,
    this.response_code,
    this.response_message,
    this.sorting,
  });

  factory OutputListOfTransactionsHistoryCreateData.fromMap(Map<String, dynamic> m) => OutputListOfTransactionsHistoryCreateData(
        filter: m['filter'] is Map<String, dynamic> ? m['filter'] : null,
        list: m['list'] is List<dynamic> ? m['list'] : null,
        pagination: m['pagination'] is Map<String, dynamic> ? m['pagination'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
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
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
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
  int? response_code;
  /// STRING
  String? response_message;
  /// OBJECT
  Map<String, dynamic>? sorting;

  OutputListOfUser({
    this.filter,
    this.list,
    this.pagination,
    this.response_code,
    this.response_message,
    this.sorting,
  });

  factory OutputListOfUser.fromMap(Map<String, dynamic> m) => OutputListOfUser(
        filter: m['filter'] is Map<String, dynamic> ? m['filter'] : null,
        list: m['list'] is List<dynamic> ? m['list'] : null,
        pagination: m['pagination'] is Map<String, dynamic> ? m['pagination'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
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
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
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
  int? response_code;
  /// STRING
  String? response_message;
  /// OBJECT
  Map<String, dynamic>? sorting;

  OutputListOfUserCreateData({
    this.filter,
    this.list,
    this.pagination,
    this.response_code,
    this.response_message,
    this.sorting,
  });

  factory OutputListOfUserCreateData.fromMap(Map<String, dynamic> m) => OutputListOfUserCreateData(
        filter: m['filter'] is Map<String, dynamic> ? m['filter'] : null,
        list: m['list'] is List<dynamic> ? m['list'] : null,
        pagination: m['pagination'] is Map<String, dynamic> ? m['pagination'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
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
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    if (null != sorting) {
      m['sorting'] = sorting;
    }
    return m;
  }
}

class OutputProvideCredential {
  /// STRING (required at the API)
  String? mandator_name;
  /// STRING
  String? password;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;
  /// STRING
  String? username;

  OutputProvideCredential({
    this.mandator_name,
    this.password,
    this.response_code,
    this.response_message,
    this.username,
  });

  factory OutputProvideCredential.fromMap(Map<String, dynamic> m) => OutputProvideCredential(
        mandator_name: m['mandator_name'] is String ? m['mandator_name'] : null,
        password: m['password'] is String ? m['password'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
        username: m['username'] is String ? m['username'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != mandator_name) {
      m['mandator_name'] = mandator_name;
    }
    if (null != password) {
      m['password'] = password;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    if (null != username) {
      m['username'] = username;
    }
    return m;
  }
}

class OutputProvideCredentialCreateData {
  /// STRING (required at the API)
  String? mandator_name;
  /// STRING
  String? password;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;
  /// STRING
  String? username;

  OutputProvideCredentialCreateData({
    this.mandator_name,
    this.password,
    this.response_code,
    this.response_message,
    this.username,
  });

  factory OutputProvideCredentialCreateData.fromMap(Map<String, dynamic> m) => OutputProvideCredentialCreateData(
        mandator_name: m['mandator_name'] is String ? m['mandator_name'] : null,
        password: m['password'] is String ? m['password'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
        username: m['username'] is String ? m['username'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != mandator_name) {
      m['mandator_name'] = mandator_name;
    }
    if (null != password) {
      m['password'] = password;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
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
  String? consumer_id;
  /// STRING
  String? consumer_language;
  /// STRING
  String? country;
  /// STRING
  String? date_of_birth;
  /// STRING
  String? driver_licence_number;
  /// STRING (required at the API)
  String? email;
  /// STRING
  String? first_name;
  /// STRING
  String? identification_number;
  /// STRING
  String? last_name;
  /// STRING
  String? login;
  /// STRING
  String? module;
  /// STRING
  String? passport_number;
  /// STRING
  String? phone;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;
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
    this.consumer_id,
    this.consumer_language,
    this.country,
    this.date_of_birth,
    this.driver_licence_number,
    this.email,
    this.first_name,
    this.identification_number,
    this.last_name,
    this.login,
    this.module,
    this.passport_number,
    this.phone,
    this.response_code,
    this.response_message,
    this.salutation,
    this.state,
    this.street1,
    this.street2,
    this.zip,
  });

  factory OutputRegisterUser.fromMap(Map<String, dynamic> m) => OutputRegisterUser(
        city: m['city'] is String ? m['city'] : null,
        consumer_id: m['consumer_id'] is String ? m['consumer_id'] : null,
        consumer_language: m['consumer_language'] is String ? m['consumer_language'] : null,
        country: m['country'] is String ? m['country'] : null,
        date_of_birth: m['date_of_birth'] is String ? m['date_of_birth'] : null,
        driver_licence_number: m['driver_licence_number'] is String ? m['driver_licence_number'] : null,
        email: m['email'] is String ? m['email'] : null,
        first_name: m['first_name'] is String ? m['first_name'] : null,
        identification_number: m['identification_number'] is String ? m['identification_number'] : null,
        last_name: m['last_name'] is String ? m['last_name'] : null,
        login: m['login'] is String ? m['login'] : null,
        module: m['module'] is String ? m['module'] : null,
        passport_number: m['passport_number'] is String ? m['passport_number'] : null,
        phone: m['phone'] is String ? m['phone'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
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
    if (null != consumer_id) {
      m['consumer_id'] = consumer_id;
    }
    if (null != consumer_language) {
      m['consumer_language'] = consumer_language;
    }
    if (null != country) {
      m['country'] = country;
    }
    if (null != date_of_birth) {
      m['date_of_birth'] = date_of_birth;
    }
    if (null != driver_licence_number) {
      m['driver_licence_number'] = driver_licence_number;
    }
    if (null != email) {
      m['email'] = email;
    }
    if (null != first_name) {
      m['first_name'] = first_name;
    }
    if (null != identification_number) {
      m['identification_number'] = identification_number;
    }
    if (null != last_name) {
      m['last_name'] = last_name;
    }
    if (null != login) {
      m['login'] = login;
    }
    if (null != module) {
      m['module'] = module;
    }
    if (null != passport_number) {
      m['passport_number'] = passport_number;
    }
    if (null != phone) {
      m['phone'] = phone;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
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
  String? consumer_id;
  /// STRING
  String? consumer_language;
  /// STRING
  String? country;
  /// STRING
  String? date_of_birth;
  /// STRING
  String? driver_licence_number;
  /// STRING (required at the API)
  String? email;
  /// STRING
  String? first_name;
  /// STRING
  String? identification_number;
  /// STRING
  String? last_name;
  /// STRING
  String? login;
  /// STRING
  String? module;
  /// STRING
  String? passport_number;
  /// STRING
  String? phone;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;
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
    this.consumer_id,
    this.consumer_language,
    this.country,
    this.date_of_birth,
    this.driver_licence_number,
    this.email,
    this.first_name,
    this.identification_number,
    this.last_name,
    this.login,
    this.module,
    this.passport_number,
    this.phone,
    this.response_code,
    this.response_message,
    this.salutation,
    this.state,
    this.street1,
    this.street2,
    this.zip,
  });

  factory OutputRegisterUserCreateData.fromMap(Map<String, dynamic> m) => OutputRegisterUserCreateData(
        city: m['city'] is String ? m['city'] : null,
        consumer_id: m['consumer_id'] is String ? m['consumer_id'] : null,
        consumer_language: m['consumer_language'] is String ? m['consumer_language'] : null,
        country: m['country'] is String ? m['country'] : null,
        date_of_birth: m['date_of_birth'] is String ? m['date_of_birth'] : null,
        driver_licence_number: m['driver_licence_number'] is String ? m['driver_licence_number'] : null,
        email: m['email'] is String ? m['email'] : null,
        first_name: m['first_name'] is String ? m['first_name'] : null,
        identification_number: m['identification_number'] is String ? m['identification_number'] : null,
        last_name: m['last_name'] is String ? m['last_name'] : null,
        login: m['login'] is String ? m['login'] : null,
        module: m['module'] is String ? m['module'] : null,
        passport_number: m['passport_number'] is String ? m['passport_number'] : null,
        phone: m['phone'] is String ? m['phone'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
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
    if (null != consumer_id) {
      m['consumer_id'] = consumer_id;
    }
    if (null != consumer_language) {
      m['consumer_language'] = consumer_language;
    }
    if (null != country) {
      m['country'] = country;
    }
    if (null != date_of_birth) {
      m['date_of_birth'] = date_of_birth;
    }
    if (null != driver_licence_number) {
      m['driver_licence_number'] = driver_licence_number;
    }
    if (null != email) {
      m['email'] = email;
    }
    if (null != first_name) {
      m['first_name'] = first_name;
    }
    if (null != identification_number) {
      m['identification_number'] = identification_number;
    }
    if (null != last_name) {
      m['last_name'] = last_name;
    }
    if (null != login) {
      m['login'] = login;
    }
    if (null != module) {
      m['module'] = module;
    }
    if (null != passport_number) {
      m['passport_number'] = passport_number;
    }
    if (null != phone) {
      m['phone'] = phone;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
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
  String? consumer_uuid;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;
  /// ARRAY
  List<dynamic>? role;

  OutputRemoveRole({
    this.consumer_uuid,
    this.response_code,
    this.response_message,
    this.role,
  });

  factory OutputRemoveRole.fromMap(Map<String, dynamic> m) => OutputRemoveRole(
        consumer_uuid: m['consumer_uuid'] is String ? m['consumer_uuid'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
        role: m['role'] is List<dynamic> ? m['role'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != consumer_uuid) {
      m['consumer_uuid'] = consumer_uuid;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    if (null != role) {
      m['role'] = role;
    }
    return m;
  }
}

class OutputRemoveRoleCreateData {
  /// STRING
  String? consumer_uuid;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;
  /// ARRAY
  List<dynamic>? role;

  OutputRemoveRoleCreateData({
    this.consumer_uuid,
    this.response_code,
    this.response_message,
    this.role,
  });

  factory OutputRemoveRoleCreateData.fromMap(Map<String, dynamic> m) => OutputRemoveRoleCreateData(
        consumer_uuid: m['consumer_uuid'] is String ? m['consumer_uuid'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
        role: m['role'] is List<dynamic> ? m['role'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != consumer_uuid) {
      m['consumer_uuid'] = consumer_uuid;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    if (null != role) {
      m['role'] = role;
    }
    return m;
  }
}

class OutputResendLink {
  /// STRING
  String? business_registration_number;
  /// STRING (required at the API)
  String? consumer_uuid;
  /// STRING
  String? email_confirmation_code;
  /// STRING
  String? phone_number;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;

  OutputResendLink({
    this.business_registration_number,
    this.consumer_uuid,
    this.email_confirmation_code,
    this.phone_number,
    this.response_code,
    this.response_message,
  });

  factory OutputResendLink.fromMap(Map<String, dynamic> m) => OutputResendLink(
        business_registration_number: m['business_registration_number'] is String ? m['business_registration_number'] : null,
        consumer_uuid: m['consumer_uuid'] is String ? m['consumer_uuid'] : null,
        email_confirmation_code: m['email_confirmation_code'] is String ? m['email_confirmation_code'] : null,
        phone_number: m['phone_number'] is String ? m['phone_number'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != business_registration_number) {
      m['business_registration_number'] = business_registration_number;
    }
    if (null != consumer_uuid) {
      m['consumer_uuid'] = consumer_uuid;
    }
    if (null != email_confirmation_code) {
      m['email_confirmation_code'] = email_confirmation_code;
    }
    if (null != phone_number) {
      m['phone_number'] = phone_number;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    return m;
  }
}

class OutputResendLinkCreateData {
  /// STRING
  String? business_registration_number;
  /// STRING (required at the API)
  String? consumer_uuid;
  /// STRING
  String? email_confirmation_code;
  /// STRING
  String? phone_number;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;

  OutputResendLinkCreateData({
    this.business_registration_number,
    this.consumer_uuid,
    this.email_confirmation_code,
    this.phone_number,
    this.response_code,
    this.response_message,
  });

  factory OutputResendLinkCreateData.fromMap(Map<String, dynamic> m) => OutputResendLinkCreateData(
        business_registration_number: m['business_registration_number'] is String ? m['business_registration_number'] : null,
        consumer_uuid: m['consumer_uuid'] is String ? m['consumer_uuid'] : null,
        email_confirmation_code: m['email_confirmation_code'] is String ? m['email_confirmation_code'] : null,
        phone_number: m['phone_number'] is String ? m['phone_number'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != business_registration_number) {
      m['business_registration_number'] = business_registration_number;
    }
    if (null != consumer_uuid) {
      m['consumer_uuid'] = consumer_uuid;
    }
    if (null != email_confirmation_code) {
      m['email_confirmation_code'] = email_confirmation_code;
    }
    if (null != phone_number) {
      m['phone_number'] = phone_number;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    return m;
  }
}

class OutputResetPassword {
  /// STRING
  String? consumer_uuid;
  /// STRING
  String? phone_number;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;

  OutputResetPassword({
    this.consumer_uuid,
    this.phone_number,
    this.response_code,
    this.response_message,
  });

  factory OutputResetPassword.fromMap(Map<String, dynamic> m) => OutputResetPassword(
        consumer_uuid: m['consumer_uuid'] is String ? m['consumer_uuid'] : null,
        phone_number: m['phone_number'] is String ? m['phone_number'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != consumer_uuid) {
      m['consumer_uuid'] = consumer_uuid;
    }
    if (null != phone_number) {
      m['phone_number'] = phone_number;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    return m;
  }
}

class OutputResetPasswordCreateData {
  /// STRING
  String? consumer_uuid;
  /// STRING
  String? phone_number;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;

  OutputResetPasswordCreateData({
    this.consumer_uuid,
    this.phone_number,
    this.response_code,
    this.response_message,
  });

  factory OutputResetPasswordCreateData.fromMap(Map<String, dynamic> m) => OutputResetPasswordCreateData(
        consumer_uuid: m['consumer_uuid'] is String ? m['consumer_uuid'] : null,
        phone_number: m['phone_number'] is String ? m['phone_number'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != consumer_uuid) {
      m['consumer_uuid'] = consumer_uuid;
    }
    if (null != phone_number) {
      m['phone_number'] = phone_number;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    return m;
  }
}

class OutputUpdateConsumer {
  /// STRING
  String? city;
  /// STRING (required at the API)
  String? consumer_uuid;
  /// STRING
  String? consumerlanguage;
  /// STRING
  String? country;
  /// STRING
  String? date_of_birth;
  /// STRING
  String? datetime_created;
  /// STRING
  String? driver_licence_number;
  /// STRING
  String? email;
  /// STRING
  String? first_name;
  /// STRING
  String? identification_number;
  /// BOOLEAN
  bool? kyc_passed;
  /// STRING
  String? last_name;
  /// STRING
  String? nationality;
  /// STRING
  String? passport_number;
  /// STRING
  String? phone_number;
  /// STRING
  String? place_of_birth;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;
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
    this.consumer_uuid,
    this.consumerlanguage,
    this.country,
    this.date_of_birth,
    this.datetime_created,
    this.driver_licence_number,
    this.email,
    this.first_name,
    this.identification_number,
    this.kyc_passed,
    this.last_name,
    this.nationality,
    this.passport_number,
    this.phone_number,
    this.place_of_birth,
    this.response_code,
    this.response_message,
    this.state,
    this.street1,
    this.street2,
    this.transactionhistory_id,
    this.zip,
  });

  factory OutputUpdateConsumer.fromMap(Map<String, dynamic> m) => OutputUpdateConsumer(
        city: m['city'] is String ? m['city'] : null,
        consumer_uuid: m['consumer_uuid'] is String ? m['consumer_uuid'] : null,
        consumerlanguage: m['consumerlanguage'] is String ? m['consumerlanguage'] : null,
        country: m['country'] is String ? m['country'] : null,
        date_of_birth: m['date_of_birth'] is String ? m['date_of_birth'] : null,
        datetime_created: m['datetime_created'] is String ? m['datetime_created'] : null,
        driver_licence_number: m['driver_licence_number'] is String ? m['driver_licence_number'] : null,
        email: m['email'] is String ? m['email'] : null,
        first_name: m['first_name'] is String ? m['first_name'] : null,
        identification_number: m['identification_number'] is String ? m['identification_number'] : null,
        kyc_passed: m['kyc_passed'] is bool ? m['kyc_passed'] : null,
        last_name: m['last_name'] is String ? m['last_name'] : null,
        nationality: m['nationality'] is String ? m['nationality'] : null,
        passport_number: m['passport_number'] is String ? m['passport_number'] : null,
        phone_number: m['phone_number'] is String ? m['phone_number'] : null,
        place_of_birth: m['place_of_birth'] is String ? m['place_of_birth'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
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
    if (null != consumer_uuid) {
      m['consumer_uuid'] = consumer_uuid;
    }
    if (null != consumerlanguage) {
      m['consumerlanguage'] = consumerlanguage;
    }
    if (null != country) {
      m['country'] = country;
    }
    if (null != date_of_birth) {
      m['date_of_birth'] = date_of_birth;
    }
    if (null != datetime_created) {
      m['datetime_created'] = datetime_created;
    }
    if (null != driver_licence_number) {
      m['driver_licence_number'] = driver_licence_number;
    }
    if (null != email) {
      m['email'] = email;
    }
    if (null != first_name) {
      m['first_name'] = first_name;
    }
    if (null != identification_number) {
      m['identification_number'] = identification_number;
    }
    if (null != kyc_passed) {
      m['kyc_passed'] = kyc_passed;
    }
    if (null != last_name) {
      m['last_name'] = last_name;
    }
    if (null != nationality) {
      m['nationality'] = nationality;
    }
    if (null != passport_number) {
      m['passport_number'] = passport_number;
    }
    if (null != phone_number) {
      m['phone_number'] = phone_number;
    }
    if (null != place_of_birth) {
      m['place_of_birth'] = place_of_birth;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
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
  String? consumer_uuid;
  /// STRING
  String? consumerlanguage;
  /// STRING
  String? country;
  /// STRING
  String? date_of_birth;
  /// STRING
  String? datetime_created;
  /// STRING
  String? driver_licence_number;
  /// STRING
  String? email;
  /// STRING
  String? first_name;
  /// STRING
  String? identification_number;
  /// BOOLEAN
  bool? kyc_passed;
  /// STRING
  String? last_name;
  /// STRING
  String? nationality;
  /// STRING
  String? passport_number;
  /// STRING
  String? phone_number;
  /// STRING
  String? place_of_birth;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;
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
    this.consumer_uuid,
    this.consumerlanguage,
    this.country,
    this.date_of_birth,
    this.datetime_created,
    this.driver_licence_number,
    this.email,
    this.first_name,
    this.identification_number,
    this.kyc_passed,
    this.last_name,
    this.nationality,
    this.passport_number,
    this.phone_number,
    this.place_of_birth,
    this.response_code,
    this.response_message,
    this.state,
    this.street1,
    this.street2,
    this.transactionhistory_id,
    this.zip,
  });

  factory OutputUpdateConsumerCreateData.fromMap(Map<String, dynamic> m) => OutputUpdateConsumerCreateData(
        city: m['city'] is String ? m['city'] : null,
        consumer_uuid: m['consumer_uuid'] is String ? m['consumer_uuid'] : null,
        consumerlanguage: m['consumerlanguage'] is String ? m['consumerlanguage'] : null,
        country: m['country'] is String ? m['country'] : null,
        date_of_birth: m['date_of_birth'] is String ? m['date_of_birth'] : null,
        datetime_created: m['datetime_created'] is String ? m['datetime_created'] : null,
        driver_licence_number: m['driver_licence_number'] is String ? m['driver_licence_number'] : null,
        email: m['email'] is String ? m['email'] : null,
        first_name: m['first_name'] is String ? m['first_name'] : null,
        identification_number: m['identification_number'] is String ? m['identification_number'] : null,
        kyc_passed: m['kyc_passed'] is bool ? m['kyc_passed'] : null,
        last_name: m['last_name'] is String ? m['last_name'] : null,
        nationality: m['nationality'] is String ? m['nationality'] : null,
        passport_number: m['passport_number'] is String ? m['passport_number'] : null,
        phone_number: m['phone_number'] is String ? m['phone_number'] : null,
        place_of_birth: m['place_of_birth'] is String ? m['place_of_birth'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
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
    if (null != consumer_uuid) {
      m['consumer_uuid'] = consumer_uuid;
    }
    if (null != consumerlanguage) {
      m['consumerlanguage'] = consumerlanguage;
    }
    if (null != country) {
      m['country'] = country;
    }
    if (null != date_of_birth) {
      m['date_of_birth'] = date_of_birth;
    }
    if (null != datetime_created) {
      m['datetime_created'] = datetime_created;
    }
    if (null != driver_licence_number) {
      m['driver_licence_number'] = driver_licence_number;
    }
    if (null != email) {
      m['email'] = email;
    }
    if (null != first_name) {
      m['first_name'] = first_name;
    }
    if (null != identification_number) {
      m['identification_number'] = identification_number;
    }
    if (null != kyc_passed) {
      m['kyc_passed'] = kyc_passed;
    }
    if (null != last_name) {
      m['last_name'] = last_name;
    }
    if (null != nationality) {
      m['nationality'] = nationality;
    }
    if (null != passport_number) {
      m['passport_number'] = passport_number;
    }
    if (null != phone_number) {
      m['phone_number'] = phone_number;
    }
    if (null != place_of_birth) {
      m['place_of_birth'] = place_of_birth;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
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
  String? consumer_language;
  /// STRING
  String? email;
  /// STRING
  String? first_name;
  /// STRING
  String? last_name;
  /// STRING
  String? phone_number;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;

  OutputUpdateProfile({
    this.consumer_language,
    this.email,
    this.first_name,
    this.last_name,
    this.phone_number,
    this.response_code,
    this.response_message,
  });

  factory OutputUpdateProfile.fromMap(Map<String, dynamic> m) => OutputUpdateProfile(
        consumer_language: m['consumer_language'] is String ? m['consumer_language'] : null,
        email: m['email'] is String ? m['email'] : null,
        first_name: m['first_name'] is String ? m['first_name'] : null,
        last_name: m['last_name'] is String ? m['last_name'] : null,
        phone_number: m['phone_number'] is String ? m['phone_number'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != consumer_language) {
      m['consumer_language'] = consumer_language;
    }
    if (null != email) {
      m['email'] = email;
    }
    if (null != first_name) {
      m['first_name'] = first_name;
    }
    if (null != last_name) {
      m['last_name'] = last_name;
    }
    if (null != phone_number) {
      m['phone_number'] = phone_number;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    return m;
  }
}

class OutputUpdateProfileCreateData {
  /// STRING
  String? consumer_language;
  /// STRING
  String? email;
  /// STRING
  String? first_name;
  /// STRING
  String? last_name;
  /// STRING
  String? phone_number;
  /// INTEGER
  int? response_code;
  /// STRING
  String? response_message;

  OutputUpdateProfileCreateData({
    this.consumer_language,
    this.email,
    this.first_name,
    this.last_name,
    this.phone_number,
    this.response_code,
    this.response_message,
  });

  factory OutputUpdateProfileCreateData.fromMap(Map<String, dynamic> m) => OutputUpdateProfileCreateData(
        consumer_language: m['consumer_language'] is String ? m['consumer_language'] : null,
        email: m['email'] is String ? m['email'] : null,
        first_name: m['first_name'] is String ? m['first_name'] : null,
        last_name: m['last_name'] is String ? m['last_name'] : null,
        phone_number: m['phone_number'] is String ? m['phone_number'] : null,
        response_code: m['response_code'] is int ? m['response_code'] : null,
        response_message: m['response_message'] is String ? m['response_message'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != consumer_language) {
      m['consumer_language'] = consumer_language;
    }
    if (null != email) {
      m['email'] = email;
    }
    if (null != first_name) {
      m['first_name'] = first_name;
    }
    if (null != last_name) {
      m['last_name'] = last_name;
    }
    if (null != phone_number) {
      m['phone_number'] = phone_number;
    }
    if (null != response_code) {
      m['response_code'] = response_code;
    }
    if (null != response_message) {
      m['response_message'] = response_message;
    }
    return m;
  }
}

class Version {
  /// STRING
  String? app_name;
  /// STRING
  String? build_date;
  /// STRING
  String? version;

  Version({
    this.app_name,
    this.build_date,
    this.version,
  });

  factory Version.fromMap(Map<String, dynamic> m) => Version(
        app_name: m['app_name'] is String ? m['app_name'] : null,
        build_date: m['build_date'] is String ? m['build_date'] : null,
        version: m['version'] is String ? m['version'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != app_name) {
      m['app_name'] = app_name;
    }
    if (null != build_date) {
      m['build_date'] = build_date;
    }
    if (null != version) {
      m['version'] = version;
    }
    return m;
  }
}

class VersionLoadMatch {
  /// STRING
  String? app_name;
  /// STRING
  String? build_date;
  /// STRING
  String? version;

  VersionLoadMatch({
    this.app_name,
    this.build_date,
    this.version,
  });

  factory VersionLoadMatch.fromMap(Map<String, dynamic> m) => VersionLoadMatch(
        app_name: m['app_name'] is String ? m['app_name'] : null,
        build_date: m['build_date'] is String ? m['build_date'] : null,
        version: m['version'] is String ? m['version'] : null,
      );

  Map<String, dynamic> toMap() {
    final m = <String, dynamic>{};
    if (null != app_name) {
      m['app_name'] = app_name;
    }
    if (null != build_date) {
      m['build_date'] = build_date;
    }
    if (null != version) {
      m['version'] = version;
    }
    return m;
  }
}


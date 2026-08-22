// Generated API configuration (mirrors go core/config.go).

use std::cell::RefCell;
use std::rc::Rc;

use crate::core::types::FeatureRef;
use crate::utility::voxgigstruct::Value;

pub fn make_config() -> Value {
    Value::map_of([
        ("main".to_string(), Value::map_of([
            ("name".to_string(), Value::str("BluefinTecsUserBackoffice")),
            ("slug".to_string(), Value::str("bluefin-tecs-user-backoffice")),
            ("version".to_string(), Value::str("0.1.1")),
            ("target".to_string(), Value::str("rust")),
        ])),
        ("feature".to_string(), Value::map_of([
            ("test".to_string(), Value::map_of([
                ("options".to_string(), Value::map_of([
                    ("active".to_string(), Value::Bool(false)),
                ])),
            ])),
        ])),
        ("options".to_string(), Value::map_of([
            ("base".to_string(), Value::str("https://test.tecs.at/usermanagement-backofficews")),
            ("auth".to_string(), Value::map_of([
                ("prefix".to_string(), Value::str("Bearer")),
            ])),
            ("headers".to_string(), Value::map_of([
                ("content-type".to_string(), Value::str("application/json")),
            ])),
            ("entity".to_string(), Value::map_of([
                ("output_activate_digital_module".to_string(), Value::empty_map()),
                ("output_activate_portal_module".to_string(), Value::empty_map()),
                ("output_activate_store_module".to_string(), Value::empty_map()),
                ("output_activate_user".to_string(), Value::empty_map()),
                ("output_assign_role".to_string(), Value::empty_map()),
                ("output_change_logo".to_string(), Value::empty_map()),
                ("output_create_mandator".to_string(), Value::empty_map()),
                ("output_create_service_user".to_string(), Value::empty_map()),
                ("output_deactivate_user".to_string(), Value::empty_map()),
                ("output_get_kyc_document".to_string(), Value::empty_map()),
                ("output_get_logo".to_string(), Value::empty_map()),
                ("output_list_of_available_role".to_string(), Value::empty_map()),
                ("output_list_of_mandator".to_string(), Value::empty_map()),
                ("output_list_of_module".to_string(), Value::empty_map()),
                ("output_list_of_role_group".to_string(), Value::empty_map()),
                ("output_list_of_transactions_history".to_string(), Value::empty_map()),
                ("output_list_of_user".to_string(), Value::empty_map()),
                ("output_provide_credential".to_string(), Value::empty_map()),
                ("output_register_user".to_string(), Value::empty_map()),
                ("output_remove_role".to_string(), Value::empty_map()),
                ("output_resend_link".to_string(), Value::empty_map()),
                ("output_reset_password".to_string(), Value::empty_map()),
                ("output_update_consumer".to_string(), Value::empty_map()),
                ("output_update_profile".to_string(), Value::empty_map()),
                ("version".to_string(), Value::empty_map()),
            ])),
        ])),
        ("entity".to_string(), Value::map_of([
            ("output_activate_digital_module".to_string(), Value::map_of([
                ("fields".to_string(), Value::list(vec![
                    Value::map_of([
                        ("name".to_string(), Value::str("responseCode")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseMessage")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                ])),
                ("name".to_string(), Value::str("output_activate_digital_module")),
                ("op".to_string(), Value::map_of([
                    ("create".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("create")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("args".to_string(), Value::map_of([
                                    ("header".to_string(), Value::list(vec![
                                        Value::map_of([
                                            ("kind".to_string(), Value::str("header")),
                                            ("name".to_string(), Value::str("authorization")),
                                            ("orig".to_string(), Value::str("authorization")),
                                            ("reqd".to_string(), Value::Bool(true)),
                                            ("type".to_string(), Value::str("`$STRING`")),
                                        ]),
                                    ])),
                                ])),
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("POST")),
                                ("orig".to_string(), Value::str("/activateDigitalModule")),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("activateDigitalModule"),
                                ])),
                                ("select".to_string(), Value::map_of([
                                    ("exist".to_string(), Value::list(vec![
                                        Value::str("authorization"),
                                    ])),
                                ])),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body`")),
                                ])),
                            ]),
                        ])),
                    ])),
                ])),
                ("relations".to_string(), Value::map_of([
                    ("ancestors".to_string(), Value::empty_list()),
                ])),
            ])),
            ("output_activate_portal_module".to_string(), Value::map_of([
                ("fields".to_string(), Value::list(vec![
                    Value::map_of([
                        ("name".to_string(), Value::str("clientSecret")),
                        ("req".to_string(), Value::Bool(true)),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("notificationEmail")),
                        ("req".to_string(), Value::Bool(true)),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseCode")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseMessage")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                ])),
                ("name".to_string(), Value::str("output_activate_portal_module")),
                ("op".to_string(), Value::map_of([
                    ("create".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("create")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("args".to_string(), Value::map_of([
                                    ("header".to_string(), Value::list(vec![
                                        Value::map_of([
                                            ("kind".to_string(), Value::str("header")),
                                            ("name".to_string(), Value::str("authorization")),
                                            ("orig".to_string(), Value::str("authorization")),
                                            ("reqd".to_string(), Value::Bool(true)),
                                            ("type".to_string(), Value::str("`$STRING`")),
                                        ]),
                                    ])),
                                ])),
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("POST")),
                                ("orig".to_string(), Value::str("/activateMerchantPortalModule")),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("activateMerchantPortalModule"),
                                ])),
                                ("select".to_string(), Value::map_of([
                                    ("exist".to_string(), Value::list(vec![
                                        Value::str("authorization"),
                                    ])),
                                ])),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body`")),
                                ])),
                            ]),
                        ])),
                    ])),
                ])),
                ("relations".to_string(), Value::map_of([
                    ("ancestors".to_string(), Value::empty_list()),
                ])),
            ])),
            ("output_activate_store_module".to_string(), Value::map_of([
                ("fields".to_string(), Value::list(vec![
                    Value::map_of([
                        ("name".to_string(), Value::str("responseCode")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseMessage")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                ])),
                ("name".to_string(), Value::str("output_activate_store_module")),
                ("op".to_string(), Value::map_of([
                    ("create".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("create")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("args".to_string(), Value::map_of([
                                    ("header".to_string(), Value::list(vec![
                                        Value::map_of([
                                            ("kind".to_string(), Value::str("header")),
                                            ("name".to_string(), Value::str("authorization")),
                                            ("orig".to_string(), Value::str("authorization")),
                                            ("reqd".to_string(), Value::Bool(true)),
                                            ("type".to_string(), Value::str("`$STRING`")),
                                        ]),
                                    ])),
                                ])),
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("POST")),
                                ("orig".to_string(), Value::str("/activateAppStoreModule")),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("activateAppStoreModule"),
                                ])),
                                ("select".to_string(), Value::map_of([
                                    ("exist".to_string(), Value::list(vec![
                                        Value::str("authorization"),
                                    ])),
                                ])),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body`")),
                                ])),
                            ]),
                        ])),
                    ])),
                ])),
                ("relations".to_string(), Value::map_of([
                    ("ancestors".to_string(), Value::empty_list()),
                ])),
            ])),
            ("output_activate_user".to_string(), Value::map_of([
                ("fields".to_string(), Value::list(vec![
                    Value::map_of([
                        ("name".to_string(), Value::str("consumerUUID")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseCode")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseMessage")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                ])),
                ("name".to_string(), Value::str("output_activate_user")),
                ("op".to_string(), Value::map_of([
                    ("create".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("create")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("args".to_string(), Value::map_of([
                                    ("header".to_string(), Value::list(vec![
                                        Value::map_of([
                                            ("kind".to_string(), Value::str("header")),
                                            ("name".to_string(), Value::str("authorization")),
                                            ("orig".to_string(), Value::str("authorization")),
                                            ("reqd".to_string(), Value::Bool(true)),
                                            ("type".to_string(), Value::str("`$STRING`")),
                                        ]),
                                    ])),
                                ])),
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("POST")),
                                ("orig".to_string(), Value::str("/activateUser")),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("activateUser"),
                                ])),
                                ("select".to_string(), Value::map_of([
                                    ("exist".to_string(), Value::list(vec![
                                        Value::str("authorization"),
                                    ])),
                                ])),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body`")),
                                ])),
                            ]),
                        ])),
                    ])),
                ])),
                ("relations".to_string(), Value::map_of([
                    ("ancestors".to_string(), Value::empty_list()),
                ])),
            ])),
            ("output_assign_role".to_string(), Value::map_of([
                ("fields".to_string(), Value::list(vec![
                    Value::map_of([
                        ("name".to_string(), Value::str("consumerUUID")),
                        ("req".to_string(), Value::Bool(true)),
                        ("short".to_string(), Value::str("Unique identifier of the consumer (user) to whom the role(s) will be assigned.")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseCode")),
                        ("short".to_string(), Value::str("Response code: 0 indicates success; any non-zero value indicates an error.")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseMessage")),
                        ("short".to_string(), Value::str("A human-readable message providing additional details about the outcome.")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("roles")),
                        ("req".to_string(), Value::Bool(true)),
                        ("short".to_string(), Value::str("List of roles to assign to the consumer.")),
                        ("type".to_string(), Value::str("`$ARRAY`")),
                    ]),
                ])),
                ("name".to_string(), Value::str("output_assign_role")),
                ("op".to_string(), Value::map_of([
                    ("create".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("create")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("args".to_string(), Value::map_of([
                                    ("header".to_string(), Value::list(vec![
                                        Value::map_of([
                                            ("kind".to_string(), Value::str("header")),
                                            ("name".to_string(), Value::str("authorization")),
                                            ("orig".to_string(), Value::str("authorization")),
                                            ("reqd".to_string(), Value::Bool(true)),
                                            ("type".to_string(), Value::str("`$STRING`")),
                                        ]),
                                    ])),
                                ])),
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("POST")),
                                ("orig".to_string(), Value::str("/assignRoles")),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("assignRoles"),
                                ])),
                                ("select".to_string(), Value::map_of([
                                    ("exist".to_string(), Value::list(vec![
                                        Value::str("authorization"),
                                    ])),
                                ])),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body`")),
                                ])),
                            ]),
                        ])),
                    ])),
                ])),
                ("relations".to_string(), Value::map_of([
                    ("ancestors".to_string(), Value::empty_list()),
                ])),
            ])),
            ("output_change_logo".to_string(), Value::map_of([
                ("fields".to_string(), Value::list(vec![
                    Value::map_of([
                        ("name".to_string(), Value::str("contentAsBase64")),
                        ("req".to_string(), Value::Bool(true)),
                        ("short".to_string(), Value::str("The content of the image as base64 encoded string")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("mimeType")),
                        ("req".to_string(), Value::Bool(true)),
                        ("short".to_string(), Value::str("The MIME type of the image")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseCode")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseMessage")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                ])),
                ("name".to_string(), Value::str("output_change_logo")),
                ("op".to_string(), Value::map_of([
                    ("create".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("create")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("args".to_string(), Value::map_of([
                                    ("header".to_string(), Value::list(vec![
                                        Value::map_of([
                                            ("kind".to_string(), Value::str("header")),
                                            ("name".to_string(), Value::str("authorization")),
                                            ("orig".to_string(), Value::str("authorization")),
                                            ("reqd".to_string(), Value::Bool(true)),
                                            ("type".to_string(), Value::str("`$STRING`")),
                                        ]),
                                    ])),
                                ])),
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("POST")),
                                ("orig".to_string(), Value::str("/changeLogo")),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("changeLogo"),
                                ])),
                                ("select".to_string(), Value::map_of([
                                    ("exist".to_string(), Value::list(vec![
                                        Value::str("authorization"),
                                    ])),
                                ])),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body`")),
                                ])),
                            ]),
                        ])),
                    ])),
                ])),
                ("relations".to_string(), Value::map_of([
                    ("ancestors".to_string(), Value::empty_list()),
                ])),
            ])),
            ("output_create_mandator".to_string(), Value::map_of([
                ("fields".to_string(), Value::list(vec![
                    Value::map_of([
                        ("name".to_string(), Value::str("city")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("country")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("dateOfBirth")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("description")),
                        ("op".to_string(), Value::map_of([
                            ("create".to_string(), Value::map_of([
                                ("req".to_string(), Value::Bool(true)),
                                ("type".to_string(), Value::str("`$STRING`")),
                            ])),
                        ])),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("driversLicenseNumber")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("email")),
                        ("req".to_string(), Value::Bool(true)),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("firstName")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("identificationNumber")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("lastName")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("login")),
                        ("req".to_string(), Value::Bool(true)),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("name")),
                        ("op".to_string(), Value::map_of([
                            ("create".to_string(), Value::map_of([
                                ("req".to_string(), Value::Bool(true)),
                                ("type".to_string(), Value::str("`$STRING`")),
                            ])),
                        ])),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("passportNumber")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("phone")),
                        ("req".to_string(), Value::Bool(true)),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("salutation")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("state")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("street1")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("street2")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("zipCode")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                ])),
                ("name".to_string(), Value::str("output_create_mandator")),
                ("op".to_string(), Value::map_of([
                    ("create".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("create")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("args".to_string(), Value::map_of([
                                    ("header".to_string(), Value::list(vec![
                                        Value::map_of([
                                            ("kind".to_string(), Value::str("header")),
                                            ("name".to_string(), Value::str("authorization")),
                                            ("orig".to_string(), Value::str("authorization")),
                                            ("reqd".to_string(), Value::Bool(true)),
                                            ("type".to_string(), Value::str("`$STRING`")),
                                        ]),
                                    ])),
                                ])),
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("POST")),
                                ("orig".to_string(), Value::str("/createMandator")),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("createMandator"),
                                ])),
                                ("select".to_string(), Value::map_of([
                                    ("exist".to_string(), Value::list(vec![
                                        Value::str("authorization"),
                                    ])),
                                ])),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body.mandator`")),
                                ])),
                            ]),
                        ])),
                    ])),
                ])),
                ("relations".to_string(), Value::map_of([
                    ("ancestors".to_string(), Value::empty_list()),
                ])),
            ])),
            ("output_create_service_user".to_string(), Value::map_of([
                ("fields".to_string(), Value::list(vec![
                    Value::map_of([
                        ("name".to_string(), Value::str("mandatorName")),
                        ("req".to_string(), Value::Bool(true)),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseCode")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseMessage")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                ])),
                ("name".to_string(), Value::str("output_create_service_user")),
                ("op".to_string(), Value::map_of([
                    ("create".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("create")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("args".to_string(), Value::map_of([
                                    ("header".to_string(), Value::list(vec![
                                        Value::map_of([
                                            ("kind".to_string(), Value::str("header")),
                                            ("name".to_string(), Value::str("authorization")),
                                            ("orig".to_string(), Value::str("authorization")),
                                            ("reqd".to_string(), Value::Bool(true)),
                                            ("type".to_string(), Value::str("`$STRING`")),
                                        ]),
                                    ])),
                                ])),
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("POST")),
                                ("orig".to_string(), Value::str("/createServiceUser")),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("createServiceUser"),
                                ])),
                                ("select".to_string(), Value::map_of([
                                    ("exist".to_string(), Value::list(vec![
                                        Value::str("authorization"),
                                    ])),
                                ])),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body`")),
                                ])),
                            ]),
                        ])),
                    ])),
                ])),
                ("relations".to_string(), Value::map_of([
                    ("ancestors".to_string(), Value::empty_list()),
                ])),
            ])),
            ("output_deactivate_user".to_string(), Value::map_of([
                ("fields".to_string(), Value::list(vec![
                    Value::map_of([
                        ("name".to_string(), Value::str("consumerUUID")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseCode")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseMessage")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                ])),
                ("name".to_string(), Value::str("output_deactivate_user")),
                ("op".to_string(), Value::map_of([
                    ("create".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("create")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("args".to_string(), Value::map_of([
                                    ("header".to_string(), Value::list(vec![
                                        Value::map_of([
                                            ("kind".to_string(), Value::str("header")),
                                            ("name".to_string(), Value::str("authorization")),
                                            ("orig".to_string(), Value::str("authorization")),
                                            ("reqd".to_string(), Value::Bool(true)),
                                            ("type".to_string(), Value::str("`$STRING`")),
                                        ]),
                                    ])),
                                ])),
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("POST")),
                                ("orig".to_string(), Value::str("/deactivateUser")),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("deactivateUser"),
                                ])),
                                ("select".to_string(), Value::map_of([
                                    ("exist".to_string(), Value::list(vec![
                                        Value::str("authorization"),
                                    ])),
                                ])),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body`")),
                                ])),
                            ]),
                        ])),
                    ])),
                ])),
                ("relations".to_string(), Value::map_of([
                    ("ancestors".to_string(), Value::empty_list()),
                ])),
            ])),
            ("output_get_kyc_document".to_string(), Value::map_of([
                ("fields".to_string(), Value::list(vec![
                    Value::map_of([
                        ("name".to_string(), Value::str("caseID")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("encodedDataBase64")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseCode")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseMessage")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                ])),
                ("name".to_string(), Value::str("output_get_kyc_document")),
                ("op".to_string(), Value::map_of([
                    ("create".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("create")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("args".to_string(), Value::map_of([
                                    ("header".to_string(), Value::list(vec![
                                        Value::map_of([
                                            ("kind".to_string(), Value::str("header")),
                                            ("name".to_string(), Value::str("authorization")),
                                            ("orig".to_string(), Value::str("authorization")),
                                            ("reqd".to_string(), Value::Bool(true)),
                                            ("type".to_string(), Value::str("`$STRING`")),
                                        ]),
                                    ])),
                                ])),
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("POST")),
                                ("orig".to_string(), Value::str("/getKycDocument")),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("getKycDocument"),
                                ])),
                                ("select".to_string(), Value::map_of([
                                    ("exist".to_string(), Value::list(vec![
                                        Value::str("authorization"),
                                    ])),
                                ])),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body`")),
                                ])),
                            ]),
                        ])),
                    ])),
                ])),
                ("relations".to_string(), Value::map_of([
                    ("ancestors".to_string(), Value::empty_list()),
                ])),
            ])),
            ("output_get_logo".to_string(), Value::map_of([
                ("fields".to_string(), Value::list(vec![
                    Value::map_of([
                        ("name".to_string(), Value::str("contentAsBase64")),
                        ("req".to_string(), Value::Bool(true)),
                        ("short".to_string(), Value::str("The content of the image as base64 encoded string")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("mimeType")),
                        ("req".to_string(), Value::Bool(true)),
                        ("short".to_string(), Value::str("The MIME type of the image")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseCode")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseMessage")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                ])),
                ("name".to_string(), Value::str("output_get_logo")),
                ("op".to_string(), Value::map_of([
                    ("load".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("load")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("args".to_string(), Value::map_of([
                                    ("header".to_string(), Value::list(vec![
                                        Value::map_of([
                                            ("kind".to_string(), Value::str("header")),
                                            ("name".to_string(), Value::str("authorization")),
                                            ("orig".to_string(), Value::str("authorization")),
                                            ("reqd".to_string(), Value::Bool(true)),
                                            ("type".to_string(), Value::str("`$STRING`")),
                                        ]),
                                    ])),
                                ])),
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("GET")),
                                ("orig".to_string(), Value::str("/getLogo")),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("getLogo"),
                                ])),
                                ("select".to_string(), Value::map_of([
                                    ("exist".to_string(), Value::list(vec![
                                        Value::str("authorization"),
                                    ])),
                                ])),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body`")),
                                ])),
                            ]),
                        ])),
                    ])),
                ])),
                ("relations".to_string(), Value::map_of([
                    ("ancestors".to_string(), Value::empty_list()),
                ])),
            ])),
            ("output_list_of_available_role".to_string(), Value::map_of([
                ("fields".to_string(), Value::list(vec![
                    Value::map_of([
                        ("name".to_string(), Value::str("availableRoles")),
                        ("type".to_string(), Value::str("`$ARRAY`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseCode")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseMessage")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                ])),
                ("name".to_string(), Value::str("output_list_of_available_role")),
                ("op".to_string(), Value::map_of([
                    ("create".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("create")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("args".to_string(), Value::map_of([
                                    ("header".to_string(), Value::list(vec![
                                        Value::map_of([
                                            ("kind".to_string(), Value::str("header")),
                                            ("name".to_string(), Value::str("authorization")),
                                            ("orig".to_string(), Value::str("authorization")),
                                            ("reqd".to_string(), Value::Bool(true)),
                                            ("type".to_string(), Value::str("`$STRING`")),
                                        ]),
                                    ])),
                                ])),
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("POST")),
                                ("orig".to_string(), Value::str("/listOfAvailableRoles")),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("listOfAvailableRoles"),
                                ])),
                                ("select".to_string(), Value::map_of([
                                    ("exist".to_string(), Value::list(vec![
                                        Value::str("authorization"),
                                    ])),
                                ])),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body`")),
                                ])),
                            ]),
                        ])),
                    ])),
                ])),
                ("relations".to_string(), Value::map_of([
                    ("ancestors".to_string(), Value::empty_list()),
                ])),
            ])),
            ("output_list_of_mandator".to_string(), Value::map_of([
                ("fields".to_string(), Value::list(vec![
                    Value::map_of([
                        ("name".to_string(), Value::str("filter")),
                        ("type".to_string(), Value::str("`$OBJECT`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("list")),
                        ("type".to_string(), Value::str("`$ARRAY`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("pagination")),
                        ("type".to_string(), Value::str("`$OBJECT`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseCode")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseMessage")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("sorting")),
                        ("type".to_string(), Value::str("`$OBJECT`")),
                    ]),
                ])),
                ("name".to_string(), Value::str("output_list_of_mandator")),
                ("op".to_string(), Value::map_of([
                    ("create".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("create")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("args".to_string(), Value::map_of([
                                    ("header".to_string(), Value::list(vec![
                                        Value::map_of([
                                            ("kind".to_string(), Value::str("header")),
                                            ("name".to_string(), Value::str("authorization")),
                                            ("orig".to_string(), Value::str("authorization")),
                                            ("reqd".to_string(), Value::Bool(true)),
                                            ("type".to_string(), Value::str("`$STRING`")),
                                        ]),
                                    ])),
                                ])),
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("POST")),
                                ("orig".to_string(), Value::str("/listOfMandators")),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("listOfMandators"),
                                ])),
                                ("select".to_string(), Value::map_of([
                                    ("exist".to_string(), Value::list(vec![
                                        Value::str("authorization"),
                                    ])),
                                ])),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body`")),
                                ])),
                            ]),
                        ])),
                    ])),
                ])),
                ("relations".to_string(), Value::map_of([
                    ("ancestors".to_string(), Value::empty_list()),
                ])),
            ])),
            ("output_list_of_module".to_string(), Value::map_of([
                ("fields".to_string(), Value::list(vec![
                    Value::map_of([
                        ("name".to_string(), Value::str("list")),
                        ("type".to_string(), Value::str("`$ARRAY`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("pagination")),
                        ("type".to_string(), Value::str("`$OBJECT`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseCode")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseMessage")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                ])),
                ("name".to_string(), Value::str("output_list_of_module")),
                ("op".to_string(), Value::map_of([
                    ("create".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("create")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("args".to_string(), Value::map_of([
                                    ("header".to_string(), Value::list(vec![
                                        Value::map_of([
                                            ("kind".to_string(), Value::str("header")),
                                            ("name".to_string(), Value::str("authorization")),
                                            ("orig".to_string(), Value::str("authorization")),
                                            ("reqd".to_string(), Value::Bool(true)),
                                            ("type".to_string(), Value::str("`$STRING`")),
                                        ]),
                                    ])),
                                ])),
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("POST")),
                                ("orig".to_string(), Value::str("/listOfModules")),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("listOfModules"),
                                ])),
                                ("select".to_string(), Value::map_of([
                                    ("exist".to_string(), Value::list(vec![
                                        Value::str("authorization"),
                                    ])),
                                ])),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body`")),
                                ])),
                            ]),
                        ])),
                    ])),
                ])),
                ("relations".to_string(), Value::map_of([
                    ("ancestors".to_string(), Value::empty_list()),
                ])),
            ])),
            ("output_list_of_role_group".to_string(), Value::map_of([
                ("fields".to_string(), Value::list(vec![
                    Value::map_of([
                        ("name".to_string(), Value::str("filter")),
                        ("type".to_string(), Value::str("`$OBJECT`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("groupRoles")),
                        ("type".to_string(), Value::str("`$ARRAY`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("pagination")),
                        ("type".to_string(), Value::str("`$OBJECT`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseCode")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseMessage")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("sorting")),
                        ("type".to_string(), Value::str("`$OBJECT`")),
                    ]),
                ])),
                ("name".to_string(), Value::str("output_list_of_role_group")),
                ("op".to_string(), Value::map_of([
                    ("create".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("create")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("args".to_string(), Value::map_of([
                                    ("header".to_string(), Value::list(vec![
                                        Value::map_of([
                                            ("kind".to_string(), Value::str("header")),
                                            ("name".to_string(), Value::str("authorization")),
                                            ("orig".to_string(), Value::str("authorization")),
                                            ("reqd".to_string(), Value::Bool(true)),
                                            ("type".to_string(), Value::str("`$STRING`")),
                                        ]),
                                    ])),
                                ])),
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("POST")),
                                ("orig".to_string(), Value::str("/listOfRoleGroups")),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("listOfRoleGroups"),
                                ])),
                                ("select".to_string(), Value::map_of([
                                    ("exist".to_string(), Value::list(vec![
                                        Value::str("authorization"),
                                    ])),
                                ])),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body`")),
                                ])),
                            ]),
                        ])),
                    ])),
                ])),
                ("relations".to_string(), Value::map_of([
                    ("ancestors".to_string(), Value::empty_list()),
                ])),
            ])),
            ("output_list_of_transactions_history".to_string(), Value::map_of([
                ("fields".to_string(), Value::list(vec![
                    Value::map_of([
                        ("name".to_string(), Value::str("filter")),
                        ("type".to_string(), Value::str("`$OBJECT`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("list")),
                        ("type".to_string(), Value::str("`$ARRAY`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("pagination")),
                        ("type".to_string(), Value::str("`$OBJECT`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseCode")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseMessage")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("sorting")),
                        ("type".to_string(), Value::str("`$OBJECT`")),
                    ]),
                ])),
                ("name".to_string(), Value::str("output_list_of_transactions_history")),
                ("op".to_string(), Value::map_of([
                    ("create".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("create")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("args".to_string(), Value::map_of([
                                    ("header".to_string(), Value::list(vec![
                                        Value::map_of([
                                            ("kind".to_string(), Value::str("header")),
                                            ("name".to_string(), Value::str("authorization")),
                                            ("orig".to_string(), Value::str("authorization")),
                                            ("reqd".to_string(), Value::Bool(true)),
                                            ("type".to_string(), Value::str("`$STRING`")),
                                        ]),
                                    ])),
                                ])),
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("POST")),
                                ("orig".to_string(), Value::str("/listOfTransactionsHistory")),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("listOfTransactionsHistory"),
                                ])),
                                ("select".to_string(), Value::map_of([
                                    ("exist".to_string(), Value::list(vec![
                                        Value::str("authorization"),
                                    ])),
                                ])),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body`")),
                                ])),
                            ]),
                        ])),
                    ])),
                ])),
                ("relations".to_string(), Value::map_of([
                    ("ancestors".to_string(), Value::empty_list()),
                ])),
            ])),
            ("output_list_of_user".to_string(), Value::map_of([
                ("fields".to_string(), Value::list(vec![
                    Value::map_of([
                        ("name".to_string(), Value::str("filter")),
                        ("type".to_string(), Value::str("`$OBJECT`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("list")),
                        ("type".to_string(), Value::str("`$ARRAY`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("pagination")),
                        ("type".to_string(), Value::str("`$OBJECT`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseCode")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseMessage")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("sorting")),
                        ("type".to_string(), Value::str("`$OBJECT`")),
                    ]),
                ])),
                ("name".to_string(), Value::str("output_list_of_user")),
                ("op".to_string(), Value::map_of([
                    ("create".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("create")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("args".to_string(), Value::map_of([
                                    ("header".to_string(), Value::list(vec![
                                        Value::map_of([
                                            ("kind".to_string(), Value::str("header")),
                                            ("name".to_string(), Value::str("authorization")),
                                            ("orig".to_string(), Value::str("authorization")),
                                            ("reqd".to_string(), Value::Bool(true)),
                                            ("type".to_string(), Value::str("`$STRING`")),
                                        ]),
                                    ])),
                                ])),
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("POST")),
                                ("orig".to_string(), Value::str("/listOfUsers")),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("listOfUsers"),
                                ])),
                                ("select".to_string(), Value::map_of([
                                    ("exist".to_string(), Value::list(vec![
                                        Value::str("authorization"),
                                    ])),
                                ])),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body`")),
                                ])),
                            ]),
                        ])),
                    ])),
                ])),
                ("relations".to_string(), Value::map_of([
                    ("ancestors".to_string(), Value::empty_list()),
                ])),
            ])),
            ("output_provide_credential".to_string(), Value::map_of([
                ("fields".to_string(), Value::list(vec![
                    Value::map_of([
                        ("name".to_string(), Value::str("mandatorName")),
                        ("req".to_string(), Value::Bool(true)),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("password")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseCode")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseMessage")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("username")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                ])),
                ("name".to_string(), Value::str("output_provide_credential")),
                ("op".to_string(), Value::map_of([
                    ("create".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("create")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("args".to_string(), Value::map_of([
                                    ("header".to_string(), Value::list(vec![
                                        Value::map_of([
                                            ("kind".to_string(), Value::str("header")),
                                            ("name".to_string(), Value::str("authorization")),
                                            ("orig".to_string(), Value::str("authorization")),
                                            ("reqd".to_string(), Value::Bool(true)),
                                            ("type".to_string(), Value::str("`$STRING`")),
                                        ]),
                                    ])),
                                ])),
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("POST")),
                                ("orig".to_string(), Value::str("/provideCredentials")),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("provideCredentials"),
                                ])),
                                ("select".to_string(), Value::map_of([
                                    ("exist".to_string(), Value::list(vec![
                                        Value::str("authorization"),
                                    ])),
                                ])),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body`")),
                                ])),
                            ]),
                        ])),
                    ])),
                ])),
                ("relations".to_string(), Value::map_of([
                    ("ancestors".to_string(), Value::empty_list()),
                ])),
            ])),
            ("output_register_user".to_string(), Value::map_of([
                ("fields".to_string(), Value::list(vec![
                    Value::map_of([
                        ("name".to_string(), Value::str("city")),
                        ("short".to_string(), Value::str("City where the user resides.")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("consumerId")),
                        ("short".to_string(), Value::str("User login or unique user identifier.")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("consumerLanguage")),
                        ("short".to_string(), Value::str("Preferred language for the user (e.g., 'en').")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("country")),
                        ("short".to_string(), Value::str("User's country.")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("dateOfBirth")),
                        ("short".to_string(), Value::str("User's date of birth (expected format: dd.MM.yyyy).")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("driverLicenceNumber")),
                        ("short".to_string(), Value::str("User's driver's license number.")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("email")),
                        ("req".to_string(), Value::Bool(true)),
                        ("short".to_string(), Value::str("User's email address (must be unique).")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("firstName")),
                        ("short".to_string(), Value::str("User's first name.")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("identificationNumber")),
                        ("short".to_string(), Value::str("User's identification number.")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("lastName")),
                        ("short".to_string(), Value::str("User's last name.")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("login")),
                        ("short".to_string(), Value::str("User login identifier (should be unique).")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("module")),
                        ("short".to_string(), Value::str("Module identifier (if applicable).")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("passportNumber")),
                        ("short".to_string(), Value::str("User's passport number.")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("phone")),
                        ("short".to_string(), Value::str("User's phone number.")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseCode")),
                        ("short".to_string(), Value::str("Response code (0 indicates success; non-zero indicates an error).")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseMessage")),
                        ("short".to_string(), Value::str("Human-readable response message.")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("salutation")),
                        ("short".to_string(), Value::str("User's salutation (e.g., Mr., Ms.).")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("state")),
                        ("short".to_string(), Value::str("User's state or region.")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("street1")),
                        ("short".to_string(), Value::str("Primary address line.")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("street2")),
                        ("short".to_string(), Value::str("Secondary address line.")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("zip")),
                        ("short".to_string(), Value::str("Postal code.")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                ])),
                ("name".to_string(), Value::str("output_register_user")),
                ("op".to_string(), Value::map_of([
                    ("create".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("create")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("args".to_string(), Value::map_of([
                                    ("header".to_string(), Value::list(vec![
                                        Value::map_of([
                                            ("kind".to_string(), Value::str("header")),
                                            ("name".to_string(), Value::str("authorization")),
                                            ("orig".to_string(), Value::str("authorization")),
                                            ("reqd".to_string(), Value::Bool(true)),
                                            ("type".to_string(), Value::str("`$STRING`")),
                                        ]),
                                    ])),
                                ])),
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("POST")),
                                ("orig".to_string(), Value::str("/registerUser")),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("registerUser"),
                                ])),
                                ("select".to_string(), Value::map_of([
                                    ("exist".to_string(), Value::list(vec![
                                        Value::str("authorization"),
                                    ])),
                                ])),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body`")),
                                ])),
                            ]),
                        ])),
                    ])),
                ])),
                ("relations".to_string(), Value::map_of([
                    ("ancestors".to_string(), Value::empty_list()),
                ])),
            ])),
            ("output_remove_role".to_string(), Value::map_of([
                ("fields".to_string(), Value::list(vec![
                    Value::map_of([
                        ("name".to_string(), Value::str("consumerUUID")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseCode")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseMessage")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("roles")),
                        ("type".to_string(), Value::str("`$ARRAY`")),
                    ]),
                ])),
                ("name".to_string(), Value::str("output_remove_role")),
                ("op".to_string(), Value::map_of([
                    ("create".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("create")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("args".to_string(), Value::map_of([
                                    ("header".to_string(), Value::list(vec![
                                        Value::map_of([
                                            ("kind".to_string(), Value::str("header")),
                                            ("name".to_string(), Value::str("authorization")),
                                            ("orig".to_string(), Value::str("authorization")),
                                            ("reqd".to_string(), Value::Bool(true)),
                                            ("type".to_string(), Value::str("`$STRING`")),
                                        ]),
                                    ])),
                                ])),
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("POST")),
                                ("orig".to_string(), Value::str("/removeRoles")),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("removeRoles"),
                                ])),
                                ("select".to_string(), Value::map_of([
                                    ("exist".to_string(), Value::list(vec![
                                        Value::str("authorization"),
                                    ])),
                                ])),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body`")),
                                ])),
                            ]),
                        ])),
                    ])),
                ])),
                ("relations".to_string(), Value::map_of([
                    ("ancestors".to_string(), Value::empty_list()),
                ])),
            ])),
            ("output_resend_link".to_string(), Value::map_of([
                ("fields".to_string(), Value::list(vec![
                    Value::map_of([
                        ("name".to_string(), Value::str("businessRegistrationNumber")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("consumerUUID")),
                        ("req".to_string(), Value::Bool(true)),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("emailConfirmationCode")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("phoneNumber")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseCode")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseMessage")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                ])),
                ("name".to_string(), Value::str("output_resend_link")),
                ("op".to_string(), Value::map_of([
                    ("create".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("create")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("args".to_string(), Value::map_of([
                                    ("header".to_string(), Value::list(vec![
                                        Value::map_of([
                                            ("kind".to_string(), Value::str("header")),
                                            ("name".to_string(), Value::str("authorization")),
                                            ("orig".to_string(), Value::str("authorization")),
                                            ("type".to_string(), Value::str("`$STRING`")),
                                        ]),
                                    ])),
                                ])),
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("POST")),
                                ("orig".to_string(), Value::str("/resendLink")),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("resendLink"),
                                ])),
                                ("select".to_string(), Value::map_of([
                                    ("exist".to_string(), Value::list(vec![
                                        Value::str("authorization"),
                                    ])),
                                ])),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body`")),
                                ])),
                            ]),
                        ])),
                    ])),
                ])),
                ("relations".to_string(), Value::map_of([
                    ("ancestors".to_string(), Value::empty_list()),
                ])),
            ])),
            ("output_reset_password".to_string(), Value::map_of([
                ("fields".to_string(), Value::list(vec![
                    Value::map_of([
                        ("name".to_string(), Value::str("consumerUuid")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("phoneNumber")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseCode")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseMessage")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                ])),
                ("name".to_string(), Value::str("output_reset_password")),
                ("op".to_string(), Value::map_of([
                    ("create".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("create")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("args".to_string(), Value::map_of([
                                    ("header".to_string(), Value::list(vec![
                                        Value::map_of([
                                            ("kind".to_string(), Value::str("header")),
                                            ("name".to_string(), Value::str("authorization")),
                                            ("orig".to_string(), Value::str("authorization")),
                                            ("reqd".to_string(), Value::Bool(true)),
                                            ("type".to_string(), Value::str("`$STRING`")),
                                        ]),
                                    ])),
                                ])),
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("POST")),
                                ("orig".to_string(), Value::str("/resetPassword")),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("resetPassword"),
                                ])),
                                ("select".to_string(), Value::map_of([
                                    ("exist".to_string(), Value::list(vec![
                                        Value::str("authorization"),
                                    ])),
                                ])),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body`")),
                                ])),
                            ]),
                        ])),
                    ])),
                ])),
                ("relations".to_string(), Value::map_of([
                    ("ancestors".to_string(), Value::empty_list()),
                ])),
            ])),
            ("output_update_consumer".to_string(), Value::map_of([
                ("fields".to_string(), Value::list(vec![
                    Value::map_of([
                        ("name".to_string(), Value::str("city")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("consumerUuid")),
                        ("req".to_string(), Value::Bool(true)),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("consumerlanguage")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("country")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("dateOfBirth")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("datetime_created")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("driverLicenceNumber")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("email")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("firstName")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("identificationNumber")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("kycPassed")),
                        ("type".to_string(), Value::str("`$BOOLEAN`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("lastName")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("nationality")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("passportNumber")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("phoneNumber")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("placeOfBirth")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseCode")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseMessage")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("state")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("street1")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("street2")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("transactionhistory_id")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("zip")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                ])),
                ("name".to_string(), Value::str("output_update_consumer")),
                ("op".to_string(), Value::map_of([
                    ("create".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("create")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("args".to_string(), Value::map_of([
                                    ("header".to_string(), Value::list(vec![
                                        Value::map_of([
                                            ("kind".to_string(), Value::str("header")),
                                            ("name".to_string(), Value::str("authorization")),
                                            ("orig".to_string(), Value::str("authorization")),
                                            ("type".to_string(), Value::str("`$STRING`")),
                                        ]),
                                    ])),
                                ])),
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("POST")),
                                ("orig".to_string(), Value::str("/updateConsumer")),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("updateConsumer"),
                                ])),
                                ("select".to_string(), Value::map_of([
                                    ("exist".to_string(), Value::list(vec![
                                        Value::str("authorization"),
                                    ])),
                                ])),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body`")),
                                ])),
                            ]),
                        ])),
                    ])),
                ])),
                ("relations".to_string(), Value::map_of([
                    ("ancestors".to_string(), Value::empty_list()),
                ])),
            ])),
            ("output_update_profile".to_string(), Value::map_of([
                ("fields".to_string(), Value::list(vec![
                    Value::map_of([
                        ("name".to_string(), Value::str("consumerLanguage")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("email")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("firstName")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("lastName")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("phoneNumber")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseCode")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseMessage")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                ])),
                ("name".to_string(), Value::str("output_update_profile")),
                ("op".to_string(), Value::map_of([
                    ("create".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("create")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("args".to_string(), Value::map_of([
                                    ("header".to_string(), Value::list(vec![
                                        Value::map_of([
                                            ("kind".to_string(), Value::str("header")),
                                            ("name".to_string(), Value::str("authorization")),
                                            ("orig".to_string(), Value::str("authorization")),
                                            ("type".to_string(), Value::str("`$STRING`")),
                                        ]),
                                    ])),
                                ])),
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("POST")),
                                ("orig".to_string(), Value::str("/updateProfile")),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("updateProfile"),
                                ])),
                                ("select".to_string(), Value::map_of([
                                    ("exist".to_string(), Value::list(vec![
                                        Value::str("authorization"),
                                    ])),
                                ])),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body`")),
                                ])),
                            ]),
                        ])),
                    ])),
                ])),
                ("relations".to_string(), Value::map_of([
                    ("ancestors".to_string(), Value::empty_list()),
                ])),
            ])),
            ("version".to_string(), Value::map_of([
                ("fields".to_string(), Value::list(vec![
                    Value::map_of([
                        ("name".to_string(), Value::str("appName")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("buildDate")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("version")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                ])),
                ("name".to_string(), Value::str("version")),
                ("op".to_string(), Value::map_of([
                    ("load".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("load")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("args".to_string(), Value::empty_map()),
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("GET")),
                                ("orig".to_string(), Value::str("/version")),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("version"),
                                ])),
                                ("select".to_string(), Value::empty_map()),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body`")),
                                ])),
                            ]),
                        ])),
                    ])),
                ])),
                ("relations".to_string(), Value::map_of([
                    ("ancestors".to_string(), Value::empty_list()),
                ])),
            ])),
        ])),
    ])
}

// SHARED CONFIG (sdkgen rung L2).
//
// The SDK reads the config on every request and never writes to it, so one
// instance is shared by every client rather than rebuilt per client. Above the
// size threshold make_config re-parses the whole embedded JSON, so this is the
// difference between parsing the model once and once per client.
//
// THREAD-LOCAL, not a global: Value is Rc/RefCell-backed and so is neither
// Send nor Sync. One config per thread is the widest scope that is sound here,
// and the clone is an Rc bump, not a deep copy.
thread_local! {
    static SHARED_CONFIG: Value = make_config();
}

/// The per-thread config, built once on first use.
///
/// The returned Value SHARES its nodes: treat it as read-only. Callers that
/// need to mutate should use make_config, which always returns a fresh copy.
pub fn shared_config() -> Value {
    SHARED_CONFIG.with(|c| c.clone())
}

pub fn make_feature(name: &str) -> FeatureRef {
    match name {
        "test" => Rc::new(RefCell::new(crate::feature::test::TestFeature::new())),
        _ => Rc::new(RefCell::new(crate::feature::base::BaseFeature::new())),
    }
}

// Generated API configuration (mirrors go core/config.go).

use std::cell::RefCell;
use std::rc::Rc;

use crate::core::types::FeatureRef;
use crate::utility::voxgigstruct::Value;

pub fn make_config() -> Value {
    Value::map_of([
        ("main".to_string(), Value::map_of([
            ("name".to_string(), Value::str("BluefinTecsUserBackoffice")),
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
            ("auth".to_string(), Value::map_of([
                ("prefix".to_string(), Value::str("Bearer")),
            ])),
        ])),
        ("entity".to_string(), Value::map_of([
            ("output_activate_digital_module".to_string(), Value::map_of([
                ("fields".to_string(), Value::list(vec![
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("response_code")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("index$".to_string(), Value::Num(0f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("response_message")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(1f64)),
                    ]),
                ])),
                ("name".to_string(), Value::str("output_activate_digital_module")),
                ("op".to_string(), Value::map_of([
                    ("create".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("create")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("active".to_string(), Value::Bool(true)),
                                ("args".to_string(), Value::map_of([
                                    ("header".to_string(), Value::list(vec![
                                        Value::map_of([
                                            ("active".to_string(), Value::Bool(true)),
                                            ("kind".to_string(), Value::str("header")),
                                            ("name".to_string(), Value::str("authorization")),
                                            ("orig".to_string(), Value::str("authorization")),
                                            ("reqd".to_string(), Value::Bool(true)),
                                            ("type".to_string(), Value::str("`$STRING`")),
                                        ]),
                                    ])),
                                ])),
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
                                ("index$".to_string(), Value::Num(0f64)),
                            ]),
                        ])),
                        ("key$".to_string(), Value::str("create")),
                    ])),
                ])),
                ("relations".to_string(), Value::map_of([
                    ("ancestors".to_string(), Value::empty_list()),
                ])),
            ])),
            ("output_activate_portal_module".to_string(), Value::map_of([
                ("fields".to_string(), Value::list(vec![
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("client_secret")),
                        ("req".to_string(), Value::Bool(true)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(0f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("notification_email")),
                        ("req".to_string(), Value::Bool(true)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(1f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("response_code")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("index$".to_string(), Value::Num(2f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("response_message")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(3f64)),
                    ]),
                ])),
                ("name".to_string(), Value::str("output_activate_portal_module")),
                ("op".to_string(), Value::map_of([
                    ("create".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("create")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("active".to_string(), Value::Bool(true)),
                                ("args".to_string(), Value::map_of([
                                    ("header".to_string(), Value::list(vec![
                                        Value::map_of([
                                            ("active".to_string(), Value::Bool(true)),
                                            ("kind".to_string(), Value::str("header")),
                                            ("name".to_string(), Value::str("authorization")),
                                            ("orig".to_string(), Value::str("authorization")),
                                            ("reqd".to_string(), Value::Bool(true)),
                                            ("type".to_string(), Value::str("`$STRING`")),
                                        ]),
                                    ])),
                                ])),
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
                                ("index$".to_string(), Value::Num(0f64)),
                            ]),
                        ])),
                        ("key$".to_string(), Value::str("create")),
                    ])),
                ])),
                ("relations".to_string(), Value::map_of([
                    ("ancestors".to_string(), Value::empty_list()),
                ])),
            ])),
            ("output_activate_store_module".to_string(), Value::map_of([
                ("fields".to_string(), Value::list(vec![
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("response_code")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("index$".to_string(), Value::Num(0f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("response_message")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(1f64)),
                    ]),
                ])),
                ("name".to_string(), Value::str("output_activate_store_module")),
                ("op".to_string(), Value::map_of([
                    ("create".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("create")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("active".to_string(), Value::Bool(true)),
                                ("args".to_string(), Value::map_of([
                                    ("header".to_string(), Value::list(vec![
                                        Value::map_of([
                                            ("active".to_string(), Value::Bool(true)),
                                            ("kind".to_string(), Value::str("header")),
                                            ("name".to_string(), Value::str("authorization")),
                                            ("orig".to_string(), Value::str("authorization")),
                                            ("reqd".to_string(), Value::Bool(true)),
                                            ("type".to_string(), Value::str("`$STRING`")),
                                        ]),
                                    ])),
                                ])),
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
                                ("index$".to_string(), Value::Num(0f64)),
                            ]),
                        ])),
                        ("key$".to_string(), Value::str("create")),
                    ])),
                ])),
                ("relations".to_string(), Value::map_of([
                    ("ancestors".to_string(), Value::empty_list()),
                ])),
            ])),
            ("output_activate_user".to_string(), Value::map_of([
                ("fields".to_string(), Value::list(vec![
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("consumer_uuid")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(0f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("response_code")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("index$".to_string(), Value::Num(1f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("response_message")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(2f64)),
                    ]),
                ])),
                ("name".to_string(), Value::str("output_activate_user")),
                ("op".to_string(), Value::map_of([
                    ("create".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("create")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("active".to_string(), Value::Bool(true)),
                                ("args".to_string(), Value::map_of([
                                    ("header".to_string(), Value::list(vec![
                                        Value::map_of([
                                            ("active".to_string(), Value::Bool(true)),
                                            ("kind".to_string(), Value::str("header")),
                                            ("name".to_string(), Value::str("authorization")),
                                            ("orig".to_string(), Value::str("authorization")),
                                            ("reqd".to_string(), Value::Bool(true)),
                                            ("type".to_string(), Value::str("`$STRING`")),
                                        ]),
                                    ])),
                                ])),
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
                                ("index$".to_string(), Value::Num(0f64)),
                            ]),
                        ])),
                        ("key$".to_string(), Value::str("create")),
                    ])),
                ])),
                ("relations".to_string(), Value::map_of([
                    ("ancestors".to_string(), Value::empty_list()),
                ])),
            ])),
            ("output_assign_role".to_string(), Value::map_of([
                ("fields".to_string(), Value::list(vec![
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("consumer_uuid")),
                        ("req".to_string(), Value::Bool(true)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(0f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("response_code")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("index$".to_string(), Value::Num(1f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("response_message")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(2f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("role")),
                        ("req".to_string(), Value::Bool(true)),
                        ("type".to_string(), Value::str("`$ARRAY`")),
                        ("index$".to_string(), Value::Num(3f64)),
                    ]),
                ])),
                ("name".to_string(), Value::str("output_assign_role")),
                ("op".to_string(), Value::map_of([
                    ("create".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("create")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("active".to_string(), Value::Bool(true)),
                                ("args".to_string(), Value::map_of([
                                    ("header".to_string(), Value::list(vec![
                                        Value::map_of([
                                            ("active".to_string(), Value::Bool(true)),
                                            ("kind".to_string(), Value::str("header")),
                                            ("name".to_string(), Value::str("authorization")),
                                            ("orig".to_string(), Value::str("authorization")),
                                            ("reqd".to_string(), Value::Bool(true)),
                                            ("type".to_string(), Value::str("`$STRING`")),
                                        ]),
                                    ])),
                                ])),
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
                                ("index$".to_string(), Value::Num(0f64)),
                            ]),
                        ])),
                        ("key$".to_string(), Value::str("create")),
                    ])),
                ])),
                ("relations".to_string(), Value::map_of([
                    ("ancestors".to_string(), Value::empty_list()),
                ])),
            ])),
            ("output_change_logo".to_string(), Value::map_of([
                ("fields".to_string(), Value::list(vec![
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("content_as_base64")),
                        ("req".to_string(), Value::Bool(true)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(0f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("mime_type")),
                        ("req".to_string(), Value::Bool(true)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(1f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("response_code")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("index$".to_string(), Value::Num(2f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("response_message")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(3f64)),
                    ]),
                ])),
                ("name".to_string(), Value::str("output_change_logo")),
                ("op".to_string(), Value::map_of([
                    ("create".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("create")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("active".to_string(), Value::Bool(true)),
                                ("args".to_string(), Value::map_of([
                                    ("header".to_string(), Value::list(vec![
                                        Value::map_of([
                                            ("active".to_string(), Value::Bool(true)),
                                            ("kind".to_string(), Value::str("header")),
                                            ("name".to_string(), Value::str("authorization")),
                                            ("orig".to_string(), Value::str("authorization")),
                                            ("reqd".to_string(), Value::Bool(true)),
                                            ("type".to_string(), Value::str("`$STRING`")),
                                        ]),
                                    ])),
                                ])),
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
                                ("index$".to_string(), Value::Num(0f64)),
                            ]),
                        ])),
                        ("key$".to_string(), Value::str("create")),
                    ])),
                ])),
                ("relations".to_string(), Value::map_of([
                    ("ancestors".to_string(), Value::empty_list()),
                ])),
            ])),
            ("output_create_mandator".to_string(), Value::map_of([
                ("fields".to_string(), Value::list(vec![
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("city")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(0f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("country")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(1f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("date_of_birth")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(2f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("description")),
                        ("req".to_string(), Value::Bool(true)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(3f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("drivers_license_number")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(4f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("email")),
                        ("req".to_string(), Value::Bool(true)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(5f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("first_name")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(6f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("identification_number")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(7f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("last_name")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(8f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("login")),
                        ("req".to_string(), Value::Bool(true)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(9f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("mandator")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$OBJECT`")),
                        ("index$".to_string(), Value::Num(10f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("name")),
                        ("req".to_string(), Value::Bool(true)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(11f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("passport_number")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(12f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("phone")),
                        ("req".to_string(), Value::Bool(true)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(13f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("response_code")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("index$".to_string(), Value::Num(14f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("response_message")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(15f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("salutation")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(16f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("state")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(17f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("street1")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(18f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("street2")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(19f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("zip_code")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(20f64)),
                    ]),
                ])),
                ("name".to_string(), Value::str("output_create_mandator")),
                ("op".to_string(), Value::map_of([
                    ("create".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("create")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("active".to_string(), Value::Bool(true)),
                                ("args".to_string(), Value::map_of([
                                    ("header".to_string(), Value::list(vec![
                                        Value::map_of([
                                            ("active".to_string(), Value::Bool(true)),
                                            ("kind".to_string(), Value::str("header")),
                                            ("name".to_string(), Value::str("authorization")),
                                            ("orig".to_string(), Value::str("authorization")),
                                            ("reqd".to_string(), Value::Bool(true)),
                                            ("type".to_string(), Value::str("`$STRING`")),
                                        ]),
                                    ])),
                                ])),
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
                                    ("res".to_string(), Value::str("`body`")),
                                ])),
                                ("index$".to_string(), Value::Num(0f64)),
                            ]),
                        ])),
                        ("key$".to_string(), Value::str("create")),
                    ])),
                ])),
                ("relations".to_string(), Value::map_of([
                    ("ancestors".to_string(), Value::empty_list()),
                ])),
            ])),
            ("output_create_service_user".to_string(), Value::map_of([
                ("fields".to_string(), Value::list(vec![
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("mandator_name")),
                        ("req".to_string(), Value::Bool(true)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(0f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("response_code")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("index$".to_string(), Value::Num(1f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("response_message")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(2f64)),
                    ]),
                ])),
                ("name".to_string(), Value::str("output_create_service_user")),
                ("op".to_string(), Value::map_of([
                    ("create".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("create")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("active".to_string(), Value::Bool(true)),
                                ("args".to_string(), Value::map_of([
                                    ("header".to_string(), Value::list(vec![
                                        Value::map_of([
                                            ("active".to_string(), Value::Bool(true)),
                                            ("kind".to_string(), Value::str("header")),
                                            ("name".to_string(), Value::str("authorization")),
                                            ("orig".to_string(), Value::str("authorization")),
                                            ("reqd".to_string(), Value::Bool(true)),
                                            ("type".to_string(), Value::str("`$STRING`")),
                                        ]),
                                    ])),
                                ])),
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
                                ("index$".to_string(), Value::Num(0f64)),
                            ]),
                        ])),
                        ("key$".to_string(), Value::str("create")),
                    ])),
                ])),
                ("relations".to_string(), Value::map_of([
                    ("ancestors".to_string(), Value::empty_list()),
                ])),
            ])),
            ("output_deactivate_user".to_string(), Value::map_of([
                ("fields".to_string(), Value::list(vec![
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("consumer_uuid")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(0f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("response_code")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("index$".to_string(), Value::Num(1f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("response_message")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(2f64)),
                    ]),
                ])),
                ("name".to_string(), Value::str("output_deactivate_user")),
                ("op".to_string(), Value::map_of([
                    ("create".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("create")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("active".to_string(), Value::Bool(true)),
                                ("args".to_string(), Value::map_of([
                                    ("header".to_string(), Value::list(vec![
                                        Value::map_of([
                                            ("active".to_string(), Value::Bool(true)),
                                            ("kind".to_string(), Value::str("header")),
                                            ("name".to_string(), Value::str("authorization")),
                                            ("orig".to_string(), Value::str("authorization")),
                                            ("reqd".to_string(), Value::Bool(true)),
                                            ("type".to_string(), Value::str("`$STRING`")),
                                        ]),
                                    ])),
                                ])),
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
                                ("index$".to_string(), Value::Num(0f64)),
                            ]),
                        ])),
                        ("key$".to_string(), Value::str("create")),
                    ])),
                ])),
                ("relations".to_string(), Value::map_of([
                    ("ancestors".to_string(), Value::empty_list()),
                ])),
            ])),
            ("output_get_kyc_document".to_string(), Value::map_of([
                ("fields".to_string(), Value::list(vec![
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("case_id")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(0f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("encoded_data_base64")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(1f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("response_code")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("index$".to_string(), Value::Num(2f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("response_message")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(3f64)),
                    ]),
                ])),
                ("name".to_string(), Value::str("output_get_kyc_document")),
                ("op".to_string(), Value::map_of([
                    ("create".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("create")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("active".to_string(), Value::Bool(true)),
                                ("args".to_string(), Value::map_of([
                                    ("header".to_string(), Value::list(vec![
                                        Value::map_of([
                                            ("active".to_string(), Value::Bool(true)),
                                            ("kind".to_string(), Value::str("header")),
                                            ("name".to_string(), Value::str("authorization")),
                                            ("orig".to_string(), Value::str("authorization")),
                                            ("reqd".to_string(), Value::Bool(true)),
                                            ("type".to_string(), Value::str("`$STRING`")),
                                        ]),
                                    ])),
                                ])),
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
                                ("index$".to_string(), Value::Num(0f64)),
                            ]),
                        ])),
                        ("key$".to_string(), Value::str("create")),
                    ])),
                ])),
                ("relations".to_string(), Value::map_of([
                    ("ancestors".to_string(), Value::empty_list()),
                ])),
            ])),
            ("output_get_logo".to_string(), Value::map_of([
                ("fields".to_string(), Value::list(vec![
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("content_as_base64")),
                        ("req".to_string(), Value::Bool(true)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(0f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("mime_type")),
                        ("req".to_string(), Value::Bool(true)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(1f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("response_code")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("index$".to_string(), Value::Num(2f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("response_message")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(3f64)),
                    ]),
                ])),
                ("name".to_string(), Value::str("output_get_logo")),
                ("op".to_string(), Value::map_of([
                    ("load".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("load")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("active".to_string(), Value::Bool(true)),
                                ("args".to_string(), Value::map_of([
                                    ("header".to_string(), Value::list(vec![
                                        Value::map_of([
                                            ("active".to_string(), Value::Bool(true)),
                                            ("kind".to_string(), Value::str("header")),
                                            ("name".to_string(), Value::str("authorization")),
                                            ("orig".to_string(), Value::str("authorization")),
                                            ("reqd".to_string(), Value::Bool(true)),
                                            ("type".to_string(), Value::str("`$STRING`")),
                                        ]),
                                    ])),
                                ])),
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
                                ("index$".to_string(), Value::Num(0f64)),
                            ]),
                        ])),
                        ("key$".to_string(), Value::str("load")),
                    ])),
                ])),
                ("relations".to_string(), Value::map_of([
                    ("ancestors".to_string(), Value::empty_list()),
                ])),
            ])),
            ("output_list_of_available_role".to_string(), Value::map_of([
                ("fields".to_string(), Value::list(vec![
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("available_role")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$ARRAY`")),
                        ("index$".to_string(), Value::Num(0f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("response_code")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("index$".to_string(), Value::Num(1f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("response_message")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(2f64)),
                    ]),
                ])),
                ("name".to_string(), Value::str("output_list_of_available_role")),
                ("op".to_string(), Value::map_of([
                    ("create".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("create")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("active".to_string(), Value::Bool(true)),
                                ("args".to_string(), Value::map_of([
                                    ("header".to_string(), Value::list(vec![
                                        Value::map_of([
                                            ("active".to_string(), Value::Bool(true)),
                                            ("kind".to_string(), Value::str("header")),
                                            ("name".to_string(), Value::str("authorization")),
                                            ("orig".to_string(), Value::str("authorization")),
                                            ("reqd".to_string(), Value::Bool(true)),
                                            ("type".to_string(), Value::str("`$STRING`")),
                                        ]),
                                    ])),
                                ])),
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
                                ("index$".to_string(), Value::Num(0f64)),
                            ]),
                        ])),
                        ("key$".to_string(), Value::str("create")),
                    ])),
                ])),
                ("relations".to_string(), Value::map_of([
                    ("ancestors".to_string(), Value::empty_list()),
                ])),
            ])),
            ("output_list_of_mandator".to_string(), Value::map_of([
                ("fields".to_string(), Value::list(vec![
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("filter")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$OBJECT`")),
                        ("index$".to_string(), Value::Num(0f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("list")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$ARRAY`")),
                        ("index$".to_string(), Value::Num(1f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("pagination")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$OBJECT`")),
                        ("index$".to_string(), Value::Num(2f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("response_code")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("index$".to_string(), Value::Num(3f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("response_message")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(4f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("sorting")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$OBJECT`")),
                        ("index$".to_string(), Value::Num(5f64)),
                    ]),
                ])),
                ("name".to_string(), Value::str("output_list_of_mandator")),
                ("op".to_string(), Value::map_of([
                    ("create".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("create")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("active".to_string(), Value::Bool(true)),
                                ("args".to_string(), Value::map_of([
                                    ("header".to_string(), Value::list(vec![
                                        Value::map_of([
                                            ("active".to_string(), Value::Bool(true)),
                                            ("kind".to_string(), Value::str("header")),
                                            ("name".to_string(), Value::str("authorization")),
                                            ("orig".to_string(), Value::str("authorization")),
                                            ("reqd".to_string(), Value::Bool(true)),
                                            ("type".to_string(), Value::str("`$STRING`")),
                                        ]),
                                    ])),
                                ])),
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
                                ("index$".to_string(), Value::Num(0f64)),
                            ]),
                        ])),
                        ("key$".to_string(), Value::str("create")),
                    ])),
                ])),
                ("relations".to_string(), Value::map_of([
                    ("ancestors".to_string(), Value::empty_list()),
                ])),
            ])),
            ("output_list_of_module".to_string(), Value::map_of([
                ("fields".to_string(), Value::list(vec![
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("list")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$ARRAY`")),
                        ("index$".to_string(), Value::Num(0f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("pagination")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$OBJECT`")),
                        ("index$".to_string(), Value::Num(1f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("response_code")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("index$".to_string(), Value::Num(2f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("response_message")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(3f64)),
                    ]),
                ])),
                ("name".to_string(), Value::str("output_list_of_module")),
                ("op".to_string(), Value::map_of([
                    ("create".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("create")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("active".to_string(), Value::Bool(true)),
                                ("args".to_string(), Value::map_of([
                                    ("header".to_string(), Value::list(vec![
                                        Value::map_of([
                                            ("active".to_string(), Value::Bool(true)),
                                            ("kind".to_string(), Value::str("header")),
                                            ("name".to_string(), Value::str("authorization")),
                                            ("orig".to_string(), Value::str("authorization")),
                                            ("reqd".to_string(), Value::Bool(true)),
                                            ("type".to_string(), Value::str("`$STRING`")),
                                        ]),
                                    ])),
                                ])),
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
                                ("index$".to_string(), Value::Num(0f64)),
                            ]),
                        ])),
                        ("key$".to_string(), Value::str("create")),
                    ])),
                ])),
                ("relations".to_string(), Value::map_of([
                    ("ancestors".to_string(), Value::empty_list()),
                ])),
            ])),
            ("output_list_of_role_group".to_string(), Value::map_of([
                ("fields".to_string(), Value::list(vec![
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("filter")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$OBJECT`")),
                        ("index$".to_string(), Value::Num(0f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("group_role")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$ARRAY`")),
                        ("index$".to_string(), Value::Num(1f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("pagination")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$OBJECT`")),
                        ("index$".to_string(), Value::Num(2f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("response_code")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("index$".to_string(), Value::Num(3f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("response_message")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(4f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("sorting")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$OBJECT`")),
                        ("index$".to_string(), Value::Num(5f64)),
                    ]),
                ])),
                ("name".to_string(), Value::str("output_list_of_role_group")),
                ("op".to_string(), Value::map_of([
                    ("create".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("create")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("active".to_string(), Value::Bool(true)),
                                ("args".to_string(), Value::map_of([
                                    ("header".to_string(), Value::list(vec![
                                        Value::map_of([
                                            ("active".to_string(), Value::Bool(true)),
                                            ("kind".to_string(), Value::str("header")),
                                            ("name".to_string(), Value::str("authorization")),
                                            ("orig".to_string(), Value::str("authorization")),
                                            ("reqd".to_string(), Value::Bool(true)),
                                            ("type".to_string(), Value::str("`$STRING`")),
                                        ]),
                                    ])),
                                ])),
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
                                ("index$".to_string(), Value::Num(0f64)),
                            ]),
                        ])),
                        ("key$".to_string(), Value::str("create")),
                    ])),
                ])),
                ("relations".to_string(), Value::map_of([
                    ("ancestors".to_string(), Value::empty_list()),
                ])),
            ])),
            ("output_list_of_transactions_history".to_string(), Value::map_of([
                ("fields".to_string(), Value::list(vec![
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("filter")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$OBJECT`")),
                        ("index$".to_string(), Value::Num(0f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("list")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$ARRAY`")),
                        ("index$".to_string(), Value::Num(1f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("pagination")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$OBJECT`")),
                        ("index$".to_string(), Value::Num(2f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("response_code")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("index$".to_string(), Value::Num(3f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("response_message")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(4f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("sorting")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$OBJECT`")),
                        ("index$".to_string(), Value::Num(5f64)),
                    ]),
                ])),
                ("name".to_string(), Value::str("output_list_of_transactions_history")),
                ("op".to_string(), Value::map_of([
                    ("create".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("create")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("active".to_string(), Value::Bool(true)),
                                ("args".to_string(), Value::map_of([
                                    ("header".to_string(), Value::list(vec![
                                        Value::map_of([
                                            ("active".to_string(), Value::Bool(true)),
                                            ("kind".to_string(), Value::str("header")),
                                            ("name".to_string(), Value::str("authorization")),
                                            ("orig".to_string(), Value::str("authorization")),
                                            ("reqd".to_string(), Value::Bool(true)),
                                            ("type".to_string(), Value::str("`$STRING`")),
                                        ]),
                                    ])),
                                ])),
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
                                ("index$".to_string(), Value::Num(0f64)),
                            ]),
                        ])),
                        ("key$".to_string(), Value::str("create")),
                    ])),
                ])),
                ("relations".to_string(), Value::map_of([
                    ("ancestors".to_string(), Value::empty_list()),
                ])),
            ])),
            ("output_list_of_user".to_string(), Value::map_of([
                ("fields".to_string(), Value::list(vec![
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("filter")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$OBJECT`")),
                        ("index$".to_string(), Value::Num(0f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("list")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$ARRAY`")),
                        ("index$".to_string(), Value::Num(1f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("pagination")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$OBJECT`")),
                        ("index$".to_string(), Value::Num(2f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("response_code")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("index$".to_string(), Value::Num(3f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("response_message")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(4f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("sorting")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$OBJECT`")),
                        ("index$".to_string(), Value::Num(5f64)),
                    ]),
                ])),
                ("name".to_string(), Value::str("output_list_of_user")),
                ("op".to_string(), Value::map_of([
                    ("create".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("create")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("active".to_string(), Value::Bool(true)),
                                ("args".to_string(), Value::map_of([
                                    ("header".to_string(), Value::list(vec![
                                        Value::map_of([
                                            ("active".to_string(), Value::Bool(true)),
                                            ("kind".to_string(), Value::str("header")),
                                            ("name".to_string(), Value::str("authorization")),
                                            ("orig".to_string(), Value::str("authorization")),
                                            ("reqd".to_string(), Value::Bool(true)),
                                            ("type".to_string(), Value::str("`$STRING`")),
                                        ]),
                                    ])),
                                ])),
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
                                ("index$".to_string(), Value::Num(0f64)),
                            ]),
                        ])),
                        ("key$".to_string(), Value::str("create")),
                    ])),
                ])),
                ("relations".to_string(), Value::map_of([
                    ("ancestors".to_string(), Value::empty_list()),
                ])),
            ])),
            ("output_provide_credential".to_string(), Value::map_of([
                ("fields".to_string(), Value::list(vec![
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("mandator_name")),
                        ("req".to_string(), Value::Bool(true)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(0f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("password")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(1f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("response_code")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("index$".to_string(), Value::Num(2f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("response_message")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(3f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("username")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(4f64)),
                    ]),
                ])),
                ("name".to_string(), Value::str("output_provide_credential")),
                ("op".to_string(), Value::map_of([
                    ("create".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("create")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("active".to_string(), Value::Bool(true)),
                                ("args".to_string(), Value::map_of([
                                    ("header".to_string(), Value::list(vec![
                                        Value::map_of([
                                            ("active".to_string(), Value::Bool(true)),
                                            ("kind".to_string(), Value::str("header")),
                                            ("name".to_string(), Value::str("authorization")),
                                            ("orig".to_string(), Value::str("authorization")),
                                            ("reqd".to_string(), Value::Bool(true)),
                                            ("type".to_string(), Value::str("`$STRING`")),
                                        ]),
                                    ])),
                                ])),
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
                                ("index$".to_string(), Value::Num(0f64)),
                            ]),
                        ])),
                        ("key$".to_string(), Value::str("create")),
                    ])),
                ])),
                ("relations".to_string(), Value::map_of([
                    ("ancestors".to_string(), Value::empty_list()),
                ])),
            ])),
            ("output_register_user".to_string(), Value::map_of([
                ("fields".to_string(), Value::list(vec![
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("city")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(0f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("consumer_id")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(1f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("consumer_language")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(2f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("country")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(3f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("date_of_birth")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(4f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("driver_licence_number")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(5f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("email")),
                        ("req".to_string(), Value::Bool(true)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(6f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("first_name")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(7f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("identification_number")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(8f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("last_name")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(9f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("login")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(10f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("module")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(11f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("passport_number")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(12f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("phone")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(13f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("response_code")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("index$".to_string(), Value::Num(14f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("response_message")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(15f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("salutation")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(16f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("state")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(17f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("street1")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(18f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("street2")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(19f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("zip")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(20f64)),
                    ]),
                ])),
                ("name".to_string(), Value::str("output_register_user")),
                ("op".to_string(), Value::map_of([
                    ("create".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("create")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("active".to_string(), Value::Bool(true)),
                                ("args".to_string(), Value::map_of([
                                    ("header".to_string(), Value::list(vec![
                                        Value::map_of([
                                            ("active".to_string(), Value::Bool(true)),
                                            ("kind".to_string(), Value::str("header")),
                                            ("name".to_string(), Value::str("authorization")),
                                            ("orig".to_string(), Value::str("authorization")),
                                            ("reqd".to_string(), Value::Bool(true)),
                                            ("type".to_string(), Value::str("`$STRING`")),
                                        ]),
                                    ])),
                                ])),
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
                                ("index$".to_string(), Value::Num(0f64)),
                            ]),
                        ])),
                        ("key$".to_string(), Value::str("create")),
                    ])),
                ])),
                ("relations".to_string(), Value::map_of([
                    ("ancestors".to_string(), Value::empty_list()),
                ])),
            ])),
            ("output_remove_role".to_string(), Value::map_of([
                ("fields".to_string(), Value::list(vec![
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("consumer_uuid")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(0f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("response_code")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("index$".to_string(), Value::Num(1f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("response_message")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(2f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("role")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$ARRAY`")),
                        ("index$".to_string(), Value::Num(3f64)),
                    ]),
                ])),
                ("name".to_string(), Value::str("output_remove_role")),
                ("op".to_string(), Value::map_of([
                    ("create".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("create")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("active".to_string(), Value::Bool(true)),
                                ("args".to_string(), Value::map_of([
                                    ("header".to_string(), Value::list(vec![
                                        Value::map_of([
                                            ("active".to_string(), Value::Bool(true)),
                                            ("kind".to_string(), Value::str("header")),
                                            ("name".to_string(), Value::str("authorization")),
                                            ("orig".to_string(), Value::str("authorization")),
                                            ("reqd".to_string(), Value::Bool(true)),
                                            ("type".to_string(), Value::str("`$STRING`")),
                                        ]),
                                    ])),
                                ])),
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
                                ("index$".to_string(), Value::Num(0f64)),
                            ]),
                        ])),
                        ("key$".to_string(), Value::str("create")),
                    ])),
                ])),
                ("relations".to_string(), Value::map_of([
                    ("ancestors".to_string(), Value::empty_list()),
                ])),
            ])),
            ("output_resend_link".to_string(), Value::map_of([
                ("fields".to_string(), Value::list(vec![
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("business_registration_number")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(0f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("consumer_uuid")),
                        ("req".to_string(), Value::Bool(true)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(1f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("email_confirmation_code")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(2f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("phone_number")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(3f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("response_code")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("index$".to_string(), Value::Num(4f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("response_message")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(5f64)),
                    ]),
                ])),
                ("name".to_string(), Value::str("output_resend_link")),
                ("op".to_string(), Value::map_of([
                    ("create".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("create")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("active".to_string(), Value::Bool(true)),
                                ("args".to_string(), Value::map_of([
                                    ("header".to_string(), Value::list(vec![
                                        Value::map_of([
                                            ("active".to_string(), Value::Bool(true)),
                                            ("kind".to_string(), Value::str("header")),
                                            ("name".to_string(), Value::str("authorization")),
                                            ("orig".to_string(), Value::str("authorization")),
                                            ("reqd".to_string(), Value::Bool(false)),
                                            ("type".to_string(), Value::str("`$STRING`")),
                                        ]),
                                    ])),
                                ])),
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
                                ("index$".to_string(), Value::Num(0f64)),
                            ]),
                        ])),
                        ("key$".to_string(), Value::str("create")),
                    ])),
                ])),
                ("relations".to_string(), Value::map_of([
                    ("ancestors".to_string(), Value::empty_list()),
                ])),
            ])),
            ("output_reset_password".to_string(), Value::map_of([
                ("fields".to_string(), Value::list(vec![
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("consumer_uuid")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(0f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("phone_number")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(1f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("response_code")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("index$".to_string(), Value::Num(2f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("response_message")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(3f64)),
                    ]),
                ])),
                ("name".to_string(), Value::str("output_reset_password")),
                ("op".to_string(), Value::map_of([
                    ("create".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("create")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("active".to_string(), Value::Bool(true)),
                                ("args".to_string(), Value::map_of([
                                    ("header".to_string(), Value::list(vec![
                                        Value::map_of([
                                            ("active".to_string(), Value::Bool(true)),
                                            ("kind".to_string(), Value::str("header")),
                                            ("name".to_string(), Value::str("authorization")),
                                            ("orig".to_string(), Value::str("authorization")),
                                            ("reqd".to_string(), Value::Bool(true)),
                                            ("type".to_string(), Value::str("`$STRING`")),
                                        ]),
                                    ])),
                                ])),
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
                                ("index$".to_string(), Value::Num(0f64)),
                            ]),
                        ])),
                        ("key$".to_string(), Value::str("create")),
                    ])),
                ])),
                ("relations".to_string(), Value::map_of([
                    ("ancestors".to_string(), Value::empty_list()),
                ])),
            ])),
            ("output_update_consumer".to_string(), Value::map_of([
                ("fields".to_string(), Value::list(vec![
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("city")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(0f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("consumer_uuid")),
                        ("req".to_string(), Value::Bool(true)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(1f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("consumerlanguage")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(2f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("country")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(3f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("date_of_birth")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(4f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("datetime_created")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(5f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("driver_licence_number")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(6f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("email")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(7f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("first_name")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(8f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("identification_number")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(9f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("kyc_passed")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$BOOLEAN`")),
                        ("index$".to_string(), Value::Num(10f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("last_name")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(11f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("nationality")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(12f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("passport_number")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(13f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("phone_number")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(14f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("place_of_birth")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(15f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("response_code")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("index$".to_string(), Value::Num(16f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("response_message")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(17f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("state")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(18f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("street1")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(19f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("street2")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(20f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("transactionhistory_id")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(21f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("zip")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(22f64)),
                    ]),
                ])),
                ("name".to_string(), Value::str("output_update_consumer")),
                ("op".to_string(), Value::map_of([
                    ("create".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("create")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("active".to_string(), Value::Bool(true)),
                                ("args".to_string(), Value::map_of([
                                    ("header".to_string(), Value::list(vec![
                                        Value::map_of([
                                            ("active".to_string(), Value::Bool(true)),
                                            ("kind".to_string(), Value::str("header")),
                                            ("name".to_string(), Value::str("authorization")),
                                            ("orig".to_string(), Value::str("authorization")),
                                            ("reqd".to_string(), Value::Bool(false)),
                                            ("type".to_string(), Value::str("`$STRING`")),
                                        ]),
                                    ])),
                                ])),
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
                                ("index$".to_string(), Value::Num(0f64)),
                            ]),
                        ])),
                        ("key$".to_string(), Value::str("create")),
                    ])),
                ])),
                ("relations".to_string(), Value::map_of([
                    ("ancestors".to_string(), Value::empty_list()),
                ])),
            ])),
            ("output_update_profile".to_string(), Value::map_of([
                ("fields".to_string(), Value::list(vec![
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("consumer_language")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(0f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("email")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(1f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("first_name")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(2f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("last_name")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(3f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("phone_number")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(4f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("response_code")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("index$".to_string(), Value::Num(5f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("response_message")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(6f64)),
                    ]),
                ])),
                ("name".to_string(), Value::str("output_update_profile")),
                ("op".to_string(), Value::map_of([
                    ("create".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("create")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("active".to_string(), Value::Bool(true)),
                                ("args".to_string(), Value::map_of([
                                    ("header".to_string(), Value::list(vec![
                                        Value::map_of([
                                            ("active".to_string(), Value::Bool(true)),
                                            ("kind".to_string(), Value::str("header")),
                                            ("name".to_string(), Value::str("authorization")),
                                            ("orig".to_string(), Value::str("authorization")),
                                            ("reqd".to_string(), Value::Bool(false)),
                                            ("type".to_string(), Value::str("`$STRING`")),
                                        ]),
                                    ])),
                                ])),
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
                                ("index$".to_string(), Value::Num(0f64)),
                            ]),
                        ])),
                        ("key$".to_string(), Value::str("create")),
                    ])),
                ])),
                ("relations".to_string(), Value::map_of([
                    ("ancestors".to_string(), Value::empty_list()),
                ])),
            ])),
            ("version".to_string(), Value::map_of([
                ("fields".to_string(), Value::list(vec![
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("app_name")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(0f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("build_date")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(1f64)),
                    ]),
                    Value::map_of([
                        ("active".to_string(), Value::Bool(true)),
                        ("name".to_string(), Value::str("version")),
                        ("req".to_string(), Value::Bool(false)),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("index$".to_string(), Value::Num(2f64)),
                    ]),
                ])),
                ("name".to_string(), Value::str("version")),
                ("op".to_string(), Value::map_of([
                    ("load".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("load")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("active".to_string(), Value::Bool(true)),
                                ("args".to_string(), Value::empty_map()),
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
                                ("index$".to_string(), Value::Num(0f64)),
                            ]),
                        ])),
                        ("key$".to_string(), Value::str("load")),
                    ])),
                ])),
                ("relations".to_string(), Value::map_of([
                    ("ancestors".to_string(), Value::empty_list()),
                ])),
            ])),
        ])),
    ])
}

pub fn make_feature(name: &str) -> FeatureRef {
    match name {
        "test" => Rc::new(RefCell::new(crate::feature::test::TestFeature::new())),
        _ => Rc::new(RefCell::new(crate::feature::base::BaseFeature::new())),
    }
}

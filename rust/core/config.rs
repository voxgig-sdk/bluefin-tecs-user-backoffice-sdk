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
            ("audit".to_string(), Value::map_of([
                ("options".to_string(), Value::map_of([
                    ("active".to_string(), Value::Bool(false)),
                    ("actor".to_string(), Value::str("anonymous")),
                    ("max".to_string(), Value::Num(1000f64)),
                ])),
                ("optspec".to_string(), Value::map_of([
                    ("now".to_string(), Value::str("`$FUNCTION`")),
                    ("sink".to_string(), Value::str("`$FUNCTION`")),
                ])),
                ("strict".to_string(), Value::Bool(false)),
                ("transport".to_string(), Value::str("none")),
            ])),
            ("clienttrack".to_string(), Value::map_of([
                ("options".to_string(), Value::map_of([
                    ("active".to_string(), Value::Bool(false)),
                    ("clientVersion".to_string(), Value::str("0.0.1")),
                ])),
                ("optspec".to_string(), Value::map_of([
                    ("clientName".to_string(), Value::str("`$STRING`")),
                    ("clientVersion".to_string(), Value::str("`$STRING`")),
                    ("headers".to_string(), Value::str("`$MAP`")),
                    ("idgen".to_string(), Value::str("`$FUNCTION`")),
                    ("sessionId".to_string(), Value::str("`$STRING`")),
                ])),
                ("strict".to_string(), Value::Bool(false)),
                ("transport".to_string(), Value::str("none")),
            ])),
            ("debug".to_string(), Value::map_of([
                ("options".to_string(), Value::map_of([
                    ("active".to_string(), Value::Bool(false)),
                    ("max".to_string(), Value::Num(100f64)),
                    ("redact".to_string(), Value::list(vec![
                        Value::str("authorization"),
                        Value::str("cookie"),
                        Value::str("set-cookie"),
                        Value::str("api-key"),
                        Value::str("apikey"),
                        Value::str("x-api-key"),
                        Value::str("idempotency-key"),
                    ])),
                ])),
                ("optspec".to_string(), Value::map_of([
                    ("now".to_string(), Value::str("`$FUNCTION`")),
                    ("onEntry".to_string(), Value::str("`$FUNCTION`")),
                ])),
                ("strict".to_string(), Value::Bool(false)),
                ("transport".to_string(), Value::str("none")),
            ])),
            ("idempotency".to_string(), Value::map_of([
                ("options".to_string(), Value::map_of([
                    ("active".to_string(), Value::Bool(false)),
                    ("header".to_string(), Value::str("Idempotency-Key")),
                    ("methods".to_string(), Value::list(vec![
                        Value::str("POST"),
                        Value::str("PUT"),
                        Value::str("PATCH"),
                        Value::str("DELETE"),
                    ])),
                    ("ops".to_string(), Value::list(vec![
                        Value::str("create"),
                        Value::str("update"),
                        Value::str("remove"),
                    ])),
                ])),
                ("optspec".to_string(), Value::map_of([
                    ("keygen".to_string(), Value::str("`$FUNCTION`")),
                ])),
                ("strict".to_string(), Value::Bool(false)),
                ("transport".to_string(), Value::str("none")),
            ])),
            ("log".to_string(), Value::map_of([
                ("options".to_string(), Value::map_of([
                    ("active".to_string(), Value::Bool(true)),
                ])),
                ("optspec".to_string(), Value::map_of([
                    ("level".to_string(), Value::str("`$STRING`")),
                    ("logger".to_string(), Value::str("`$ANY`")),
                ])),
                ("strict".to_string(), Value::Bool(false)),
                ("transport".to_string(), Value::str("none")),
            ])),
            ("metrics".to_string(), Value::map_of([
                ("options".to_string(), Value::map_of([
                    ("active".to_string(), Value::Bool(false)),
                ])),
                ("optspec".to_string(), Value::map_of([
                    ("now".to_string(), Value::str("`$FUNCTION`")),
                ])),
                ("strict".to_string(), Value::Bool(false)),
                ("transport".to_string(), Value::str("none")),
            ])),
            ("paging".to_string(), Value::map_of([
                ("options".to_string(), Value::map_of([
                    ("active".to_string(), Value::Bool(false)),
                    ("afterVar".to_string(), Value::str("after")),
                    ("cursorParam".to_string(), Value::str("cursor")),
                    ("firstVar".to_string(), Value::str("first")),
                    ("limitParam".to_string(), Value::str("limit")),
                    ("pageParam".to_string(), Value::str("page")),
                    ("startPage".to_string(), Value::Num(1f64)),
                ])),
                ("optspec".to_string(), Value::map_of([
                    ("limit".to_string(), Value::str("`$NUMBER`")),
                    ("ops".to_string(), Value::str("`$LIST`")),
                ])),
                ("strict".to_string(), Value::Bool(false)),
                ("transport".to_string(), Value::str("none")),
            ])),
            ("ratelimit".to_string(), Value::map_of([
                ("options".to_string(), Value::map_of([
                    ("active".to_string(), Value::Bool(false)),
                    ("burst".to_string(), Value::Num(5f64)),
                    ("rate".to_string(), Value::Num(5f64)),
                ])),
                ("optspec".to_string(), Value::map_of([
                    ("now".to_string(), Value::str("`$FUNCTION`")),
                    ("sleep".to_string(), Value::str("`$FUNCTION`")),
                ])),
                ("strict".to_string(), Value::Bool(false)),
                ("transport".to_string(), Value::str("wrap")),
            ])),
            ("retry".to_string(), Value::map_of([
                ("options".to_string(), Value::map_of([
                    ("active".to_string(), Value::Bool(false)),
                    ("factor".to_string(), Value::Num(2f64)),
                    ("maxDelay".to_string(), Value::Num(2000f64)),
                    ("minDelay".to_string(), Value::Num(50f64)),
                    ("retries".to_string(), Value::Num(2f64)),
                    ("statuses".to_string(), Value::list(vec![
                        Value::Num(408f64),
                        Value::Num(425f64),
                        Value::Num(429f64),
                        Value::Num(500f64),
                        Value::Num(502f64),
                        Value::Num(503f64),
                        Value::Num(504f64),
                    ])),
                ])),
                ("optspec".to_string(), Value::map_of([
                    ("jitter".to_string(), Value::str("`$BOOLEAN`")),
                    ("sleep".to_string(), Value::str("`$FUNCTION`")),
                ])),
                ("strict".to_string(), Value::Bool(false)),
                ("transport".to_string(), Value::str("wrap")),
            ])),
            ("telemetry".to_string(), Value::map_of([
                ("options".to_string(), Value::map_of([
                    ("active".to_string(), Value::Bool(false)),
                ])),
                ("optspec".to_string(), Value::map_of([
                    ("exporter".to_string(), Value::str("`$FUNCTION`")),
                    ("headers".to_string(), Value::str("`$MAP`")),
                    ("idgen".to_string(), Value::str("`$FUNCTION`")),
                    ("now".to_string(), Value::str("`$FUNCTION`")),
                ])),
                ("strict".to_string(), Value::Bool(false)),
                ("transport".to_string(), Value::str("none")),
            ])),
            ("test".to_string(), Value::map_of([
                ("options".to_string(), Value::map_of([
                    ("active".to_string(), Value::Bool(false)),
                ])),
                ("optspec".to_string(), Value::map_of([
                    ("entity".to_string(), Value::str("`$MAP`")),
                    ("net".to_string(), Value::str("`$MAP`")),
                ])),
                ("strict".to_string(), Value::Bool(false)),
                ("transport".to_string(), Value::str("base")),
            ])),
            ("timeout".to_string(), Value::map_of([
                ("options".to_string(), Value::map_of([
                    ("active".to_string(), Value::Bool(false)),
                    ("ms".to_string(), Value::Num(30000f64)),
                ])),
                ("optspec".to_string(), Value::map_of([
                    ("clearTimer".to_string(), Value::str("`$FUNCTION`")),
                    ("setTimer".to_string(), Value::str("`$FUNCTION`")),
                ])),
                ("strict".to_string(), Value::Bool(false)),
                ("transport".to_string(), Value::str("wrap")),
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
                        ("title".to_string(), Value::str("Response Code")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseMessage")),
                        ("title".to_string(), Value::str("Response Message")),
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
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("POST")),
                                ("orig".to_string(), Value::str("/activateDigitalModule")),
                                ("segments".to_string(), Value::list(vec![
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("activateDigitalModule")),
                                    ]),
                                ])),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("activateDigitalModule"),
                                ])),
                                ("rename".to_string(), Value::empty_map()),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body`")),
                                ])),
                                ("args".to_string(), Value::map_of([
                                    ("header".to_string(), Value::list(vec![
                                        Value::map_of([
                                            ("name".to_string(), Value::str("authorization")),
                                            ("orig".to_string(), Value::str("authorization")),
                                            ("type".to_string(), Value::str("`$STRING`")),
                                            ("kind".to_string(), Value::str("header")),
                                            ("reqd".to_string(), Value::Bool(true)),
                                        ]),
                                    ])),
                                ])),
                                ("select".to_string(), Value::map_of([
                                    ("exist".to_string(), Value::list(vec![
                                        Value::str("authorization"),
                                    ])),
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
                        ("title".to_string(), Value::str("Client Secret")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("req".to_string(), Value::Bool(true)),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("notificationEmail")),
                        ("title".to_string(), Value::str("Notification Email")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("req".to_string(), Value::Bool(true)),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseCode")),
                        ("title".to_string(), Value::str("Response Code")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseMessage")),
                        ("title".to_string(), Value::str("Response Message")),
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
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("POST")),
                                ("orig".to_string(), Value::str("/activateMerchantPortalModule")),
                                ("segments".to_string(), Value::list(vec![
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("activateMerchantPortalModule")),
                                    ]),
                                ])),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("activateMerchantPortalModule"),
                                ])),
                                ("rename".to_string(), Value::empty_map()),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body`")),
                                ])),
                                ("args".to_string(), Value::map_of([
                                    ("header".to_string(), Value::list(vec![
                                        Value::map_of([
                                            ("name".to_string(), Value::str("authorization")),
                                            ("orig".to_string(), Value::str("authorization")),
                                            ("type".to_string(), Value::str("`$STRING`")),
                                            ("kind".to_string(), Value::str("header")),
                                            ("reqd".to_string(), Value::Bool(true)),
                                        ]),
                                    ])),
                                ])),
                                ("select".to_string(), Value::map_of([
                                    ("exist".to_string(), Value::list(vec![
                                        Value::str("authorization"),
                                    ])),
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
                        ("title".to_string(), Value::str("Response Code")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseMessage")),
                        ("title".to_string(), Value::str("Response Message")),
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
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("POST")),
                                ("orig".to_string(), Value::str("/activateAppStoreModule")),
                                ("segments".to_string(), Value::list(vec![
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("activateAppStoreModule")),
                                    ]),
                                ])),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("activateAppStoreModule"),
                                ])),
                                ("rename".to_string(), Value::empty_map()),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body`")),
                                ])),
                                ("args".to_string(), Value::map_of([
                                    ("header".to_string(), Value::list(vec![
                                        Value::map_of([
                                            ("name".to_string(), Value::str("authorization")),
                                            ("orig".to_string(), Value::str("authorization")),
                                            ("type".to_string(), Value::str("`$STRING`")),
                                            ("kind".to_string(), Value::str("header")),
                                            ("reqd".to_string(), Value::Bool(true)),
                                        ]),
                                    ])),
                                ])),
                                ("select".to_string(), Value::map_of([
                                    ("exist".to_string(), Value::list(vec![
                                        Value::str("authorization"),
                                    ])),
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
                        ("title".to_string(), Value::str("Consumer Uuid")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseCode")),
                        ("title".to_string(), Value::str("Response Code")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseMessage")),
                        ("title".to_string(), Value::str("Response Message")),
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
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("POST")),
                                ("orig".to_string(), Value::str("/activateUser")),
                                ("segments".to_string(), Value::list(vec![
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("activateUser")),
                                    ]),
                                ])),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("activateUser"),
                                ])),
                                ("rename".to_string(), Value::empty_map()),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body`")),
                                ])),
                                ("args".to_string(), Value::map_of([
                                    ("header".to_string(), Value::list(vec![
                                        Value::map_of([
                                            ("name".to_string(), Value::str("authorization")),
                                            ("orig".to_string(), Value::str("authorization")),
                                            ("type".to_string(), Value::str("`$STRING`")),
                                            ("kind".to_string(), Value::str("header")),
                                            ("reqd".to_string(), Value::Bool(true)),
                                        ]),
                                    ])),
                                ])),
                                ("select".to_string(), Value::map_of([
                                    ("exist".to_string(), Value::list(vec![
                                        Value::str("authorization"),
                                    ])),
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
                        ("title".to_string(), Value::str("Consumer Uuid")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("req".to_string(), Value::Bool(true)),
                        ("short".to_string(), Value::str("Unique identifier of the consumer (user) to whom the role(s) will be assigned.")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseCode")),
                        ("title".to_string(), Value::str("Response Code")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("short".to_string(), Value::str("Response code: 0 indicates success; any non-zero value indicates an error.")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseMessage")),
                        ("title".to_string(), Value::str("Response Message")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("short".to_string(), Value::str("A human-readable message providing additional details about the outcome.")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("roles")),
                        ("title".to_string(), Value::str("Roles")),
                        ("type".to_string(), Value::str("`$ARRAY`")),
                        ("req".to_string(), Value::Bool(true)),
                        ("short".to_string(), Value::str("List of roles to assign to the consumer.")),
                    ]),
                ])),
                ("name".to_string(), Value::str("output_assign_role")),
                ("op".to_string(), Value::map_of([
                    ("create".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("create")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("POST")),
                                ("orig".to_string(), Value::str("/assignRoles")),
                                ("segments".to_string(), Value::list(vec![
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("assignRoles")),
                                    ]),
                                ])),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("assignRoles"),
                                ])),
                                ("rename".to_string(), Value::empty_map()),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body`")),
                                ])),
                                ("args".to_string(), Value::map_of([
                                    ("header".to_string(), Value::list(vec![
                                        Value::map_of([
                                            ("name".to_string(), Value::str("authorization")),
                                            ("orig".to_string(), Value::str("authorization")),
                                            ("type".to_string(), Value::str("`$STRING`")),
                                            ("kind".to_string(), Value::str("header")),
                                            ("reqd".to_string(), Value::Bool(true)),
                                        ]),
                                    ])),
                                ])),
                                ("select".to_string(), Value::map_of([
                                    ("exist".to_string(), Value::list(vec![
                                        Value::str("authorization"),
                                    ])),
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
                        ("title".to_string(), Value::str("Content As Base64")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("req".to_string(), Value::Bool(true)),
                        ("short".to_string(), Value::str("The content of the image as base64 encoded string")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("mimeType")),
                        ("title".to_string(), Value::str("Mime Type")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("req".to_string(), Value::Bool(true)),
                        ("short".to_string(), Value::str("The MIME type of the image")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseCode")),
                        ("title".to_string(), Value::str("Response Code")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseMessage")),
                        ("title".to_string(), Value::str("Response Message")),
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
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("POST")),
                                ("orig".to_string(), Value::str("/changeLogo")),
                                ("segments".to_string(), Value::list(vec![
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("changeLogo")),
                                    ]),
                                ])),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("changeLogo"),
                                ])),
                                ("rename".to_string(), Value::empty_map()),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body`")),
                                ])),
                                ("args".to_string(), Value::map_of([
                                    ("header".to_string(), Value::list(vec![
                                        Value::map_of([
                                            ("name".to_string(), Value::str("authorization")),
                                            ("orig".to_string(), Value::str("authorization")),
                                            ("type".to_string(), Value::str("`$STRING`")),
                                            ("kind".to_string(), Value::str("header")),
                                            ("reqd".to_string(), Value::Bool(true)),
                                        ]),
                                    ])),
                                ])),
                                ("select".to_string(), Value::map_of([
                                    ("exist".to_string(), Value::list(vec![
                                        Value::str("authorization"),
                                    ])),
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
                        ("title".to_string(), Value::str("City")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("country")),
                        ("title".to_string(), Value::str("Country")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("dateOfBirth")),
                        ("title".to_string(), Value::str("Date Of Birth")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("description")),
                        ("title".to_string(), Value::str("Description")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("op".to_string(), Value::map_of([
                            ("create".to_string(), Value::map_of([
                                ("req".to_string(), Value::Bool(true)),
                                ("type".to_string(), Value::str("`$STRING`")),
                            ])),
                        ])),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("driversLicenseNumber")),
                        ("title".to_string(), Value::str("Drivers License Number")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("email")),
                        ("title".to_string(), Value::str("Email")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("req".to_string(), Value::Bool(true)),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("firstName")),
                        ("title".to_string(), Value::str("First Name")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("identificationNumber")),
                        ("title".to_string(), Value::str("Identification Number")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("lastName")),
                        ("title".to_string(), Value::str("Last Name")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("login")),
                        ("title".to_string(), Value::str("Login")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("req".to_string(), Value::Bool(true)),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("name")),
                        ("title".to_string(), Value::str("Name")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("op".to_string(), Value::map_of([
                            ("create".to_string(), Value::map_of([
                                ("req".to_string(), Value::Bool(true)),
                                ("type".to_string(), Value::str("`$STRING`")),
                            ])),
                        ])),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("passportNumber")),
                        ("title".to_string(), Value::str("Passport Number")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("phone")),
                        ("title".to_string(), Value::str("Phone")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("req".to_string(), Value::Bool(true)),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("salutation")),
                        ("title".to_string(), Value::str("Salutation")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("state")),
                        ("title".to_string(), Value::str("State")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("street1")),
                        ("title".to_string(), Value::str("Street1")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("street2")),
                        ("title".to_string(), Value::str("Street2")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("zipCode")),
                        ("title".to_string(), Value::str("Zip Code")),
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
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("POST")),
                                ("orig".to_string(), Value::str("/createMandator")),
                                ("segments".to_string(), Value::list(vec![
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("createMandator")),
                                    ]),
                                ])),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("createMandator"),
                                ])),
                                ("rename".to_string(), Value::empty_map()),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body.mandator`")),
                                ])),
                                ("args".to_string(), Value::map_of([
                                    ("header".to_string(), Value::list(vec![
                                        Value::map_of([
                                            ("name".to_string(), Value::str("authorization")),
                                            ("orig".to_string(), Value::str("authorization")),
                                            ("type".to_string(), Value::str("`$STRING`")),
                                            ("kind".to_string(), Value::str("header")),
                                            ("reqd".to_string(), Value::Bool(true)),
                                        ]),
                                    ])),
                                ])),
                                ("select".to_string(), Value::map_of([
                                    ("exist".to_string(), Value::list(vec![
                                        Value::str("authorization"),
                                    ])),
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
                        ("title".to_string(), Value::str("Mandator Name")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("req".to_string(), Value::Bool(true)),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseCode")),
                        ("title".to_string(), Value::str("Response Code")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseMessage")),
                        ("title".to_string(), Value::str("Response Message")),
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
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("POST")),
                                ("orig".to_string(), Value::str("/createServiceUser")),
                                ("segments".to_string(), Value::list(vec![
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("createServiceUser")),
                                    ]),
                                ])),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("createServiceUser"),
                                ])),
                                ("rename".to_string(), Value::empty_map()),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body`")),
                                ])),
                                ("args".to_string(), Value::map_of([
                                    ("header".to_string(), Value::list(vec![
                                        Value::map_of([
                                            ("name".to_string(), Value::str("authorization")),
                                            ("orig".to_string(), Value::str("authorization")),
                                            ("type".to_string(), Value::str("`$STRING`")),
                                            ("kind".to_string(), Value::str("header")),
                                            ("reqd".to_string(), Value::Bool(true)),
                                        ]),
                                    ])),
                                ])),
                                ("select".to_string(), Value::map_of([
                                    ("exist".to_string(), Value::list(vec![
                                        Value::str("authorization"),
                                    ])),
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
                        ("title".to_string(), Value::str("Consumer Uuid")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseCode")),
                        ("title".to_string(), Value::str("Response Code")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseMessage")),
                        ("title".to_string(), Value::str("Response Message")),
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
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("POST")),
                                ("orig".to_string(), Value::str("/deactivateUser")),
                                ("segments".to_string(), Value::list(vec![
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("deactivateUser")),
                                    ]),
                                ])),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("deactivateUser"),
                                ])),
                                ("rename".to_string(), Value::empty_map()),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body`")),
                                ])),
                                ("args".to_string(), Value::map_of([
                                    ("header".to_string(), Value::list(vec![
                                        Value::map_of([
                                            ("name".to_string(), Value::str("authorization")),
                                            ("orig".to_string(), Value::str("authorization")),
                                            ("type".to_string(), Value::str("`$STRING`")),
                                            ("kind".to_string(), Value::str("header")),
                                            ("reqd".to_string(), Value::Bool(true)),
                                        ]),
                                    ])),
                                ])),
                                ("select".to_string(), Value::map_of([
                                    ("exist".to_string(), Value::list(vec![
                                        Value::str("authorization"),
                                    ])),
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
                        ("title".to_string(), Value::str("Case Id")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("encodedDataBase64")),
                        ("title".to_string(), Value::str("Encoded Data Base64")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseCode")),
                        ("title".to_string(), Value::str("Response Code")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseMessage")),
                        ("title".to_string(), Value::str("Response Message")),
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
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("POST")),
                                ("orig".to_string(), Value::str("/getKycDocument")),
                                ("segments".to_string(), Value::list(vec![
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("getKycDocument")),
                                    ]),
                                ])),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("getKycDocument"),
                                ])),
                                ("rename".to_string(), Value::empty_map()),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body`")),
                                ])),
                                ("args".to_string(), Value::map_of([
                                    ("header".to_string(), Value::list(vec![
                                        Value::map_of([
                                            ("name".to_string(), Value::str("authorization")),
                                            ("orig".to_string(), Value::str("authorization")),
                                            ("type".to_string(), Value::str("`$STRING`")),
                                            ("kind".to_string(), Value::str("header")),
                                            ("reqd".to_string(), Value::Bool(true)),
                                        ]),
                                    ])),
                                ])),
                                ("select".to_string(), Value::map_of([
                                    ("exist".to_string(), Value::list(vec![
                                        Value::str("authorization"),
                                    ])),
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
                        ("title".to_string(), Value::str("Content As Base64")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("req".to_string(), Value::Bool(true)),
                        ("short".to_string(), Value::str("The content of the image as base64 encoded string")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("mimeType")),
                        ("title".to_string(), Value::str("Mime Type")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("req".to_string(), Value::Bool(true)),
                        ("short".to_string(), Value::str("The MIME type of the image")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseCode")),
                        ("title".to_string(), Value::str("Response Code")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseMessage")),
                        ("title".to_string(), Value::str("Response Message")),
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
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("GET")),
                                ("orig".to_string(), Value::str("/getLogo")),
                                ("segments".to_string(), Value::list(vec![
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("getLogo")),
                                    ]),
                                ])),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("getLogo"),
                                ])),
                                ("rename".to_string(), Value::empty_map()),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body`")),
                                ])),
                                ("args".to_string(), Value::map_of([
                                    ("header".to_string(), Value::list(vec![
                                        Value::map_of([
                                            ("name".to_string(), Value::str("authorization")),
                                            ("orig".to_string(), Value::str("authorization")),
                                            ("type".to_string(), Value::str("`$STRING`")),
                                            ("kind".to_string(), Value::str("header")),
                                            ("reqd".to_string(), Value::Bool(true)),
                                        ]),
                                    ])),
                                ])),
                                ("select".to_string(), Value::map_of([
                                    ("exist".to_string(), Value::list(vec![
                                        Value::str("authorization"),
                                    ])),
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
                        ("title".to_string(), Value::str("Available Roles")),
                        ("type".to_string(), Value::str("`$ARRAY`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseCode")),
                        ("title".to_string(), Value::str("Response Code")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseMessage")),
                        ("title".to_string(), Value::str("Response Message")),
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
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("POST")),
                                ("orig".to_string(), Value::str("/listOfAvailableRoles")),
                                ("segments".to_string(), Value::list(vec![
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("listOfAvailableRoles")),
                                    ]),
                                ])),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("listOfAvailableRoles"),
                                ])),
                                ("rename".to_string(), Value::empty_map()),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body`")),
                                ])),
                                ("args".to_string(), Value::map_of([
                                    ("header".to_string(), Value::list(vec![
                                        Value::map_of([
                                            ("name".to_string(), Value::str("authorization")),
                                            ("orig".to_string(), Value::str("authorization")),
                                            ("type".to_string(), Value::str("`$STRING`")),
                                            ("kind".to_string(), Value::str("header")),
                                            ("reqd".to_string(), Value::Bool(true)),
                                        ]),
                                    ])),
                                ])),
                                ("select".to_string(), Value::map_of([
                                    ("exist".to_string(), Value::list(vec![
                                        Value::str("authorization"),
                                    ])),
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
                        ("title".to_string(), Value::str("Filter")),
                        ("type".to_string(), Value::str("`$OBJECT`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("list")),
                        ("title".to_string(), Value::str("List")),
                        ("type".to_string(), Value::str("`$ARRAY`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("pagination")),
                        ("title".to_string(), Value::str("Pagination")),
                        ("type".to_string(), Value::str("`$OBJECT`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseCode")),
                        ("title".to_string(), Value::str("Response Code")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseMessage")),
                        ("title".to_string(), Value::str("Response Message")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("sorting")),
                        ("title".to_string(), Value::str("Sorting")),
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
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("POST")),
                                ("orig".to_string(), Value::str("/listOfMandators")),
                                ("segments".to_string(), Value::list(vec![
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("listOfMandators")),
                                    ]),
                                ])),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("listOfMandators"),
                                ])),
                                ("rename".to_string(), Value::empty_map()),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body`")),
                                ])),
                                ("args".to_string(), Value::map_of([
                                    ("header".to_string(), Value::list(vec![
                                        Value::map_of([
                                            ("name".to_string(), Value::str("authorization")),
                                            ("orig".to_string(), Value::str("authorization")),
                                            ("type".to_string(), Value::str("`$STRING`")),
                                            ("kind".to_string(), Value::str("header")),
                                            ("reqd".to_string(), Value::Bool(true)),
                                        ]),
                                    ])),
                                ])),
                                ("select".to_string(), Value::map_of([
                                    ("exist".to_string(), Value::list(vec![
                                        Value::str("authorization"),
                                    ])),
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
                        ("title".to_string(), Value::str("List")),
                        ("type".to_string(), Value::str("`$ARRAY`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("pagination")),
                        ("title".to_string(), Value::str("Pagination")),
                        ("type".to_string(), Value::str("`$OBJECT`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseCode")),
                        ("title".to_string(), Value::str("Response Code")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseMessage")),
                        ("title".to_string(), Value::str("Response Message")),
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
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("POST")),
                                ("orig".to_string(), Value::str("/listOfModules")),
                                ("segments".to_string(), Value::list(vec![
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("listOfModules")),
                                    ]),
                                ])),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("listOfModules"),
                                ])),
                                ("rename".to_string(), Value::empty_map()),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body`")),
                                ])),
                                ("args".to_string(), Value::map_of([
                                    ("header".to_string(), Value::list(vec![
                                        Value::map_of([
                                            ("name".to_string(), Value::str("authorization")),
                                            ("orig".to_string(), Value::str("authorization")),
                                            ("type".to_string(), Value::str("`$STRING`")),
                                            ("kind".to_string(), Value::str("header")),
                                            ("reqd".to_string(), Value::Bool(true)),
                                        ]),
                                    ])),
                                ])),
                                ("select".to_string(), Value::map_of([
                                    ("exist".to_string(), Value::list(vec![
                                        Value::str("authorization"),
                                    ])),
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
                        ("title".to_string(), Value::str("Filter")),
                        ("type".to_string(), Value::str("`$OBJECT`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("groupRoles")),
                        ("title".to_string(), Value::str("Group Roles")),
                        ("type".to_string(), Value::str("`$ARRAY`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("pagination")),
                        ("title".to_string(), Value::str("Pagination")),
                        ("type".to_string(), Value::str("`$OBJECT`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseCode")),
                        ("title".to_string(), Value::str("Response Code")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseMessage")),
                        ("title".to_string(), Value::str("Response Message")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("sorting")),
                        ("title".to_string(), Value::str("Sorting")),
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
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("POST")),
                                ("orig".to_string(), Value::str("/listOfRoleGroups")),
                                ("segments".to_string(), Value::list(vec![
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("listOfRoleGroups")),
                                    ]),
                                ])),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("listOfRoleGroups"),
                                ])),
                                ("rename".to_string(), Value::empty_map()),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body`")),
                                ])),
                                ("args".to_string(), Value::map_of([
                                    ("header".to_string(), Value::list(vec![
                                        Value::map_of([
                                            ("name".to_string(), Value::str("authorization")),
                                            ("orig".to_string(), Value::str("authorization")),
                                            ("type".to_string(), Value::str("`$STRING`")),
                                            ("kind".to_string(), Value::str("header")),
                                            ("reqd".to_string(), Value::Bool(true)),
                                        ]),
                                    ])),
                                ])),
                                ("select".to_string(), Value::map_of([
                                    ("exist".to_string(), Value::list(vec![
                                        Value::str("authorization"),
                                    ])),
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
                        ("title".to_string(), Value::str("Filter")),
                        ("type".to_string(), Value::str("`$OBJECT`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("list")),
                        ("title".to_string(), Value::str("List")),
                        ("type".to_string(), Value::str("`$ARRAY`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("pagination")),
                        ("title".to_string(), Value::str("Pagination")),
                        ("type".to_string(), Value::str("`$OBJECT`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseCode")),
                        ("title".to_string(), Value::str("Response Code")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseMessage")),
                        ("title".to_string(), Value::str("Response Message")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("sorting")),
                        ("title".to_string(), Value::str("Sorting")),
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
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("POST")),
                                ("orig".to_string(), Value::str("/listOfTransactionsHistory")),
                                ("segments".to_string(), Value::list(vec![
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("listOfTransactionsHistory")),
                                    ]),
                                ])),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("listOfTransactionsHistory"),
                                ])),
                                ("rename".to_string(), Value::empty_map()),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body`")),
                                ])),
                                ("args".to_string(), Value::map_of([
                                    ("header".to_string(), Value::list(vec![
                                        Value::map_of([
                                            ("name".to_string(), Value::str("authorization")),
                                            ("orig".to_string(), Value::str("authorization")),
                                            ("type".to_string(), Value::str("`$STRING`")),
                                            ("kind".to_string(), Value::str("header")),
                                            ("reqd".to_string(), Value::Bool(true)),
                                        ]),
                                    ])),
                                ])),
                                ("select".to_string(), Value::map_of([
                                    ("exist".to_string(), Value::list(vec![
                                        Value::str("authorization"),
                                    ])),
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
                        ("title".to_string(), Value::str("Filter")),
                        ("type".to_string(), Value::str("`$OBJECT`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("list")),
                        ("title".to_string(), Value::str("List")),
                        ("type".to_string(), Value::str("`$ARRAY`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("pagination")),
                        ("title".to_string(), Value::str("Pagination")),
                        ("type".to_string(), Value::str("`$OBJECT`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseCode")),
                        ("title".to_string(), Value::str("Response Code")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseMessage")),
                        ("title".to_string(), Value::str("Response Message")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("sorting")),
                        ("title".to_string(), Value::str("Sorting")),
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
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("POST")),
                                ("orig".to_string(), Value::str("/listOfUsers")),
                                ("segments".to_string(), Value::list(vec![
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("listOfUsers")),
                                    ]),
                                ])),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("listOfUsers"),
                                ])),
                                ("rename".to_string(), Value::empty_map()),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body`")),
                                ])),
                                ("args".to_string(), Value::map_of([
                                    ("header".to_string(), Value::list(vec![
                                        Value::map_of([
                                            ("name".to_string(), Value::str("authorization")),
                                            ("orig".to_string(), Value::str("authorization")),
                                            ("type".to_string(), Value::str("`$STRING`")),
                                            ("kind".to_string(), Value::str("header")),
                                            ("reqd".to_string(), Value::Bool(true)),
                                        ]),
                                    ])),
                                ])),
                                ("select".to_string(), Value::map_of([
                                    ("exist".to_string(), Value::list(vec![
                                        Value::str("authorization"),
                                    ])),
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
                        ("title".to_string(), Value::str("Mandator Name")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("req".to_string(), Value::Bool(true)),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("password")),
                        ("title".to_string(), Value::str("Password")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseCode")),
                        ("title".to_string(), Value::str("Response Code")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseMessage")),
                        ("title".to_string(), Value::str("Response Message")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("username")),
                        ("title".to_string(), Value::str("Username")),
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
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("POST")),
                                ("orig".to_string(), Value::str("/provideCredentials")),
                                ("segments".to_string(), Value::list(vec![
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("provideCredentials")),
                                    ]),
                                ])),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("provideCredentials"),
                                ])),
                                ("rename".to_string(), Value::empty_map()),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body`")),
                                ])),
                                ("args".to_string(), Value::map_of([
                                    ("header".to_string(), Value::list(vec![
                                        Value::map_of([
                                            ("name".to_string(), Value::str("authorization")),
                                            ("orig".to_string(), Value::str("authorization")),
                                            ("type".to_string(), Value::str("`$STRING`")),
                                            ("kind".to_string(), Value::str("header")),
                                            ("reqd".to_string(), Value::Bool(true)),
                                        ]),
                                    ])),
                                ])),
                                ("select".to_string(), Value::map_of([
                                    ("exist".to_string(), Value::list(vec![
                                        Value::str("authorization"),
                                    ])),
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
                        ("title".to_string(), Value::str("City")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("short".to_string(), Value::str("City where the user resides.")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("consumerId")),
                        ("title".to_string(), Value::str("Consumer Id")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("short".to_string(), Value::str("User login or unique user identifier.")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("consumerLanguage")),
                        ("title".to_string(), Value::str("Consumer Language")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("short".to_string(), Value::str("Preferred language for the user (e.g., 'en').")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("country")),
                        ("title".to_string(), Value::str("Country")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("short".to_string(), Value::str("User's country.")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("dateOfBirth")),
                        ("title".to_string(), Value::str("Date Of Birth")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("short".to_string(), Value::str("User's date of birth (expected format: dd.MM.yyyy).")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("driverLicenceNumber")),
                        ("title".to_string(), Value::str("Driver Licence Number")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("short".to_string(), Value::str("User's driver's license number.")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("email")),
                        ("title".to_string(), Value::str("Email")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("req".to_string(), Value::Bool(true)),
                        ("short".to_string(), Value::str("User's email address (must be unique).")),
                        ("format".to_string(), Value::str("email")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("firstName")),
                        ("title".to_string(), Value::str("First Name")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("short".to_string(), Value::str("User's first name.")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("identificationNumber")),
                        ("title".to_string(), Value::str("Identification Number")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("short".to_string(), Value::str("User's identification number.")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("lastName")),
                        ("title".to_string(), Value::str("Last Name")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("short".to_string(), Value::str("User's last name.")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("login")),
                        ("title".to_string(), Value::str("Login")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("short".to_string(), Value::str("User login identifier (should be unique).")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("module")),
                        ("title".to_string(), Value::str("Module")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("short".to_string(), Value::str("Module identifier (if applicable).")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("passportNumber")),
                        ("title".to_string(), Value::str("Passport Number")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("short".to_string(), Value::str("User's passport number.")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("phone")),
                        ("title".to_string(), Value::str("Phone")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("short".to_string(), Value::str("User's phone number.")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseCode")),
                        ("title".to_string(), Value::str("Response Code")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("short".to_string(), Value::str("Response code (0 indicates success; non-zero indicates an error).")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseMessage")),
                        ("title".to_string(), Value::str("Response Message")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("short".to_string(), Value::str("Human-readable response message.")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("salutation")),
                        ("title".to_string(), Value::str("Salutation")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("short".to_string(), Value::str("User's salutation (e.g., Mr., Ms.).")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("state")),
                        ("title".to_string(), Value::str("State")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("short".to_string(), Value::str("User's state or region.")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("street1")),
                        ("title".to_string(), Value::str("Street1")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("short".to_string(), Value::str("Primary address line.")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("street2")),
                        ("title".to_string(), Value::str("Street2")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("short".to_string(), Value::str("Secondary address line.")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("zip")),
                        ("title".to_string(), Value::str("Zip")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("short".to_string(), Value::str("Postal code.")),
                    ]),
                ])),
                ("name".to_string(), Value::str("output_register_user")),
                ("op".to_string(), Value::map_of([
                    ("create".to_string(), Value::map_of([
                        ("input".to_string(), Value::str("data")),
                        ("name".to_string(), Value::str("create")),
                        ("points".to_string(), Value::list(vec![
                            Value::map_of([
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("POST")),
                                ("orig".to_string(), Value::str("/registerUser")),
                                ("segments".to_string(), Value::list(vec![
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("registerUser")),
                                    ]),
                                ])),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("registerUser"),
                                ])),
                                ("rename".to_string(), Value::empty_map()),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body`")),
                                ])),
                                ("args".to_string(), Value::map_of([
                                    ("header".to_string(), Value::list(vec![
                                        Value::map_of([
                                            ("name".to_string(), Value::str("authorization")),
                                            ("orig".to_string(), Value::str("authorization")),
                                            ("type".to_string(), Value::str("`$STRING`")),
                                            ("kind".to_string(), Value::str("header")),
                                            ("reqd".to_string(), Value::Bool(true)),
                                        ]),
                                    ])),
                                ])),
                                ("select".to_string(), Value::map_of([
                                    ("exist".to_string(), Value::list(vec![
                                        Value::str("authorization"),
                                    ])),
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
                        ("title".to_string(), Value::str("Consumer Uuid")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseCode")),
                        ("title".to_string(), Value::str("Response Code")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseMessage")),
                        ("title".to_string(), Value::str("Response Message")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("roles")),
                        ("title".to_string(), Value::str("Roles")),
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
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("POST")),
                                ("orig".to_string(), Value::str("/removeRoles")),
                                ("segments".to_string(), Value::list(vec![
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("removeRoles")),
                                    ]),
                                ])),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("removeRoles"),
                                ])),
                                ("rename".to_string(), Value::empty_map()),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body`")),
                                ])),
                                ("args".to_string(), Value::map_of([
                                    ("header".to_string(), Value::list(vec![
                                        Value::map_of([
                                            ("name".to_string(), Value::str("authorization")),
                                            ("orig".to_string(), Value::str("authorization")),
                                            ("type".to_string(), Value::str("`$STRING`")),
                                            ("kind".to_string(), Value::str("header")),
                                            ("reqd".to_string(), Value::Bool(true)),
                                        ]),
                                    ])),
                                ])),
                                ("select".to_string(), Value::map_of([
                                    ("exist".to_string(), Value::list(vec![
                                        Value::str("authorization"),
                                    ])),
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
                        ("title".to_string(), Value::str("Business Registration Number")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("consumerUUID")),
                        ("title".to_string(), Value::str("Consumer Uuid")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("req".to_string(), Value::Bool(true)),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("emailConfirmationCode")),
                        ("title".to_string(), Value::str("Email Confirmation Code")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("phoneNumber")),
                        ("title".to_string(), Value::str("Phone Number")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseCode")),
                        ("title".to_string(), Value::str("Response Code")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseMessage")),
                        ("title".to_string(), Value::str("Response Message")),
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
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("POST")),
                                ("orig".to_string(), Value::str("/resendLink")),
                                ("segments".to_string(), Value::list(vec![
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("resendLink")),
                                    ]),
                                ])),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("resendLink"),
                                ])),
                                ("rename".to_string(), Value::empty_map()),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body`")),
                                ])),
                                ("args".to_string(), Value::map_of([
                                    ("header".to_string(), Value::list(vec![
                                        Value::map_of([
                                            ("name".to_string(), Value::str("authorization")),
                                            ("orig".to_string(), Value::str("authorization")),
                                            ("type".to_string(), Value::str("`$STRING`")),
                                            ("kind".to_string(), Value::str("header")),
                                        ]),
                                    ])),
                                ])),
                                ("select".to_string(), Value::map_of([
                                    ("exist".to_string(), Value::list(vec![
                                        Value::str("authorization"),
                                    ])),
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
                        ("title".to_string(), Value::str("Consumer Uuid")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("phoneNumber")),
                        ("title".to_string(), Value::str("Phone Number")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseCode")),
                        ("title".to_string(), Value::str("Response Code")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseMessage")),
                        ("title".to_string(), Value::str("Response Message")),
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
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("POST")),
                                ("orig".to_string(), Value::str("/resetPassword")),
                                ("segments".to_string(), Value::list(vec![
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("resetPassword")),
                                    ]),
                                ])),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("resetPassword"),
                                ])),
                                ("rename".to_string(), Value::empty_map()),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body`")),
                                ])),
                                ("args".to_string(), Value::map_of([
                                    ("header".to_string(), Value::list(vec![
                                        Value::map_of([
                                            ("name".to_string(), Value::str("authorization")),
                                            ("orig".to_string(), Value::str("authorization")),
                                            ("type".to_string(), Value::str("`$STRING`")),
                                            ("kind".to_string(), Value::str("header")),
                                            ("reqd".to_string(), Value::Bool(true)),
                                        ]),
                                    ])),
                                ])),
                                ("select".to_string(), Value::map_of([
                                    ("exist".to_string(), Value::list(vec![
                                        Value::str("authorization"),
                                    ])),
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
                        ("title".to_string(), Value::str("City")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("consumerUuid")),
                        ("title".to_string(), Value::str("Consumer Uuid")),
                        ("type".to_string(), Value::str("`$STRING`")),
                        ("req".to_string(), Value::Bool(true)),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("consumerlanguage")),
                        ("title".to_string(), Value::str("Consumerlanguage")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("country")),
                        ("title".to_string(), Value::str("Country")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("dateOfBirth")),
                        ("title".to_string(), Value::str("Date Of Birth")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("datetime_created")),
                        ("title".to_string(), Value::str("Datetime Created")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("driverLicenceNumber")),
                        ("title".to_string(), Value::str("Driver Licence Number")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("email")),
                        ("title".to_string(), Value::str("Email")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("firstName")),
                        ("title".to_string(), Value::str("First Name")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("identificationNumber")),
                        ("title".to_string(), Value::str("Identification Number")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("kycPassed")),
                        ("title".to_string(), Value::str("Kyc Passed")),
                        ("type".to_string(), Value::str("`$BOOLEAN`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("lastName")),
                        ("title".to_string(), Value::str("Last Name")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("nationality")),
                        ("title".to_string(), Value::str("Nationality")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("passportNumber")),
                        ("title".to_string(), Value::str("Passport Number")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("phoneNumber")),
                        ("title".to_string(), Value::str("Phone Number")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("placeOfBirth")),
                        ("title".to_string(), Value::str("Place Of Birth")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseCode")),
                        ("title".to_string(), Value::str("Response Code")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseMessage")),
                        ("title".to_string(), Value::str("Response Message")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("state")),
                        ("title".to_string(), Value::str("State")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("street1")),
                        ("title".to_string(), Value::str("Street1")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("street2")),
                        ("title".to_string(), Value::str("Street2")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("transactionhistory_id")),
                        ("title".to_string(), Value::str("Transactionhistory Id")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("zip")),
                        ("title".to_string(), Value::str("Zip")),
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
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("POST")),
                                ("orig".to_string(), Value::str("/updateConsumer")),
                                ("segments".to_string(), Value::list(vec![
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("updateConsumer")),
                                    ]),
                                ])),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("updateConsumer"),
                                ])),
                                ("rename".to_string(), Value::empty_map()),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body`")),
                                ])),
                                ("args".to_string(), Value::map_of([
                                    ("header".to_string(), Value::list(vec![
                                        Value::map_of([
                                            ("name".to_string(), Value::str("authorization")),
                                            ("orig".to_string(), Value::str("authorization")),
                                            ("type".to_string(), Value::str("`$STRING`")),
                                            ("kind".to_string(), Value::str("header")),
                                        ]),
                                    ])),
                                ])),
                                ("select".to_string(), Value::map_of([
                                    ("exist".to_string(), Value::list(vec![
                                        Value::str("authorization"),
                                    ])),
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
                        ("title".to_string(), Value::str("Consumer Language")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("email")),
                        ("title".to_string(), Value::str("Email")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("firstName")),
                        ("title".to_string(), Value::str("First Name")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("lastName")),
                        ("title".to_string(), Value::str("Last Name")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("phoneNumber")),
                        ("title".to_string(), Value::str("Phone Number")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseCode")),
                        ("title".to_string(), Value::str("Response Code")),
                        ("type".to_string(), Value::str("`$INTEGER`")),
                        ("format".to_string(), Value::str("int32")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("responseMessage")),
                        ("title".to_string(), Value::str("Response Message")),
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
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("POST")),
                                ("orig".to_string(), Value::str("/updateProfile")),
                                ("segments".to_string(), Value::list(vec![
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("updateProfile")),
                                    ]),
                                ])),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("updateProfile"),
                                ])),
                                ("rename".to_string(), Value::empty_map()),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body`")),
                                ])),
                                ("args".to_string(), Value::map_of([
                                    ("header".to_string(), Value::list(vec![
                                        Value::map_of([
                                            ("name".to_string(), Value::str("authorization")),
                                            ("orig".to_string(), Value::str("authorization")),
                                            ("type".to_string(), Value::str("`$STRING`")),
                                            ("kind".to_string(), Value::str("header")),
                                        ]),
                                    ])),
                                ])),
                                ("select".to_string(), Value::map_of([
                                    ("exist".to_string(), Value::list(vec![
                                        Value::str("authorization"),
                                    ])),
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
                        ("title".to_string(), Value::str("App Name")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("buildDate")),
                        ("title".to_string(), Value::str("Build Date")),
                        ("type".to_string(), Value::str("`$STRING`")),
                    ]),
                    Value::map_of([
                        ("name".to_string(), Value::str("version")),
                        ("title".to_string(), Value::str("Version")),
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
                                ("kind".to_string(), Value::str("http")),
                                ("method".to_string(), Value::str("GET")),
                                ("orig".to_string(), Value::str("/version")),
                                ("segments".to_string(), Value::list(vec![
                                    Value::map_of([
                                        ("lit".to_string(), Value::str("version")),
                                    ]),
                                ])),
                                ("parts".to_string(), Value::list(vec![
                                    Value::str("version"),
                                ])),
                                ("rename".to_string(), Value::empty_map()),
                                ("transform".to_string(), Value::map_of([
                                    ("req".to_string(), Value::str("`reqdata`")),
                                    ("res".to_string(), Value::str("`body`")),
                                ])),
                                ("args".to_string(), Value::empty_map()),
                                ("select".to_string(), Value::empty_map()),
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
        "audit" => Rc::new(RefCell::new(crate::feature::audit::AuditFeature::new())),
        "clienttrack" => Rc::new(RefCell::new(crate::feature::clienttrack::ClienttrackFeature::new())),
        "debug" => Rc::new(RefCell::new(crate::feature::debug::DebugFeature::new())),
        "idempotency" => Rc::new(RefCell::new(crate::feature::idempotency::IdempotencyFeature::new())),
        "log" => Rc::new(RefCell::new(crate::feature::log::LogFeature::new())),
        "metrics" => Rc::new(RefCell::new(crate::feature::metrics::MetricsFeature::new())),
        "paging" => Rc::new(RefCell::new(crate::feature::paging::PagingFeature::new())),
        "ratelimit" => Rc::new(RefCell::new(crate::feature::ratelimit::RatelimitFeature::new())),
        "retry" => Rc::new(RefCell::new(crate::feature::retry::RetryFeature::new())),
        "telemetry" => Rc::new(RefCell::new(crate::feature::telemetry::TelemetryFeature::new())),
        "test" => Rc::new(RefCell::new(crate::feature::test::TestFeature::new())),
        "timeout" => Rc::new(RefCell::new(crate::feature::timeout::TimeoutFeature::new())),
        _ => Rc::new(RefCell::new(crate::feature::base::BaseFeature::new())),
    }
}

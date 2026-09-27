(* Generated API configuration (mirrors go core/config.go).
 *
 * make_config () — the embedded API model as a voxgig struct value.
 * make_feature name — the N-feature-safe factory the client uses. *)

open Voxgig_struct
open Sdk_types
open Sdk_helpers
open Sdk_features

let make_config () : value =
  (jo [
    ("main", (jo [
      ("name", (Str "BluefinTecsUserBackoffice"));
      ("slug", (Str "bluefin-tecs-user-backoffice"));
      ("version", (Str "0.1.1"));
      ("target", (Str "ocaml")) ]));
    ("feature", (jo [
      ("audit", (jo [
        ("options", (jo [
          ("active", (Bool false));
          ("actor", (Str "anonymous"));
          ("max", (Num (1000.))) ]));
        ("optspec", (jo [
          ("now", (Str "`$FUNCTION`"));
          ("sink", (Str "`$FUNCTION`")) ]));
        ("strict", (Bool false));
        ("transport", (Str "none")) ]));
      ("clienttrack", (jo [
        ("options", (jo [
          ("active", (Bool false));
          ("clientVersion", (Str "0.0.1")) ]));
        ("optspec", (jo [
          ("clientName", (Str "`$STRING`"));
          ("clientVersion", (Str "`$STRING`"));
          ("headers", (Str "`$MAP`"));
          ("idgen", (Str "`$FUNCTION`"));
          ("sessionId", (Str "`$STRING`")) ]));
        ("strict", (Bool false));
        ("transport", (Str "none")) ]));
      ("debug", (jo [
        ("options", (jo [
          ("active", (Bool false));
          ("max", (Num (100.)));
          ("redact", (ja [
            (Str "authorization");
            (Str "cookie");
            (Str "set-cookie");
            (Str "api-key");
            (Str "apikey");
            (Str "x-api-key");
            (Str "idempotency-key") ])) ]));
        ("optspec", (jo [
          ("now", (Str "`$FUNCTION`"));
          ("onEntry", (Str "`$FUNCTION`")) ]));
        ("strict", (Bool false));
        ("transport", (Str "none")) ]));
      ("idempotency", (jo [
        ("options", (jo [
          ("active", (Bool false));
          ("header", (Str "Idempotency-Key"));
          ("methods", (ja [
            (Str "POST");
            (Str "PUT");
            (Str "PATCH");
            (Str "DELETE") ]));
          ("ops", (ja [
            (Str "create");
            (Str "update");
            (Str "remove") ])) ]));
        ("optspec", (jo [
          ("keygen", (Str "`$FUNCTION`")) ]));
        ("strict", (Bool false));
        ("transport", (Str "none")) ]));
      ("log", (jo [
        ("options", (jo [
          ("active", (Bool true)) ]));
        ("optspec", (jo [
          ("level", (Str "`$STRING`"));
          ("logger", (Str "`$ANY`")) ]));
        ("strict", (Bool false));
        ("transport", (Str "none")) ]));
      ("metrics", (jo [
        ("options", (jo [
          ("active", (Bool false)) ]));
        ("optspec", (jo [
          ("now", (Str "`$FUNCTION`")) ]));
        ("strict", (Bool false));
        ("transport", (Str "none")) ]));
      ("paging", (jo [
        ("options", (jo [
          ("active", (Bool false));
          ("afterVar", (Str "after"));
          ("cursorParam", (Str "cursor"));
          ("firstVar", (Str "first"));
          ("limitParam", (Str "limit"));
          ("pageParam", (Str "page"));
          ("startPage", (Num (1.))) ]));
        ("optspec", (jo [
          ("limit", (Str "`$NUMBER`"));
          ("ops", (Str "`$LIST`")) ]));
        ("strict", (Bool false));
        ("transport", (Str "none")) ]));
      ("ratelimit", (jo [
        ("options", (jo [
          ("active", (Bool false));
          ("burst", (Num (5.)));
          ("rate", (Num (5.))) ]));
        ("optspec", (jo [
          ("now", (Str "`$FUNCTION`"));
          ("sleep", (Str "`$FUNCTION`")) ]));
        ("strict", (Bool false));
        ("transport", (Str "wrap")) ]));
      ("retry", (jo [
        ("options", (jo [
          ("active", (Bool false));
          ("factor", (Num (2.)));
          ("maxDelay", (Num (2000.)));
          ("minDelay", (Num (50.)));
          ("retries", (Num (2.)));
          ("statuses", (ja [
            (Num (408.));
            (Num (425.));
            (Num (429.));
            (Num (500.));
            (Num (502.));
            (Num (503.));
            (Num (504.)) ])) ]));
        ("optspec", (jo [
          ("jitter", (Str "`$BOOLEAN`"));
          ("sleep", (Str "`$FUNCTION`")) ]));
        ("strict", (Bool false));
        ("transport", (Str "wrap")) ]));
      ("telemetry", (jo [
        ("options", (jo [
          ("active", (Bool false)) ]));
        ("optspec", (jo [
          ("exporter", (Str "`$FUNCTION`"));
          ("headers", (Str "`$MAP`"));
          ("idgen", (Str "`$FUNCTION`"));
          ("now", (Str "`$FUNCTION`")) ]));
        ("strict", (Bool false));
        ("transport", (Str "none")) ]));
      ("test", (jo [
        ("options", (jo [
          ("active", (Bool false)) ]));
        ("optspec", (jo [
          ("entity", (Str "`$MAP`"));
          ("net", (Str "`$MAP`")) ]));
        ("strict", (Bool false));
        ("transport", (Str "base")) ]));
      ("timeout", (jo [
        ("options", (jo [
          ("active", (Bool false));
          ("ms", (Num (30000.))) ]));
        ("optspec", (jo [
          ("clearTimer", (Str "`$FUNCTION`"));
          ("setTimer", (Str "`$FUNCTION`")) ]));
        ("strict", (Bool false));
        ("transport", (Str "wrap")) ])) ]));
    ("options", (jo [
      ("base", (Str "https://test.tecs.at/usermanagement-backofficews"));
      ("auth", (jo [
        ("prefix", (Str "Bearer")) ]));
      ("headers", (jo [
        ("content-type", (Str "application/json")) ]));
      ("entity", (jo [
        ("output_activate_digital_module", (empty_map ()));
        ("output_activate_portal_module", (empty_map ()));
        ("output_activate_store_module", (empty_map ()));
        ("output_activate_user", (empty_map ()));
        ("output_assign_role", (empty_map ()));
        ("output_change_logo", (empty_map ()));
        ("output_create_mandator", (empty_map ()));
        ("output_create_service_user", (empty_map ()));
        ("output_deactivate_user", (empty_map ()));
        ("output_get_kyc_document", (empty_map ()));
        ("output_get_logo", (empty_map ()));
        ("output_list_of_available_role", (empty_map ()));
        ("output_list_of_mandator", (empty_map ()));
        ("output_list_of_module", (empty_map ()));
        ("output_list_of_role_group", (empty_map ()));
        ("output_list_of_transactions_history", (empty_map ()));
        ("output_list_of_user", (empty_map ()));
        ("output_provide_credential", (empty_map ()));
        ("output_register_user", (empty_map ()));
        ("output_remove_role", (empty_map ()));
        ("output_resend_link", (empty_map ()));
        ("output_reset_password", (empty_map ()));
        ("output_update_consumer", (empty_map ()));
        ("output_update_profile", (empty_map ()));
        ("version", (empty_map ())) ])) ]));
    ("entity", (jo [
      ("output_activate_digital_module", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "responseCode"));
            ("title", (Str "Response Code"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("title", (Str "Response Message"));
            ("type", (Str "`$STRING`")) ]) ]));
        ("name", (Str "output_activate_digital_module"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/activateDigitalModule"));
                ("segments", (ja [
                  (jo [
                    ("lit", (Str "activateDigitalModule")) ]) ]));
                ("parts", (ja [
                  (Str "activateDigitalModule") ]));
                ("rename", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("args", (jo [
                  ("header", (ja [
                    (jo [
                      ("name", (Str "authorization"));
                      ("orig", (Str "authorization"));
                      ("type", (Str "`$STRING`"));
                      ("kind", (Str "header"));
                      ("reqd", (Bool true)) ]) ])) ]));
                ("select", (jo [
                  ("exist", (ja [
                    (Str "authorization") ])) ])) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("output_activate_portal_module", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "clientSecret"));
            ("title", (Str "Client Secret"));
            ("type", (Str "`$STRING`"));
            ("req", (Bool true)) ]);
          (jo [
            ("name", (Str "notificationEmail"));
            ("title", (Str "Notification Email"));
            ("type", (Str "`$STRING`"));
            ("req", (Bool true)) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("title", (Str "Response Code"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("title", (Str "Response Message"));
            ("type", (Str "`$STRING`")) ]) ]));
        ("name", (Str "output_activate_portal_module"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/activateMerchantPortalModule"));
                ("segments", (ja [
                  (jo [
                    ("lit", (Str "activateMerchantPortalModule")) ]) ]));
                ("parts", (ja [
                  (Str "activateMerchantPortalModule") ]));
                ("rename", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("args", (jo [
                  ("header", (ja [
                    (jo [
                      ("name", (Str "authorization"));
                      ("orig", (Str "authorization"));
                      ("type", (Str "`$STRING`"));
                      ("kind", (Str "header"));
                      ("reqd", (Bool true)) ]) ])) ]));
                ("select", (jo [
                  ("exist", (ja [
                    (Str "authorization") ])) ])) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("output_activate_store_module", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "responseCode"));
            ("title", (Str "Response Code"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("title", (Str "Response Message"));
            ("type", (Str "`$STRING`")) ]) ]));
        ("name", (Str "output_activate_store_module"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/activateAppStoreModule"));
                ("segments", (ja [
                  (jo [
                    ("lit", (Str "activateAppStoreModule")) ]) ]));
                ("parts", (ja [
                  (Str "activateAppStoreModule") ]));
                ("rename", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("args", (jo [
                  ("header", (ja [
                    (jo [
                      ("name", (Str "authorization"));
                      ("orig", (Str "authorization"));
                      ("type", (Str "`$STRING`"));
                      ("kind", (Str "header"));
                      ("reqd", (Bool true)) ]) ])) ]));
                ("select", (jo [
                  ("exist", (ja [
                    (Str "authorization") ])) ])) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("output_activate_user", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "consumerUUID"));
            ("title", (Str "Consumer Uuid"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("title", (Str "Response Code"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("title", (Str "Response Message"));
            ("type", (Str "`$STRING`")) ]) ]));
        ("name", (Str "output_activate_user"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/activateUser"));
                ("segments", (ja [
                  (jo [
                    ("lit", (Str "activateUser")) ]) ]));
                ("parts", (ja [
                  (Str "activateUser") ]));
                ("rename", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("args", (jo [
                  ("header", (ja [
                    (jo [
                      ("name", (Str "authorization"));
                      ("orig", (Str "authorization"));
                      ("type", (Str "`$STRING`"));
                      ("kind", (Str "header"));
                      ("reqd", (Bool true)) ]) ])) ]));
                ("select", (jo [
                  ("exist", (ja [
                    (Str "authorization") ])) ])) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("output_assign_role", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "consumerUUID"));
            ("title", (Str "Consumer Uuid"));
            ("type", (Str "`$STRING`"));
            ("req", (Bool true));
            ("short", (Str "Unique identifier of the consumer (user) to whom the role(s) will be assigned.")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("title", (Str "Response Code"));
            ("type", (Str "`$INTEGER`"));
            ("short", (Str "Response code: 0 indicates success; any non-zero value indicates an error."));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("title", (Str "Response Message"));
            ("type", (Str "`$STRING`"));
            ("short", (Str "A human-readable message providing additional details about the outcome.")) ]);
          (jo [
            ("name", (Str "roles"));
            ("title", (Str "Roles"));
            ("type", (Str "`$ARRAY`"));
            ("req", (Bool true));
            ("short", (Str "List of roles to assign to the consumer.")) ]) ]));
        ("name", (Str "output_assign_role"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/assignRoles"));
                ("segments", (ja [
                  (jo [
                    ("lit", (Str "assignRoles")) ]) ]));
                ("parts", (ja [
                  (Str "assignRoles") ]));
                ("rename", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("args", (jo [
                  ("header", (ja [
                    (jo [
                      ("name", (Str "authorization"));
                      ("orig", (Str "authorization"));
                      ("type", (Str "`$STRING`"));
                      ("kind", (Str "header"));
                      ("reqd", (Bool true)) ]) ])) ]));
                ("select", (jo [
                  ("exist", (ja [
                    (Str "authorization") ])) ])) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("output_change_logo", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "contentAsBase64"));
            ("title", (Str "Content As Base64"));
            ("type", (Str "`$STRING`"));
            ("req", (Bool true));
            ("short", (Str "The content of the image as base64 encoded string")) ]);
          (jo [
            ("name", (Str "mimeType"));
            ("title", (Str "Mime Type"));
            ("type", (Str "`$STRING`"));
            ("req", (Bool true));
            ("short", (Str "The MIME type of the image")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("title", (Str "Response Code"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("title", (Str "Response Message"));
            ("type", (Str "`$STRING`")) ]) ]));
        ("name", (Str "output_change_logo"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/changeLogo"));
                ("segments", (ja [
                  (jo [
                    ("lit", (Str "changeLogo")) ]) ]));
                ("parts", (ja [
                  (Str "changeLogo") ]));
                ("rename", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("args", (jo [
                  ("header", (ja [
                    (jo [
                      ("name", (Str "authorization"));
                      ("orig", (Str "authorization"));
                      ("type", (Str "`$STRING`"));
                      ("kind", (Str "header"));
                      ("reqd", (Bool true)) ]) ])) ]));
                ("select", (jo [
                  ("exist", (ja [
                    (Str "authorization") ])) ])) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("output_create_mandator", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "city"));
            ("title", (Str "City"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "country"));
            ("title", (Str "Country"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "dateOfBirth"));
            ("title", (Str "Date Of Birth"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "description"));
            ("title", (Str "Description"));
            ("type", (Str "`$STRING`"));
            ("op", (jo [
              ("create", (jo [
                ("req", (Bool true));
                ("type", (Str "`$STRING`")) ])) ])) ]);
          (jo [
            ("name", (Str "driversLicenseNumber"));
            ("title", (Str "Drivers License Number"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "email"));
            ("title", (Str "Email"));
            ("type", (Str "`$STRING`"));
            ("req", (Bool true)) ]);
          (jo [
            ("name", (Str "firstName"));
            ("title", (Str "First Name"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "identificationNumber"));
            ("title", (Str "Identification Number"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "lastName"));
            ("title", (Str "Last Name"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "login"));
            ("title", (Str "Login"));
            ("type", (Str "`$STRING`"));
            ("req", (Bool true)) ]);
          (jo [
            ("name", (Str "name"));
            ("title", (Str "Name"));
            ("type", (Str "`$STRING`"));
            ("op", (jo [
              ("create", (jo [
                ("req", (Bool true));
                ("type", (Str "`$STRING`")) ])) ])) ]);
          (jo [
            ("name", (Str "passportNumber"));
            ("title", (Str "Passport Number"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "phone"));
            ("title", (Str "Phone"));
            ("type", (Str "`$STRING`"));
            ("req", (Bool true)) ]);
          (jo [
            ("name", (Str "salutation"));
            ("title", (Str "Salutation"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "state"));
            ("title", (Str "State"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "street1"));
            ("title", (Str "Street1"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "street2"));
            ("title", (Str "Street2"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "zipCode"));
            ("title", (Str "Zip Code"));
            ("type", (Str "`$STRING`")) ]) ]));
        ("name", (Str "output_create_mandator"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/createMandator"));
                ("segments", (ja [
                  (jo [
                    ("lit", (Str "createMandator")) ]) ]));
                ("parts", (ja [
                  (Str "createMandator") ]));
                ("rename", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body.mandator`")) ]));
                ("args", (jo [
                  ("header", (ja [
                    (jo [
                      ("name", (Str "authorization"));
                      ("orig", (Str "authorization"));
                      ("type", (Str "`$STRING`"));
                      ("kind", (Str "header"));
                      ("reqd", (Bool true)) ]) ])) ]));
                ("select", (jo [
                  ("exist", (ja [
                    (Str "authorization") ])) ])) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("output_create_service_user", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "mandatorName"));
            ("title", (Str "Mandator Name"));
            ("type", (Str "`$STRING`"));
            ("req", (Bool true)) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("title", (Str "Response Code"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("title", (Str "Response Message"));
            ("type", (Str "`$STRING`")) ]) ]));
        ("name", (Str "output_create_service_user"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/createServiceUser"));
                ("segments", (ja [
                  (jo [
                    ("lit", (Str "createServiceUser")) ]) ]));
                ("parts", (ja [
                  (Str "createServiceUser") ]));
                ("rename", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("args", (jo [
                  ("header", (ja [
                    (jo [
                      ("name", (Str "authorization"));
                      ("orig", (Str "authorization"));
                      ("type", (Str "`$STRING`"));
                      ("kind", (Str "header"));
                      ("reqd", (Bool true)) ]) ])) ]));
                ("select", (jo [
                  ("exist", (ja [
                    (Str "authorization") ])) ])) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("output_deactivate_user", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "consumerUUID"));
            ("title", (Str "Consumer Uuid"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("title", (Str "Response Code"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("title", (Str "Response Message"));
            ("type", (Str "`$STRING`")) ]) ]));
        ("name", (Str "output_deactivate_user"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/deactivateUser"));
                ("segments", (ja [
                  (jo [
                    ("lit", (Str "deactivateUser")) ]) ]));
                ("parts", (ja [
                  (Str "deactivateUser") ]));
                ("rename", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("args", (jo [
                  ("header", (ja [
                    (jo [
                      ("name", (Str "authorization"));
                      ("orig", (Str "authorization"));
                      ("type", (Str "`$STRING`"));
                      ("kind", (Str "header"));
                      ("reqd", (Bool true)) ]) ])) ]));
                ("select", (jo [
                  ("exist", (ja [
                    (Str "authorization") ])) ])) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("output_get_kyc_document", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "caseID"));
            ("title", (Str "Case Id"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "encodedDataBase64"));
            ("title", (Str "Encoded Data Base64"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("title", (Str "Response Code"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("title", (Str "Response Message"));
            ("type", (Str "`$STRING`")) ]) ]));
        ("name", (Str "output_get_kyc_document"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/getKycDocument"));
                ("segments", (ja [
                  (jo [
                    ("lit", (Str "getKycDocument")) ]) ]));
                ("parts", (ja [
                  (Str "getKycDocument") ]));
                ("rename", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("args", (jo [
                  ("header", (ja [
                    (jo [
                      ("name", (Str "authorization"));
                      ("orig", (Str "authorization"));
                      ("type", (Str "`$STRING`"));
                      ("kind", (Str "header"));
                      ("reqd", (Bool true)) ]) ])) ]));
                ("select", (jo [
                  ("exist", (ja [
                    (Str "authorization") ])) ])) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("output_get_logo", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "contentAsBase64"));
            ("title", (Str "Content As Base64"));
            ("type", (Str "`$STRING`"));
            ("req", (Bool true));
            ("short", (Str "The content of the image as base64 encoded string")) ]);
          (jo [
            ("name", (Str "mimeType"));
            ("title", (Str "Mime Type"));
            ("type", (Str "`$STRING`"));
            ("req", (Bool true));
            ("short", (Str "The MIME type of the image")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("title", (Str "Response Code"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("title", (Str "Response Message"));
            ("type", (Str "`$STRING`")) ]) ]));
        ("name", (Str "output_get_logo"));
        ("op", (jo [
          ("load", (jo [
            ("input", (Str "data"));
            ("name", (Str "load"));
            ("points", (ja [
              (jo [
                ("kind", (Str "http"));
                ("method", (Str "GET"));
                ("orig", (Str "/getLogo"));
                ("segments", (ja [
                  (jo [
                    ("lit", (Str "getLogo")) ]) ]));
                ("parts", (ja [
                  (Str "getLogo") ]));
                ("rename", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("args", (jo [
                  ("header", (ja [
                    (jo [
                      ("name", (Str "authorization"));
                      ("orig", (Str "authorization"));
                      ("type", (Str "`$STRING`"));
                      ("kind", (Str "header"));
                      ("reqd", (Bool true)) ]) ])) ]));
                ("select", (jo [
                  ("exist", (ja [
                    (Str "authorization") ])) ])) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("output_list_of_available_role", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "availableRoles"));
            ("title", (Str "Available Roles"));
            ("type", (Str "`$ARRAY`")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("title", (Str "Response Code"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("title", (Str "Response Message"));
            ("type", (Str "`$STRING`")) ]) ]));
        ("name", (Str "output_list_of_available_role"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/listOfAvailableRoles"));
                ("segments", (ja [
                  (jo [
                    ("lit", (Str "listOfAvailableRoles")) ]) ]));
                ("parts", (ja [
                  (Str "listOfAvailableRoles") ]));
                ("rename", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("args", (jo [
                  ("header", (ja [
                    (jo [
                      ("name", (Str "authorization"));
                      ("orig", (Str "authorization"));
                      ("type", (Str "`$STRING`"));
                      ("kind", (Str "header"));
                      ("reqd", (Bool true)) ]) ])) ]));
                ("select", (jo [
                  ("exist", (ja [
                    (Str "authorization") ])) ])) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("output_list_of_mandator", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "filter"));
            ("title", (Str "Filter"));
            ("type", (Str "`$OBJECT`")) ]);
          (jo [
            ("name", (Str "list"));
            ("title", (Str "List"));
            ("type", (Str "`$ARRAY`")) ]);
          (jo [
            ("name", (Str "pagination"));
            ("title", (Str "Pagination"));
            ("type", (Str "`$OBJECT`")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("title", (Str "Response Code"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("title", (Str "Response Message"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "sorting"));
            ("title", (Str "Sorting"));
            ("type", (Str "`$OBJECT`")) ]) ]));
        ("name", (Str "output_list_of_mandator"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/listOfMandators"));
                ("segments", (ja [
                  (jo [
                    ("lit", (Str "listOfMandators")) ]) ]));
                ("parts", (ja [
                  (Str "listOfMandators") ]));
                ("rename", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("args", (jo [
                  ("header", (ja [
                    (jo [
                      ("name", (Str "authorization"));
                      ("orig", (Str "authorization"));
                      ("type", (Str "`$STRING`"));
                      ("kind", (Str "header"));
                      ("reqd", (Bool true)) ]) ])) ]));
                ("select", (jo [
                  ("exist", (ja [
                    (Str "authorization") ])) ])) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("output_list_of_module", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "list"));
            ("title", (Str "List"));
            ("type", (Str "`$ARRAY`")) ]);
          (jo [
            ("name", (Str "pagination"));
            ("title", (Str "Pagination"));
            ("type", (Str "`$OBJECT`")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("title", (Str "Response Code"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("title", (Str "Response Message"));
            ("type", (Str "`$STRING`")) ]) ]));
        ("name", (Str "output_list_of_module"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/listOfModules"));
                ("segments", (ja [
                  (jo [
                    ("lit", (Str "listOfModules")) ]) ]));
                ("parts", (ja [
                  (Str "listOfModules") ]));
                ("rename", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("args", (jo [
                  ("header", (ja [
                    (jo [
                      ("name", (Str "authorization"));
                      ("orig", (Str "authorization"));
                      ("type", (Str "`$STRING`"));
                      ("kind", (Str "header"));
                      ("reqd", (Bool true)) ]) ])) ]));
                ("select", (jo [
                  ("exist", (ja [
                    (Str "authorization") ])) ])) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("output_list_of_role_group", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "filter"));
            ("title", (Str "Filter"));
            ("type", (Str "`$OBJECT`")) ]);
          (jo [
            ("name", (Str "groupRoles"));
            ("title", (Str "Group Roles"));
            ("type", (Str "`$ARRAY`")) ]);
          (jo [
            ("name", (Str "pagination"));
            ("title", (Str "Pagination"));
            ("type", (Str "`$OBJECT`")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("title", (Str "Response Code"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("title", (Str "Response Message"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "sorting"));
            ("title", (Str "Sorting"));
            ("type", (Str "`$OBJECT`")) ]) ]));
        ("name", (Str "output_list_of_role_group"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/listOfRoleGroups"));
                ("segments", (ja [
                  (jo [
                    ("lit", (Str "listOfRoleGroups")) ]) ]));
                ("parts", (ja [
                  (Str "listOfRoleGroups") ]));
                ("rename", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("args", (jo [
                  ("header", (ja [
                    (jo [
                      ("name", (Str "authorization"));
                      ("orig", (Str "authorization"));
                      ("type", (Str "`$STRING`"));
                      ("kind", (Str "header"));
                      ("reqd", (Bool true)) ]) ])) ]));
                ("select", (jo [
                  ("exist", (ja [
                    (Str "authorization") ])) ])) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("output_list_of_transactions_history", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "filter"));
            ("title", (Str "Filter"));
            ("type", (Str "`$OBJECT`")) ]);
          (jo [
            ("name", (Str "list"));
            ("title", (Str "List"));
            ("type", (Str "`$ARRAY`")) ]);
          (jo [
            ("name", (Str "pagination"));
            ("title", (Str "Pagination"));
            ("type", (Str "`$OBJECT`")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("title", (Str "Response Code"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("title", (Str "Response Message"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "sorting"));
            ("title", (Str "Sorting"));
            ("type", (Str "`$OBJECT`")) ]) ]));
        ("name", (Str "output_list_of_transactions_history"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/listOfTransactionsHistory"));
                ("segments", (ja [
                  (jo [
                    ("lit", (Str "listOfTransactionsHistory")) ]) ]));
                ("parts", (ja [
                  (Str "listOfTransactionsHistory") ]));
                ("rename", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("args", (jo [
                  ("header", (ja [
                    (jo [
                      ("name", (Str "authorization"));
                      ("orig", (Str "authorization"));
                      ("type", (Str "`$STRING`"));
                      ("kind", (Str "header"));
                      ("reqd", (Bool true)) ]) ])) ]));
                ("select", (jo [
                  ("exist", (ja [
                    (Str "authorization") ])) ])) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("output_list_of_user", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "filter"));
            ("title", (Str "Filter"));
            ("type", (Str "`$OBJECT`")) ]);
          (jo [
            ("name", (Str "list"));
            ("title", (Str "List"));
            ("type", (Str "`$ARRAY`")) ]);
          (jo [
            ("name", (Str "pagination"));
            ("title", (Str "Pagination"));
            ("type", (Str "`$OBJECT`")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("title", (Str "Response Code"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("title", (Str "Response Message"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "sorting"));
            ("title", (Str "Sorting"));
            ("type", (Str "`$OBJECT`")) ]) ]));
        ("name", (Str "output_list_of_user"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/listOfUsers"));
                ("segments", (ja [
                  (jo [
                    ("lit", (Str "listOfUsers")) ]) ]));
                ("parts", (ja [
                  (Str "listOfUsers") ]));
                ("rename", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("args", (jo [
                  ("header", (ja [
                    (jo [
                      ("name", (Str "authorization"));
                      ("orig", (Str "authorization"));
                      ("type", (Str "`$STRING`"));
                      ("kind", (Str "header"));
                      ("reqd", (Bool true)) ]) ])) ]));
                ("select", (jo [
                  ("exist", (ja [
                    (Str "authorization") ])) ])) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("output_provide_credential", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "mandatorName"));
            ("title", (Str "Mandator Name"));
            ("type", (Str "`$STRING`"));
            ("req", (Bool true)) ]);
          (jo [
            ("name", (Str "password"));
            ("title", (Str "Password"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("title", (Str "Response Code"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("title", (Str "Response Message"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "username"));
            ("title", (Str "Username"));
            ("type", (Str "`$STRING`")) ]) ]));
        ("name", (Str "output_provide_credential"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/provideCredentials"));
                ("segments", (ja [
                  (jo [
                    ("lit", (Str "provideCredentials")) ]) ]));
                ("parts", (ja [
                  (Str "provideCredentials") ]));
                ("rename", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("args", (jo [
                  ("header", (ja [
                    (jo [
                      ("name", (Str "authorization"));
                      ("orig", (Str "authorization"));
                      ("type", (Str "`$STRING`"));
                      ("kind", (Str "header"));
                      ("reqd", (Bool true)) ]) ])) ]));
                ("select", (jo [
                  ("exist", (ja [
                    (Str "authorization") ])) ])) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("output_register_user", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "city"));
            ("title", (Str "City"));
            ("type", (Str "`$STRING`"));
            ("short", (Str "City where the user resides.")) ]);
          (jo [
            ("name", (Str "consumerId"));
            ("title", (Str "Consumer Id"));
            ("type", (Str "`$STRING`"));
            ("short", (Str "User login or unique user identifier.")) ]);
          (jo [
            ("name", (Str "consumerLanguage"));
            ("title", (Str "Consumer Language"));
            ("type", (Str "`$STRING`"));
            ("short", (Str "Preferred language for the user (e.g., 'en').")) ]);
          (jo [
            ("name", (Str "country"));
            ("title", (Str "Country"));
            ("type", (Str "`$STRING`"));
            ("short", (Str "User's country.")) ]);
          (jo [
            ("name", (Str "dateOfBirth"));
            ("title", (Str "Date Of Birth"));
            ("type", (Str "`$STRING`"));
            ("short", (Str "User's date of birth (expected format: dd.MM.yyyy).")) ]);
          (jo [
            ("name", (Str "driverLicenceNumber"));
            ("title", (Str "Driver Licence Number"));
            ("type", (Str "`$STRING`"));
            ("short", (Str "User's driver's license number.")) ]);
          (jo [
            ("name", (Str "email"));
            ("title", (Str "Email"));
            ("type", (Str "`$STRING`"));
            ("req", (Bool true));
            ("short", (Str "User's email address (must be unique)."));
            ("format", (Str "email")) ]);
          (jo [
            ("name", (Str "firstName"));
            ("title", (Str "First Name"));
            ("type", (Str "`$STRING`"));
            ("short", (Str "User's first name.")) ]);
          (jo [
            ("name", (Str "identificationNumber"));
            ("title", (Str "Identification Number"));
            ("type", (Str "`$STRING`"));
            ("short", (Str "User's identification number.")) ]);
          (jo [
            ("name", (Str "lastName"));
            ("title", (Str "Last Name"));
            ("type", (Str "`$STRING`"));
            ("short", (Str "User's last name.")) ]);
          (jo [
            ("name", (Str "login"));
            ("title", (Str "Login"));
            ("type", (Str "`$STRING`"));
            ("short", (Str "User login identifier (should be unique).")) ]);
          (jo [
            ("name", (Str "module"));
            ("title", (Str "Module"));
            ("type", (Str "`$STRING`"));
            ("short", (Str "Module identifier (if applicable).")) ]);
          (jo [
            ("name", (Str "passportNumber"));
            ("title", (Str "Passport Number"));
            ("type", (Str "`$STRING`"));
            ("short", (Str "User's passport number.")) ]);
          (jo [
            ("name", (Str "phone"));
            ("title", (Str "Phone"));
            ("type", (Str "`$STRING`"));
            ("short", (Str "User's phone number.")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("title", (Str "Response Code"));
            ("type", (Str "`$INTEGER`"));
            ("short", (Str "Response code (0 indicates success; non-zero indicates an error)."));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("title", (Str "Response Message"));
            ("type", (Str "`$STRING`"));
            ("short", (Str "Human-readable response message.")) ]);
          (jo [
            ("name", (Str "salutation"));
            ("title", (Str "Salutation"));
            ("type", (Str "`$STRING`"));
            ("short", (Str "User's salutation (e.g., Mr., Ms.).")) ]);
          (jo [
            ("name", (Str "state"));
            ("title", (Str "State"));
            ("type", (Str "`$STRING`"));
            ("short", (Str "User's state or region.")) ]);
          (jo [
            ("name", (Str "street1"));
            ("title", (Str "Street1"));
            ("type", (Str "`$STRING`"));
            ("short", (Str "Primary address line.")) ]);
          (jo [
            ("name", (Str "street2"));
            ("title", (Str "Street2"));
            ("type", (Str "`$STRING`"));
            ("short", (Str "Secondary address line.")) ]);
          (jo [
            ("name", (Str "zip"));
            ("title", (Str "Zip"));
            ("type", (Str "`$STRING`"));
            ("short", (Str "Postal code.")) ]) ]));
        ("name", (Str "output_register_user"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/registerUser"));
                ("segments", (ja [
                  (jo [
                    ("lit", (Str "registerUser")) ]) ]));
                ("parts", (ja [
                  (Str "registerUser") ]));
                ("rename", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("args", (jo [
                  ("header", (ja [
                    (jo [
                      ("name", (Str "authorization"));
                      ("orig", (Str "authorization"));
                      ("type", (Str "`$STRING`"));
                      ("kind", (Str "header"));
                      ("reqd", (Bool true)) ]) ])) ]));
                ("select", (jo [
                  ("exist", (ja [
                    (Str "authorization") ])) ])) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("output_remove_role", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "consumerUUID"));
            ("title", (Str "Consumer Uuid"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("title", (Str "Response Code"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("title", (Str "Response Message"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "roles"));
            ("title", (Str "Roles"));
            ("type", (Str "`$ARRAY`")) ]) ]));
        ("name", (Str "output_remove_role"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/removeRoles"));
                ("segments", (ja [
                  (jo [
                    ("lit", (Str "removeRoles")) ]) ]));
                ("parts", (ja [
                  (Str "removeRoles") ]));
                ("rename", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("args", (jo [
                  ("header", (ja [
                    (jo [
                      ("name", (Str "authorization"));
                      ("orig", (Str "authorization"));
                      ("type", (Str "`$STRING`"));
                      ("kind", (Str "header"));
                      ("reqd", (Bool true)) ]) ])) ]));
                ("select", (jo [
                  ("exist", (ja [
                    (Str "authorization") ])) ])) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("output_resend_link", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "businessRegistrationNumber"));
            ("title", (Str "Business Registration Number"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "consumerUUID"));
            ("title", (Str "Consumer Uuid"));
            ("type", (Str "`$STRING`"));
            ("req", (Bool true)) ]);
          (jo [
            ("name", (Str "emailConfirmationCode"));
            ("title", (Str "Email Confirmation Code"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "phoneNumber"));
            ("title", (Str "Phone Number"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("title", (Str "Response Code"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("title", (Str "Response Message"));
            ("type", (Str "`$STRING`")) ]) ]));
        ("name", (Str "output_resend_link"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/resendLink"));
                ("segments", (ja [
                  (jo [
                    ("lit", (Str "resendLink")) ]) ]));
                ("parts", (ja [
                  (Str "resendLink") ]));
                ("rename", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("args", (jo [
                  ("header", (ja [
                    (jo [
                      ("name", (Str "authorization"));
                      ("orig", (Str "authorization"));
                      ("type", (Str "`$STRING`"));
                      ("kind", (Str "header")) ]) ])) ]));
                ("select", (jo [
                  ("exist", (ja [
                    (Str "authorization") ])) ])) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("output_reset_password", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "consumerUuid"));
            ("title", (Str "Consumer Uuid"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "phoneNumber"));
            ("title", (Str "Phone Number"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("title", (Str "Response Code"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("title", (Str "Response Message"));
            ("type", (Str "`$STRING`")) ]) ]));
        ("name", (Str "output_reset_password"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/resetPassword"));
                ("segments", (ja [
                  (jo [
                    ("lit", (Str "resetPassword")) ]) ]));
                ("parts", (ja [
                  (Str "resetPassword") ]));
                ("rename", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("args", (jo [
                  ("header", (ja [
                    (jo [
                      ("name", (Str "authorization"));
                      ("orig", (Str "authorization"));
                      ("type", (Str "`$STRING`"));
                      ("kind", (Str "header"));
                      ("reqd", (Bool true)) ]) ])) ]));
                ("select", (jo [
                  ("exist", (ja [
                    (Str "authorization") ])) ])) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("output_update_consumer", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "city"));
            ("title", (Str "City"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "consumerUuid"));
            ("title", (Str "Consumer Uuid"));
            ("type", (Str "`$STRING`"));
            ("req", (Bool true)) ]);
          (jo [
            ("name", (Str "consumerlanguage"));
            ("title", (Str "Consumerlanguage"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "country"));
            ("title", (Str "Country"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "dateOfBirth"));
            ("title", (Str "Date Of Birth"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "datetime_created"));
            ("title", (Str "Datetime Created"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "driverLicenceNumber"));
            ("title", (Str "Driver Licence Number"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "email"));
            ("title", (Str "Email"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "firstName"));
            ("title", (Str "First Name"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "identificationNumber"));
            ("title", (Str "Identification Number"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "kycPassed"));
            ("title", (Str "Kyc Passed"));
            ("type", (Str "`$BOOLEAN`")) ]);
          (jo [
            ("name", (Str "lastName"));
            ("title", (Str "Last Name"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "nationality"));
            ("title", (Str "Nationality"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "passportNumber"));
            ("title", (Str "Passport Number"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "phoneNumber"));
            ("title", (Str "Phone Number"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "placeOfBirth"));
            ("title", (Str "Place Of Birth"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("title", (Str "Response Code"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("title", (Str "Response Message"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "state"));
            ("title", (Str "State"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "street1"));
            ("title", (Str "Street1"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "street2"));
            ("title", (Str "Street2"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "transactionhistory_id"));
            ("title", (Str "Transactionhistory Id"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "zip"));
            ("title", (Str "Zip"));
            ("type", (Str "`$STRING`")) ]) ]));
        ("name", (Str "output_update_consumer"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/updateConsumer"));
                ("segments", (ja [
                  (jo [
                    ("lit", (Str "updateConsumer")) ]) ]));
                ("parts", (ja [
                  (Str "updateConsumer") ]));
                ("rename", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("args", (jo [
                  ("header", (ja [
                    (jo [
                      ("name", (Str "authorization"));
                      ("orig", (Str "authorization"));
                      ("type", (Str "`$STRING`"));
                      ("kind", (Str "header")) ]) ])) ]));
                ("select", (jo [
                  ("exist", (ja [
                    (Str "authorization") ])) ])) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("output_update_profile", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "consumerLanguage"));
            ("title", (Str "Consumer Language"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "email"));
            ("title", (Str "Email"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "firstName"));
            ("title", (Str "First Name"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "lastName"));
            ("title", (Str "Last Name"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "phoneNumber"));
            ("title", (Str "Phone Number"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("title", (Str "Response Code"));
            ("type", (Str "`$INTEGER`"));
            ("format", (Str "int32")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("title", (Str "Response Message"));
            ("type", (Str "`$STRING`")) ]) ]));
        ("name", (Str "output_update_profile"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/updateProfile"));
                ("segments", (ja [
                  (jo [
                    ("lit", (Str "updateProfile")) ]) ]));
                ("parts", (ja [
                  (Str "updateProfile") ]));
                ("rename", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("args", (jo [
                  ("header", (ja [
                    (jo [
                      ("name", (Str "authorization"));
                      ("orig", (Str "authorization"));
                      ("type", (Str "`$STRING`"));
                      ("kind", (Str "header")) ]) ])) ]));
                ("select", (jo [
                  ("exist", (ja [
                    (Str "authorization") ])) ])) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("version", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "appName"));
            ("title", (Str "App Name"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "buildDate"));
            ("title", (Str "Build Date"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "version"));
            ("title", (Str "Version"));
            ("type", (Str "`$STRING`")) ]) ]));
        ("name", (Str "version"));
        ("op", (jo [
          ("load", (jo [
            ("input", (Str "data"));
            ("name", (Str "load"));
            ("points", (ja [
              (jo [
                ("kind", (Str "http"));
                ("method", (Str "GET"));
                ("orig", (Str "/version"));
                ("segments", (ja [
                  (jo [
                    ("lit", (Str "version")) ]) ]));
                ("parts", (ja [
                  (Str "version") ]));
                ("rename", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("args", (empty_map ()));
                ("select", (empty_map ())) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ])) ])) ])

(* The plugin definitions the model selected, per feature: none - no
 * plugin-bearing feature is active in this SDK. *)
let feature_plugins (_name : string) = []

let make_feature (name : string) : feature =
  match name with
  | "audit" -> audit_feature ()
  | "clienttrack" -> clienttrack_feature ()
  | "debug" -> debug_feature ()
  | "idempotency" -> idempotency_feature ()
  | "log" -> log_feature ()
  | "metrics" -> metrics_feature ()
  | "paging" -> paging_feature ()
  | "ratelimit" -> ratelimit_feature ()
  | "retry" -> retry_feature ()
  | "telemetry" -> telemetry_feature ()
  | "test" -> test_feature ()
  | "timeout" -> timeout_feature ()
  | _ -> base_feature ()

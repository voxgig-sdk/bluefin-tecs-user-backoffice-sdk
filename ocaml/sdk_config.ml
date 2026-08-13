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
      ("name", (Str "BluefinTecsUserBackoffice")) ]));
    ("feature", (jo [
      ("test", (jo [
        ("options", (jo [
          ("active", (Bool false)) ])) ])) ]));
    ("options", (jo [
      ("base", (Str "https://test.tecs.at/usermanagement-backofficews"));
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
        ("version", (empty_map ())) ]));
      ("auth", (jo [
        ("prefix", (Str "Bearer")) ])) ]));
    ("entity", (jo [
      ("output_activate_digital_module", (jo [
        ("fields", (ja [
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseCode"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseMessage"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (1.))) ]) ]));
        ("name", (Str "output_activate_digital_module"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("active", (Bool true));
                ("args", (jo [
                  ("header", (ja [
                    (jo [
                      ("active", (Bool true));
                      ("kind", (Str "header"));
                      ("name", (Str "authorization"));
                      ("orig", (Str "authorization"));
                      ("reqd", (Bool true));
                      ("type", (Str "`$STRING`")) ]) ])) ]));
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/activateDigitalModule"));
                ("parts", (ja [
                  (Str "activateDigitalModule") ]));
                ("select", (jo [
                  ("exist", (ja [
                    (Str "authorization") ])) ]));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("index$", (Num (0.))) ]) ]));
            ("key$", (Str "create")) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("output_activate_portal_module", (jo [
        ("fields", (ja [
          (jo [
            ("active", (Bool true));
            ("name", (Str "clientSecret"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "notificationEmail"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseCode"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (2.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseMessage"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (3.))) ]) ]));
        ("name", (Str "output_activate_portal_module"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("active", (Bool true));
                ("args", (jo [
                  ("header", (ja [
                    (jo [
                      ("active", (Bool true));
                      ("kind", (Str "header"));
                      ("name", (Str "authorization"));
                      ("orig", (Str "authorization"));
                      ("reqd", (Bool true));
                      ("type", (Str "`$STRING`")) ]) ])) ]));
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/activateMerchantPortalModule"));
                ("parts", (ja [
                  (Str "activateMerchantPortalModule") ]));
                ("select", (jo [
                  ("exist", (ja [
                    (Str "authorization") ])) ]));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("index$", (Num (0.))) ]) ]));
            ("key$", (Str "create")) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("output_activate_store_module", (jo [
        ("fields", (ja [
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseCode"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseMessage"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (1.))) ]) ]));
        ("name", (Str "output_activate_store_module"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("active", (Bool true));
                ("args", (jo [
                  ("header", (ja [
                    (jo [
                      ("active", (Bool true));
                      ("kind", (Str "header"));
                      ("name", (Str "authorization"));
                      ("orig", (Str "authorization"));
                      ("reqd", (Bool true));
                      ("type", (Str "`$STRING`")) ]) ])) ]));
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/activateAppStoreModule"));
                ("parts", (ja [
                  (Str "activateAppStoreModule") ]));
                ("select", (jo [
                  ("exist", (ja [
                    (Str "authorization") ])) ]));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("index$", (Num (0.))) ]) ]));
            ("key$", (Str "create")) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("output_activate_user", (jo [
        ("fields", (ja [
          (jo [
            ("active", (Bool true));
            ("name", (Str "consumerUUID"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseCode"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseMessage"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (2.))) ]) ]));
        ("name", (Str "output_activate_user"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("active", (Bool true));
                ("args", (jo [
                  ("header", (ja [
                    (jo [
                      ("active", (Bool true));
                      ("kind", (Str "header"));
                      ("name", (Str "authorization"));
                      ("orig", (Str "authorization"));
                      ("reqd", (Bool true));
                      ("type", (Str "`$STRING`")) ]) ])) ]));
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/activateUser"));
                ("parts", (ja [
                  (Str "activateUser") ]));
                ("select", (jo [
                  ("exist", (ja [
                    (Str "authorization") ])) ]));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("index$", (Num (0.))) ]) ]));
            ("key$", (Str "create")) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("output_assign_role", (jo [
        ("fields", (ja [
          (jo [
            ("active", (Bool true));
            ("name", (Str "consumerUUID"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseCode"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseMessage"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (2.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "roles"));
            ("req", (Bool true));
            ("type", (Str "`$ARRAY`"));
            ("index$", (Num (3.))) ]) ]));
        ("name", (Str "output_assign_role"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("active", (Bool true));
                ("args", (jo [
                  ("header", (ja [
                    (jo [
                      ("active", (Bool true));
                      ("kind", (Str "header"));
                      ("name", (Str "authorization"));
                      ("orig", (Str "authorization"));
                      ("reqd", (Bool true));
                      ("type", (Str "`$STRING`")) ]) ])) ]));
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/assignRoles"));
                ("parts", (ja [
                  (Str "assignRoles") ]));
                ("select", (jo [
                  ("exist", (ja [
                    (Str "authorization") ])) ]));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("index$", (Num (0.))) ]) ]));
            ("key$", (Str "create")) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("output_change_logo", (jo [
        ("fields", (ja [
          (jo [
            ("active", (Bool true));
            ("name", (Str "contentAsBase64"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "mimeType"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseCode"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (2.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseMessage"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (3.))) ]) ]));
        ("name", (Str "output_change_logo"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("active", (Bool true));
                ("args", (jo [
                  ("header", (ja [
                    (jo [
                      ("active", (Bool true));
                      ("kind", (Str "header"));
                      ("name", (Str "authorization"));
                      ("orig", (Str "authorization"));
                      ("reqd", (Bool true));
                      ("type", (Str "`$STRING`")) ]) ])) ]));
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/changeLogo"));
                ("parts", (ja [
                  (Str "changeLogo") ]));
                ("select", (jo [
                  ("exist", (ja [
                    (Str "authorization") ])) ]));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("index$", (Num (0.))) ]) ]));
            ("key$", (Str "create")) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("output_create_mandator", (jo [
        ("fields", (ja [
          (jo [
            ("active", (Bool true));
            ("name", (Str "city"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "country"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "dateOfBirth"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (2.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "description"));
            ("op", (jo [
              ("create", (jo [
                ("req", (Bool true));
                ("type", (Str "`$STRING`")) ])) ]));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (3.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "driversLicenseNumber"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (4.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "email"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (5.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "firstName"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (6.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "identificationNumber"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (7.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "lastName"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (8.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "login"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (9.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "name"));
            ("op", (jo [
              ("create", (jo [
                ("req", (Bool true));
                ("type", (Str "`$STRING`")) ])) ]));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (10.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "passportNumber"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (11.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "phone"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (12.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "salutation"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (13.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "state"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (14.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "street1"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (15.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "street2"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (16.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "zipCode"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (17.))) ]) ]));
        ("name", (Str "output_create_mandator"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("active", (Bool true));
                ("args", (jo [
                  ("header", (ja [
                    (jo [
                      ("active", (Bool true));
                      ("kind", (Str "header"));
                      ("name", (Str "authorization"));
                      ("orig", (Str "authorization"));
                      ("reqd", (Bool true));
                      ("type", (Str "`$STRING`")) ]) ])) ]));
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/createMandator"));
                ("parts", (ja [
                  (Str "createMandator") ]));
                ("select", (jo [
                  ("exist", (ja [
                    (Str "authorization") ])) ]));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("index$", (Num (0.))) ]) ]));
            ("key$", (Str "create")) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("output_create_service_user", (jo [
        ("fields", (ja [
          (jo [
            ("active", (Bool true));
            ("name", (Str "mandatorName"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseCode"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseMessage"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (2.))) ]) ]));
        ("name", (Str "output_create_service_user"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("active", (Bool true));
                ("args", (jo [
                  ("header", (ja [
                    (jo [
                      ("active", (Bool true));
                      ("kind", (Str "header"));
                      ("name", (Str "authorization"));
                      ("orig", (Str "authorization"));
                      ("reqd", (Bool true));
                      ("type", (Str "`$STRING`")) ]) ])) ]));
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/createServiceUser"));
                ("parts", (ja [
                  (Str "createServiceUser") ]));
                ("select", (jo [
                  ("exist", (ja [
                    (Str "authorization") ])) ]));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("index$", (Num (0.))) ]) ]));
            ("key$", (Str "create")) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("output_deactivate_user", (jo [
        ("fields", (ja [
          (jo [
            ("active", (Bool true));
            ("name", (Str "consumerUUID"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseCode"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseMessage"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (2.))) ]) ]));
        ("name", (Str "output_deactivate_user"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("active", (Bool true));
                ("args", (jo [
                  ("header", (ja [
                    (jo [
                      ("active", (Bool true));
                      ("kind", (Str "header"));
                      ("name", (Str "authorization"));
                      ("orig", (Str "authorization"));
                      ("reqd", (Bool true));
                      ("type", (Str "`$STRING`")) ]) ])) ]));
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/deactivateUser"));
                ("parts", (ja [
                  (Str "deactivateUser") ]));
                ("select", (jo [
                  ("exist", (ja [
                    (Str "authorization") ])) ]));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("index$", (Num (0.))) ]) ]));
            ("key$", (Str "create")) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("output_get_kyc_document", (jo [
        ("fields", (ja [
          (jo [
            ("active", (Bool true));
            ("name", (Str "caseID"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "encodedDataBase64"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseCode"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (2.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseMessage"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (3.))) ]) ]));
        ("name", (Str "output_get_kyc_document"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("active", (Bool true));
                ("args", (jo [
                  ("header", (ja [
                    (jo [
                      ("active", (Bool true));
                      ("kind", (Str "header"));
                      ("name", (Str "authorization"));
                      ("orig", (Str "authorization"));
                      ("reqd", (Bool true));
                      ("type", (Str "`$STRING`")) ]) ])) ]));
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/getKycDocument"));
                ("parts", (ja [
                  (Str "getKycDocument") ]));
                ("select", (jo [
                  ("exist", (ja [
                    (Str "authorization") ])) ]));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("index$", (Num (0.))) ]) ]));
            ("key$", (Str "create")) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("output_get_logo", (jo [
        ("fields", (ja [
          (jo [
            ("active", (Bool true));
            ("name", (Str "contentAsBase64"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "mimeType"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseCode"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (2.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseMessage"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (3.))) ]) ]));
        ("name", (Str "output_get_logo"));
        ("op", (jo [
          ("load", (jo [
            ("input", (Str "data"));
            ("name", (Str "load"));
            ("points", (ja [
              (jo [
                ("active", (Bool true));
                ("args", (jo [
                  ("header", (ja [
                    (jo [
                      ("active", (Bool true));
                      ("kind", (Str "header"));
                      ("name", (Str "authorization"));
                      ("orig", (Str "authorization"));
                      ("reqd", (Bool true));
                      ("type", (Str "`$STRING`")) ]) ])) ]));
                ("kind", (Str "http"));
                ("method", (Str "GET"));
                ("orig", (Str "/getLogo"));
                ("parts", (ja [
                  (Str "getLogo") ]));
                ("select", (jo [
                  ("exist", (ja [
                    (Str "authorization") ])) ]));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("index$", (Num (0.))) ]) ]));
            ("key$", (Str "load")) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("output_list_of_available_role", (jo [
        ("fields", (ja [
          (jo [
            ("active", (Bool true));
            ("name", (Str "availableRoles"));
            ("req", (Bool false));
            ("type", (Str "`$ARRAY`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseCode"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseMessage"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (2.))) ]) ]));
        ("name", (Str "output_list_of_available_role"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("active", (Bool true));
                ("args", (jo [
                  ("header", (ja [
                    (jo [
                      ("active", (Bool true));
                      ("kind", (Str "header"));
                      ("name", (Str "authorization"));
                      ("orig", (Str "authorization"));
                      ("reqd", (Bool true));
                      ("type", (Str "`$STRING`")) ]) ])) ]));
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/listOfAvailableRoles"));
                ("parts", (ja [
                  (Str "listOfAvailableRoles") ]));
                ("select", (jo [
                  ("exist", (ja [
                    (Str "authorization") ])) ]));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("index$", (Num (0.))) ]) ]));
            ("key$", (Str "create")) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("output_list_of_mandator", (jo [
        ("fields", (ja [
          (jo [
            ("active", (Bool true));
            ("name", (Str "filter"));
            ("req", (Bool false));
            ("type", (Str "`$OBJECT`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "list"));
            ("req", (Bool false));
            ("type", (Str "`$ARRAY`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "pagination"));
            ("req", (Bool false));
            ("type", (Str "`$OBJECT`"));
            ("index$", (Num (2.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseCode"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (3.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseMessage"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (4.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "sorting"));
            ("req", (Bool false));
            ("type", (Str "`$OBJECT`"));
            ("index$", (Num (5.))) ]) ]));
        ("name", (Str "output_list_of_mandator"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("active", (Bool true));
                ("args", (jo [
                  ("header", (ja [
                    (jo [
                      ("active", (Bool true));
                      ("kind", (Str "header"));
                      ("name", (Str "authorization"));
                      ("orig", (Str "authorization"));
                      ("reqd", (Bool true));
                      ("type", (Str "`$STRING`")) ]) ])) ]));
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/listOfMandators"));
                ("parts", (ja [
                  (Str "listOfMandators") ]));
                ("select", (jo [
                  ("exist", (ja [
                    (Str "authorization") ])) ]));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("index$", (Num (0.))) ]) ]));
            ("key$", (Str "create")) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("output_list_of_module", (jo [
        ("fields", (ja [
          (jo [
            ("active", (Bool true));
            ("name", (Str "list"));
            ("req", (Bool false));
            ("type", (Str "`$ARRAY`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "pagination"));
            ("req", (Bool false));
            ("type", (Str "`$OBJECT`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseCode"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (2.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseMessage"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (3.))) ]) ]));
        ("name", (Str "output_list_of_module"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("active", (Bool true));
                ("args", (jo [
                  ("header", (ja [
                    (jo [
                      ("active", (Bool true));
                      ("kind", (Str "header"));
                      ("name", (Str "authorization"));
                      ("orig", (Str "authorization"));
                      ("reqd", (Bool true));
                      ("type", (Str "`$STRING`")) ]) ])) ]));
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/listOfModules"));
                ("parts", (ja [
                  (Str "listOfModules") ]));
                ("select", (jo [
                  ("exist", (ja [
                    (Str "authorization") ])) ]));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("index$", (Num (0.))) ]) ]));
            ("key$", (Str "create")) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("output_list_of_role_group", (jo [
        ("fields", (ja [
          (jo [
            ("active", (Bool true));
            ("name", (Str "filter"));
            ("req", (Bool false));
            ("type", (Str "`$OBJECT`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "groupRoles"));
            ("req", (Bool false));
            ("type", (Str "`$ARRAY`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "pagination"));
            ("req", (Bool false));
            ("type", (Str "`$OBJECT`"));
            ("index$", (Num (2.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseCode"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (3.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseMessage"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (4.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "sorting"));
            ("req", (Bool false));
            ("type", (Str "`$OBJECT`"));
            ("index$", (Num (5.))) ]) ]));
        ("name", (Str "output_list_of_role_group"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("active", (Bool true));
                ("args", (jo [
                  ("header", (ja [
                    (jo [
                      ("active", (Bool true));
                      ("kind", (Str "header"));
                      ("name", (Str "authorization"));
                      ("orig", (Str "authorization"));
                      ("reqd", (Bool true));
                      ("type", (Str "`$STRING`")) ]) ])) ]));
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/listOfRoleGroups"));
                ("parts", (ja [
                  (Str "listOfRoleGroups") ]));
                ("select", (jo [
                  ("exist", (ja [
                    (Str "authorization") ])) ]));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("index$", (Num (0.))) ]) ]));
            ("key$", (Str "create")) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("output_list_of_transactions_history", (jo [
        ("fields", (ja [
          (jo [
            ("active", (Bool true));
            ("name", (Str "filter"));
            ("req", (Bool false));
            ("type", (Str "`$OBJECT`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "list"));
            ("req", (Bool false));
            ("type", (Str "`$ARRAY`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "pagination"));
            ("req", (Bool false));
            ("type", (Str "`$OBJECT`"));
            ("index$", (Num (2.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseCode"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (3.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseMessage"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (4.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "sorting"));
            ("req", (Bool false));
            ("type", (Str "`$OBJECT`"));
            ("index$", (Num (5.))) ]) ]));
        ("name", (Str "output_list_of_transactions_history"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("active", (Bool true));
                ("args", (jo [
                  ("header", (ja [
                    (jo [
                      ("active", (Bool true));
                      ("kind", (Str "header"));
                      ("name", (Str "authorization"));
                      ("orig", (Str "authorization"));
                      ("reqd", (Bool true));
                      ("type", (Str "`$STRING`")) ]) ])) ]));
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/listOfTransactionsHistory"));
                ("parts", (ja [
                  (Str "listOfTransactionsHistory") ]));
                ("select", (jo [
                  ("exist", (ja [
                    (Str "authorization") ])) ]));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("index$", (Num (0.))) ]) ]));
            ("key$", (Str "create")) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("output_list_of_user", (jo [
        ("fields", (ja [
          (jo [
            ("active", (Bool true));
            ("name", (Str "filter"));
            ("req", (Bool false));
            ("type", (Str "`$OBJECT`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "list"));
            ("req", (Bool false));
            ("type", (Str "`$ARRAY`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "pagination"));
            ("req", (Bool false));
            ("type", (Str "`$OBJECT`"));
            ("index$", (Num (2.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseCode"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (3.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseMessage"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (4.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "sorting"));
            ("req", (Bool false));
            ("type", (Str "`$OBJECT`"));
            ("index$", (Num (5.))) ]) ]));
        ("name", (Str "output_list_of_user"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("active", (Bool true));
                ("args", (jo [
                  ("header", (ja [
                    (jo [
                      ("active", (Bool true));
                      ("kind", (Str "header"));
                      ("name", (Str "authorization"));
                      ("orig", (Str "authorization"));
                      ("reqd", (Bool true));
                      ("type", (Str "`$STRING`")) ]) ])) ]));
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/listOfUsers"));
                ("parts", (ja [
                  (Str "listOfUsers") ]));
                ("select", (jo [
                  ("exist", (ja [
                    (Str "authorization") ])) ]));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("index$", (Num (0.))) ]) ]));
            ("key$", (Str "create")) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("output_provide_credential", (jo [
        ("fields", (ja [
          (jo [
            ("active", (Bool true));
            ("name", (Str "mandatorName"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "password"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseCode"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (2.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseMessage"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (3.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "username"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (4.))) ]) ]));
        ("name", (Str "output_provide_credential"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("active", (Bool true));
                ("args", (jo [
                  ("header", (ja [
                    (jo [
                      ("active", (Bool true));
                      ("kind", (Str "header"));
                      ("name", (Str "authorization"));
                      ("orig", (Str "authorization"));
                      ("reqd", (Bool true));
                      ("type", (Str "`$STRING`")) ]) ])) ]));
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/provideCredentials"));
                ("parts", (ja [
                  (Str "provideCredentials") ]));
                ("select", (jo [
                  ("exist", (ja [
                    (Str "authorization") ])) ]));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("index$", (Num (0.))) ]) ]));
            ("key$", (Str "create")) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("output_register_user", (jo [
        ("fields", (ja [
          (jo [
            ("active", (Bool true));
            ("name", (Str "city"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "consumerId"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "consumerLanguage"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (2.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "country"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (3.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "dateOfBirth"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (4.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "driverLicenceNumber"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (5.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "email"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (6.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "firstName"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (7.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "identificationNumber"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (8.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "lastName"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (9.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "login"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (10.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "module"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (11.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "passportNumber"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (12.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "phone"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (13.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseCode"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (14.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseMessage"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (15.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "salutation"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (16.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "state"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (17.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "street1"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (18.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "street2"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (19.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "zip"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (20.))) ]) ]));
        ("name", (Str "output_register_user"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("active", (Bool true));
                ("args", (jo [
                  ("header", (ja [
                    (jo [
                      ("active", (Bool true));
                      ("kind", (Str "header"));
                      ("name", (Str "authorization"));
                      ("orig", (Str "authorization"));
                      ("reqd", (Bool true));
                      ("type", (Str "`$STRING`")) ]) ])) ]));
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/registerUser"));
                ("parts", (ja [
                  (Str "registerUser") ]));
                ("select", (jo [
                  ("exist", (ja [
                    (Str "authorization") ])) ]));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("index$", (Num (0.))) ]) ]));
            ("key$", (Str "create")) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("output_remove_role", (jo [
        ("fields", (ja [
          (jo [
            ("active", (Bool true));
            ("name", (Str "consumerUUID"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseCode"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseMessage"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (2.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "roles"));
            ("req", (Bool false));
            ("type", (Str "`$ARRAY`"));
            ("index$", (Num (3.))) ]) ]));
        ("name", (Str "output_remove_role"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("active", (Bool true));
                ("args", (jo [
                  ("header", (ja [
                    (jo [
                      ("active", (Bool true));
                      ("kind", (Str "header"));
                      ("name", (Str "authorization"));
                      ("orig", (Str "authorization"));
                      ("reqd", (Bool true));
                      ("type", (Str "`$STRING`")) ]) ])) ]));
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/removeRoles"));
                ("parts", (ja [
                  (Str "removeRoles") ]));
                ("select", (jo [
                  ("exist", (ja [
                    (Str "authorization") ])) ]));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("index$", (Num (0.))) ]) ]));
            ("key$", (Str "create")) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("output_resend_link", (jo [
        ("fields", (ja [
          (jo [
            ("active", (Bool true));
            ("name", (Str "businessRegistrationNumber"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "consumerUUID"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "emailConfirmationCode"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (2.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "phoneNumber"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (3.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseCode"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (4.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseMessage"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (5.))) ]) ]));
        ("name", (Str "output_resend_link"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("active", (Bool true));
                ("args", (jo [
                  ("header", (ja [
                    (jo [
                      ("active", (Bool true));
                      ("kind", (Str "header"));
                      ("name", (Str "authorization"));
                      ("orig", (Str "authorization"));
                      ("reqd", (Bool false));
                      ("type", (Str "`$STRING`")) ]) ])) ]));
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/resendLink"));
                ("parts", (ja [
                  (Str "resendLink") ]));
                ("select", (jo [
                  ("exist", (ja [
                    (Str "authorization") ])) ]));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("index$", (Num (0.))) ]) ]));
            ("key$", (Str "create")) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("output_reset_password", (jo [
        ("fields", (ja [
          (jo [
            ("active", (Bool true));
            ("name", (Str "consumerUuid"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "phoneNumber"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseCode"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (2.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseMessage"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (3.))) ]) ]));
        ("name", (Str "output_reset_password"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("active", (Bool true));
                ("args", (jo [
                  ("header", (ja [
                    (jo [
                      ("active", (Bool true));
                      ("kind", (Str "header"));
                      ("name", (Str "authorization"));
                      ("orig", (Str "authorization"));
                      ("reqd", (Bool true));
                      ("type", (Str "`$STRING`")) ]) ])) ]));
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/resetPassword"));
                ("parts", (ja [
                  (Str "resetPassword") ]));
                ("select", (jo [
                  ("exist", (ja [
                    (Str "authorization") ])) ]));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("index$", (Num (0.))) ]) ]));
            ("key$", (Str "create")) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("output_update_consumer", (jo [
        ("fields", (ja [
          (jo [
            ("active", (Bool true));
            ("name", (Str "city"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "consumerUuid"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "consumerlanguage"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (2.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "country"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (3.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "dateOfBirth"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (4.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "datetime_created"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (5.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "driverLicenceNumber"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (6.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "email"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (7.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "firstName"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (8.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "identificationNumber"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (9.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "kycPassed"));
            ("req", (Bool false));
            ("type", (Str "`$BOOLEAN`"));
            ("index$", (Num (10.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "lastName"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (11.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "nationality"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (12.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "passportNumber"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (13.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "phoneNumber"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (14.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "placeOfBirth"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (15.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseCode"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (16.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseMessage"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (17.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "state"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (18.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "street1"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (19.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "street2"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (20.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "transactionhistory_id"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (21.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "zip"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (22.))) ]) ]));
        ("name", (Str "output_update_consumer"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("active", (Bool true));
                ("args", (jo [
                  ("header", (ja [
                    (jo [
                      ("active", (Bool true));
                      ("kind", (Str "header"));
                      ("name", (Str "authorization"));
                      ("orig", (Str "authorization"));
                      ("reqd", (Bool false));
                      ("type", (Str "`$STRING`")) ]) ])) ]));
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/updateConsumer"));
                ("parts", (ja [
                  (Str "updateConsumer") ]));
                ("select", (jo [
                  ("exist", (ja [
                    (Str "authorization") ])) ]));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("index$", (Num (0.))) ]) ]));
            ("key$", (Str "create")) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("output_update_profile", (jo [
        ("fields", (ja [
          (jo [
            ("active", (Bool true));
            ("name", (Str "consumerLanguage"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "email"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "firstName"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (2.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "lastName"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (3.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "phoneNumber"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (4.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseCode"));
            ("req", (Bool false));
            ("type", (Str "`$INTEGER`"));
            ("index$", (Num (5.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "responseMessage"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (6.))) ]) ]));
        ("name", (Str "output_update_profile"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("active", (Bool true));
                ("args", (jo [
                  ("header", (ja [
                    (jo [
                      ("active", (Bool true));
                      ("kind", (Str "header"));
                      ("name", (Str "authorization"));
                      ("orig", (Str "authorization"));
                      ("reqd", (Bool false));
                      ("type", (Str "`$STRING`")) ]) ])) ]));
                ("kind", (Str "http"));
                ("method", (Str "POST"));
                ("orig", (Str "/updateProfile"));
                ("parts", (ja [
                  (Str "updateProfile") ]));
                ("select", (jo [
                  ("exist", (ja [
                    (Str "authorization") ])) ]));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("index$", (Num (0.))) ]) ]));
            ("key$", (Str "create")) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("version", (jo [
        ("fields", (ja [
          (jo [
            ("active", (Bool true));
            ("name", (Str "appName"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (0.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "buildDate"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (1.))) ]);
          (jo [
            ("active", (Bool true));
            ("name", (Str "version"));
            ("req", (Bool false));
            ("type", (Str "`$STRING`"));
            ("index$", (Num (2.))) ]) ]));
        ("name", (Str "version"));
        ("op", (jo [
          ("load", (jo [
            ("input", (Str "data"));
            ("name", (Str "load"));
            ("points", (ja [
              (jo [
                ("active", (Bool true));
                ("args", (empty_map ()));
                ("kind", (Str "http"));
                ("method", (Str "GET"));
                ("orig", (Str "/version"));
                ("parts", (ja [
                  (Str "version") ]));
                ("select", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ]));
                ("index$", (Num (0.))) ]) ]));
            ("key$", (Str "load")) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ])) ])) ])

let make_feature (name : string) : feature =
  match name with
  | "test" -> test_feature ()
  | _ -> base_feature ()

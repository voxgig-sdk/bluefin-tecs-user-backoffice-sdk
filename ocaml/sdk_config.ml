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
      ("test", (jo [
        ("options", (jo [
          ("active", (Bool false)) ]));
        ("transport", (Str "base")) ])) ]));
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
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("type", (Str "`$STRING`")) ]) ]));
        ("name", (Str "output_activate_digital_module"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("args", (jo [
                  ("header", (ja [
                    (jo [
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
                  ("res", (Str "`body`")) ])) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("output_activate_portal_module", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "clientSecret"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "notificationEmail"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("type", (Str "`$STRING`")) ]) ]));
        ("name", (Str "output_activate_portal_module"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("args", (jo [
                  ("header", (ja [
                    (jo [
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
                  ("res", (Str "`body`")) ])) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("output_activate_store_module", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "responseCode"));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("type", (Str "`$STRING`")) ]) ]));
        ("name", (Str "output_activate_store_module"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("args", (jo [
                  ("header", (ja [
                    (jo [
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
                  ("res", (Str "`body`")) ])) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("output_activate_user", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "consumerUUID"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("type", (Str "`$STRING`")) ]) ]));
        ("name", (Str "output_activate_user"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("args", (jo [
                  ("header", (ja [
                    (jo [
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
                  ("res", (Str "`body`")) ])) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("output_assign_role", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "consumerUUID"));
            ("req", (Bool true));
            ("short", (Str "Unique identifier of the consumer (user) to whom the role(s) will be assigned."));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("short", (Str "Response code: 0 indicates success; any non-zero value indicates an error."));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("short", (Str "A human-readable message providing additional details about the outcome."));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "roles"));
            ("req", (Bool true));
            ("short", (Str "List of roles to assign to the consumer."));
            ("type", (Str "`$ARRAY`")) ]) ]));
        ("name", (Str "output_assign_role"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("args", (jo [
                  ("header", (ja [
                    (jo [
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
                  ("res", (Str "`body`")) ])) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("output_change_logo", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "contentAsBase64"));
            ("req", (Bool true));
            ("short", (Str "The content of the image as base64 encoded string"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "mimeType"));
            ("req", (Bool true));
            ("short", (Str "The MIME type of the image"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("type", (Str "`$STRING`")) ]) ]));
        ("name", (Str "output_change_logo"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("args", (jo [
                  ("header", (ja [
                    (jo [
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
                  ("res", (Str "`body`")) ])) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("output_create_mandator", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "city"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "country"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "dateOfBirth"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "description"));
            ("op", (jo [
              ("create", (jo [
                ("req", (Bool true));
                ("type", (Str "`$STRING`")) ])) ]));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "driversLicenseNumber"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "email"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "firstName"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "identificationNumber"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "lastName"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "login"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "name"));
            ("op", (jo [
              ("create", (jo [
                ("req", (Bool true));
                ("type", (Str "`$STRING`")) ])) ]));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "passportNumber"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "phone"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "salutation"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "state"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "street1"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "street2"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "zipCode"));
            ("type", (Str "`$STRING`")) ]) ]));
        ("name", (Str "output_create_mandator"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("args", (jo [
                  ("header", (ja [
                    (jo [
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
                  ("res", (Str "`body.mandator`")) ])) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("output_create_service_user", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "mandatorName"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("type", (Str "`$STRING`")) ]) ]));
        ("name", (Str "output_create_service_user"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("args", (jo [
                  ("header", (ja [
                    (jo [
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
                  ("res", (Str "`body`")) ])) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("output_deactivate_user", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "consumerUUID"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("type", (Str "`$STRING`")) ]) ]));
        ("name", (Str "output_deactivate_user"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("args", (jo [
                  ("header", (ja [
                    (jo [
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
                  ("res", (Str "`body`")) ])) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("output_get_kyc_document", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "caseID"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "encodedDataBase64"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("type", (Str "`$STRING`")) ]) ]));
        ("name", (Str "output_get_kyc_document"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("args", (jo [
                  ("header", (ja [
                    (jo [
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
                  ("res", (Str "`body`")) ])) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("output_get_logo", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "contentAsBase64"));
            ("req", (Bool true));
            ("short", (Str "The content of the image as base64 encoded string"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "mimeType"));
            ("req", (Bool true));
            ("short", (Str "The MIME type of the image"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("type", (Str "`$STRING`")) ]) ]));
        ("name", (Str "output_get_logo"));
        ("op", (jo [
          ("load", (jo [
            ("input", (Str "data"));
            ("name", (Str "load"));
            ("points", (ja [
              (jo [
                ("args", (jo [
                  ("header", (ja [
                    (jo [
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
                  ("res", (Str "`body`")) ])) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("output_list_of_available_role", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "availableRoles"));
            ("type", (Str "`$ARRAY`")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("type", (Str "`$STRING`")) ]) ]));
        ("name", (Str "output_list_of_available_role"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("args", (jo [
                  ("header", (ja [
                    (jo [
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
                  ("res", (Str "`body`")) ])) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("output_list_of_mandator", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "filter"));
            ("type", (Str "`$OBJECT`")) ]);
          (jo [
            ("name", (Str "list"));
            ("type", (Str "`$ARRAY`")) ]);
          (jo [
            ("name", (Str "pagination"));
            ("type", (Str "`$OBJECT`")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "sorting"));
            ("type", (Str "`$OBJECT`")) ]) ]));
        ("name", (Str "output_list_of_mandator"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("args", (jo [
                  ("header", (ja [
                    (jo [
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
                  ("res", (Str "`body`")) ])) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("output_list_of_module", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "list"));
            ("type", (Str "`$ARRAY`")) ]);
          (jo [
            ("name", (Str "pagination"));
            ("type", (Str "`$OBJECT`")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("type", (Str "`$STRING`")) ]) ]));
        ("name", (Str "output_list_of_module"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("args", (jo [
                  ("header", (ja [
                    (jo [
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
                  ("res", (Str "`body`")) ])) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("output_list_of_role_group", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "filter"));
            ("type", (Str "`$OBJECT`")) ]);
          (jo [
            ("name", (Str "groupRoles"));
            ("type", (Str "`$ARRAY`")) ]);
          (jo [
            ("name", (Str "pagination"));
            ("type", (Str "`$OBJECT`")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "sorting"));
            ("type", (Str "`$OBJECT`")) ]) ]));
        ("name", (Str "output_list_of_role_group"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("args", (jo [
                  ("header", (ja [
                    (jo [
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
                  ("res", (Str "`body`")) ])) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("output_list_of_transactions_history", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "filter"));
            ("type", (Str "`$OBJECT`")) ]);
          (jo [
            ("name", (Str "list"));
            ("type", (Str "`$ARRAY`")) ]);
          (jo [
            ("name", (Str "pagination"));
            ("type", (Str "`$OBJECT`")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "sorting"));
            ("type", (Str "`$OBJECT`")) ]) ]));
        ("name", (Str "output_list_of_transactions_history"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("args", (jo [
                  ("header", (ja [
                    (jo [
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
                  ("res", (Str "`body`")) ])) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("output_list_of_user", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "filter"));
            ("type", (Str "`$OBJECT`")) ]);
          (jo [
            ("name", (Str "list"));
            ("type", (Str "`$ARRAY`")) ]);
          (jo [
            ("name", (Str "pagination"));
            ("type", (Str "`$OBJECT`")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "sorting"));
            ("type", (Str "`$OBJECT`")) ]) ]));
        ("name", (Str "output_list_of_user"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("args", (jo [
                  ("header", (ja [
                    (jo [
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
                  ("res", (Str "`body`")) ])) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("output_provide_credential", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "mandatorName"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "password"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "username"));
            ("type", (Str "`$STRING`")) ]) ]));
        ("name", (Str "output_provide_credential"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("args", (jo [
                  ("header", (ja [
                    (jo [
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
                  ("res", (Str "`body`")) ])) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("output_register_user", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "city"));
            ("short", (Str "City where the user resides."));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "consumerId"));
            ("short", (Str "User login or unique user identifier."));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "consumerLanguage"));
            ("short", (Str "Preferred language for the user (e.g., 'en')."));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "country"));
            ("short", (Str "User's country."));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "dateOfBirth"));
            ("short", (Str "User's date of birth (expected format: dd.MM.yyyy)."));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "driverLicenceNumber"));
            ("short", (Str "User's driver's license number."));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "email"));
            ("req", (Bool true));
            ("short", (Str "User's email address (must be unique)."));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "firstName"));
            ("short", (Str "User's first name."));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "identificationNumber"));
            ("short", (Str "User's identification number."));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "lastName"));
            ("short", (Str "User's last name."));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "login"));
            ("short", (Str "User login identifier (should be unique)."));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "module"));
            ("short", (Str "Module identifier (if applicable)."));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "passportNumber"));
            ("short", (Str "User's passport number."));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "phone"));
            ("short", (Str "User's phone number."));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("short", (Str "Response code (0 indicates success; non-zero indicates an error)."));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("short", (Str "Human-readable response message."));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "salutation"));
            ("short", (Str "User's salutation (e.g., Mr., Ms.)."));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "state"));
            ("short", (Str "User's state or region."));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "street1"));
            ("short", (Str "Primary address line."));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "street2"));
            ("short", (Str "Secondary address line."));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "zip"));
            ("short", (Str "Postal code."));
            ("type", (Str "`$STRING`")) ]) ]));
        ("name", (Str "output_register_user"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("args", (jo [
                  ("header", (ja [
                    (jo [
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
                  ("res", (Str "`body`")) ])) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("output_remove_role", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "consumerUUID"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "roles"));
            ("type", (Str "`$ARRAY`")) ]) ]));
        ("name", (Str "output_remove_role"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("args", (jo [
                  ("header", (ja [
                    (jo [
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
                  ("res", (Str "`body`")) ])) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("output_resend_link", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "businessRegistrationNumber"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "consumerUUID"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "emailConfirmationCode"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "phoneNumber"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("type", (Str "`$STRING`")) ]) ]));
        ("name", (Str "output_resend_link"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("args", (jo [
                  ("header", (ja [
                    (jo [
                      ("kind", (Str "header"));
                      ("name", (Str "authorization"));
                      ("orig", (Str "authorization"));
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
                  ("res", (Str "`body`")) ])) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("output_reset_password", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "consumerUuid"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "phoneNumber"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("type", (Str "`$STRING`")) ]) ]));
        ("name", (Str "output_reset_password"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("args", (jo [
                  ("header", (ja [
                    (jo [
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
                  ("res", (Str "`body`")) ])) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("output_update_consumer", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "city"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "consumerUuid"));
            ("req", (Bool true));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "consumerlanguage"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "country"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "dateOfBirth"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "datetime_created"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "driverLicenceNumber"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "email"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "firstName"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "identificationNumber"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "kycPassed"));
            ("type", (Str "`$BOOLEAN`")) ]);
          (jo [
            ("name", (Str "lastName"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "nationality"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "passportNumber"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "phoneNumber"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "placeOfBirth"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "state"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "street1"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "street2"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "transactionhistory_id"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "zip"));
            ("type", (Str "`$STRING`")) ]) ]));
        ("name", (Str "output_update_consumer"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("args", (jo [
                  ("header", (ja [
                    (jo [
                      ("kind", (Str "header"));
                      ("name", (Str "authorization"));
                      ("orig", (Str "authorization"));
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
                  ("res", (Str "`body`")) ])) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("output_update_profile", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "consumerLanguage"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "email"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "firstName"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "lastName"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "phoneNumber"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "responseCode"));
            ("type", (Str "`$INTEGER`")) ]);
          (jo [
            ("name", (Str "responseMessage"));
            ("type", (Str "`$STRING`")) ]) ]));
        ("name", (Str "output_update_profile"));
        ("op", (jo [
          ("create", (jo [
            ("input", (Str "data"));
            ("name", (Str "create"));
            ("points", (ja [
              (jo [
                ("args", (jo [
                  ("header", (ja [
                    (jo [
                      ("kind", (Str "header"));
                      ("name", (Str "authorization"));
                      ("orig", (Str "authorization"));
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
                  ("res", (Str "`body`")) ])) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ]));
      ("version", (jo [
        ("fields", (ja [
          (jo [
            ("name", (Str "appName"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "buildDate"));
            ("type", (Str "`$STRING`")) ]);
          (jo [
            ("name", (Str "version"));
            ("type", (Str "`$STRING`")) ]) ]));
        ("name", (Str "version"));
        ("op", (jo [
          ("load", (jo [
            ("input", (Str "data"));
            ("name", (Str "load"));
            ("points", (ja [
              (jo [
                ("args", (empty_map ()));
                ("kind", (Str "http"));
                ("method", (Str "GET"));
                ("orig", (Str "/version"));
                ("parts", (ja [
                  (Str "version") ]));
                ("select", (empty_map ()));
                ("transform", (jo [
                  ("req", (Str "`reqdata`"));
                  ("res", (Str "`body`")) ])) ]) ])) ])) ]));
        ("relations", (jo [
          ("ancestors", (empty_list ())) ])) ])) ])) ])

let make_feature (name : string) : feature =
  match name with
  | "test" -> test_feature ()
  | _ -> base_feature ()

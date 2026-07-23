(* Generated output_create_service_user entity test. *)

open Voxgig_struct
open Sdk_types
open Sdk_helpers
open Testutil

let () =
  test "output_create_service_user.entity_instance" (fun () ->
      let client = Sdk_client.test () in
      let ent = Sdk_client.output_create_service_user client Noval in
      check_str "name" ent.e_name "output_create_service_user")

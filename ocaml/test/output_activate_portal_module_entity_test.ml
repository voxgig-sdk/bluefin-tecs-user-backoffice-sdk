(* Generated output_activate_portal_module entity test. *)

open Voxgig_struct
open Sdk_types
open Sdk_helpers
open Testutil

let () =
  test "output_activate_portal_module.entity_instance" (fun () ->
      let client = Sdk_client.test () in
      let ent = Sdk_client.output_activate_portal_module client Noval in
      check_str "name" ent.e_name "output_activate_portal_module")

(* Generated output_list_of_user entity test. *)

open Voxgig_struct
open Sdk_types
open Sdk_helpers
open Testutil

let () =
  test "output_list_of_user.entity_instance" (fun () ->
      let client = Sdk_client.test () in
      let ent = Sdk_client.output_list_of_user client Noval in
      check_str "name" ent.e_name "output_list_of_user")

(* Generated output_resend_link entity test. *)

open Voxgig_struct
open Sdk_types
open Sdk_helpers
open Testutil

let () =
  test "output_resend_link.entity_instance" (fun () ->
      let client = Sdk_client.test () in
      let ent = Sdk_client.output_resend_link client Noval in
      check_str "name" ent.e_name "output_resend_link")

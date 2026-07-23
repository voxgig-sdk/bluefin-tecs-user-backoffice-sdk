(* Generated output_get_logo entity test. *)

open Voxgig_struct
open Sdk_types
open Sdk_helpers
open Testutil

let () =
  test "output_get_logo.entity_instance" (fun () ->
      let client = Sdk_client.test () in
      let ent = Sdk_client.output_get_logo client Noval in
      check_str "name" ent.e_name "output_get_logo")

let () =
  test "output_get_logo.seeded_ops" (fun () ->
      let record = jo [("id", Str "output_get_logo01")] in
      let seed = jo [("output_get_logo",
                      jo [("output_get_logo01", record)])] in
      let client = Sdk_client.test_with (jo [("entity", seed)]) Noval in
      let ent = Sdk_client.output_get_logo client Noval in
      ignore ent;
      let loaded = ent.e_load (jo [("id", Str "output_get_logo01")]) Noval in
      check "load is a map" (ismap loaded);
      ())

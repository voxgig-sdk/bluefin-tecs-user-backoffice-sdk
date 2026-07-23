(* Generated version entity test. *)

open Voxgig_struct
open Sdk_types
open Sdk_helpers
open Testutil

let () =
  test "version.entity_instance" (fun () ->
      let client = Sdk_client.test () in
      let ent = Sdk_client.version client Noval in
      check_str "name" ent.e_name "version")

let () =
  test "version.seeded_ops" (fun () ->
      let record = jo [("id", Str "version01")] in
      let seed = jo [("version",
                      jo [("version01", record)])] in
      let client = Sdk_client.test_with (jo [("entity", seed)]) Noval in
      let ent = Sdk_client.version client Noval in
      ignore ent;
      let loaded = ent.e_load (jo [("id", Str "version01")]) Noval in
      check "load is a map" (ismap loaded);
      ())

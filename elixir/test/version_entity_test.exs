# Version entity test (offline, mock transport)

defmodule BluefinTecsUserBackoffice.VersionEntityTest do
  use ExUnit.Case

  alias Voxgig.Struct, as: S
  alias BluefinTecsUserBackoffice.Helpers, as: H
  alias BluefinTecsUserBackoffice.Json

  defp fixture do
    Json.parse(File.read!("../.sdk/test/entity/version/VersionTestData.json"))
  end

  defp mk_sdk do
    existing = H.or_(S.getpath(fixture(), "existing"), S.jm([]))
    BluefinTecsUserBackoffice.test(S.jm(["entity", existing]))
  end

  defp first_id do
    existing = H.or_(S.getpath(fixture(), "existing.version"), S.jm([]))
    keys = S.keysof(existing)
    if keys == [], do: nil, else: hd(keys)
  end

  test "should create instance" do
    sdk = BluefinTecsUserBackoffice.test()
    ent = BluefinTecsUserBackoffice.version(sdk)
    assert ent != nil
  end

  test "should load an existing record" do
    id = first_id()

    if id != nil do
      sdk = mk_sdk()
      ent = BluefinTecsUserBackoffice.version(sdk)
      rec = BluefinTecsUserBackoffice.Entity.Version.load(ent, S.jm(["id", id]))
      assert S.ismap(rec)
      assert S.getprop(rec, "id") == id
    end
  end
end

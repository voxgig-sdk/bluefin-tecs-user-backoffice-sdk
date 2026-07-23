# OutputProvideCredential entity test (offline, mock transport)

defmodule BluefinTecsUserBackoffice.OutputProvideCredentialEntityTest do
  use ExUnit.Case

  alias Voxgig.Struct, as: S
  alias BluefinTecsUserBackoffice.Helpers, as: H
  alias BluefinTecsUserBackoffice.Json

  defp fixture do
    Json.parse(File.read!("../.sdk/test/entity/output_provide_credential/OutputProvideCredentialTestData.json"))
  end

  defp mk_sdk do
    existing = H.or_(S.getpath(fixture(), "existing"), S.jm([]))
    BluefinTecsUserBackoffice.test(S.jm(["entity", existing]))
  end

  defp first_id do
    existing = H.or_(S.getpath(fixture(), "existing.output_provide_credential"), S.jm([]))
    keys = S.keysof(existing)
    if keys == [], do: nil, else: hd(keys)
  end

  test "should create instance" do
    sdk = BluefinTecsUserBackoffice.test()
    ent = BluefinTecsUserBackoffice.output_provide_credential(sdk)
    assert ent != nil
  end

  test "should create then read back" do
    sdk = BluefinTecsUserBackoffice.test(S.jm(["entity", S.jm(["output_provide_credential", S.jm([])])]))
    ent = BluefinTecsUserBackoffice.output_provide_credential(sdk)
    made = BluefinTecsUserBackoffice.Entity.OutputProvideCredential.create(ent, S.jm(["name", "test-create"]))
    assert S.ismap(made)
    assert S.getprop(made, "id") != nil
  end
end

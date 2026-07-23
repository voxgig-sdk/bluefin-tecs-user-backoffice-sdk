# OutputResendLink entity test (offline, mock transport)

defmodule BluefinTecsUserBackoffice.OutputResendLinkEntityTest do
  use ExUnit.Case

  alias Voxgig.Struct, as: S
  alias BluefinTecsUserBackoffice.Helpers, as: H
  alias BluefinTecsUserBackoffice.Json

  defp fixture do
    Json.parse(File.read!("../.sdk/test/entity/output_resend_link/OutputResendLinkTestData.json"))
  end

  defp mk_sdk do
    existing = H.or_(S.getpath(fixture(), "existing"), S.jm([]))
    BluefinTecsUserBackoffice.test(S.jm(["entity", existing]))
  end

  defp first_id do
    existing = H.or_(S.getpath(fixture(), "existing.output_resend_link"), S.jm([]))
    keys = S.keysof(existing)
    if keys == [], do: nil, else: hd(keys)
  end

  test "should create instance" do
    sdk = BluefinTecsUserBackoffice.test()
    ent = BluefinTecsUserBackoffice.output_resend_link(sdk)
    assert ent != nil
  end

  test "should create then read back" do
    sdk = BluefinTecsUserBackoffice.test(S.jm(["entity", S.jm(["output_resend_link", S.jm([])])]))
    ent = BluefinTecsUserBackoffice.output_resend_link(sdk)
    made = BluefinTecsUserBackoffice.Entity.OutputResendLink.create(ent, S.jm(["name", "test-create"]))
    assert S.ismap(made)
    assert S.getprop(made, "id") != nil
  end
end

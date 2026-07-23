defmodule BluefinTecsUserBackoffice.ExistsTest do
  use ExUnit.Case

  test "should create test sdk" do
    testsdk = BluefinTecsUserBackoffice.test()
    assert testsdk != nil
  end
end

-- BluefinTecsUserBackoffice SDK exists test

local sdk = require("bluefin-tecs-user-backoffice_sdk")

describe("BluefinTecsUserBackofficeSDK", function()
  it("should create test SDK", function()
    local testsdk = sdk.test(nil, nil)
    assert.is_not_nil(testsdk)
  end)
end)

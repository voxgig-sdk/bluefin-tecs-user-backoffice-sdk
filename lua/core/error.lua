-- BluefinTecsUserBackoffice SDK error

local BluefinTecsUserBackofficeError = {}
BluefinTecsUserBackofficeError.__index = BluefinTecsUserBackofficeError


function BluefinTecsUserBackofficeError.new(code, msg, ctx)
  local self = setmetatable({}, BluefinTecsUserBackofficeError)
  self.is_sdk_error = true
  self.sdk = "BluefinTecsUserBackoffice"
  self.code = code or ""
  self.msg = msg or ""
  self.ctx = ctx
  self.result = nil
  self.spec = nil
  return self
end


function BluefinTecsUserBackofficeError:error()
  return self.msg
end


function BluefinTecsUserBackofficeError:__tostring()
  return self.msg
end


return BluefinTecsUserBackofficeError

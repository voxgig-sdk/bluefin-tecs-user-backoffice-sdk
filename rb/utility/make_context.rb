# BluefinTecsUserBackoffice SDK utility: make_context
require_relative '../core/context'
module BluefinTecsUserBackofficeUtilities
  MakeContext = ->(ctxmap, basectx) {
    BluefinTecsUserBackofficeContext.new(ctxmap, basectx)
  }
end

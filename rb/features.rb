# BluefinTecsUserBackoffice SDK feature factory

require_relative 'feature/base_feature'
require_relative 'feature/test_feature'


module BluefinTecsUserBackofficeFeatures
  def self.make_feature(name)
    case name
    when "base"
      BluefinTecsUserBackofficeBaseFeature.new
    when "test"
      BluefinTecsUserBackofficeTestFeature.new
    else
      BluefinTecsUserBackofficeBaseFeature.new
    end
  end
end

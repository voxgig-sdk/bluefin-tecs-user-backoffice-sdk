# BluefinTecsUserBackoffice SDK feature factory

defmodule BluefinTecsUserBackoffice.Features do
  def make_feature(name) do
    case name do
      "test" -> BluefinTecsUserBackoffice.Feature.Test.new()
      _ -> BluefinTecsUserBackoffice.Feature.new()
    end
  end
end

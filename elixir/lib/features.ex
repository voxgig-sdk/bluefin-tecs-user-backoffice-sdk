# BluefinTecsUserBackoffice SDK feature factory

defmodule BluefinTecsUserBackoffice.Features do
  def make_feature(name) do
    case name do
      "audit" -> BluefinTecsUserBackoffice.Feature.Audit.new()
      "clienttrack" -> BluefinTecsUserBackoffice.Feature.Clienttrack.new()
      "debug" -> BluefinTecsUserBackoffice.Feature.Debug.new()
      "idempotency" -> BluefinTecsUserBackoffice.Feature.Idempotency.new()
      "log" -> BluefinTecsUserBackoffice.Feature.Log.new()
      "metrics" -> BluefinTecsUserBackoffice.Feature.Metrics.new()
      "paging" -> BluefinTecsUserBackoffice.Feature.Paging.new()
      "ratelimit" -> BluefinTecsUserBackoffice.Feature.Ratelimit.new()
      "retry" -> BluefinTecsUserBackoffice.Feature.Retry.new()
      "telemetry" -> BluefinTecsUserBackoffice.Feature.Telemetry.new()
      "test" -> BluefinTecsUserBackoffice.Feature.Test.new()
      "timeout" -> BluefinTecsUserBackoffice.Feature.Timeout.new()
      _ -> BluefinTecsUserBackoffice.Feature.new()
    end
  end
end

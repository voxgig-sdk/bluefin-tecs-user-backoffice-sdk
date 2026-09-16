# BluefinTecsUserBackoffice SDK feature factory

require_relative 'feature/base_feature'
require_relative 'feature/audit_feature'
require_relative 'feature/clienttrack_feature'
require_relative 'feature/debug_feature'
require_relative 'feature/idempotency_feature'
require_relative 'feature/log_feature'
require_relative 'feature/metrics_feature'
require_relative 'feature/paging_feature'
require_relative 'feature/ratelimit_feature'
require_relative 'feature/retry_feature'
require_relative 'feature/telemetry_feature'
require_relative 'feature/test_feature'
require_relative 'feature/timeout_feature'


module BluefinTecsUserBackofficeFeatures
  def self.make_feature(name)
    case name
    when "base"
      BluefinTecsUserBackofficeBaseFeature.new
    when "audit"
      BluefinTecsUserBackofficeAuditFeature.new
    when "clienttrack"
      BluefinTecsUserBackofficeClienttrackFeature.new
    when "debug"
      BluefinTecsUserBackofficeDebugFeature.new
    when "idempotency"
      BluefinTecsUserBackofficeIdempotencyFeature.new
    when "log"
      BluefinTecsUserBackofficeLogFeature.new
    when "metrics"
      BluefinTecsUserBackofficeMetricsFeature.new
    when "paging"
      BluefinTecsUserBackofficePagingFeature.new
    when "ratelimit"
      BluefinTecsUserBackofficeRatelimitFeature.new
    when "retry"
      BluefinTecsUserBackofficeRetryFeature.new
    when "telemetry"
      BluefinTecsUserBackofficeTelemetryFeature.new
    when "test"
      BluefinTecsUserBackofficeTestFeature.new
    when "timeout"
      BluefinTecsUserBackofficeTimeoutFeature.new
    else
      BluefinTecsUserBackofficeBaseFeature.new
    end
  end
end

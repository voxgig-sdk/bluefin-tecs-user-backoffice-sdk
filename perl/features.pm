# BluefinTecsUserBackoffice SDK feature factory

use strict;
use warnings;

use File::Basename ();
use Cwd ();

my $__dir;
BEGIN { $__dir = File::Basename::dirname(Cwd::abs_path(__FILE__)) }
require(Cwd::abs_path("$__dir/feature/base_feature.pm"));
require(Cwd::abs_path("$__dir/feature/audit_feature.pm"));
require(Cwd::abs_path("$__dir/feature/clienttrack_feature.pm"));
require(Cwd::abs_path("$__dir/feature/debug_feature.pm"));
require(Cwd::abs_path("$__dir/feature/idempotency_feature.pm"));
require(Cwd::abs_path("$__dir/feature/log_feature.pm"));
require(Cwd::abs_path("$__dir/feature/metrics_feature.pm"));
require(Cwd::abs_path("$__dir/feature/paging_feature.pm"));
require(Cwd::abs_path("$__dir/feature/ratelimit_feature.pm"));
require(Cwd::abs_path("$__dir/feature/retry_feature.pm"));
require(Cwd::abs_path("$__dir/feature/telemetry_feature.pm"));
require(Cwd::abs_path("$__dir/feature/test_feature.pm"));
require(Cwd::abs_path("$__dir/feature/timeout_feature.pm"));

package BluefinTecsUserBackofficeFeatures;

sub make_feature {
  my ($name) = @_;
  $name = '' unless defined $name;
  return BluefinTecsUserBackofficeBaseFeature->new if 'base' eq $name;
  return BluefinTecsUserBackofficeAuditFeature->new if 'audit' eq $name;
  return BluefinTecsUserBackofficeClienttrackFeature->new if 'clienttrack' eq $name;
  return BluefinTecsUserBackofficeDebugFeature->new if 'debug' eq $name;
  return BluefinTecsUserBackofficeIdempotencyFeature->new if 'idempotency' eq $name;
  return BluefinTecsUserBackofficeLogFeature->new if 'log' eq $name;
  return BluefinTecsUserBackofficeMetricsFeature->new if 'metrics' eq $name;
  return BluefinTecsUserBackofficePagingFeature->new if 'paging' eq $name;
  return BluefinTecsUserBackofficeRatelimitFeature->new if 'ratelimit' eq $name;
  return BluefinTecsUserBackofficeRetryFeature->new if 'retry' eq $name;
  return BluefinTecsUserBackofficeTelemetryFeature->new if 'telemetry' eq $name;
  return BluefinTecsUserBackofficeTestFeature->new if 'test' eq $name;
  return BluefinTecsUserBackofficeTimeoutFeature->new if 'timeout' eq $name;
  return BluefinTecsUserBackofficeBaseFeature->new;
}

1;

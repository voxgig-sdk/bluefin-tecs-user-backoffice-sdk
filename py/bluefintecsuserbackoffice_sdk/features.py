# BluefinTecsUserBackoffice SDK feature factory

from bluefintecsuserbackoffice_sdk.feature.base_feature import BluefinTecsUserBackofficeBaseFeature
from bluefintecsuserbackoffice_sdk.feature.audit_feature import BluefinTecsUserBackofficeAuditFeature
from bluefintecsuserbackoffice_sdk.feature.clienttrack_feature import BluefinTecsUserBackofficeClienttrackFeature
from bluefintecsuserbackoffice_sdk.feature.idempotency_feature import BluefinTecsUserBackofficeIdempotencyFeature
from bluefintecsuserbackoffice_sdk.feature.log_feature import BluefinTecsUserBackofficeLogFeature
from bluefintecsuserbackoffice_sdk.feature.metrics_feature import BluefinTecsUserBackofficeMetricsFeature
from bluefintecsuserbackoffice_sdk.feature.paging_feature import BluefinTecsUserBackofficePagingFeature
from bluefintecsuserbackoffice_sdk.feature.ratelimit_feature import BluefinTecsUserBackofficeRatelimitFeature
from bluefintecsuserbackoffice_sdk.feature.retry_feature import BluefinTecsUserBackofficeRetryFeature
from bluefintecsuserbackoffice_sdk.feature.telemetry_feature import BluefinTecsUserBackofficeTelemetryFeature
from bluefintecsuserbackoffice_sdk.feature.test_feature import BluefinTecsUserBackofficeTestFeature
from bluefintecsuserbackoffice_sdk.feature.timeout_feature import BluefinTecsUserBackofficeTimeoutFeature


_FEATURES = {
    "base": lambda: BluefinTecsUserBackofficeBaseFeature(),
    "audit": lambda: BluefinTecsUserBackofficeAuditFeature(),
    "clienttrack": lambda: BluefinTecsUserBackofficeClienttrackFeature(),
    "idempotency": lambda: BluefinTecsUserBackofficeIdempotencyFeature(),
    "log": lambda: BluefinTecsUserBackofficeLogFeature(),
    "metrics": lambda: BluefinTecsUserBackofficeMetricsFeature(),
    "paging": lambda: BluefinTecsUserBackofficePagingFeature(),
    "ratelimit": lambda: BluefinTecsUserBackofficeRatelimitFeature(),
    "retry": lambda: BluefinTecsUserBackofficeRetryFeature(),
    "telemetry": lambda: BluefinTecsUserBackofficeTelemetryFeature(),
    "test": lambda: BluefinTecsUserBackofficeTestFeature(),
    "timeout": lambda: BluefinTecsUserBackofficeTimeoutFeature(),
}


def _make_feature(name):
    factory = _FEATURES.get(name)
    if factory is not None:
        return factory()
    return _FEATURES["base"]()


# True when this SDK was generated with the named feature class - the
# constructor's tolerance for extend-carried features reads this (an
# active name with no generated class must not become a BaseFeature
# stray when an extend instance carries it).
def _has_feature(name):
    return name in _FEATURES

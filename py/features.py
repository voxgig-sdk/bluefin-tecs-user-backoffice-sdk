# BluefinTecsUserBackoffice SDK feature factory

from feature.base_feature import BluefinTecsUserBackofficeBaseFeature
from feature.test_feature import BluefinTecsUserBackofficeTestFeature


def _make_feature(name):
    features = {
        "base": lambda: BluefinTecsUserBackofficeBaseFeature(),
        "test": lambda: BluefinTecsUserBackofficeTestFeature(),
    }
    factory = features.get(name)
    if factory is not None:
        return factory()
    return features["base"]()

# ProjectName SDK exists test

import pytest
from bluefintecsuserbackoffice_sdk import BluefinTecsUserBackofficeSDK


class TestExists:

    def test_should_create_test_sdk(self):
        testsdk = BluefinTecsUserBackofficeSDK.test(None, None)
        assert testsdk is not None

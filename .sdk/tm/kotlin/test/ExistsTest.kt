package KOTLINPACKAGE.sdktest

import org.junit.jupiter.api.Assertions.assertNotNull
import org.junit.jupiter.api.Test

import KOTLINPACKAGE.core.BluefinTecsUserBackofficeSDK

class ExistsTest {

  @Test
  fun testMode() {
    val testsdk = BluefinTecsUserBackofficeSDK.testSDK()
    assertNotNull(testsdk, "expected non-nil SDK")
  }
}

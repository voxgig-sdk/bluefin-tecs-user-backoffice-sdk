package JAVAPACKAGE.sdktest;

import static org.junit.jupiter.api.Assertions.assertNotNull;

import org.junit.jupiter.api.Test;

import JAVAPACKAGE.core.BluefinTecsUserBackofficeSDK;

public class ExistsTest {

  @Test
  public void testMode() {
    BluefinTecsUserBackofficeSDK testsdk = BluefinTecsUserBackofficeSDK.testSDK();
    assertNotNull(testsdk, "expected non-nil SDK");
  }
}

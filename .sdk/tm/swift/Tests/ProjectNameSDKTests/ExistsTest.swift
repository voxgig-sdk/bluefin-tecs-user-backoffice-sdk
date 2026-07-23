// BluefinTecsUserBackoffice SDK exists test.

import XCTest

@testable import BluefinTecsUserBackofficeSdk

final class ExistsTest: XCTestCase {
  func testMode() {
    let testsdk = BluefinTecsUserBackofficeSDK.testSDK(nil, nil)
    XCTAssertEqual(testsdk.mode, "test")
  }
}

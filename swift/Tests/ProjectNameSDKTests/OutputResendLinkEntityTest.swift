// output_resend_link entity test (generated from the API model).

import XCTest

@testable import BluefinTecsUserBackofficeSdk

final class OutputResendLinkEntityTest: XCTestCase {
  func testInstance() {
    let sdk = BluefinTecsUserBackofficeSDK.testSDK(nil, nil)
    let ent = sdk.OutputResendLink()
    XCTAssertEqual(ent.getName(), "output_resend_link")
  }
}

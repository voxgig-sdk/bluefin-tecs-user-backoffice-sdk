// output_reset_password entity test (generated from the API model).

import XCTest

@testable import BluefinTecsUserBackofficeSdk

final class OutputResetPasswordEntityTest: XCTestCase {
  func testInstance() {
    let sdk = BluefinTecsUserBackofficeSDK.testSDK(nil, nil)
    let ent = sdk.OutputResetPassword()
    XCTAssertEqual(ent.getName(), "output_reset_password")
  }
}

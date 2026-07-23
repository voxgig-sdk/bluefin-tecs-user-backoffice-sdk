// output_activate_user entity test (generated from the API model).

import XCTest

@testable import BluefinTecsUserBackofficeSdk

final class OutputActivateUserEntityTest: XCTestCase {
  func testInstance() {
    let sdk = BluefinTecsUserBackofficeSDK.testSDK(nil, nil)
    let ent = sdk.OutputActivateUser()
    XCTAssertEqual(ent.getName(), "output_activate_user")
  }
}

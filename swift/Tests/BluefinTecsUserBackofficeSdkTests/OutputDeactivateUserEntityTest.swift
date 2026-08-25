// output_deactivate_user entity test (generated from the API model).

import XCTest

@testable import BluefinTecsUserBackofficeSdk

final class OutputDeactivateUserEntityTest: XCTestCase {
  func testInstance() {
    let sdk = BluefinTecsUserBackofficeSDK.testSDK(nil, nil)
    let ent = sdk.OutputDeactivateUser()
    XCTAssertEqual(ent.getName(), "output_deactivate_user")
  }
}

// output_remove_role entity test (generated from the API model).

import XCTest

@testable import BluefinTecsUserBackofficeSdk

final class OutputRemoveRoleEntityTest: XCTestCase {
  func testInstance() {
    let sdk = BluefinTecsUserBackofficeSDK.testSDK(nil, nil)
    let ent = sdk.OutputRemoveRole()
    XCTAssertEqual(ent.getName(), "output_remove_role")
  }
}

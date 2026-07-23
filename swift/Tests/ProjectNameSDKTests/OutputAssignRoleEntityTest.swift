// output_assign_role entity test (generated from the API model).

import XCTest

@testable import BluefinTecsUserBackofficeSdk

final class OutputAssignRoleEntityTest: XCTestCase {
  func testInstance() {
    let sdk = BluefinTecsUserBackofficeSDK.testSDK(nil, nil)
    let ent = sdk.OutputAssignRole()
    XCTAssertEqual(ent.getName(), "output_assign_role")
  }
}

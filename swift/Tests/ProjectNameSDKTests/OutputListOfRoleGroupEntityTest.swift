// output_list_of_role_group entity test (generated from the API model).

import XCTest

@testable import BluefinTecsUserBackofficeSdk

final class OutputListOfRoleGroupEntityTest: XCTestCase {
  func testInstance() {
    let sdk = BluefinTecsUserBackofficeSDK.testSDK(nil, nil)
    let ent = sdk.OutputListOfRoleGroup()
    XCTAssertEqual(ent.getName(), "output_list_of_role_group")
  }
}

// output_list_of_available_role entity test (generated from the API model).

import XCTest

@testable import BluefinTecsUserBackofficeSdk

final class OutputListOfAvailableRoleEntityTest: XCTestCase {
  func testInstance() {
    let sdk = BluefinTecsUserBackofficeSDK.testSDK(nil, nil)
    let ent = sdk.OutputListOfAvailableRole()
    XCTAssertEqual(ent.getName(), "output_list_of_available_role")
  }
}

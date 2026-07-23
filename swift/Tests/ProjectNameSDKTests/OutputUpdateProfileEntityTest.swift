// output_update_profile entity test (generated from the API model).

import XCTest

@testable import BluefinTecsUserBackofficeSdk

final class OutputUpdateProfileEntityTest: XCTestCase {
  func testInstance() {
    let sdk = BluefinTecsUserBackofficeSDK.testSDK(nil, nil)
    let ent = sdk.OutputUpdateProfile()
    XCTAssertEqual(ent.getName(), "output_update_profile")
  }
}

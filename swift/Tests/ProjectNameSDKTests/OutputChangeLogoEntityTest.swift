// output_change_logo entity test (generated from the API model).

import XCTest

@testable import BluefinTecsUserBackofficeSdk

final class OutputChangeLogoEntityTest: XCTestCase {
  func testInstance() {
    let sdk = BluefinTecsUserBackofficeSDK.testSDK(nil, nil)
    let ent = sdk.OutputChangeLogo()
    XCTAssertEqual(ent.getName(), "output_change_logo")
  }
}

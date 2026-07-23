// output_activate_portal_module entity test (generated from the API model).

import XCTest

@testable import BluefinTecsUserBackofficeSdk

final class OutputActivatePortalModuleEntityTest: XCTestCase {
  func testInstance() {
    let sdk = BluefinTecsUserBackofficeSDK.testSDK(nil, nil)
    let ent = sdk.OutputActivatePortalModule()
    XCTAssertEqual(ent.getName(), "output_activate_portal_module")
  }
}

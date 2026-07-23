// output_activate_digital_module entity test (generated from the API model).

import XCTest

@testable import BluefinTecsUserBackofficeSdk

final class OutputActivateDigitalModuleEntityTest: XCTestCase {
  func testInstance() {
    let sdk = BluefinTecsUserBackofficeSDK.testSDK(nil, nil)
    let ent = sdk.OutputActivateDigitalModule()
    XCTAssertEqual(ent.getName(), "output_activate_digital_module")
  }
}

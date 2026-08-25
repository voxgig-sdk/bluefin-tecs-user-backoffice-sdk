// output_activate_store_module entity test (generated from the API model).

import XCTest

@testable import BluefinTecsUserBackofficeSdk

final class OutputActivateStoreModuleEntityTest: XCTestCase {
  func testInstance() {
    let sdk = BluefinTecsUserBackofficeSDK.testSDK(nil, nil)
    let ent = sdk.OutputActivateStoreModule()
    XCTAssertEqual(ent.getName(), "output_activate_store_module")
  }
}

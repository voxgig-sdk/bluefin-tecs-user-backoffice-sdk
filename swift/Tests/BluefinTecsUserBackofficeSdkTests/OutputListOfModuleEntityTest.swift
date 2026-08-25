// output_list_of_module entity test (generated from the API model).

import XCTest

@testable import BluefinTecsUserBackofficeSdk

final class OutputListOfModuleEntityTest: XCTestCase {
  func testInstance() {
    let sdk = BluefinTecsUserBackofficeSDK.testSDK(nil, nil)
    let ent = sdk.OutputListOfModule()
    XCTAssertEqual(ent.getName(), "output_list_of_module")
  }
}

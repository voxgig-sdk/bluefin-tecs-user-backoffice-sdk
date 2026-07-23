// output_create_mandator entity test (generated from the API model).

import XCTest

@testable import BluefinTecsUserBackofficeSdk

final class OutputCreateMandatorEntityTest: XCTestCase {
  func testInstance() {
    let sdk = BluefinTecsUserBackofficeSDK.testSDK(nil, nil)
    let ent = sdk.OutputCreateMandator()
    XCTAssertEqual(ent.getName(), "output_create_mandator")
  }
}

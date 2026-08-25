// output_list_of_mandator entity test (generated from the API model).

import XCTest

@testable import BluefinTecsUserBackofficeSdk

final class OutputListOfMandatorEntityTest: XCTestCase {
  func testInstance() {
    let sdk = BluefinTecsUserBackofficeSDK.testSDK(nil, nil)
    let ent = sdk.OutputListOfMandator()
    XCTAssertEqual(ent.getName(), "output_list_of_mandator")
  }
}

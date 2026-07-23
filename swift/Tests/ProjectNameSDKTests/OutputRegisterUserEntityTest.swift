// output_register_user entity test (generated from the API model).

import XCTest

@testable import BluefinTecsUserBackofficeSdk

final class OutputRegisterUserEntityTest: XCTestCase {
  func testInstance() {
    let sdk = BluefinTecsUserBackofficeSDK.testSDK(nil, nil)
    let ent = sdk.OutputRegisterUser()
    XCTAssertEqual(ent.getName(), "output_register_user")
  }
}

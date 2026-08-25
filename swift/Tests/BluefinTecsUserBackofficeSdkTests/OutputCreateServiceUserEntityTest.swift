// output_create_service_user entity test (generated from the API model).

import XCTest

@testable import BluefinTecsUserBackofficeSdk

final class OutputCreateServiceUserEntityTest: XCTestCase {
  func testInstance() {
    let sdk = BluefinTecsUserBackofficeSDK.testSDK(nil, nil)
    let ent = sdk.OutputCreateServiceUser()
    XCTAssertEqual(ent.getName(), "output_create_service_user")
  }
}

// output_provide_credential entity test (generated from the API model).

import XCTest

@testable import BluefinTecsUserBackofficeSdk

final class OutputProvideCredentialEntityTest: XCTestCase {
  func testInstance() {
    let sdk = BluefinTecsUserBackofficeSDK.testSDK(nil, nil)
    let ent = sdk.OutputProvideCredential()
    XCTAssertEqual(ent.getName(), "output_provide_credential")
  }
}

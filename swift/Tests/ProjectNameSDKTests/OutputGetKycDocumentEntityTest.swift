// output_get_kyc_document entity test (generated from the API model).

import XCTest

@testable import BluefinTecsUserBackofficeSdk

final class OutputGetKycDocumentEntityTest: XCTestCase {
  func testInstance() {
    let sdk = BluefinTecsUserBackofficeSDK.testSDK(nil, nil)
    let ent = sdk.OutputGetKycDocument()
    XCTAssertEqual(ent.getName(), "output_get_kyc_document")
  }
}

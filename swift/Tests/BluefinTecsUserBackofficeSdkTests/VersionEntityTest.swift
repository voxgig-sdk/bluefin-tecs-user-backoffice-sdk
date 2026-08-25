// version entity test (generated from the API model).

import XCTest

@testable import BluefinTecsUserBackofficeSdk

final class VersionEntityTest: XCTestCase {
  func testInstance() {
    let sdk = BluefinTecsUserBackofficeSDK.testSDK(nil, nil)
    let ent = sdk.Version()
    XCTAssertEqual(ent.getName(), "version")
  }
}

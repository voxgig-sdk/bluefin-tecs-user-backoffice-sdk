// output_update_consumer entity test (generated from the API model).

import XCTest

@testable import BluefinTecsUserBackofficeSdk

final class OutputUpdateConsumerEntityTest: XCTestCase {
  func testInstance() {
    let sdk = BluefinTecsUserBackofficeSDK.testSDK(nil, nil)
    let ent = sdk.OutputUpdateConsumer()
    XCTAssertEqual(ent.getName(), "output_update_consumer")
  }
}

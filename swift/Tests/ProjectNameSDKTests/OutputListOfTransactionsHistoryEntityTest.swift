// output_list_of_transactions_history entity test (generated from the API model).

import XCTest

@testable import BluefinTecsUserBackofficeSdk

final class OutputListOfTransactionsHistoryEntityTest: XCTestCase {
  func testInstance() {
    let sdk = BluefinTecsUserBackofficeSDK.testSDK(nil, nil)
    let ent = sdk.OutputListOfTransactionsHistory()
    XCTAssertEqual(ent.getName(), "output_list_of_transactions_history")
  }
}

import Foundation

func minimumSwaps(arr: [Int]) -> Int {

	return -1
}

import XCTest

class HRTest: XCTestCase {
	func testCase_01() {
		// Assemble
		let test = [7, 1, 3, 2, 4, 5, 6]

		// Activate
		let result = minimumSwaps(arr: test)

		// Assert
		XCTAssertEqual(result, 0)
	}
}
HRTest.defaultTestSuite.run()

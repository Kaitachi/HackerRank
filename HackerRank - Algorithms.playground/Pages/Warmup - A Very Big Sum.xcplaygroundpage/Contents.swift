import Foundation

func aVeryBigSum(ar: [Int]) -> Int {
	return ar.reduce(0, +)
}

import XCTest

class HRTest: XCTestCase {
	func testCase_01() {
		// Assemble
		let test = [1000000001, 1000000002, 1000000003, 1000000004, 1000000005]

		// Activate
		let result = aVeryBigSum(ar: test)

		// Assert
		XCTAssertEqual(result, 5000000015)
	}
}
HRTest.defaultTestSuite.run()

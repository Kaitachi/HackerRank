import Foundation

func simpleArraySum(ar: [Int]) -> Int {
	return ar.reduce(0, +)
}

import XCTest

class HRTest: XCTestCase {
	func testCase_01() {
		// Assemble
		let test = [1, 2, 3, 4, 10, 11]

		// Activate
		let result = simpleArraySum(ar: test)

		// Assert
		XCTAssertEqual(result, 31)
	}
}
HRTest.defaultTestSuite.run()

import Foundation

func reverseArray(a: [Int]) -> [Int] {
	return a.reversed()
}

import XCTest

class HRTest: XCTestCase {
	func testCase_01() {
		// Assemble
		let test = [1, 4, 3, 2]

		// Activate
		let result = reverseArray(a: test)

		// Assert
		XCTAssertEqual(result, [2, 3, 4, 1])
	}
}
HRTest.defaultTestSuite.run()

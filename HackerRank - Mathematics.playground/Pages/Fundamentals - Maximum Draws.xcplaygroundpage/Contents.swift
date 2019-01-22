import Foundation

func maximumDraws(n: Int) -> Int {
	return n+1
}

import XCTest

class HRTest: XCTestCase {
	func testCase_01() {
		// Assemble
		let test = 1

		// Activate
		let result = maximumDraws(n: test)

		// Assert
		XCTAssertEqual(result, 2)
	}

	func testCase_02() {
		// Assemble
		let test = 2

		// Activate
		let result = maximumDraws(n: test)

		// Assert
		XCTAssertEqual(result, 3)
	}
}
HRTest.defaultTestSuite.run()

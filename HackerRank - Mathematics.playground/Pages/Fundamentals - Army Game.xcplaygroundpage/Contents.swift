import Foundation

func gameWithCells(n: Int, m: Int) -> Int {
	return Int(floor(Double(n+1)/2.0)*floor(Double(m+1)/2.0))
}

import XCTest

class HRTest: XCTestCase {
	func testCase_01() {
		// Assemble
		let test_n = 2
		let test_m = 2

		// Activate
		let result = gameWithCells(n: test_n, m: test_m)

		// Assert
		XCTAssertEqual(result, 1)
	}

	func testCase_02() {
		// Assemble
		let test_n = 2
		let test_m = 1

		// Activate
		let result = gameWithCells(n: test_n, m: test_m)

		// Assert
		XCTAssertEqual(result, 1)
	}

	func testCase_03() {
		// Assemble
		let test_n = 1
		let test_m = 5

		// Activate
		let result = gameWithCells(n: test_n, m: test_m)

		// Assert
		XCTAssertEqual(result, 3)
	}

	func testCase_04() {
		// Assemble
		let test_n = 39
		let test_m = 169

		// Activate
		let result = gameWithCells(n: test_n, m: test_m)

		// Assert
		XCTAssertEqual(result, 1700)
	}
}
HRTest.defaultTestSuite.run()

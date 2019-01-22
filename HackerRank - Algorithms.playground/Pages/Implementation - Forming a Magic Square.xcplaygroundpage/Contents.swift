import Foundation

func formingMagicSquare(s: [[Int]]) -> Int {

	return -1
}

import XCTest

class HRTest: XCTestCase {
	func testCase_01() {
		// Assemble
		let test = [[5, 3, 4],
				    [1, 5, 8],
				    [6, 4, 2]]

		// Activate
		let result = formingMagicSquare(s: test)

		// Assert
		XCTAssertEqual(result, 7)
	}

	func testCase_02() {
		// Assemble
		let test = [[4, 9, 2],
					[3, 5, 7],
					[8, 1, 5]]

		// Activate
		let result = formingMagicSquare(s: test)

		// Assert
		XCTAssertEqual(result, 1)
	}

	func testCase_03() {
		// Assemble
		let test = [[4, 8, 2],
					[4, 5, 7],
					[6, 1, 6]]

		// Activate
		let result = formingMagicSquare(s: test)

		// Assert
		XCTAssertEqual(result, 4)
	}
}
HRTest.defaultTestSuite.run()

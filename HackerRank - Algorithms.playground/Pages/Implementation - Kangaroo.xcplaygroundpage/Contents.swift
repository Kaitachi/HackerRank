import Foundation

func kangaroo(x1: Int, v1: Int, x2: Int, v2: Int) -> String {
	let result = (v1 - v2 != 0) ? ((x2 - x1) / (v1 - v2) > 0 && (x2 - x1) % (v1 - v2) == 0) : false
	return (result) ? "YES" : "NO"
}

import XCTest

class HRTest: XCTestCase {
	func testCase_01() {
		// Assemble
		let test_x1 = 0
		let test_v1 = 3
		let test_x2 = 4
		let test_v2 = 2

		// Activate
		let result = kangaroo(x1: test_x1, v1: test_v1, x2: test_x2, v2: test_v2)

		// Assert
		XCTAssertEqual(result, "YES")
	}

	func testCase_02() {
		// Assemble
		let test_x1 = 0
		let test_v1 = 2
		let test_x2 = 5
		let test_v2 = 3

		// Activate
		let result = kangaroo(x1: test_x1, v1: test_v1, x2: test_x2, v2: test_v2)

		// Assert
		XCTAssertEqual(result, "NO")
	}

	func testCase_03() {
		// Assemble
		let test_x1 = 21
		let test_v1 = 6
		let test_x2 = 47
		let test_v2 = 3

		// Activate
		let result = kangaroo(x1: test_x1, v1: test_v1, x2: test_x2, v2: test_v2)

		// Assert
		XCTAssertEqual(result, "NO")
	}

	func testCase_04() {
		// Assemble
		let test_x1 = 43
		let test_v1 = 2
		let test_x2 = 70
		let test_v2 = 2

		// Activate
		let result = kangaroo(x1: test_x1, v1: test_v1, x2: test_x2, v2: test_v2)

		// Assert
		XCTAssertEqual(result, "NO")
	}
}
HRTest.defaultTestSuite.run()

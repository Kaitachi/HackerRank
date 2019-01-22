import Foundation

func birthday(s: [Int], d: Int, m: Int) -> Int {
	var result = 0

	if m <= s.count {
		for i in 0...s.count-m {
			result += (s[i..<i+m].reduce(0, +) == d) ? 1 : 0
		}
	}

	return result
}

import XCTest

class HRTest: XCTestCase {
	func testCase_01() {
		// Assemble
		let test_s = [2, 2, 1, 3, 2]
		let test_d = 4
		let test_m = 2

		// Activate
		let result = birthday(s: test_s, d: test_d, m: test_m)

		// Assert
		XCTAssertEqual(result, 2)
	}

	func testCase_02() {
		// Assemble
		let test_s = [1, 2, 1, 3, 2]
		let test_d = 3
		let test_m = 2

		// Activate
		let result = birthday(s: test_s, d: test_d, m: test_m)

		// Assert
		XCTAssertEqual(result, 2)
	}

	func testCase_03() {
		// Assemble
		let test_s = [1, 1, 1, 1, 1, 1]
		let test_d = 3
		let test_m = 2

		// Activate
		let result = birthday(s: test_s, d: test_d, m: test_m)

		// Assert
		XCTAssertEqual(result, 0)
	}

	func testCase_04() {
		// Assemble
		let test_s = [4]
		let test_d = 4
		let test_m = 1

		// Activate
		let result = birthday(s: test_s, d: test_d, m: test_m)

		// Assert
		XCTAssertEqual(result, 1)
	}

	func testCase_05() {
		// Assemble
		let test_s = [2, 5, 4, 3, 2, 1, 3, 4]
		let test_d = 13
		let test_m = 5

		// Activate
		let result = birthday(s: test_s, d: test_d, m: test_m)

		// Assert
		XCTAssertEqual(result, 2)
	}

	func testCase_06() {
		// Assemble
		let test_s = [2, 5, 4]
		let test_d = 11
		let test_m = 8

		// Activate
		let result = birthday(s: test_s, d: test_d, m: test_m)

		// Assert
		XCTAssertEqual(result, 0)
	}

	func testCase_07() {
		// Assemble
		let test_s = [2, 5, 4]
		let test_d = 11
		let test_m = 3

		// Activate
		let result = birthday(s: test_s, d: test_d, m: test_m)

		// Assert
		XCTAssertEqual(result, 1)
	}

	func testCase_08() {
		// Assemble
		let test_s = [2, 5, 4]
		let test_d = 5
		let test_m = 3

		// Activate
		let result = birthday(s: test_s, d: test_d, m: test_m)

		// Assert
		XCTAssertEqual(result, 0)
	}
}
HRTest.defaultTestSuite.run()

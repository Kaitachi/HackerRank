import Foundation

func countApplesAndOranges(s: Int, t: Int, a: Int, b: Int, apples: [Int], oranges: [Int]) -> [Int] {
	var result = [0, 0]
	result[0] = apples.map{ $0 + a }.filter{ s <= $0 && $0 <= t }.count
	result[1] = oranges.map{ $0 + b }.filter{ s <= $0 && $0 <= t }.count
	return result
}

import XCTest

class HRTest: XCTestCase {
	func testCase_01() {
		// Assemble
		let test_s = 7
		let test_t = 10
		let test_a = 4
		let test_b = 12
		let test_apples = [2, 3, -4]
		let test_oranges = [3, -2, -4]

		// Activate
		let result = countApplesAndOranges(s: test_s, t: test_t, a: test_a, b: test_b, apples: test_apples, oranges: test_oranges)

		// Assert
		XCTAssertEqual(result, [1, 2])
	}

	func testCase_02() {
		// Assemble
		let test_s = 7
		let test_t = 11
		let test_a = 5
		let test_b = 15
		let test_apples = [-2, 2, 1]
		let test_oranges = [5, -6]

		// Activate
		let result = countApplesAndOranges(s: test_s, t: test_t, a: test_a, b: test_b, apples: test_apples, oranges: test_oranges)

		// Assert
		XCTAssertEqual(result, [1, 1])
	}
}
HRTest.defaultTestSuite.run()

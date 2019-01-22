import Foundation

func miniMaxSum(arr: [Int]) -> [Int] {
	let minimum = Array(arr.sorted().prefix(arr.count-1)).reduce(0, +)
	let maximum = Array(arr.sorted().suffix(arr.count-1)).reduce(0, +)
	return [minimum, maximum]
}

import XCTest

class HRTest: XCTestCase {
	func testCase_01() {
		// Assemble
		let test = [1, 2, 3, 4, 5]

		// Activate
		let result = miniMaxSum(arr: test)

		// Assert
		XCTAssertEqual(result, [10, 14])
	}

	func testCase_02() {
		// Assemble
		let test = [1, 3, 5, 7, 9]

		// Activate
		let result = miniMaxSum(arr: test)

		// Assert
		XCTAssertEqual(result, [16, 24])
	}

	func testCase_03() {
		// Assemble
		let test = [7, 69, 2, 221, 8974]

		// Activate
		let result = miniMaxSum(arr: test)

		// Assert
		XCTAssertEqual(result, [299, 9271])
	}
}
HRTest.defaultTestSuite.run()

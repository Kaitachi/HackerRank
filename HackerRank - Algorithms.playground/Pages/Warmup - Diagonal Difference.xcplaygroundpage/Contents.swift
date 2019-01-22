
import Foundation

func diagonalDifference(arr: [[Int]]) -> Int {
	var result = 0

	for i in 0..<arr.count {
		result += arr[i][i]
		result -= arr[i][arr.count-i-1]
	}

	return abs(result)
}

import XCTest

class HRTest: XCTestCase {
	func testCase_01() {
		// Assemble
		let test = [[11, 2, 4], [4, 5, 6], [10, 8, -12]]

		// Activate
		let result = diagonalDifference(arr: test)

		// Assert
		XCTAssertEqual(result, 15)
	}
}
HRTest.defaultTestSuite.run()

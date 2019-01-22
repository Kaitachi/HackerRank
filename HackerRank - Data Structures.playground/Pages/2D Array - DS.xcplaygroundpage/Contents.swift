import Foundation

func hourglassSum(arr: [[Int]]) -> Int {

	var sum = Int.min

	func hourglass(i: Int, j: Int) -> Int {
		return arr[i-1][j-1...j+1].reduce(0, +) + arr[i][j] + arr[i+1][j-1...j+1].reduce(0, +)
	}

	for i in 1...arr.count-2 {
		for j in 1...arr[1].count-2 {
			let current = hourglass(i: i, j: j)
			sum = max(current, sum)
		}
	}

	return sum
}

import XCTest

class HRTest: XCTestCase {
	func testCase_01() {
		// Assemble
		let test = [[-9, -9, -9,  1, 1, 1],
					[ 0, -9,  0,  4, 3, 2],
					[-9, -9, -9,  1, 2, 3],
					[ 0,  0,  8,  6, 6, 0],
					[ 0,  0,  0, -2, 0, 0],
					[ 0,  0,  1,  2, 4, 0]]

		// Activate
		let result = hourglassSum(arr: test)

		// Assert
		XCTAssertEqual(result, 28)
	}
}
HRTest.defaultTestSuite.run()

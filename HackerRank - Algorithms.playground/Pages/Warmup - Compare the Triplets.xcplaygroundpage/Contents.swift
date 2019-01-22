import Foundation

func compareTriplets(a: [Int], b: [Int]) -> [Int] {
	var result = [0, 0]

	for i in 0..<a.count {
		result[0] += (a[i] > b[i]) ? 1 : 0
		result[1] += (a[i] < b[i]) ? 1 : 0
	}

	return result
}

import XCTest

class HRTest: XCTestCase {
	func testCase_01() {
		// Assemble
		let testA = [17, 28, 30]
		let testB = [99, 16, 8]

		// Activate
		let result = compareTriplets(a: testA, b: testB)

		// Assert
		XCTAssertEqual(result, [2, 1])
	}
}
HRTest.defaultTestSuite.run()

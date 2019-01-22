import Foundation

func rotLeft(a: [Int], d: Int) -> [Int] {

	var rot = a

	for (k, v) in a.enumerated() {
		rot[abs((a.count+k-d)%a.count)] = v
	}

	return rot
}

import XCTest

class HRTest: XCTestCase {
	func testCase_01() {
		// Assemble
		let test_a = [1, 2, 3, 4, 5]
		let test_d = 4

		// Activate
		let result = rotLeft(a: test_a, d: test_d)

		// Assert
		XCTAssertEqual(result, [5, 1, 2, 3, 4])
	}
}
HRTest.defaultTestSuite.run()

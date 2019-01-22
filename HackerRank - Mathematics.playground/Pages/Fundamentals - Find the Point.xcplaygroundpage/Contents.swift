import Foundation

func findPoint(px: Int, py: Int, qx: Int, qy: Int) -> [Int] {
	var result = [0, 0]
	result[0] = (2 * qx - px)
	result[1] = (2 * qy - py)
	return result
}

import XCTest

class HRTest: XCTestCase {
	func testCase_01() {
		// Assemble
		let px = 0
		let py = 0
		let qx = 1
		let qy = 1

		// Activate
		let result = findPoint(px: px, py: py, qx: qx, qy: qy)

		// Assert
		XCTAssertEqual(result, [2, 2])
	}

	func testCase_02() {
		// Assemble
		let px = 1
		let py = 1
		let qx = 2
		let qy = 2

		// Activate
		let result = findPoint(px: px, py: py, qx: qx, qy: qy)

		// Assert
		XCTAssertEqual(result, [3, 3])
	}
}
HRTest.defaultTestSuite.run()

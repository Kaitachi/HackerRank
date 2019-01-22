import Foundation

func minimumHeightTriangle(base: Int, area: Int) -> Int {
	return Int(ceil(2.0*Double(area)/Double(base)))
}

let input = readLine()!.components(separatedBy: " ").map({ Int($0)! })

print(minimumHeightTriangle(base: input[0], area: input[1]))

import XCTest

class HRTest: XCTestCase {
	func testCase_01() {
		// Assemble
		let test_base = 2
		let test_area = 2

		// Activate
		let result = minimumHeightTriangle(base: test_base, area: test_area)

		// Assert
		XCTAssertEqual(result, 2)
	}

	func testCase_02() {
		// Assemble
		let test_base = 17
		let test_area = 100

		// Activate
		let result = minimumHeightTriangle(base: test_base, area: test_area)

		// Assert
		XCTAssertEqual(result, 12)
	}
}
HRTest.defaultTestSuite.run()

import Foundation

func pageCount(n: Int, p: Int) -> Int {
	return min(Int(ceil(Double(p+1)/2.0))-1, Int(ceil(Double(n+1)/2.0)-ceil(Double(p+1)/2.0)))
}

import XCTest

class HRTest: XCTestCase {
	func testCase_01() {
		// Assemble
		let test_n = 6
		let test_p = 2

		// Activate
		let result = pageCount(n: test_n, p: test_p)

		// Assert
		XCTAssertEqual(result, 1)
	}

	func testCase_02() {
		// Assemble
		let test_n = 5
		let test_p = 4

		// Activate
		let result = pageCount(n: test_n, p: test_p)

		// Assert
		XCTAssertEqual(result, 0)
	}
}
HRTest.defaultTestSuite.run()

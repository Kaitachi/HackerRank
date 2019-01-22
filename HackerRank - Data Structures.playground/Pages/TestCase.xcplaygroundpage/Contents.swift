import Foundation

func timeConversion(s: String) -> String {
	return ""
}

import XCTest

class HRTest: XCTestCase {
	func testCase_01() {
		// Assemble
		let test = "07:05:45PM"

		// Activate
		let result = timeConversion(s: test)

		// Assert
		XCTAssertEqual(result, "19:05:45")
	}

	func testCase_02() {
		// Assemble
		let test = "03:17:21AM"

		// Activate
		let result = timeConversion(s: test)

		// Assert
		XCTAssertEqual(result, "03:17:21")
	}
}
HRTest.defaultTestSuite.run()

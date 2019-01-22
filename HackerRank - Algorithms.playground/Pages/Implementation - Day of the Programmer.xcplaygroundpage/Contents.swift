import Foundation

func dayOfProgrammer(year: Int) -> String {
	var result = ""

	if year < 1918 {
		// Julian calendar:     leap year         non-leap year
		result = (year%4==0) ? "12.09.\(year)" : "13.09.\(year)"
	} else if 1918 < year {
		// Gregorian calendar:                                        leap year         non-leap year
		result = (year%400 == 0 || (year%4 == 0 && year%100 != 0)) ? "12.09.\(year)" : "13.09.\(year)"
	} else {
		// Transition year:
		result = "26.09.\(year)"
	}

	return result
}

import XCTest

class HRTest: XCTestCase {
	func testCase_01() {
		// Assemble
		let test = 1984

		// Activate
		let result = dayOfProgrammer(year: test)

		// Assert
		XCTAssertEqual(result, "12.09.1984")
	}

	func testCase_02() {
		// Assemble
		let test = 2017

		// Activate
		let result = dayOfProgrammer(year: test)

		// Assert
		XCTAssertEqual(result, "13.09.2017")
	}

	func testCase_03() {
		// Assemble
		let test = 2016

		// Activate
		let result = dayOfProgrammer(year: test)

		// Assert
		XCTAssertEqual(result, "12.09.2016")
	}

	func testCase_04() {
		// Assemble
		let test = 1800

		// Activate
		let result = dayOfProgrammer(year: test)

		// Assert
		XCTAssertEqual(result, "12.09.1800")
	}

	func testCase_05() {
		// Assemble
		let test = 1919

		// Activate
		let result = dayOfProgrammer(year: test)

		// Assert
		XCTAssertEqual(result, "13.09.1919")
	}
}
HRTest.defaultTestSuite.run()

import Foundation

func timeConversion(s: String) -> String {

	print("Converting \(s)...")

	let timeFormatter = DateFormatter()
	timeFormatter.locale = Locale(identifier: "en_US_POSIX")
	timeFormatter.dateFormat = "hh:mm:ssaa"

	guard let convertedDate = timeFormatter.date(from: s) else {
		print("Error with input date =(")
		return ""
	}
	print("Converted to \(convertedDate)")

	timeFormatter.dateFormat = "HH:mm:ss"

	return timeFormatter.string(from: convertedDate)
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

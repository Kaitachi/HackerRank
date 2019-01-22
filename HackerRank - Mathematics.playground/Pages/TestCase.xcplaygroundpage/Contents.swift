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
//HRTest.defaultTestSuite.run()


func GCD(a: Int, b: Int) -> Int {
	// Eucledian method to find greatest common divisor (GCD) between two integers.
	let (a, b) = (max(a, b), min(a, b))

	//print("\(a) \t= \(b)*\(a/b) \t+ \(a%b)")

	// If division of a and b doesn't have remainder,
	//     we have found our GCD.
	if a%b == 0 {
		return a/b
	}

	// Otherwise, let's make a recursive call to simplify the numbers.
	return GCD(a: b, b: a%b)
}

class GCDTest: XCTestCase {
	func testCase_01() {
		// Assemble
		let test_a = 42823
		let test_b = 6409

		// Activate
		let result = GCD(a: test_a, b: test_b)

		// Assert
		XCTAssertEqual(result, 17)
	}

	func testCase_02() {
		// Assemble
		let test_a = 7469
		let test_b = 2464

		// Activate
		let result = GCD(a: test_a, b: test_b)

		// Assert
		XCTAssertEqual(result, 32)
	}
}
//GCDTest.defaultTestSuite.run()

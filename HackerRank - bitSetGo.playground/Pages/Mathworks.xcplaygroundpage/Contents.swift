import Foundation

func mathworks(_ v: Int) -> String {
	func dividesByAB(_ v: Int) -> Bool {
		// RULE: Last digit of the number is used to determine
		// if it is divisible by 2 single digit prime numbers A and B.
		// The only two prime digits that satisfy this rule are 2 and 5,
		// which multiply up to yield 10.
		return v % 10 == 0
	}

	func dividesByCD(_ v: Int) -> Bool {
		// RULE: The sum of digits will find out
		// if it is divisible by 2 single digit numbers C and D.
		// The only two (prime) digits that satisfy this rule are 3 and 9,
		// but since 9 obviously divides by 3, let's just check if
		// the number divides evenly by 9.
		return v % 9 == 0
	}

	func dividesByE(_ v: Int) -> Bool {
		// RULE: Remove the last digit, double it,
		// subtract it from the remaining original number
		// and continue doing this until only one digit remains.
		// Using this, we find out if it is divisible by one single digit number E.
		// This is the common check to find out if a number is divisible by 7.
		return v % 7 == 0
	}

	return (dividesByAB(v) && dividesByCD(v) && dividesByE(v)) ? "YES" : "NO"
}


//_ = readLine()
//while let i = readLine() {
//	print(mathworks(n: Int(i)!))
//}

/*****************
 * TESTING SUITE *
 *****************/

import XCTest

class MathworksTest: XCTestCase {
	func testCase_01() {
		// Assemble
		let test = 25027145

		// Activate
		let result = mathworks(test)

		// Assert
		XCTAssertEqual(result, "NO")
	}

	func testCase_02() {
		// Assemble
		let test = 26789620

		// Activate
		let result = mathworks(test)

		// Assert
		XCTAssertEqual(result, "NO")
	}

	func testCase_03() {
		// Assemble
		let test = 118542690

		// Activate
		let result = mathworks(test)

		// Assert
		XCTAssertEqual(result, "YES")
	}
}
MathworksTest.defaultTestSuite.run()

import Foundation
import XCTest

func largestPrimeFactor(n: Int) -> Int {
	var result = 0

	for i in factors(n) {
		if isPrime(i) {
			result = i
		}
	}

	return result
}

class EulerTest: XCTestCase {
	func testCase_1() {
		// Assemble
		let test = 13195

		// Activate
		let result = largestPrimeFactor(n: test)

		// Assert
		XCTAssertEqual(result, 29)
	}

	func testCase_2() {
		// Assemble
		let test = 10

		// Activate
		let result = largestPrimeFactor(n: test)

		// Assert
		XCTAssertEqual(result, 5)
	}

	func testCase_3() {
		// Assemble
		let test = 17

		// Activate
		let result = largestPrimeFactor(n: test)

		// Assert
		XCTAssertEqual(result, 17)
	}
}
EulerTest.defaultTestSuite.run()

//_ = readLine()
//while let i = readLine() {
//	print(something(n: Int(i)!))
//}

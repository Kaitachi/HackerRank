import Foundation

func handshake(n: Int) -> Int {
	return n*(n-1)/2
}

import XCTest

class HRTest: XCTestCase {
	func testCase_01() {
		// Assemble
		let test = 1

		// Activate
		let result = handshake(n: test)

		// Assert
		XCTAssertEqual(result, 0)
	}

	func testCase_02() {
		// Assemble
		let test = 2

		// Activate
		let result = handshake(n: test)

		// Assert
		XCTAssertEqual(result, 1)
	}

	func testCase_03() {
		// Assemble
		let test = 3

		// Activate
		let result = handshake(n: test)

		// Assert
		XCTAssertEqual(result, 3)
	}

	func testCase_04() {
		// Assemble
		let test = 4

		// Activate
		let result = handshake(n: test)

		// Assert
		XCTAssertEqual(result, 6)
	}

	func testCase_05() {
		// Assemble
		let test = 5

		// Activate
		let result = handshake(n: test)

		// Assert
		XCTAssertEqual(result, 10)
	}

	func testCase_06() {
		// Assemble
		let test = 10

		// Activate
		let result = handshake(n: test)

		// Assert
		XCTAssertEqual(result, 45)
	}
}
HRTest.defaultTestSuite.run()

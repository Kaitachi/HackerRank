import Foundation

func birthdayCakeCandles(ar: [Int]) -> Int {
	let result = ar.reduce(Int.min, { max($0, $1) })
	return ar.filter{ $0 == result }.count
}

import XCTest

class HRTest: XCTestCase {
	func testCase_01() {
		// Assemble
		let test = [3, 2, 1, 3]

		// Activate
		let result = birthdayCakeCandles(ar: test)

		// Assert
		XCTAssertEqual(result, 2)
	}

	func testCase_02() {
		// Assemble
		let test = [4, 4, 1, 3]

		// Activate
		let result = birthdayCakeCandles(ar: test)

		// Assert
		XCTAssertEqual(result, 2)
	}
}
HRTest.defaultTestSuite.run()

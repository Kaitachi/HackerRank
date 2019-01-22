import Foundation

func migratoryBirds(arr: [Int]) -> Int {
	let frequencies = arr.reduce(into: [:]) { $0[$1, default: 0] += 1 }
	let result = frequencies.max(by: { $0.1 < $1.1 || ( $0.1 == $1.1 && $0.0 > $1.0 ) })
	return result!.key
}

import XCTest

class HRTest: XCTestCase {
	func testCase_01() {
		// Assemble
		let test = [1, 1, 2, 2, 3]

		// Activate
		let result = migratoryBirds(arr: test)

		// Assert
		XCTAssertEqual(result, 1)
	}

	func testCase_02() {
		// Assemble
		let test = [1, 4, 4, 4, 5, 3]

		// Activate
		let result = migratoryBirds(arr: test)

		// Assert
		XCTAssertEqual(result, 4)
	}

	func testCase_03() {
		// Assemble
		let test = [1, 2, 3, 4, 5, 4, 3, 2, 1, 3, 4]

		// Activate
		let result = migratoryBirds(arr: test)

		// Assert
		XCTAssertEqual(result, 3)
	}

	func testCase_04() {
		// Assemble
		let test = [1, 2, 3, 4, 5, 4, 3, 2, 1, 3, 4, 2]

		// Activate
		let result = migratoryBirds(arr: test)

		// Assert
		XCTAssertEqual(result, 2)
	}
}
HRTest.defaultTestSuite.run()

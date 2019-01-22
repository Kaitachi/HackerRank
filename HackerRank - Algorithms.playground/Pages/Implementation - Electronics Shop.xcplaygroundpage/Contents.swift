import Foundation

func getMoneySpent(keyboards: [Int], drives: [Int], b: Int) -> Int {
	let keyboards = keyboards.sorted().reversed()
	let drives = drives.sorted().reversed()
	var maximum = -1

	for k in keyboards {
		for d in drives {
			if k+d <= b {
				maximum = max(k+d, maximum)
			}
		}
	}

	return maximum
}

import XCTest

class HRTest: XCTestCase {
	func testCase_01() {
		// Assemble
		let test_keyboards = [40, 50, 60]
		let test_drives = [8, 12]
		let test_b = 60

		// Activate
		let result = getMoneySpent(keyboards: test_keyboards, drives: test_drives, b: test_b)

		// Assert
		XCTAssertEqual(result, 58)
	}

	func testCase_02() {
		// Assemble
		let test_keyboards = [3, 1]
		let test_drives = [5, 2, 8]
		let test_b = 10

		// Activate
		let result = getMoneySpent(keyboards: test_keyboards, drives: test_drives, b: test_b)

		// Assert
		XCTAssertEqual(result, 9)
	}

	func testCase_03() {
		// Assemble
		let test_keyboards = [4]
		let test_drives = [5]
		let test_b = 5

		// Activate
		let result = getMoneySpent(keyboards: test_keyboards, drives: test_drives, b: test_b)

		// Assert
		XCTAssertEqual(result, -1)
	}

}
HRTest.defaultTestSuite.run()

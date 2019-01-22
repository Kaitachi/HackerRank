import Foundation

func pickingNumbers(a: [Int]) -> Int {
	var previous: (key: Int, value: Int) = (0, 0)
	var largest = 0

	for i in Set(a).sorted(by: < ) {
		let current = a.filter { $0 == i }.count

		switch previous.key {
		case 0:
			largest = current
		case i-1:
			largest = max(previous.value+current, largest)
		default:
			largest = max(current, largest)
			break
		}

		previous = (key: i, value: current)
	}

	return largest
}

import XCTest

class HRTest: XCTestCase {
	func testCase_01() {
		// Assemble
		let test = [1, 1, 2, 2, 4, 4, 5, 5, 5]

		// Activate
		let result = pickingNumbers(a: test)

		// Assert
		XCTAssertEqual(result, 5)
	}

	func testCase_02() {
		// Assemble
		let test = [4, 6, 5, 3, 3, 1]

		// Activate
		let result = pickingNumbers(a: test)

		// Assert
		XCTAssertEqual(result, 3)
	}

	func testCase_03() {
		// Assemble
		let test = [1, 2, 2, 3, 1, 2]

		// Activate
		let result = pickingNumbers(a: test)

		// Assert
		XCTAssertEqual(result, 5)
	}

	func testCase_04() {
		// Assemble
		let test = [33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33]

		// Activate
		let result = pickingNumbers(a: test)

		// Assert
		XCTAssertEqual(result, 12)
	}

	func testCase_05() {
		// Assemble
		let test = [4, 97, 5, 97, 97, 4, 97, 4, 97, 97, 97, 97, 4, 4, 5, 5, 97, 5, 97, 99, 4, 97, 5, 97, 97, 97, 5, 5, 97, 4, 5, 97, 97, 5, 97, 4, 97, 5, 4, 4, 97, 5, 5, 5, 4, 97, 97, 4, 97, 5, 4, 4, 97, 97, 97, 5, 5, 97, 4, 97, 97, 5, 4, 97, 97, 4, 97, 97, 97, 5, 4, 4, 97, 4, 4, 97, 5, 97, 97, 97, 97, 4, 97, 5, 97, 5, 4, 97, 4, 5, 97, 97, 5, 97, 5, 97, 5, 97, 97, 97]

		// Activate
		let result = pickingNumbers(a: test)

		// Assert
		XCTAssertEqual(result, 50)
	}
}
HRTest.defaultTestSuite.run()

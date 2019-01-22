import Foundation

func gradingStudents(grades: [Int]) -> [Int] {
	return grades.map {
		return (38 <= $0) ? $0 + max((3-$0)%5 + 2, 0) : $0
	}
}

import XCTest

class HRTest: XCTestCase {
	func testCase_01() {
		// Assemble
		let test = [73, 67, 38, 33]

		// Activate
		let result = gradingStudents(grades: test)

		// Assert
		XCTAssertEqual(result, [75, 67, 40, 33])
	}

	func testCase_02() {
		// Assemble
		let test = [70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80]

		// Activate
		let result = gradingStudents(grades: test)

		// Assert
		XCTAssertEqual(result, [70, 71, 72, 75, 75, 75, 76, 77, 80, 80, 80])
	}

	func testCase_03() {
		// Assemble
		let test = [30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40]

		// Activate
		let result = gradingStudents(grades: test)

		// Assert
		XCTAssertEqual(result, [30, 31, 32, 33, 34, 35, 36, 37, 40, 40, 40])
	}
}
HRTest.defaultTestSuite.run()

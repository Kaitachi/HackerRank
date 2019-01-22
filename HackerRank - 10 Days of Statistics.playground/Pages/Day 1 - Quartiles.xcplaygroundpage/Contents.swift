import Foundation

//let n = Int(readLine()!)!
//var array = [Int]()
//
//while let line = readLine() {
//	array = line.split(separator: " ").map{ Int($0)! }
//}

import XCTest

class HRTest: XCTestCase {
	func testCase_01() {
		// Assemble
		let test = [3, 7, 8, 5, 12, 14, 21, 13, 18]

		// Activate
		let result = getQuartiles(test)

		// Assert
		XCTAssertEqual(result, [6, 12, 16])
	}

	func testCase_02() {
		// Assemble
		let test = [6, 7, 15, 36, 39, 40, 41, 42, 43, 47, 49]

		// Activate
		let result = getQuartiles(test)

		// Assert
		XCTAssertEqual(result, [15, 40, 43])
	}

	func testCase_03() {
		// Assemble
		let test = [7, 15, 36, 39, 40, 41]

		// Activate
		let result = getQuartiles(test)

		// Assert
		XCTAssertEqual(result, [15, 37, 40])
	}
}
HRTest.defaultTestSuite.run()

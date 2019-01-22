import Foundation

//let n = Int(readLine()!)!
//var array = [Int]()
//
//while let line = readLine() {
//	array = line.split(separator: " ").map{ Int($0)! }
//
//	print(getStandardDeviation(array))
//}

import XCTest

class HRTest: XCTestCase {
	func testCase_01() {
		// Assemble
		let test = [10, 40, 30, 50, 20]

		// Activate
		let result = getStandardDeviation(test)

		// Assert
		XCTAssertEqual(result, 14.1)
	}
}
HRTest.defaultTestSuite.run()

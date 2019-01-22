import Foundation
import XCTest

//let n = Int(readLine()!)!
//var array = [Int]()
//
//while let line = readLine() {
//	values = line.split(separator: " ").map{ Int($0)! }
//	weighs = line.split(separator: " ").map{ Int($0)! }
//
//	data = getUnweighedArray(data: values, weighs: weighs)
//	print(getInterquartileRange(data)
//}

class HRTest: XCTestCase {
	func testCase_01() {
		// Assemble
		let testValues = [6, 12, 8, 10, 20, 16]
		let testWeighs = [5, 4, 3, 2, 1, 5]

		// Activate
		let test = getUnweighedArray(data: testValues, weighs: testWeighs)
		let result = getInterquartileRange(test)

		// Assert
		XCTAssertEqual(result, 9.0)
	}
}
HRTest.defaultTestSuite.run()

import Foundation
import XCTest

func sumSqDiff(n: Int) -> Int {
	let a = sqSum(n)
	let b = sumSq(n)
	return b - a
}

class EulerTest: XCTestCase {
	func testCase_1() {
		// Assemble
		let test = 3

		// Activate
		let result = sumSqDiff(n: test)

		// Assert
		XCTAssertEqual(result, 22)
	}

	func testCase_2() {
		// Assemble
		let test = 10

		// Activate
		let result = sumSqDiff(n: test)

		// Assert
		XCTAssertEqual(result, 2640)
	}
}
EulerTest.defaultTestSuite.run()

//_ = readLine()
//while let i = readLine() {
//	print(sumSqDiff(n: Int(i)!))
//}

import Foundation
import XCTest

func something(n: Int) -> Int {
	return 0
}

class EulerTest: XCTestCase {
	func testCase_1() {
		// Assemble
		let test = 10

		// Activate
		let result = something(n: test)

		// Assert
		XCTAssertEqual(result, 23)
	}
}
EulerTest.defaultTestSuite.run()

//_ = readLine()
//while let i = readLine() {
//	print(something(n: Int(i)!))
//}

import Foundation

func arrayManipulation(n: Int, queries: [[Int]]) -> Int {
	var array = Array(repeating: 0, count: n+1)

	print("\(array)")
	for query in queries {
		for i in query[0]...query[1] {
			array[i] += query[2]
		}
		print("\(array)")
	}

	print("\(array)")
	return array.max(by: <)!
}

import XCTest

class HRTest: XCTestCase {
	func testCase_01() {
		// Assemble
		let test_n = 10
		let test_q = [[1, 5, 3],
					  [4, 8, 7],
					  [6, 9, 1]]

		// Activate
		let result = arrayManipulation(n: test_n, queries: test_q)

		// Assert
		XCTAssertEqual(result, 10)
	}
}
HRTest.defaultTestSuite.run()

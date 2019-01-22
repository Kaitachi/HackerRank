import Foundation

func divisibleSumPairs(n: Int, k: Int, ar: [Int]) -> Int {
	var result = 0

	for i in 0..<ar.count {
		for j in i+1..<ar.count {
			result += ((ar[i]+ar[j])%k == 0) ? 1 : 0
		}
	}

	return result
}

import XCTest

class HRTest: XCTestCase {
	func testCase_01() {
		// Assemble
		let test_n = 6
		let test_k = 5
		let test_ar = [1, 2, 3, 4, 5, 6]

		// Activate
		let result = divisibleSumPairs(n: test_n, k: test_k, ar: test_ar)

		// Assert
		XCTAssertEqual(result, 3)
	}

	func testCase_02() {
		// Assemble
		let test_n = 6
		let test_k = 3
		let test_ar = [1, 3, 2, 6, 1, 2]

		// Activate
		let result = divisibleSumPairs(n: test_n, k: test_k, ar: test_ar)

		// Assert
		XCTAssertEqual(result, 5)
	}
}
HRTest.defaultTestSuite.run()

import Foundation

func dynamicArray(n: Int, queries: [[Int]]) -> [Int] {
	var seqList = Array(repeating: [Int](), count: n)
	var lastAnswer = [Int]()

	for query in queries {
		let seq = (query[1]^(lastAnswer.last ?? 0))%n

		switch query[0] {
		case 1:
			seqList[seq].append(query[2])
		case 2:
			lastAnswer.append(seqList[seq][query[2]%seqList[seq].count])
		default:
			fatalError("\(query[0]) is undefined!")
		}
	}

	return lastAnswer
}

import XCTest

class HRTest: XCTestCase {
	func testCase_01() {
		// Assemble
		let test_n = 2
		let test_q = [[1, 0, 5],
					  [1, 1, 7],
					  [1, 0, 3],
					  [2, 1, 0],
					  [2, 1, 1]]

		// Activate
		let result = dynamicArray(n: test_n, queries: test_q)

		// Assert
		XCTAssertEqual(result, [7, 3])
	}
}
HRTest.defaultTestSuite.run()

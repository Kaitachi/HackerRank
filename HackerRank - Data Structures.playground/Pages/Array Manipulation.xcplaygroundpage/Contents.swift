import Foundation

func arrayManipulation(n: Int, queries: [[Int]]) -> Int {
	var array = Array(repeating: 0, count: n+1)
	var maximum = 0

	for query in queries {
		array[query[0]] += query[2]

		if query[1]+1 <= n {
			array[query[1]+1] -= query[2]
		}
	}

	for i in 1...n {
		maximum = max(maximum, array[0]+array[i])
		array[0] += array[i]
	}

	return maximum
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

	func testCase_02() {
		// Assemble
		let test_n = 5
		let test_q = [[1, 2, 100],
					  [2, 5, 100],
					  [3, 4, 100]]

		// Activate
		let result = arrayManipulation(n: test_n, queries: test_q)

		// Assert
		XCTAssertEqual(result, 200)
	}

	func testCase_03() {
		// Assemble
		let test_n = 40
		let test_q = [[29, 40, 787],
					  [ 9, 26, 219],
					  [21, 31, 214],
					  [ 8, 22, 719],
					  [15, 23, 102],
					  [11, 24,  83],
					  [14, 22, 321],
					  [ 5, 22, 300],
					  [11, 30, 832],
					  [ 5, 25,  29],
					  [16, 24, 577],
					  [ 3, 10, 905],
					  [15, 22, 335],
					  [29, 35, 254],
					  [ 9, 20,  20],
					  [33, 34, 351],
					  [30, 38, 564],
					  [11, 31, 969],
					  [ 3, 32,  11],
					  [29, 35, 267],
					  [ 4, 24, 531],
					  [ 1, 38, 892],
					  [12, 18, 825],
					  [25, 32,  99],
					  [ 3, 39, 107],
					  [12, 37, 131],
					  [ 3, 26, 640],
					  [ 8, 39, 483],
					  [ 8, 11, 194],
					  [12, 37, 502]]

		// Activate
		let result = arrayManipulation(n: test_n, queries: test_q)

		// Assert
		XCTAssertEqual(result, 8628)
	}
}
HRTest.defaultTestSuite.run()

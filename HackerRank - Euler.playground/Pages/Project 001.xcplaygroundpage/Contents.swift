import Foundation
import XCTest

func addMultiples(below: Int, multiples: [Int]) -> Int {
	var result = 0

	func find_k(below: Int, d: Int) -> Int {
		// a(n) > a(1) + d*(n-1)
		// below > 0 + d*(n-1)
		// below > d*n - d
		// below + d > d*n
		// (below + d)/d > n
		let adjust = (below % d == 0) ? 1 : 0
		return (below + d)/d - adjust
	}

	func arithmeticSequencePosition(n: Int, d: Int) -> Int {
		// a(n) = a(1) + d*(n-1)
		// a(n) = 0 + d*(n-1)
		return d*(n-1)
	}

	// Find the arithmetic sum from each multiple...
	for m in multiples {
		let k = find_k(below: below, d: m)
		result += k * (arithmeticSequencePosition(n: k, d: m)) / 2
	}

	// Then subtract the arithmetic sum from each product that the multiples form.
	for x in [multiples.reduce(1, *)] {
		let k = find_k(below: below, d: x)
		result -= k * (arithmeticSequencePosition(n: k, d: x)) / 2
	}

	return result
}

class EulerTest: XCTestCase {
	func testCase_1() {
		// Assemble
		let test = 10

		// Activate
		let result = addMultiples(below: test, multiples: [3, 5])

		// Assert
		XCTAssertEqual(result, 23)
	}
	func testCase_2() {
		// Assemble
		let test = 100

		// Activate
		let result = addMultiples(below: test, multiples: [3, 5])

		// Assert
		XCTAssertEqual(result, 2318)
	}
}
EulerTest.defaultTestSuite.run()

//let lines = 2
//let test = [1000000000]
//
//for i in test {
//	print(addMultiples(below: i, multiples: [3, 5]))
//}

//_ = readLine()
//while let i = readLine() {
//	print(addMultiples(below: Int(i)!, multiples: [3, 5]))
//}



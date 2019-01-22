import Foundation

func plusMinus(arr: [Int]) -> [String] {
	let p = String(format: "%.06f", Double(arr.filter{ $0  > 0 }.count) / Double(arr.count))
	let n = String(format: "%.06f", Double(arr.filter{ $0  < 0 }.count) / Double(arr.count))
	let z = String(format: "%.06f", Double(arr.filter{ $0 == 0 }.count) / Double(arr.count))

	print(p)
	print(n)
	print(z)

	return [p, n, z]
}

import XCTest

class HRTest: XCTestCase {
	func testCase_01() {
		// Assemble
		let test = [-4, 3, -9, 0, 4, 1]

		// Activate
		let result = plusMinus(arr: test)

		// Assert
		XCTAssertEqual(result, ["0.500000", "0.333333", "0.166667"])
	}

	func testCase_02() {
		// Assemble
		let test = [1, 2, 3, -1, -2, -3, 0, 0]

		// Activate
		let result = plusMinus(arr: test)

		// Assert
		XCTAssertEqual(result, ["0.375000", "0.375000", "0.250000"])
	}
}
HRTest.defaultTestSuite.run()


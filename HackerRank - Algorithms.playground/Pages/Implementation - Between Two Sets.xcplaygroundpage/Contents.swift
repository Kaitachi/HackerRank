import Foundation

func GCD(_ a: Int, _ b: Int) -> Int {
	// Eucledian method to find Greatest Common Divisor (GCD) between two integers.
	let (a, b) = (max(a, b), min(a, b))

	// If division of a and b doesn't have remainder,
	//     we have found our GCD.
	if a % b == 0 {
		return b
	}

	// Otherwise, let's make a recursive call to simplify the numbers.
	return GCD(a, a % b)
}

func LCM(_ a: Int, _ b: Int) -> Int {
	// Eucledian method to find Least Common Multiple (LCM) between two integers.
	return a * b / GCD(a, b)
}

func getTotalX(a: [Int], b: [Int]) -> Int {
	let lcm = a.reduce(1, { LCM($0, $1) })
	let gcd = b.reduce(b[0], { GCD($0, $1) })
	var result = [Int]()

	repeat {
		result.append((result.count+1)*lcm)
	} while result.last! + lcm <= 100

	return result.filter({ gcd%$0 == 0 }).count
}

import XCTest

class HRTest: XCTestCase {
	func testCase_01() {
		// Assemble
		let test_a = [2, 4]
		let test_b = [16, 32, 96]

		// Activate
		let result = getTotalX(a: test_a, b: test_b)

		// Assert
		XCTAssertEqual(result, 3)
	}

	func testCase_02() {
		// Assemble
		let test_a = [2, 6]
		let test_b = [24, 36]

		// Activate
		let result = getTotalX(a: test_a, b: test_b)

		// Assert
		XCTAssertEqual(result, 2)
	}

	func testCase_03() {
		// Assemble
		let test_a = [1]
		let test_b = [100]

		// Activate
		let result = getTotalX(a: test_a, b: test_b)

		// Assert
		XCTAssertEqual(result, 9)
	}
}
HRTest.defaultTestSuite.run()

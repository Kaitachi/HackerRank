import Foundation

func bonAppetit(bill: [Int], k: Int, b: Int) -> String {
	var bill = bill
	bill.remove(at: k)
	let half = bill.reduce(0, +)/2

	return (half == b) ? "Bon Appetit" : String(b - half)
}

import XCTest

class HRTest: XCTestCase {
	func testCase_01() {
		// Assemble
		let test_bill = [2, 4, 6]
		let test_k = 2
		let test_b = 3

		// Activate
		let result = bonAppetit(bill: test_bill, k: test_k, b: test_b)

		// Assert
		XCTAssertEqual(result, "Bon Appetit")
	}

	func testCase_02() {
		// Assemble
		let test_bill = [2, 4, 6]
		let test_k = 2
		let test_b = 6

		// Activate
		let result = bonAppetit(bill: test_bill, k: test_k, b: test_b)

		// Assert
		XCTAssertEqual(result, "3")
	}

	func testCase_03() {
		// Assemble
		let test_bill = [3, 10, 2, 9]
		let test_k = 1
		let test_b = 12

		// Activate
		let result = bonAppetit(bill: test_bill, k: test_k, b: test_b)

		// Assert
		XCTAssertEqual(result, "5")
	}

	func testCase_04() {
		// Assemble
		let test_bill = [3, 10, 2, 9]
		let test_k = 1
		let test_b = 7

		// Activate
		let result = bonAppetit(bill: test_bill, k: test_k, b: test_b)

		// Assert
		XCTAssertEqual(result, "Bon Appetit")
	}
}
HRTest.defaultTestSuite.run()

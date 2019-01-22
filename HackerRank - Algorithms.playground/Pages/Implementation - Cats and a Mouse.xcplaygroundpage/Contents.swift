import Foundation

func catAndMouse(x: Int, y: Int, z: Int) -> String {
	var result = ""

	let cat_A = abs(z-x)
	let cat_B = abs(z-y)

	if cat_A < cat_B {
		// cat_A is nearer
		result = "Cat A"
	} else if cat_B < cat_A {
		// cat_B is nearer
		result = "Cat B"
	} else {
		// Both cats are at same distance
		result = "Mouse C"
	}

	return result
}

import XCTest

class HRTest: XCTestCase {
	func testCase_01() {
		// Assemble
		let test_x = 1
		let test_y = 2
		let test_z = 3

		// Activate
		let result = catAndMouse(x: test_x, y: test_y, z: test_z)

		// Assert
		XCTAssertEqual(result, "Cat B")
	}

	func testCase_02() {
		// Assemble
		let test_x = 1
		let test_y = 3
		let test_z = 2

		// Activate
		let result = catAndMouse(x: test_x, y: test_y, z: test_z)

		// Assert
		XCTAssertEqual(result, "Mouse C")
	}
}
HRTest.defaultTestSuite.run()

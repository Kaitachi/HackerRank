import Foundation

func minimumSwaps(arr: [Int]) -> Int {
	var sorted_arr = arr.sorted()
	var arr = arr
	var swap_count = 0

	for i in 1...arr.count {
		while arr[i-1] != i {
			arr.swapAt(i-1, arr[i-1]-1)
			swap_count += 1
		}
	}

	return swap_count
}

func stabilize_input() {
	for i in 1...sorted_arr.count {
		if sorted_arr[i-1] != i {
			arr[arr.index(of: sorted_arr[i-1])!] = i
			sorted_arr[i-1] = i
		}
	}
}

import XCTest

class HRTest: XCTestCase {
	func testCase_01() {
		// Assemble
		let test = [7, 1, 3, 2, 4, 5, 6]

		// Activate
		let result = minimumSwaps(arr: test)

		// Assert
		XCTAssertEqual(result, 5)
	}

	func testCase_02() {
		// Assemble
		let test = [4, 3, 1, 2]

		// Activate
		let result = minimumSwaps(arr: test)

		// Assert
		XCTAssertEqual(result, 3)
	}

	func testCase_03() {
		// Assemble
		let test = [2, 3, 4, 1, 5]

		// Activate
		let result = minimumSwaps(arr: test)

		// Assert
		XCTAssertEqual(result, 3)
	}

	func testCase_04() {
		// Assemble
		let test = [1, 3, 5, 2, 4, 6, 7]

		// Activate
		let result = minimumSwaps(arr: test)

		// Assert
		XCTAssertEqual(result, 3)
	}

	func testCase_05() {
		// Assemble
		let test = [1, 3, 5, 2, 4, 6, 8]

		// Activate
		let result = minimumSwaps(arr: test)

		// Assert
		XCTAssertEqual(result, 3)
	}
}
HRTest.defaultTestSuite.run()

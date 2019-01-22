import XCTest

func breakingRecords(scores: [Int]) -> [Int] {
	var records = [scores[0], scores[0]] // Holds count of current records for [max, min] scores.
	var results = [0, 0] // Holds count of how many times has each record changed.

	for score in scores {
		// Checking if score sets maximum record...
		results[0] += (records[0] < score) ? 1 : 0
		records[0] = max(records[0], score)

		// Checking if score sets minimum record...
		results[1] += (score < records[1]) ? 1 : 0
		records[1] = min(records[1], score)
	}

	return results
}

class HRTest: XCTestCase {
	func testCase_01() {
		// Assemble
		let test = [10, 5, 20, 20, 4, 5, 2, 25, 1]

		// Activate
		let result = breakingRecords(scores: test)

		// Assert
		XCTAssertEqual(result, [2, 4])
	}

	func testCase_02() {
		// Assemble
		let test = [3, 4, 21, 36, 10, 28, 35, 5, 24, 42]

		// Activate
		let result = breakingRecords(scores: test)

		// Assert
		XCTAssertEqual(result, [4, 0])
	}
}
HRTest.defaultTestSuite.run()

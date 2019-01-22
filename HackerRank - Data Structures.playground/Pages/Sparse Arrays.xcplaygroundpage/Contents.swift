import Foundation

func matchingStrings(strings: [String], queries: [String]) -> [Int] {
	let s = strings.reduce(into: [:]) { $0[$1, default: 0] += 1 }
	return queries.map({ s[$0] ?? 0 })
}

import XCTest

class HRTest: XCTestCase {
	func testCase_01() {
		// Assemble
		let test_strings = ["aba", "baba", "aba", "xzxb"]
		let test_queries = ["aba", "xzxb", "ab"]

		// Activate
		let result = matchingStrings(strings: test_strings, queries: test_queries)

		// Assert
		XCTAssertEqual(result, [2, 1, 0])
	}

	func testCase_02() {
		// Assemble
		let test_strings = ["def", "de", "fgh"]
		let test_queries = ["de", "lmn", "fgh"]

		// Activate
		let result = matchingStrings(strings: test_strings, queries: test_queries)

		// Assert
		XCTAssertEqual(result, [1, 0, 1])
	}

	func testCase_03() {
		// Assemble
		let test_strings = ["abcde", "sdaklfj", "asdjf", "na", "basdn", "sdaklfj", "asdjf", "na", "asdjf", "na", "basdn", "sdaklfj", "asdjf"]
		let test_queries = ["abcde", "sdaklfj", "asdjf", "na", "basdn"]

		// Activate
		let result = matchingStrings(strings: test_strings, queries: test_queries)

		// Assert
		XCTAssertEqual(result, [1, 3, 4, 3, 2])
	}
}
HRTest.defaultTestSuite.run()

import Foundation
import XCTest

class HRTest: XCTestCase {

	var scores: [Int] = []
	var weighs: [Int] = []

	override func setUp() {
		scores = [10, 40, 30, 50, 20]
		weighs = [1, 2, 3, 4, 5]
	}

	override func tearDown() {
		scores.removeAll()
		weighs.removeAll()
	}

	func testGetWeightedMean() {
		// Assemble
		var result: Double

		// Activate
		result = getWeightedMean(data: scores, weighs: weighs)

		// Assert
		XCTAssertEqual(result, 32.0)
	}
}

HRTest.defaultTestSuite.run()

//let n = Int(readLine()!)!
//let data = readLine()!.split(separator: " ").map{ Int($0)! }
//let weighs = readLine()!.split(separator: " ").map{ Int($0)! }
//
//print(getWeightedMean(data: data, weighs: weighs))

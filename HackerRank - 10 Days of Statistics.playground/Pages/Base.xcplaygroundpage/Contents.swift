import Foundation

func getWeightedAverage(data: [Int], weighs: [Int]) -> Double {
	return 0.0
}

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

	func testGetWeightedAverage() {
		// Assemble
		var result: Double

		// Activate
		result = getWeightedAverage(data: scores, weighs: weighs)

		// Assert
		XCTAssertEqual(result, 32.0, "GetWeightedAverage() not working properly...")
	}
}

HRTest.defaultTestSuite.run()

//let n = Int(readLine()!)!
//var array = [Int]()
//
//while let line = readLine() {
//	array = line.split(separator: " ").map{ Int($0)! }
//}
//
//print(getWeightedAverages(data: data, weighs: weighs))

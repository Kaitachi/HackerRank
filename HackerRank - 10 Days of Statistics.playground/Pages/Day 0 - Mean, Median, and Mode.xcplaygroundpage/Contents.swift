import Foundation

//let n = Int(readLine()!)!
//var array = [Int]()
//
//while let line = readLine() {
//	array = line.split(separator: " ").map{ Int($0)! }
//}

import XCTest

class HRTest: XCTestCase {

	var myInput: [Int]!

	override func setUp() {
		myInput = [64630, 11735, 14216, 99233, 14470, 4978, 73429, 38120, 51135, 67060]
	}

	func testGetMean() {
		// Assemble
		var result: Double

		// Activate
		result = getMean(myInput)

		// Assert
		XCTAssertEqual(result, 43900.6, "getMean() is not working properly...")
	}

	func testGetMedian() {
		// Assemble
		var result: Double

		// Activate
		result = getMedian(myInput)

		// Assert
		XCTAssertEqual(result, 44627.5, "getMedian() is not working properly...")
	}

	func testGetMode() {
		// Assemble
		var result: Int

		// Activate
		result = getMode(myInput)

		// Assert
		XCTAssertEqual(result, 4978, "getMode() is not working properly...")
	}

}
HRTest.defaultTestSuite.run()

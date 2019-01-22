import Foundation
import XCTest

func smallestMultiple(n: Int) -> Int {
	var multiples = [1]

	for i in 1...n {
		let current = factors(i, primeFactors: true)
		var new = [Int]()

		for item in current {
			if multiples.index(of: item) != nil {
				new.append(multiples.remove(at: multiples.index(of: item)!))
			} else {
				new.append(item)
			}
		}

		multiples.append(contentsOf: new)
	}

	return multiples.reduce(1, *)
}

class EulerTest: XCTestCase {
	func testCase_1() {
		// Assemble
		let test = 3

		// Activate
		let result = smallestMultiple(n: test)

		// Assert
		XCTAssertEqual(result, 6)
	}

	func testCase_2() {
		// Assemble
		let test = 10

		// Activate
		let result = smallestMultiple(n: test)

		// Assert
		XCTAssertEqual(result, 2520)
	}

}
EulerTest.defaultTestSuite.run()

//_ = readLine()
//while let i = readLine() {
//	print(smallestMultiple(n: Int(i)!))
//}

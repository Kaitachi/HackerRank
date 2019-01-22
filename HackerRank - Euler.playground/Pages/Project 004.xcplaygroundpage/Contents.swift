import Foundation
import XCTest

func largestPalindromeProduct(below n: Int) -> Int {
	var largest = 0
	var factorList = [Int]()


	for i in (1..<n).reversed() {
		if isPalindrome(i) {
			factorList = factors(i)
			print(factorList)

			for index in 0..<factorList.count/2 {
				if Int(floor(log10(Double(Double(factorList[index])))+1)) == 3 && Int(floor(log10(Double(Double(factorList[factorList.count-index-1])))+1)) == 3 {
					largest = i
					return largest
				}
			}
		}
	}

	return 0
}

class EulerTest: XCTestCase {
	func testCase_1() {
		// Assemble
		let test = 101110

		// Activate
		let result = largestPalindromeProduct(below: test)

		// Assert
		XCTAssertEqual(result, 101101)
	}

	func testCase_2() {
		// Assemble
		let test = 800000

		// Activate
		let result = largestPalindromeProduct(below: test)

		// Assert
		XCTAssertEqual(result, 793397)
	}

	func testCase_3() {
		// Assemble
		let test = 1000000

		// Activate
		let result = largestPalindromeProduct(below: test)

		// Assert
		XCTAssertEqual(result, 906609)
	}

	func testCase_4() {
		// Assemble
		let test = 101101

		// Activate
		let result = largestPalindromeProduct(below: test)

		// Assert
		XCTAssertEqual(result, 99999)
	}

}
//EulerTest.defaultTestSuite.run()

//_ = readLine()
//while let i = readLine() {
//	print(largestPalindromeProduct(below: Int(i)!))
//}

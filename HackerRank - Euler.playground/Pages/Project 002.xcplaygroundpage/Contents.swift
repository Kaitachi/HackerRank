import Foundation
import XCTest

func FibEvenSum(n: Int) -> Int {
	var result = 0

	func Fib(_ a: Int, _ b: Int) -> Int {
		//print("Fib(\(a), \(b)): \(a+b)")
		return a+b
	}

	var first = 1
	var second = 2

	while second < n {
		result += (second%2==0) ? second : 0

		let x = second
		second = Fib(first, second)
		first = x
	}

	return result
}

class EulerTest: XCTestCase {
	func testCase_1() {
		// Assemble
		let test = 10

		// Activate
		let result = FibEvenSum(n: test)

		// Assert
		XCTAssertEqual(result, 10)
	}
	func testCase_2() {
		// Assemble
		let test = 100

		// Activate
		let result = FibEvenSum(n: test)

		// Assert
		XCTAssertEqual(result, 44)
	}
}
EulerTest.defaultTestSuite.run()

//_ = readLine()
//while let i = readLine() {
//	print(FibEvenSum(n: Int(i)!))
//}

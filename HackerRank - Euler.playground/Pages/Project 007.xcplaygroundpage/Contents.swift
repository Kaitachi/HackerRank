import Foundation
import XCTest

var primes = [2]

func nthPrime(n: Int, primes: inout [Int]) -> Void {

	func isPrime(n: Int, primes: [Int]) -> Bool {
		// Checks if n is prime according to given list of primes.

		// First, map n % [prime] to boolean list that contains
		//     whether $0 is a proper divisor of n.
		// If the list contains a proper divisor of n,
		//     then the number is not prime.
		//return !primes.map({ n%$0 == 0 }).contains(true)

		for i in 2...Int(sqrt(Double(n)))+1 {
			if n%i == 0 {
				return false
			}
		}
		return true
	}

	// If we don't want the first prime number,
	//     then we look for a new candidate prime.

	// Take the last element from the list gathered so far:
	// * If last number is even, add (primes.last! % 2) = 0
	// * If last number is odd , add (primes.last! % 2) = 1
	var candidate = primes.last! + (primes.last! % 2) + 1

	// Let's iterate through the odd numbers
	//     until we get to the next prime...
	while !isPrime(n: candidate, primes: primes) {
		candidate += 2
	}

	// Next prime in sequence has been found;
	//     let's add it to the list of primes
	//     and return our result
	primes.append(candidate)
}

//func primeCount(n: Int) -> Int {
//	var primes = [Int]()
//
//	// Let's keep adding primes until the product of current primes
//	//     exceeds the given number n.
//	// Cannot work with the product of more than 14 primes with Swift... =(
//	while primes.reduce(1, *) <= n && primes.count < 15 {
//		primes.append(nthPrime(n: primes.count + 1))
//	}
//
//	return (primes.count <= 15 && n < 614889782588491410) ? primes.count-1 : 15
//}

//func primeFinder(position n: Int) -> Int {
//	guard n != 1 else { return 2 }
//
//	var current = 3
//	var counter = 2
//	var last = 3
//
//	while counter <= n {
//		if isPrime(current) {
//			counter += 1
//			last = current
//		}
//
//		current += 2
//	}
//
//	return last
//}

func primeFinder(position n: Int, primes: inout [Int]) -> Int {

	print("received new number: \(n)")
	print("current prime list: \(primes)")

	while primes.count < n {
		//print("inside while loop... (\(primes.count) items)")
		nthPrime(n: primes.count, primes: &primes)
	}

	return primes[n-1]
}

class EulerTest: XCTestCase {
//	func testCase_1() {
//		// Assemble
//		let test = 1
//
//		// Activate
//		let result = primeFinder(position: test, primes: &primes)
//
//		// Assert
//		XCTAssertEqual(result, 2)
//	}

//	func testCase_2() {
//		// Assemble
//		let test = 2
//
//		// Activate
//		let result = primeFinder(position: test, primes: &primes)
//
//		// Assert
//		XCTAssertEqual(result, 3)
//	}

	func testCase_3() {
		// Assemble
		let test = 3

		// Activate
		let result = primeFinder(position: test, primes: &primes)

		// Assert
		XCTAssertEqual(result, 5)
	}

	func testCase_4() {
		// Assemble
		let test = 6

		// Activate
		let result = primeFinder(position: test, primes: &primes)

		// Assert
		XCTAssertEqual(result, 13)
	}

	func testCase_5() {
		// Assemble
		let test = 10001

		// Activate
		let result = primeFinder(position: test, primes: &primes)

		// Assert
		XCTAssertEqual(result, 104743)
	}
}
EulerTest.defaultTestSuite.run()

//_ = readLine()
//while let i = readLine() {
//	print(primeFinder(n: Int(i)!))
//}

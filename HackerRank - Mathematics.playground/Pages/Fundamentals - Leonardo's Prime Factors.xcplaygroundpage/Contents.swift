import Foundation

func nthPrime(n: Int, primes: [Int] = [2]) -> Int {

	func isPrime(n: Int, primes: [Int]) -> Bool {
		// Checks if n is prime according to given list of primes.

		// First, map n % [prime] to boolean list that contains
		//     whether $0 is a proper divisor of n.
		// If the list contains a proper divisor of n,
		//     then the number is not prime.
		return !primes.map({ n%$0 == 0 }).contains(true)
	}

	if n == 1 {
		// nth Prime found!
		// Return last element in primes list.
		return primes.last!
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
	var primes = primes
	primes.append(candidate)
	return nthPrime(n: n-1, primes: primes)
}

func nthPrimeStatic(n: Int) -> Int {
	let primes = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71]
	return primes[n-1]
}

func primeCount(n: Int) -> Int {
	var primes = [Int]()

	// Let's keep adding primes until the product of current primes
	//     exceeds the given number n.
	// Cannot work with the product of more than 14 primes with Swift... =(
	while primes.reduce(1, *) <= n && primes.count < 15 {
		primes.append(nthPrime(n: primes.count + 1))
	}

	return (primes.count <= 15 && n < 614889782588491410) ? primes.count-1 : 15
}

import XCTest

class nthPrimeTest: XCTestCase {
	func testCase_01() {
		// Assemble
		let test = 1

		// Activate
		let result = nthPrime(n: test)

		// Assert
		XCTAssertEqual(result, 2)
	}

	func testCase_02() {
		// Assemble
		let test = 2

		// Activate
		let result = nthPrime(n: test)

		// Assert
		XCTAssertEqual(result, 3)
	}

	func testCase_03() {
		// Assemble
		let test = 3

		// Activate
		let result = nthPrime(n: test)

		// Assert
		XCTAssertEqual(result, 5)
	}

	func testCase_04() {
		// Assemble
		let test = 4

		// Activate
		let result = nthPrime(n: test)

		// Assert
		XCTAssertEqual(result, 7)
	}

	func testCase_05() {
		// Assemble
		let test = 5

		// Activate
		let result = nthPrime(n: test)

		// Assert
		XCTAssertEqual(result, 11)
	}

	func testCase_06() {
		// Assemble
		let test = 203

		// Activate
		let result = nthPrime(n: test)

		// Assert
		XCTAssertEqual(result, 1237)
	}
}
//nthPrimeTest.defaultTestSuite.run()

class HRTest: XCTestCase {
	func testCase_01() {
		// Assemble
		let test = 1

		// Activate
		let result = primeCount(n: test)

		// Assert
		XCTAssertEqual(result, 0)
	}

	func testCase_02() {
		// Assemble
		let test = 2

		// Activate
		let result = primeCount(n: test)

		// Assert
		XCTAssertEqual(result, 1)
	}

	func testCase_03() {
		// Assemble
		let test = 3

		// Activate
		let result = primeCount(n: test)

		// Assert
		XCTAssertEqual(result, 1)
	}

	func testCase_04() {
		// Assemble
		let test = 500

		// Activate
		let result = primeCount(n: test)

		// Assert
		XCTAssertEqual(result, 4)
	}

	func testCase_05() {
		// Assemble
		let test = 2310

		// Activate
		let result = primeCount(n: test)

		// Assert
		XCTAssertEqual(result, 5)
	}

	func testCase_06() {
		// Assemble
		let test = 5000

		// Activate
		let result = primeCount(n: test)

		// Assert
		XCTAssertEqual(result, 5)
	}

	func testCase_07() {
		// Assemble
		let test = 10000000000

		// Activate
		let result = primeCount(n: test)

		// Assert
		XCTAssertEqual(result, 10)
	}

	func testCase_08() {
		// Assemble
		let test = 614889782588491410

		// Activate
		let result = primeCount(n: test)

		// Assert
		XCTAssertEqual(result, 15)
	}

	func testCase_09() {
		// Assemble
		let test = 614889782588491410

		// Activate
		let result = primeCount(n: test)

		// Assert
		XCTAssertEqual(result, 15)
	}

	func testCase_10() {
		// Assemble
		let test = 614889782588491409

		// Activate
		let result = primeCount(n: test)

		// Assert
		XCTAssertEqual(result, 14)
	}

	func testCase_11() {
		// Assemble
		let test = 614889782588491408

		// Activate
		let result = primeCount(n: test)

		// Assert
		XCTAssertEqual(result, 14)
	}

	func testCase_12() {
		// Assemble
		let test = 614889782588491407

		// Activate
		let result = primeCount(n: test)

		// Assert
		XCTAssertEqual(result, 14)
	}

	func testCase_13() {
		// Assemble
		let test = 6148897825884914

		// Activate
		let result = primeCount(n: test)

		// Assert
		XCTAssertEqual(result, 13)
	}

	func testCase_14() {
		// Assemble
		let test = 614889782588

		// Activate
		let result = primeCount(n: test)

		// Assert
		XCTAssertEqual(result, 11)
	}

	func testCase_15() {
		// Assemble
		let test = 614889782588491410

		// Activate
		let result = primeCount(n: test)

		// Assert
		XCTAssertEqual(result, 15)
	}

	func testCase_16() {
		// Assemble
		let test = 614889782588491411

		// Activate
		let result = primeCount(n: test)

		// Assert
		XCTAssertEqual(result, 15)
	}

	func testCase_17() {
		// Assemble
		let test = 614889782588491412

		// Activate
		let result = primeCount(n: test)

		// Assert
		XCTAssertEqual(result, 15)
	}

	func testCase_18() {
		// Assemble
		let test = 614889782588491413

		// Activate
		let result = primeCount(n: test)

		// Assert
		XCTAssertEqual(result, 15)
	}

	func testCase_19() {
		// Assemble
		let test = 614889782588491415

		// Activate
		let result = primeCount(n: test)

		// Assert
		XCTAssertEqual(result, 15)
	}

	func testCase_20() {
		// Assemble
		let test = 614889782588491410

		// Activate
		var result = 0

		for _ in 1...100 {
			result = primeCount(n: test)
		}

		// Assert
		XCTAssertEqual(result, 15)
	}
}
HRTest.defaultTestSuite.run()

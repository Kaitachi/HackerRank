import Foundation

public func factors(_ num: Int, primeFactors: Bool = false) -> [Int] {
	var factors = [Int]()	// used to store desired factors
	var number = num 		// used for prime factorings

	if num == 1 { return (!primeFactors) ? [1] : [] } // keep us from unnecessary messes if num == 1

	// Special case handler...
	if primeFactors {
		// ...for prime numbers, if prime factoring is desired...
		if isPrime(num) {
			return [num]
		}
	} else {
		// ...and for the edge case of 1 and num
		factors.append(1)
		factors.append(num)
	}

	// Iterate through all numbers from 2 to sqrt(num)
	for i in 2...max(Int(sqrt(Double(num))) + ((primeFactors) ? 1 : 0), 2) {
		if num%i == 0 {
			if primeFactors && isPrime(i) {
				// This is where we test all prime numbers, if we desire prime factoring
				while number%i == 0 {
					factors.append(i)
					number = number/i
				}
			} else if !primeFactors && num > 2 {
				// Otherwise, just keep adding the numbers to the list and its factor.
				factors.append(i)
				factors.append(num/i)
			}
		}
	}

	return factors.sorted()
}

public func isPrime(_ num: Int) -> Bool {
	//print("prime(\(num)): \(factors(num: num).count == 1 && num != 1)")
	return (factors(num).count == 2 && num != 1)
}

public func Fib(_ a: Int, _ b: Int) -> Int {
	//print("Fib(\(a), \(b)): \(a+b)")
	return a+b
}

public func getDigit(from n: Int, digit d: Int) -> Int {
	return Int(Double(n)/pow(Double(10), Double(d-1))) % 10
}

public func isPalindrome(_ num: Int) -> Bool {
	let len = Int(floor(log10(Double(num))+1))
	var pal: Bool = true

	for i in 0...len/2 {
		pal = (pal && getDigit(from: Int(num), digit: i+1) - getDigit(from: Int(num), digit: len-i) == 0)
	}

	return pal
}

public func sqSum(_ n: Int) -> Int {
	return n*(n+1)*(2*n+1)/6
}

public func sumSq(_ n: Int) -> Int {
	return (n*(n+1)/2)*(n*(n+1)/2)
}















import XCTest

class PalindromeTest: XCTestCase {
	func testPalindrome_1() {
		// Assemble
		let test = 100

		// Activate
		let result = isPalindrome(test)

		// Assert
		XCTAssertFalse(result)
	}

	func testPalindrome_2() {
		// Assemble
		let test = 101

		// Activate
		let result = isPalindrome(test)

		// Assert
		XCTAssertTrue(result)
	}

	func testPalindrome_3() {
		// Assemble
		let test = 1001

		// Activate
		let result = isPalindrome(test)

		// Assert
		XCTAssertTrue(result)
	}

	func testPalindrome_4() {
		// Assemble
		let test = 11110

		// Activate
		let result = isPalindrome(test)

		// Assert
		XCTAssertFalse(result)
	}

	func testPalindrome_5() {
		// Assemble
		let test = 100000

		// Activate
		let result = isPalindrome(test)

		// Assert
		XCTAssertFalse(result)
	}

}
//PalindromeTest.defaultTestSuite.run()

class FactorsTest: XCTestCase {
	func testFactors_01() {
		// Assemble
		let test = 1

		// Activate
		let result = factors(test)

		// Assert
		XCTAssertEqual(result, [1])
	}

	func testFactors_02() {
		// Assemble
		let test = 1

		// Activate
		let result = factors(test, primeFactors: true)

		// Assert
		XCTAssertEqual(result, [])
	}

	func testFactors_03() {
		// Assemble
		let test = 2

		// Activate
		let result = factors(test)

		// Assert
		XCTAssertEqual(result, [1, 2])
	}

	func testFactors_04() {
		// Assemble
		let test = 2

		// Activate
		let result = factors(test, primeFactors: true)

		// Assert
		XCTAssertEqual(result, [2])
	}

	func testFactors_05() {
		// Assemble
		let test = 3

		// Activate
		let result = factors(test)

		// Assert
		XCTAssertEqual(result, [1, 3])
	}

	func testFactors_06() {
		// Assemble
		let test = 3

		// Activate
		let result = factors(test, primeFactors: true)

		// Assert
		XCTAssertEqual(result, [3])
	}

	func testFactors_07() {
		// Assemble
		let test = 4

		// Activate
		let result = factors(test)

		// Assert
		XCTAssertEqual(result, [1, 2, 2, 4])
	}

	func testFactors_08() {
		// Assemble
		let test = 4

		// Activate
		let result = factors(test, primeFactors: true)

		// Assert
		XCTAssertEqual(result, [2, 2])
	}

	func testFactors_09() {
		// Assemble
		let test = 6

		// Activate
		let result = factors(test)

		// Assert
		XCTAssertEqual(result, [1, 2, 3, 6])
	}

	func testFactors_10() {
		// Assemble
		let test = 6

		// Activate
		let result = factors(test, primeFactors: true)

		// Assert
		XCTAssertEqual(result, [2, 3])
	}

	func testFactors_11() {
		// Assemble
		let test = 23

		// Activate
		let result = factors(test)

		// Assert
		XCTAssertEqual(result, [1, 23])
	}

	func testFactors_12() {
		// Assemble
		let test = 23

		// Activate
		let result = factors(test, primeFactors: true)

		// Assert
		XCTAssertEqual(result, [23])
	}

	func testFactors_13() {
		// Assemble
		let test = 24

		// Activate
		let result = factors(test)

		// Assert
		XCTAssertEqual(result, [1, 2, 3, 4, 6, 8, 12, 24])
	}

	func testFactors_14() {
		// Assemble
		let test = 24

		// Activate
		let result = factors(test, primeFactors: true)

		// Assert
		XCTAssertEqual(result, [2, 2, 2, 3])
	}

	func testFactors_15() {
		// Assemble
		let test = 25

		// Activate
		let result = factors(test)

		// Assert
		XCTAssertEqual(result, [1, 5, 5, 25])
	}

	func testFactors_16() {
		// Assemble
		let test = 25

		// Activate
		let result = factors(test, primeFactors: true)

		// Assert
		XCTAssertEqual(result, [5, 5])
	}

	func testFactors_17() {
		// Assemble
		let test = 586390350

		// Activate
		let result = factors(test)

		// Assert
		XCTAssertEqual(result, [1, 2, 3, 5, 6, 7, 10, 13, 14, 15, 17, 19, 21, 25, 26, 30, 34, 35, 38, 39, 42, 49, 50, 51, 57, 65, 70, 75, 78, 85, 91, 95, 98, 102, 105, 114, 119, 130, 133, 147, 150, 170, 175, 182, 190, 195, 210, 221, 238, 245, 247, 255, 266, 273, 285, 294, 323, 325, 350, 357, 361, 390, 399, 425, 442, 455, 475, 490, 494, 510, 525, 546, 570, 595, 637, 646, 650, 663, 665, 714, 722, 735, 741, 798, 833, 850, 910, 931, 950, 969, 975, 1050, 1083, 1105, 1190, 1225, 1235, 1274, 1275, 1326, 1330, 1365, 1425, 1470, 1482, 1547, 1615, 1666, 1729, 1785, 1805, 1862, 1911, 1938, 1950, 1995, 2166, 2210, 2261, 2275, 2450, 2470, 2499, 2527, 2550, 2730, 2793, 2850, 2975, 3094, 3185, 3230, 3315, 3325, 3458, 3570, 3610, 3675, 3705, 3822, 3990, 4165, 4199, 4522, 4550, 4641, 4655, 4693, 4845, 4998, 5054, 5187, 5415, 5525, 5586, 5950, 6137, 6175, 6370, 6630, 6650, 6783, 6825, 7350, 7410, 7581, 7735, 8075, 8330, 8398, 8645, 8925, 9025, 9282, 9310, 9386, 9555, 9690, 9975, 10374, 10829, 10830, 11050, 11305, 12103, 12274, 12350, 12495, 12597, 12635, 13566, 13650, 13965, 14079, 15162, 15470, 15827, 15925, 16150, 16575, 17290, 17689, 17850, 18050, 18411, 18525, 19110, 19950, 20825, 20995, 21658, 22610, 23205, 23275, 23465, 24206, 24225, 24990, 25194, 25270, 25935, 27075, 27930, 28158, 29393, 30685, 31654, 31850, 32487, 32851, 33150, 33915, 35378, 36309, 36822, 37050, 37905, 38675, 41650, 41990, 42959, 43225, 46410, 46550, 46930, 47481, 47775, 48450, 51870, 53067, 54145, 54150, 56525, 58786, 60515, 61370, 62475, 62985, 63175, 64974, 65702, 67830, 69825, 70395, 72618, 75810, 77350, 79135, 79781, 85918, 86450, 88179, 88445, 92055, 94962, 95550, 98553, 104975, 106134, 108290, 113050, 116025, 117325, 121030, 124950, 125970, 126350, 128877, 129675, 139650, 140790, 146965, 153425, 158270, 159562, 162435, 164255, 169575, 176358, 176890, 181545, 184110, 189525, 197106, 205751, 209950, 214795, 229957, 232050, 234650, 237405, 239343, 257754, 259350, 265335, 270725, 293930, 300713, 302575, 306850, 314925, 324870, 328510, 339150, 351975, 363090, 379050, 395675, 398905, 411502, 429590, 440895, 442225, 459914, 460275, 474810, 478686, 492765, 530670, 541450, 558467, 601426, 605150, 617253, 629850, 644385, 689871, 703950, 734825, 791350, 797810, 812175, 821275, 881790, 884450, 902139, 907725, 920550, 985530, 1028755, 1073975, 1116934, 1149785, 1187025, 1196715, 1234506, 1288770, 1326675, 1379742, 1469650, 1503565, 1624350, 1642550, 1675401, 1804278, 1815450, 1994525, 2057510, 2147950, 2204475, 2299570, 2374050, 2393430, 2463825, 2653350, 2792335, 3007130, 3086265, 3221925, 3350802, 3449355, 3909269, 3989050, 4408950, 4510695, 4927650, 5143775, 5584670, 5748925, 5983575, 6172530, 6443850, 6898710, 7517825, 7818538, 8377005, 9021390, 10287550, 11497850, 11727807, 11967150, 13961675, 15035650, 15431325, 16754010, 17246775, 19546345, 22553475, 23455614, 27923350, 30862650, 34493550, 39092690, 41885025, 45106950, 58639035, 83770050, 97731725, 117278070, 195463450, 293195175, 586390350])
	}

	func testFactors_18() {
		// Assemble
		let test = 586390350

		// Activate
		let result = factors(test, primeFactors: true)

		// Assert
		XCTAssertEqual(result, [2, 3, 5, 5, 7, 7, 13, 17, 19, 19])
	}

}
//FactorsTest.defaultTestSuite.run()

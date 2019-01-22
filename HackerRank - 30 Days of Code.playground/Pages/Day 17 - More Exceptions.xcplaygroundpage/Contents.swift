import Foundation

// Defining enum for throwing error
// throw RangeError.NotInRange... is used to throw the error
enum RangeError : Error {
	case NotInRange(String)
}

// Start of class Calculator
class Calculator {
	// Start of function power
	func power(n: Int, p: Int) throws -> Int {
		guard n >= 0 && p >= 0 else {
			throw RangeError.NotInRange("n and p should be non-negative")
		}

		return Int(pow(Double(n), Double(p)))
	} // End of function power
} // End of class Calculator

let myCalculator = Calculator()
let tests = ["3 5", "2 4", "-1 -2", "-1 3", "4 -5"]
let t = tests.count

for i in 0..<t {
	let np = tests[i].components(separatedBy: " ").map{ Int($0)! }
	let n = np[0]
	let p = np[1]

	do {
		let ans = try myCalculator.power(n: n, p: p)
		print(ans)
	} catch RangeError.NotInRange(let errorMsg) {
		print(errorMsg)
	}
}

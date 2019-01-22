import Foundation

func getLongestStreak(n: Int) -> Void {

	var i: Int = 0

	var quotient: Int = n
	var count: Int = 0
	var result: Int = 0

	while Int(pow(Double(2),Double(i))) <= n {

		if quotient % 2 != 0 {
			count += 1
			result = Int(max(result, count))
			//print("1!")
			//print("r: \(result); c: \(count)")
		} else {
			count = 0
			//print("0...")
			//print("r: \(result); c: \(count)")
		}

		quotient = Int(quotient / 2)

		i += 1
	}

	print("count: \(result)")

}

getLongestStreak(n: 7)



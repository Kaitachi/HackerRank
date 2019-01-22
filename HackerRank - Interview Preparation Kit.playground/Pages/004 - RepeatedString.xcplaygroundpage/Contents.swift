import Foundation

func repeatedString(s: String, n: Int) -> Int {

	var count = 0

	// amount of times that s is repeated completely * the amount of times that "a" appears in s
	count += (n / s.count) * s.filter {$0 == "a"}.count

	// amount of times that "a" appears in last truncated substring
	count += s.dropLast(s.count-(n % s.count)).filter {$0 == "a"}.count

	return count

}

let s = "aba"
let n = 10

let result = repeatedString(s: s, n: n)

print("result: \(result) \t (expected 7)")


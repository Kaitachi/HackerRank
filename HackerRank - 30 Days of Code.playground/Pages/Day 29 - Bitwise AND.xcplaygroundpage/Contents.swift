import Foundation

func greatestPossibleAND(n: Int, k: Int) -> Int {
	var maximum = 0

	for i in 1...n {
		for j in i...n {
			if i != j && (i&j) < k {
				maximum = max(i&j, maximum)
			}
		}
	}

	return maximum
	
}

let a = ["5 2", "8 5", "2 2"]

for item in a {
	let nk = item.split(separator: " ").map{ String($0) }

	let n = Int(nk[0].trimmingCharacters(in: .whitespacesAndNewlines))!
	let k = Int(nk[1].trimmingCharacters(in: .whitespacesAndNewlines))!

	let m = greatestPossibleAND(n: n, k: k)
	print(m)
}

/*
guard let t = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
	else { fatalError("Bad input") }

for tItr in 1...t {
	guard let nkTemp = readLine() else { fatalError("Bad input") }
	let nk = nkTemp.split(separator: " ").map{ String($0) }

	guard let n = Int(nk[0].trimmingCharacters(in: .whitespacesAndNewlines))
		else { fatalError("Bad input") }

	guard let k = Int(nk[1].trimmingCharacters(in: .whitespacesAndNewlines))
		else { fatalError("Bad input") }
}
*/

import Foundation

func rotLeft(a: [Int], d: Int) -> [Int] {

	var rot = a

	for (k, v) in a.enumerated() {
		rot[abs((a.count+k-d)%a.count)] = v
	}

	return rot
}

let a = [1,2,3,4,5]
let d = 4

let result = rotLeft(a: a, d: d)

print("result: \(result) \t (expected [5,1,2,3,4])")


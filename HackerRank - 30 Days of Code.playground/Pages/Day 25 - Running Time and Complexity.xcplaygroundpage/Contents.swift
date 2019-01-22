import Foundation

func primality(n: Int) -> Void {

	switch n {
	case 1:
		print("Not prime")
		return
	case 2:
		print("Prime")
		return
	default:
		for i in (2...Int(Double(n).squareRoot())).filter({ $0%2 == 1 || $0 == 2 }) {
			if n%i == 0 {
				print("Not prime")
				return
			}
		}
	}

	print("Prime")

	return
}

let n = 3
let a = [1, 2, 79, 10, 25, 103]

for item in a {
	primality(n: item)
}

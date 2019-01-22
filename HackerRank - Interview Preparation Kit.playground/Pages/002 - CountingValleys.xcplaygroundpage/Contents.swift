import Foundation

func countingValleys(n: Int, s: String) -> Int {

	var height = 0
	var last = 0
	var mountains = 0
	var valleys = 0

	for i in s {

		last = height

		switch i {
		case "U":
			height += 1
		case "D":
			height -= 1
		default:
			height += 0
		}

		//print("went \(i); height: \(height)")

		if (last == 0) {
			mountains += (height > 0 ? 1 : 0)
			valleys += (height < 0 ? 1 : 0)
		}

	}

	//print("mountains: \(mountains) \t valleys: \(valleys)")

	return valleys
}

let n = 8
let s = "UDDDUDUU"

let result = countingValleys(n: n, s: s)

print("result: \(result) \t (expected 1)")

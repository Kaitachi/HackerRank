import Foundation

func staircase(n: Int) -> Void {
	var line = 1

	while line <= n {
		print(String(repeating: " ", count: n-line)+String(repeating: "#", count: line))
		line += 1
	}
}

staircase(n: 23)

import Foundation

func factorial(n: Int) -> Int {

	if n > 1 {
		return n * factorial(n: n-1)
	} else {
		return 1
	}

}

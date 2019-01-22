import Foundation

func weird(n: Int) -> Void {

	if ((n % 2 == 0) && (n < 6 || 20 < n)) {
		print("Not Weird")
	} else {
		print("Weird")
	}

}

for i in 1...100 {
	weird(n: i)
}

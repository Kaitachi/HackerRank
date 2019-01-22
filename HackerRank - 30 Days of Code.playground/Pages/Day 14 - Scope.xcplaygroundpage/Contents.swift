import Foundation

class Difference {
	private var elements = [Int]()
	var maximumDifference: Int
	// Write your code here

	init(a: [Int]) {
		self.elements = a
		self.maximumDifference = 0
	}

	func computeDifference() {
		for e in elements {
			for i in 0..<elements.count {
				self.maximumDifference = max(abs(e - elements[i]), self.maximumDifference)
			}
		}
	}

} // End of Difference class

//let n = Int(readLine()!)!
//let a = readLine()!.components(separatedBy: " ").map{ Int($0)! }

let a = [1, 2, 5]

let d = Difference(a: a)

d.computeDifference()

print(d.maximumDifference)

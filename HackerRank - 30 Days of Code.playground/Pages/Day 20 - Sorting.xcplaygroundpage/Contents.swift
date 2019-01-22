import Foundation

// read the integer n
//let n = Int(readLine()!)!
let n = 3

// read the array
//let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }
let arr = [3, 2, 1]

func BubbleSort(array: [Int]) -> (numSwaps: Int, sortedArray: [Int]) {
	// number of swaps to sort array
	var numSwaps = 0
	var arr = array

	for i in 0..<array.count {

		for j in 0..<(array.count-1) {
			if arr[j] > arr[j+1] {
				let temp = arr[j+1]
				arr[j+1] = arr[j]
				arr[j] = temp
				numSwaps += 1
			}

		}

	}

	return (numSwaps, arr)

}

let solution = BubbleSort(array: arr)

print("Array is sorted in \(solution.numSwaps) swaps.")
print("First Element: \(solution.sortedArray.first!)")
print("Last Element: \(solution.sortedArray.last!)")

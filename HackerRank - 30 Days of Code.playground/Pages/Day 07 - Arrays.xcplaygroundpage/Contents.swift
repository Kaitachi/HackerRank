import Foundation

func reverse(arr: [Int]) {

	var result = arr

	result.reverse()

	for i in 0..<result.count {
		print(result[i], terminator: " ")
	}

}

let n = 4

let arrTemp = "1 2 3 4"
let arr: [Int] = arrTemp.split(separator: " ").map {
	if let arrItem = Int($0.trimmingCharacters(in: .whitespacesAndNewlines)) {
		return arrItem
	} else { fatalError("Bad input") }
}

guard arr.count == n else { fatalError("Bad input") }

reverse(arr: arr)

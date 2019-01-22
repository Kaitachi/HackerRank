import Foundation

func hourglassSum(arr: [[Int]]) -> Int {

	var sum = -63

	func hourglass(i: Int, j: Int) -> Int {
		return arr[i-1][j-1] + arr[i-1][j] + arr[i-1][j+1] + arr[i][j] + arr[i+1][j-1] + arr[i+1][j] + arr[i+1][j+1]
	}

	for i in 1...arr.count-2 {
		for j in 1...arr[1].count-2 {
			//print("arr[\(i)][\(j)]: \(arr[i][j])")
			let current = hourglass(i: i, j: j)
			sum = (current > sum ? current : sum)
		}
	}

	return sum
}

/*
let arr = [[-9,-9,-9, 1, 1, 1],
[ 0,-9, 0, 4, 3, 2],
[-9,-9,-9, 1, 2, 3],
[ 0, 0, 8, 6, 6, 0],
[ 0, 0, 0,-2, 0, 0],
[ 0, 0, 1, 2, 4, 0]]
*/

let arr = [[-1,-1,0,-9,-2,-2],
		   [-2,-1,-6,-8,-2,-5],
		   [-1,-1,-1,-2,-3,-4],
		   [-1,-9,-2,-4,-4,-5],
		   [-7,-3,-3,-2,-9,-9],
		   [-1,-3,-1,-2,-4,-5]]


let result = hourglassSum(arr: arr)

print("result: \(result) \t (expected 28)")

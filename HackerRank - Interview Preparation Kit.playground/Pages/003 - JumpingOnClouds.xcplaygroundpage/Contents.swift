import Foundation

func jumpingOnClouds(c: [Int]) -> Int {

	var cloud = 0
	var jumps = 0

	repeat {

		//print("=====")
		//print("current cloud:  c[\(cloud)]: \(c[cloud])")

		if (cloud+2 < c.count) {
			//print("visible clouds: c[\(cloud+1)]: \(c[cloud+1]) \t c[\(cloud+2)]: \(c[cloud+2])")
			if (c[cloud+2] == 0) {
				//print("+2")
				cloud += 2
			} else {
				//print("+1")
				cloud += 1
			}
		} else {
			//print("+1")
			cloud += 1
		}

		jumps += 1

		//print("cloud: \(cloud) \t jumps: \(jumps)")

	} while (cloud < c.count - 1)

	return jumps
}

let c = [0,0,0,0,1,0]

let result = jumpingOnClouds(c: c)

print("result: \(result) \t (expected 4)")

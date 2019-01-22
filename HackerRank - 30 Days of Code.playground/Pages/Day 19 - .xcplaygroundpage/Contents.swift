import Foundation

let n = 6
var sum = 0

for i in 1...n {
	if n%i == 0 {
		print(i)
		sum += i
	}
}

print(sum)

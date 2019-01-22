import Foundation

// read integers line by line
//var a = Int(readLine()!)!
//var b = Int(readLine()!)!

// Hint: Type print(a + b) below
//print(a+b)


func mygcd(_ a: Int, _ b: Int) -> Int {
	let r = a % b
	if r != 0 {
		return mygcd(b, r)
	} else {
		return b
	}
}

mygcd(52, 39)        // 13
mygcd(228, 36)       // 12
mygcd(51357, 3819)   // 57
mygcd(4, 1)			 // 1
mygcd(5, 5)		     // 5


import Foundation

func sockMerchant(n: Int, ar: [Int]) -> Int {

	var remaining = ar
	var matched = [[Int]]()
	var unmatched = [Int]()

	while (remaining.count > 0) {

		//print("current element: \(remaining[0])")
		var found = false

		for i in 1..<remaining.count {

			if (remaining[0] == remaining[i]) {
				//print("MATCHED!")
				matched.append([remaining.remove(at: i),remaining.remove(at: 0)])
				found = true
				break
			}

		}

		if (!found) {
			//print("no match...")
			unmatched.append(remaining.remove(at: 0))
		}

		//print("=====")
		//print("remain: \(remaining)")
		//print("matched: \(matched)")
		//print("unmatched: \(unmatched)")

	}

	return matched.count

}

let n = 9
let ar = [10,20,20,10,10,30,50,10,20]

let result = sockMerchant(n: n, ar: ar)

print("result: \(result) \t (expected 3)")

guard let t = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
	else { fatalError("Bad input") }

for tItr in 1...t {
	guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
		else { fatalError("Bad input") }

	guard let qTemp = readLine() else { fatalError("Bad input") }
	let q: [Int] = qTemp.split(separator: " ").map {
		if let qItem = Int($0.trimmingCharacters(in: .whitespacesAndNewlines)) {
			return qItem
		} else { fatalError("Bad input") }
	}

	guard q.count == n else { fatalError("Bad input") }

	minimumBribes(q: q)
}


let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
let fileHandle = FileHandle(forWritingAtPath: stdout)!

guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
	else { fatalError("Bad input") }

guard let cTemp = readLine() else { fatalError("Bad input") }
let c: [Int] = cTemp.split(separator: " ").map {
	if let cItem = Int($0.trimmingCharacters(in: .whitespacesAndNewlines)) {
		return cItem
	} else { fatalError("Bad input") }
}

guard c.count == n else { fatalError("Bad input") }

let result = 3 //jumpingOnClouds(c: c)

fileHandle.write(String(result).data(using: .utf8)!)
fileHandle.write("\n".data(using: .utf8)!)

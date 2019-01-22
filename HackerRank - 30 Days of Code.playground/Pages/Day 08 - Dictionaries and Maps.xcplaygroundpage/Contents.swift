import Foundation

var phoneBook = [String: String]()

func getNumber(name: String) -> String {
	if phoneBook[name] != nil {
		return "\(name)=\(phoneBook[name]!)"
	} else {
		return "Not found"
	}
}

//guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
//	else { fatalError("Bad input") }

let n = 1

let inputString = "sam 99912222"

for _ in 1...n {
	//let inputString = readLine()!.trimmingCharacters(in: .whitespacesAndNewlines).split(separator: " ")
	//let inputString = readLine()!.trimmingCharacters(in: .whitespacesAndNewlines).split(separator: " ")
	//print(inputString.trimmingCharacters(in: .whitespacesAndNewlines).split(separator: " "))
	//print("\(inputString[0])=\(inputString[1])")
	phoneBook[String(inputString[0])] = String(inputString[1])
}

while let query = readLine() {
	let inputString = query.trimmingCharacters(in: .whitespacesAndNewlines)
	print(getNumber(name: inputString))
}

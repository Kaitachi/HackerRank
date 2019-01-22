import Foundation

func isGmail(email: String) -> Bool {
	//print("checking \(email)...")

	let regex = try! NSRegularExpression(pattern: "@gmail.com")
	let match = regex.firstMatch(in: email, options: [], range: NSRange(location: 0, length: email.utf16.count)) != nil

	return match
}

let a = ["riya riya@gmail.com", "julia julia@julia.me", "julia sjulia@gmail.com", "julia julia@gmail.com", "samantha samantha@gmail.com", "tanya tanya@gmail.com"]

/*
guard let N = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
	else { fatalError("Bad input") }

for NItr in 1...N {
	guard let firstNameEmailIDTemp = readLine() else { fatalError("Bad input") }
	let firstNameEmailID = firstNameEmailIDTemp.split(separator: " ").map{ String($0) }

	let firstName = firstNameEmailID[0]

	let emailID = firstNameEmailID[1]
}
*/

var results: [String] = []

for row in a {
	let firstNameEmailID = row.split(separator: " ").map{ String($0) }

	if isGmail(email: firstNameEmailID[1]) {
		results.append(firstNameEmailID[0])
	}
}

for name in results.sorted() {
	print(name)
}


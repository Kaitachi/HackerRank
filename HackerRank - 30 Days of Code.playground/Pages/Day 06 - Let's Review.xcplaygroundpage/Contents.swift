import Foundation

func printEvenAndOdd(string: String) {
	// This prints inputString to stderr for debugging:
	fputs("string: " + string + "\n", stderr)

	// Print the even-indexed characters
	// Write your code here
	var i = 0
	var str = ""

	for c in string.characters {
		if (i % 2 == 0) {
			str.append(c)
		}
		i += 1
	}

	print(str, terminator: "")

	// Print a space
	print(" ", terminator: "")

	// Print the odd-indexed characters
	// Write your code here
	i = 0
	str = ""

	for c in string.characters {
		if (i % 2 == 1) {
			str.append(c)
		}
		i += 1
	}

	print(str, terminator: "")

	// Print a newline
	print()
}

let numStrings = ["Hacker", "Rank"]

for i in 0..<numStrings.count {
	let inputString = numStrings[i]
	printEvenAndOdd(string: inputString)
}

var i = 4
var d = 4.0
var s = "HackerRank "

// Declare second integer, double, and String variables.
// Read and save an integer, double, and String to your variables.
guard let myInt = Int(readLine()!)
	else { fatalError("Bad input") }

guard let myDouble = Double(readLine()!)
	else { fatalError("Bad input") }

guard let myString = readLine()
	else { fatalError("Bad input") }

// Print the sum of both integer variables on a new line.
print(i+myInt)

// Print the sum of the double variables on a new line.
print(d+myDouble)

// Concatenate and print the String variables on a new line
// The 's' variable above should be printed first.
print(s+myString)

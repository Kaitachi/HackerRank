import Foundation

// Class Person
class Person {
	private let firstName: String
	private let lastName: String
	private let id: Int

	// Initializer
	init(firstName: String, lastName: String, id: Int) {
		self.firstName = firstName
		self.lastName = lastName
		self.id = id
	}

	// Print person data
	func printPerson() {
		print("Name: \(lastName), \(firstName)")
		print("ID: \(id)")
	}
} // End of class Person

// Class Student
class Student: Person {
	var testScores: [Int]

	/*
	*   Initializer
	*
	*   Parameters:
	*   firstName - A string denoting the Person's first name.
	*   lastName - A string denoting the Person's last name.
	*   id - An integer denoting the Person's ID number.
	*   scores - An array of integers denoting the Person's test scores.
	*/
	// Write your initializer here
	init(firstName: String, lastName: String, id: Int, scores: [Int]) {

		self.testScores = scores
		super.init(firstName: firstName, lastName: lastName, id: id)

	}

	/*
	*   Method Name: calculate
	*   Return: A character denoting the grade.
	*/
	// Write your method here
	func calculate() -> Character {
		let average = Double(testScores.reduce(0, +)) / Double(testScores.count)
		var char: Character = "_"

		switch average {
		case _ where average >= 90.0:
			char = "O"
		case _ where average >= 80.0:
			char = "E"
		case _ where average >= 70.0:
			char = "A"
		case _ where average >= 55.0:
			char = "P"
		case _ where average >= 40.0:
			char = "D"
		default:
			char = "T"
		}

		return char
	}
} // End of class Student


let s = Student(firstName: "Heraldo", lastName: "Memelli", id: 8135627, scores: [50, 0])

s.printPerson()

print("Grade: \(s.calculate())")

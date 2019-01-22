import Foundation

class Person {
	var age: Int = 0

	init(initialAge: Int) {
		if (initialAge >= 0) {
			age = initialAge
		} else {
			print("Age is not valid, setting age to 0.")
			age = 0
		}
	}

	func amIOld() {
		switch age {
		case 0..<13:
			print("You are young.")
		case 13..<18:
			print("You are a teenager.")
		default:
			print("You are old.")
		}
	}

	func yearPasses() {
		age += 1
	}
}

let t = Int(1)

for _ in 0..<t {
	let age = Int(17)
	let p = Person(initialAge: age)

	p.amIOld()

	for i in 1...3 {
		p.yearPasses()
	}

	p.amIOld()

	print("")
}

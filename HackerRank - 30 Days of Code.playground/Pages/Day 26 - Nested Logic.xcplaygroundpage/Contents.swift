import Foundation
import XCTest

class LibraryBook {

	var expectedReturnDate: Date!
	var actualReturnDate: Date!
	let calendar: Calendar!
	var returnFine: Int!

	init() {
		calendar = Calendar.current
	}

	func setDates(expectedDate: Date, returnedDate: Date) {
		self.expectedReturnDate = expectedDate
		self.actualReturnDate = returnedDate
		self.returnFine = nil

		self.calculateFine()
	}

	private func calculateFine() {
		if actualReturnDate <= expectedReturnDate {
			//on-time return
			returnFine = 0
		} else {
			let returnedComponents = calendar.dateComponents([.year, .month, .day], from: actualReturnDate)
			let expectedComponents = calendar.dateComponents([.year, .month, .day], from: expectedReturnDate)
			//print("expectedComponents: [\(expectedComponents)]")
			//print("returnedComponents: [\(returnedComponents)]")

			if returnedComponents.year == expectedComponents.year {
				// same-year return
				if returnedComponents.month == expectedComponents.month {
					// same-month return
					returnFine = (returnedComponents.day! - expectedComponents.day!) * 15
				} else {
					// next-month(s) return
					returnFine = (returnedComponents.month! - expectedComponents.month!) * 500
				}
			} else {
				// next-year(s) return
				returnFine = 10000
			}

		}
	}

}

class LibraryTest: XCTestCase {

	var book: LibraryBook!
	var dateFormatter: DateFormatter!

	override func setUp() {
		book = LibraryBook()
		dateFormatter = DateFormatter()
		dateFormatter.dateFormat = "dd MM yyyy"
	}

	override func tearDown() {
		book = nil
	}

	func testOnTimeReturn() {
		// Assemble
		// expected date: 11 June, 2018
		// returned date: 09 June, 2018
		let expectedDate = dateFormatter.date(from: "11 06 2018")!
		let returnedDate = dateFormatter.date(from: "09 06 2018")!

		// Activate
		book.setDates(expectedDate: expectedDate, returnedDate: returnedDate)

		// Assert
		XCTAssertEqual(book.returnFine, 0, "On time fine is wrong")
	}

	func testSameDateReturn() {
		// Assemble
		// expected date: 11 June, 2018
		// returned date: 11 June, 2018
		let expectedDate = dateFormatter.date(from: "11 06 2018")!
		let returnedDate = dateFormatter.date(from: "11 06 2018")!

		// Activate
		book.setDates(expectedDate: expectedDate, returnedDate: returnedDate)

		// Assert
		XCTAssertEqual(book.returnFine, 0, "Same day fine is wrong")
	}

	func testLateSameMonthReturn() {
		// Assemble
		// expected date: 11 June, 2018
		// returned date: 28 June, 2018
		let expectedDate = dateFormatter.date(from: "11 06 2018")!
		let returnedDate = dateFormatter.date(from: "28 06 2018")!

		// Activate
		book.setDates(expectedDate: expectedDate, returnedDate: returnedDate)

		// Assert
		XCTAssertEqual(book.returnFine, 255, "Late same month fine is wrong")
	}

	func testLateNextMonthReturn() {
		// Assemble
		// expected date: 11 June, 2018
		// returned date: 05 July, 2018
		let expectedDate = dateFormatter.date(from: "11 06 2018")!
		let returnedDate = dateFormatter.date(from: "05 07 2018")!

		// Activate
		book.setDates(expectedDate: expectedDate, returnedDate: returnedDate)

		// Assert
		XCTAssertEqual(book.returnFine, 500, "Late next month fine is wrong")
	}

	func testLateNextYearReturn() {
		// Assemble
		// expected date: 11 June, 2018
		// returned date: 05 January, 2019
		let expectedDate = dateFormatter.date(from: "11 06 2018")!
		let returnedDate = dateFormatter.date(from: "05 01 2019")!

		// Activate
		book.setDates(expectedDate: expectedDate, returnedDate: returnedDate)

		// Assert
		XCTAssertEqual(book.returnFine, 10000, "Late next year fine is wrong")
	}

}
//LibraryTest.defaultTestSuite.run()

let dateFormatter = DateFormatter()
dateFormatter.dateFormat = "dd MM yyyy"

let returnedDate = dateFormatter.date(from: "9 6 2015")!
let expectedDate = dateFormatter.date(from: "6 6 2015")!
//let expectedDate = dateFormatter.date(from: "11 06 2018")!
//let returnedDate = dateFormatter.date(from: "05 01 2019")!

//print(dateFormatter.date(from: returnDate)!)

let myBook = LibraryBook()
myBook.setDates(expectedDate: expectedDate, returnedDate: returnedDate)
print(myBook.returnFine!)

import Foundation

/*
* Define an ErrorType
*/
enum StringToIntTypecastingError: Error {
	case BadString
}

/*
* If typecasting is not possible, throw exception, otherwise return the Integer value
*/
func stringToInt(inputString: String) throws -> Int {
	guard let integer = Int(inputString) else {
		throw StringToIntTypecastingError.BadString
	}

	return integer

}

/*
* Read the input
*/
let inputString = "34f"

do {
	try print(stringToInt(inputString: inputString))
} catch StringToIntTypecastingError.BadString {
	print("Bad String")
}

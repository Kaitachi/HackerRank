import Foundation

struct Queue<T> {
	var list: [T] = []

	mutating func enqueue(_ element: T) {
		list.append(element)
	}

	mutating func dequeue() -> T? {
		if !list.isEmpty {
			return list.removeFirst()
		} else {
			return nil
		}
	}

	func peek() -> T? {
		if !list.isEmpty {
			return list[0]
		} else {
			return nil
		}
	}

	var isEmpty: Bool {
		return list.isEmpty
	}
}

struct Stack<T> {
	var array: [T] = []

	mutating func push(_ element: T) {
		array.append(element)
	}

	mutating func pop() -> T? {
		if !array.isEmpty {
			return array.removeLast()
		} else {
			return nil
		}
	}

	func peek() -> T? {
		if !array.isEmpty {
			return array.last
		} else {
			return nil
		}
	}

	var isEmpty: Bool {
		return array.isEmpty
	}
}

class Solution {
	var StringQueue = Queue<Character>()
	var StringStack = Stack<Character>()

	func enqueueCharacter(ch: Character) {
		StringQueue.enqueue(ch)
	}

	func dequeueCharacter() -> Character? {
		return StringQueue.dequeue()
	}

	func pushCharacter(ch: Character) {
		StringStack.push(ch)
	}

	func popCharacter() -> Character? {
		return StringStack.pop()
	}
}

// read the string s.
let s = "racecar"

// create the Solution class object p.
let obj = Solution()

// push/enqueue all the characters of string s to stack.
for character in s {
	obj.pushCharacter(ch: character)
	obj.enqueueCharacter(ch: character)
}


var isPalindrome = true

// pop the top character from stack.
// dequeue the first character from queue.
// compare both the characters.
for _ in 0..<(s.count / 2) {
	if obj.popCharacter() != obj.dequeueCharacter() {
		isPalindrome = false

		break
	}
}

// finally print whether string s is palindrome or not.
if isPalindrome {
	print("The word, \(s), is a palindrome.")
} else {
	print("The word, \(s), is not a palindrome.")
}

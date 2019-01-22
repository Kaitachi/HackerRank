import Foundation

// Start of class Node
class Node {
	var data: Int
	var next: Node?

	init(d: Int) {
		data = d
	}
} // End of class Node

// Start of class LinkedList
class LinkedList {
	func insert(head: Node?, data: Int) -> Node? {
		if head == nil {
			return Node(d: data)
		}

		head?.next = insert(head: head?.next, data: data)

		return head
	}

	func display(head: Node?) {
		if head != nil {
			print(head!.data, terminator: " ")

			display(head: head?.next)
		}
	}
	// Start of function removeDuplicates
	func removeDuplicates(head: Node?) -> Node? {
		var current = head

		while current != nil {
			while current!.data == current!.next?.data {
				current!.next = current!.next?.next
			}

			current = current!.next
		}

		return head
	} // End of function removeDuplicates
} // End of class LinkedList

var head: Node?
let linkedList = LinkedList()

let t = 6
let a = [1, 2, 2, 3, 3, 3, 4, 5, 5, 5, 5, 5, 5, 5]

for item in a {
	head = linkedList.insert(head: head, data: item)
}

linkedList.display(head: linkedList.removeDuplicates(head: head))

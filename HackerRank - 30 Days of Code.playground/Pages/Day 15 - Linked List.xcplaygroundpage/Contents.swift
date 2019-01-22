import Foundation

class Node {
	let data: Int
	var next: Node?

	init(data: Int) {
		self.data = data
	}
}

func insert(head: Node?, data: Int!) -> Node? {
	var element = Node(data: data)
	var current = head

	if head != nil {
		while current!.next != nil {
			current = current!.next
		}

		current!.next = element
		return head
	}

	return element

}

func display(head: Node?) {
	var current = head

	while current != nil {
		print(current!.data, terminator: " ")
		current = current!.next
	}
}

var head: Node?
let elements = [2, 3, 4, 1, 25, 18, 1000]

for i in 0..<elements.count {
	let element = elements[i]
	head = insert(head: head, data: element)
}

display(head: head)

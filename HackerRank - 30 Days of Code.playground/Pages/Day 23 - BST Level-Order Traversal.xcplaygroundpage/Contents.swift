// Start of Node class
class Node {
	var data: Int
	var left: Node?
	var right: Node?

	init(d : Int) {
		data  = d
	}
} // End of Node class

// Start of Tree class
class Tree {
	func insert(root: Node?, data: Int) -> Node? {
		if root == nil {
			return Node(d: data)
		}

		if data <= (root?.data)! {
			root?.left = insert(root: root?.left, data: data)
		} else {
			root?.right = insert(root: root?.right, data: data)
		}

		return root
	}

	func levelOrder(root: Node?) -> Void {
		var queue = [Node]()

		if root != nil {
			queue.append(root!)
		}

		while queue.count > 0 {
			let current = queue.removeFirst()

			if current.left != nil {
				queue.append(current.left!)
			}
			if current.right != nil {
				queue.append(current.right!)
			}

			print(current.data, terminator: " ")
		}

	} // End of levelOrder function

} // End of Tree class

var root: Node?
let tree = Tree()

let t = 6
let a = [3, 5, 4, 7, 2, 1]

for item in a {
	root = tree.insert(root: root, data: item)
}

tree.levelOrder(root: root)

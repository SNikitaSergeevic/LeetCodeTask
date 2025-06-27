import Foundation

var greeting = "Hello, playground"

public class TreeNode {
	public var val: Int
	public var left: TreeNode?
	public var right: TreeNode?
	public init() { self.val = 0; self.left = nil; self.right = nil; }
	public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
	public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
		self.val = val
		self.left = left
		self.right = right
	}
}

func levelOrder(_ root: TreeNode?) -> [[Int]] {
	guard root != nil else {return [[]]}
	var res: [[Int]] = []
	var q: [TreeNode?] = [root]
	
	while !q.isEmpty {
		var r: [Int] = []
		var locQ = q
		for i in locQ {
			// add values in res
			r.append(i!.val)
			q.removeFirst()
			if i?.left != nil {
				q.append(i?.left)
			}
			if i?.right != nil {
				q.append(i?.right)
			}
		}
		res.append(r)
		// add next tree levels in q
	}
	return res
}

var root = TreeNode(0, TreeNode(1, TreeNode(3, TreeNode(5), TreeNode(6)), TreeNode(24)),
					   TreeNode(2, TreeNode(9), TreeNode(11)))

var root2 = TreeNode(1)

var root3: TreeNode? = nil


print(levelOrder(root3))



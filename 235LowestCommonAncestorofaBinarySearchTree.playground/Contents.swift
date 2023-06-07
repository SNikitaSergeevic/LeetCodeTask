import Foundation

public class TreeNode {
	public var val: Int
	public var left: TreeNode?
	public var right: TreeNode?
	public init(_ val: Int, _ left: TreeNode? = nil, _ right: TreeNode? = nil) {
		self.val = val
		self.left = left
		self.right = right
	}
}

func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
	var arrP: [TreeNode?] = []
	var arrQ: [TreeNode?] = []
	var tRoot = root
	var res: TreeNode? = TreeNode(0)
	arrP.append(tRoot)
	arrQ.append(tRoot)
	
	while tRoot!.val != p!.val {
		if tRoot!.val < p!.val {
			tRoot = tRoot!.right
		} else {
			tRoot = tRoot!.left
		}
		arrP.append(tRoot)
	}
	tRoot = root
	while tRoot!.val != q!.val {
		if tRoot!.val < q!.val {
			tRoot = tRoot!.right
		} else {
			tRoot = tRoot!.left
		}
		arrQ.append(tRoot)
	}
	
	for i in 0..<((arrP.count > arrQ.count) ? arrP.count : arrQ.count) {
		for g in 0..<((arrP.count > arrQ.count) ? arrQ.count : arrP.count) {
			if arrP.count > arrQ.count {
				if arrP[i]!.val == arrQ[g]!.val {res = arrP[i]}
			} else {
				if arrP[g]!.val == arrQ[i]!.val {res = arrP[g]}
			}
		}
	}
	return res
}

var root = TreeNode(6, TreeNode(2, TreeNode(0), TreeNode(4, TreeNode(3), TreeNode(5))), TreeNode(8))
var p = TreeNode(2)
var q = TreeNode(8)

var printLn = lowestCommonAncestor(root, p, q)

print(printLn?.val)

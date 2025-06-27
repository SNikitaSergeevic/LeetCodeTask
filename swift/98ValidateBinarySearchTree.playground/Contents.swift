import Foundation

func isValidBST(_ root: TreeNode?) -> Bool {
	   var q = [root!]
		
		while !q.isEmpty {
			for i in q {
				q.removeFirst()
				
				var tmpRoot = root
				while tmpRoot!.val != i.val {
					if tmpRoot!.val < i.val {
						guard let right = tmpRoot!.right else {return false}
						tmpRoot = right
					} else {
						guard let left = tmpRoot!.left else {return false}
						tmpRoot = left
					}
				}

				if let leftRoot = tmpRoot!.left {
					guard i.left != nil && leftRoot.val == i.left!.val else {return false}
				}
				if let rightRoot = tmpRoot!.right {
					 guard i.right != nil && rightRoot.val == i.right!.val else {return false}
				}

				if let left = i.left {
					guard left.val != i.val else {return false}
					q.append(left)
				}
				if let right = i.right {
					guard right.val != i.val else {return false}
					q.append(right)
				}

			}
		}
		return true
	}

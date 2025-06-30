# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
class Solution:
    def goodNodes(self, root: TreeNode) -> int:
        res = 1

        if root.left :
            if root.val <= root.left.val :
                res += self.goodNodes(root.left)
            else : 
                root.left.val = root.val
                res += self.goodNodes(root.left) - 1

        if root.right :
            if root.val <= root.right.val :
                res += self.goodNodes(root.right)
            else : 
                root.right.val = root.val
                res += self.goodNodes(root.right) - 1

        return res
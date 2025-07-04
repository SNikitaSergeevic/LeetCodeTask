# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
class Solution:
    def leafSimilar(self, root1: Optional[TreeNode], root2: Optional[TreeNode]) -> bool:
        self.res = True
        def dfc(root) :
            r = []
            if not root.left and not root.right :
                r.append(root.val)
            
            if root.left :
                r += dfc(root.left)
            if root.right :
                r += dfc(root.right)
            return r
        
        return dfc(root1) == dfc(root2)
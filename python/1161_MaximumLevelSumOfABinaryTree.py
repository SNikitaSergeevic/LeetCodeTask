# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
class Solution:
    def maxLevelSum(self, root: Optional[TreeNode]) -> int:
        

        self.slice = 0
        self.k = []

        def bfc(root) :
            if not root : return
            
            if len(self.k)-1 >= self.slice :
                self.k[self.slice] += root.val
            else :
                self.k.append(root.val)
                
            self.slice += 1
            bfc(root.left if root.left else None)
            bfc(root.right if root.right else None)
            self.slice -= 1
        
        bfc(root)
        return self.k.index(max(self.k))  + 1
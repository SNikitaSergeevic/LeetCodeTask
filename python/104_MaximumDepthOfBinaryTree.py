# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
class Solution:
    def maxDepth(self, root: Optional[TreeNode]) -> int:
        self.current_slice = 0
        self.res = 0
        
        def dfs(root) :
            self.res += 1 if self.res <= self.current_slice else 0
            self.current_slice += 1

            if root.left :
                dfs(root.left)
            if root.right : 
                dfs(root.right)
            self.current_slice -= 1

        if not root : return self.res
        dfs(root)
        return self.res
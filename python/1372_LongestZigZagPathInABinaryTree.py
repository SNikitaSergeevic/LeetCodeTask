# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
class Solution:
    def longestZigZag(self, root: Optional[TreeNode]) -> int:
        self.res = 0
        def dfs(root, left, right) :
            if not root :
                return 
            self.res = self.res if self.res > left and self.res > right else left if left > right else right
            dfs(root.left, right + 1, 0)
            dfs(root.right, 0, left + 1)

        dfs(root, 0, 0)
        return self.res
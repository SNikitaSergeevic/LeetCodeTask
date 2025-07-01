# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
# TODO: like
class Solution:
    def pathSum(self, root: Optional[TreeNode], targetSum: int) -> int:
        self.res = 0
        cache = {0:1}

        def dfs(root, currPS) :
            if not root : return 
            
            currPS += root.val
            oldPS = currPS - targetSum

            self.res += cache.get(oldPS, 0)
            cache[currPS] = cache.get(currPS, 0) + 1

            dfs(root.left, currPS)
            dfs(root.right, currPS)

            cache[currPS] -= 1
        
        dfs(root, 0)

        return self.res
# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
class Solution:
    def rightSideView(self, root: Optional[TreeNode]) -> List[int]:
        self.slice = 0
        self.res = []
        def dfs(root) :
            
            if not root :
                self.slice -= 1
                return 
            
            if len(self.res) == 0 :
                self.res.append(root.val) 
            elif len(self.res) <= self.slice :
                self.res.append(root.val) 
                
            self.slice += 1
            if root.right : dfs(root.right)
            if root.left : dfs(root.left)
            self.slice -= 1

        dfs(root)
        

        return self.res
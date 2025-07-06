# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
# TODO: like
class Solution:
    def findSuccessor(self, node: TreeNode) -> int:
        node = node.right
        while node.left:
            node = node.left
        return node.val
    
    # Find next lower value node
    def findPredecessor(self, node: TreeNode) -> int:
        node = node.left
        while node.right:
            node = node.right
        return node.val
    
    def deleteNode(self, node: TreeNode, target: int) -> TreeNode:
        if not node:
            return None
    
        if target > node.val:
            node.right = self.deleteNode(node.right, target)
        elif target < node.val:
            node.left = self.deleteNode(node.left, target)
        # Found the node to delete
        else:
            if not (node.left or node.right):
                node = None
            elif node.right:
                node.val = self.findSuccessor(node)
                node.right = self.deleteNode(node.right, node.val)
            else:
                node.val = self.findPredecessor(node)
                node.left = self.deleteNode(node.left, node.val)
                            
        return node
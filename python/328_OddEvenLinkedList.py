# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
# TODO: need optimization
class Solution:
    def oddEvenList(self, head: Optional[ListNode]) -> Optional[ListNode]:
        n = 1
        right = []
        left = []

        if not head :
            return head
        if not head.next :
            return head

        while head :
            if n % 2 == 0 :
                right.append(head.val)
            else :
                left.append(head.val)
            n += 1
            head = head.next
        res = ListNode(val = right.pop())

        for i in range(len(right)) :
            res = ListNode(val = right.pop(), next = res)

        for i in range(len(left)) :
            res = ListNode(val = left.pop(), next = res)
            
        return res
    
# TODO: best way with slow fast method
class Solution:
    def oddEvenList(self, head: Optional[ListNode]) -> Optional[ListNode]:
        
        if not head or not head.next:
            return head
        slow = head
        fast = head.next
        f_head = fast

        while fast and fast.next:
            slow.next = fast.next
            slow = slow.next

            fast.next = slow.next
            fast = fast.next
        
        slow.next = f_head
        return head
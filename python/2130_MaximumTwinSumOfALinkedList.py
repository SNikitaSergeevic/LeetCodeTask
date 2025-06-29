# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next

# TODO: my solution is bad practice with list
class Solution:
    def pairSum(self, head: Optional[ListNode]) -> int:
        ln = []

        while head :
            ln.append(head.val)
            head = head.next
        
        sum = 0
        n = len(ln) - 1

        for i in range(len(ln)) :
            twin = n - i
            sum = ln[i] + ln[twin] if (ln[i] + ln[twin]) > sum else sum
        
        return sum
    
# TODO: perfect way with slow and fast (also use for loop detection)
# https://www.geeksforgeeks.org/dsa/detect-loop-in-a-linked-list/
# https://www.geeksforgeeks.org/dsa/how-does-floyds-slow-and-fast-pointers-approach-work/
# https://www.geeksforgeeks.org/two-pointer-technique-in-a-linked-list/

def pairSum(self, head: Optional[ListNode]) -> int:
	slow, fast = head, head
	maxVal = 0

	# Get middle of linked list
	while fast and fast.next:
		fast = fast.next.next
		slow = slow.next

	# Reverse second part of linked list
	curr, prev = slow, None

	while curr:       
		curr.next, prev, curr = prev, curr, curr.next   

	# Get max sum of pairs
	while prev:
		maxVal = max(maxVal, head.val + prev.val)
		prev = prev.next
		head = head.next

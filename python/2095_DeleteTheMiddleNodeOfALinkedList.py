# Definition for singly-linked list.
class ListNode:
    def __init__(self, val=0, next=None):
        self.val = val
        self.next = next

# TODO: Need optimisation

class Solution:
    def deleteMiddle(self, head: Optional[ListNode]) -> Optional[ListNode]:
        end = False
        ln = head
        count = 0
        reverse = [ln.val]

        while not end :
            if not ln.next :
                end = True
                count += 1
                break
            else :
                count += 1
                ln = ln.next
            reverse.append(ln.val)
        reverse.pop(int(count / 2))

        reverse = reverse[::-1]
        if count == 2 :
            return ListNode(val = head.val, next = None)
        elif count == 1 :
            return None
       
        res = ListNode(val = reverse[0])
        
        for i in range(1, len(reverse)) :
            res = ListNode(val = reverse[i], next = res)
            
        return res   


class Solution:
    def deleteMiddle(self, head: Optional[ListNode]) -> Optional[ListNode]:
        end = False
        ln = head
        count = 0
        reverse = ListNode(val = ln.val)

        while not end :
            if not ln.next :
                end = True
                count += 1
                break
            else :
                count += 1
                ln = ln.next
            reverse = ListNode(val = ln.val, next = reverse)
        
        mid = int(count / 2) + 1 if count % 2 > 0 else int(count / 2)
        right = ListNode(val = reverse.val)
        
        if count == 2 :
            return ListNode(val = head.val, next = None)
        elif count == 1 :
            return None

        for i in range(count - 1) :
            reverse = reverse.next
            if i == mid - 2 :
                continue
            
            right = ListNode(val = reverse.val, next = right)
            
        return right 


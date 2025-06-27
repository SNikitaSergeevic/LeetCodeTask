import Foundation

var greeting = "Hello, playground"


public class ListNode {
	public var val: Int
	public var next: ListNode?
	public init() { self.val = 0; self.next = nil; }
	public init(_ val: Int) { self.val = val; self.next = nil; }
	public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

func reverseList(_ head: ListNode?) -> ListNode? {
	guard var h = head else {return head}
	if h.next == nil {return h}
	
	var reversedHead = reverseList(h.next)
	h.next!.next = h // this create loop in list
	h.next = nil
	
	return reversedHead
}

var head: ListNode? = ListNode(0, ListNode(1, ListNode(2)))

var res = reverseList(head)


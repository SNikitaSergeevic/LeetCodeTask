import Foundation

var greeting = "Hello, playground"



public class ListNode {
	public var val: Int
	public var next: ListNode?
	public init() { self.val = 0; self.next = nil; }
	public init(_ val: Int) { self.val = val; self.next = nil; }
	public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
	guard list2 != nil || list1 != nil else {return nil}
	guard list1 != nil else {return list2}
	guard list2 != nil else {return list1}
	
	var arr: [Int]  = []
	var l1 = list1
	var l2 = list2
	
	var n = l1?.next
	if n == nil {arr.append(l1!.val)}
	while n != nil {
		arr.append(l1!.val)
		l1 = n
		n = n!.next
		if n == nil {
			arr.append(l1!.val)
		}
	}
	
	n = l2?.next
	if n == nil {arr.append(l2!.val)}
	while n != nil {
		arr.append(l2!.val)
		l2 = n
		n = n!.next
		if n == nil {
			arr.append(l2!.val)
		}
	}
	
	arr.sort()
	guard arr.count != 3 else {
		return ListNode(arr[0], ListNode(arr[1], ListNode(arr[2])))
	}
	guard arr.count != 2 else {
		return ListNode(arr[0], ListNode(arr[1]))
	}
	
	arr.reverse()
	
	var sortedList: ListNode? = ListNode(arr[0])
	l1 = ListNode(arr[1])
	for i in 2...arr.count - 1 {
		l1!.next = sortedList
		sortedList = l1
		l1 = ListNode(arr[i])
		if i == arr.count - 1 {
			l1!.next = sortedList
			sortedList = l1
		}
	}
	return sortedList
}

var list1: ListNode? = ListNode(1, ListNode(3, ListNode(6)))
var list2: ListNode? = ListNode(-9)
var res = mergeTwoLists(list1, list2)

print("res", res!.val, res!.next!.val, res!.next!.next!.val, res!.next!.next!.next!.val)

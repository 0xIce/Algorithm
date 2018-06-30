
//: test

let l1 = ListNode(1)
l1.next = ListNode(2)
l1.next?.next = ListNode(4)
l1.traverse()

let l2 = ListNode(2)
l2.next = ListNode(3)
l2.next?.next = ListNode(4)

let node3 = ListNode(5)

let l4 = ListNode(1)

let l5 = ListNode(2)

//insert(node3, to: l1.next!)
//l1.traverse()

mergeTwoSortedLists(l1, l2)?.traverse()
mergeTwoSortedLists(l4, l5)?.traverse()

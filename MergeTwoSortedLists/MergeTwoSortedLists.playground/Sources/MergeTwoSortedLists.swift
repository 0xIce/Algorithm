
public func mergeTwoSortedLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
  guard let list1 = l1 else {
    return l2
  }
  var list2 = l2
  var list1Pointer = list1
  while let node2 = list2 {
    while node2.val > list1Pointer.val {
      guard let node = list1Pointer.next else {
        list1Pointer.next = node2
        return list1
      }
      list1Pointer = node
    }
    let tmp = list2?.next
    insert(node2, to: list1Pointer)
    list2 = tmp
  }
  return list1
}

private func insert(_ newNode: ListNode, to node: ListNode) {
  let nodeCopy = ListNode(node.val)
  nodeCopy.next = node.next
  node.val = newNode.val
  node.next = nodeCopy
}

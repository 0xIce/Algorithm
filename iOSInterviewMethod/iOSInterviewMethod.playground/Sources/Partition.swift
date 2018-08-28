
public func getLeftList(_ head: ListNode?, _ x: Int) -> ListNode? {
  let dummy = ListNode(0)
  var pre = dummy, node = head
  
  while node != nil {
    if node!.val < x {
      pre.next = node
      pre = node!
    }
    node = node!.next
  }
  
  pre.next = nil
  return dummy.next
}

/**
 给一个链表和一个值 x，要求将链表中所有小于 x 的值放到左边，所有大于等于 x 的值放到右边。原链表的节点顺序不能变。
 例：1->5->3->2->4->2，给定x = 3。则我们要返回1->2->2->5->3->4
 */
public func partition(_ head: ListNode?, _ x: Int) -> ListNode? {
  let prevDummy = ListNode(0), postDummy = ListNode(0)
  var prev = prevDummy, post = postDummy
  
  var node = head
  
  while node != nil {
    if node!.val < x {
      prev.next = node
      prev = node!
    } else {
      post.next = node
      post = node!
    }
    node = node!.next
  }
  
  post.next = nil
  prev.next = postDummy.next
  
  return prevDummy.next
}


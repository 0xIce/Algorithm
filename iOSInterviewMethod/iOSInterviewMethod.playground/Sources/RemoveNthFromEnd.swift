/**
 删除链表中倒数第 n 个节点。例：1->2->3->4->5，n = 2。返回1->2->3->5。
 注意：给定 n 的长度小于等于链表的长度
 */

/**
 解题思路依然是快行指针，这次两个指针移动速度相同。但是一开始，第一个指针（指向头结点之前）就落后第二个指针 n 个节点。接着两者同时移动，当第二个移动到尾节点时，第一个节点的下一个节点就是我们要删除的节点
 */
public func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
  guard let head = head else {
    return nil
  }
  let dummy = ListNode(0)
  dummy.next = head
  var prev: ListNode? = dummy
  var post: ListNode? = dummy
  
  // 设置后一个节点的初始值
  for _ in 0..<n {
    if post == nil {
       break
    }
    post = post!.next
  }
  while post != nil && post!.next != nil {
    prev = prev!.next
    post = post!.next
  }
  
  prev!.next = prev!.next!.next
  return dummy.next
}

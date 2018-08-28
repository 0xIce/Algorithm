import Foundation

public class ListNode {
  public var val: Int
  public var next: ListNode?
  
  public init(_ val: Int) {
    self.val = val
    self.next = nil
  }
}

public class List {
  public var head: ListNode?
  public var tail: ListNode?
  
  public init() {
    self.head = nil
    self.tail = nil
  }
  
  public func appendToTail(_ val: Int) {
    if tail == nil {
      tail = ListNode(val)
      head = tail
    } else {
      tail!.next = ListNode(val)
      tail = tail!.next
    }
  }
  
  public func appentToHead(_ val: Int) {
    if head == nil {
      head = ListNode(val)
      tail = head
    } else {
      let temp = ListNode(val)
      temp.next = head
      head = temp
    }
  }
}

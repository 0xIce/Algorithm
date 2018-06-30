import Foundation

public class ListNode {
  public var val: Int
  public var next: ListNode?
  public init(_ val: Int) {
    self.val = val
    self.next = nil
  }
  public func traverse() -> [Int] {
    var pointer = self
    var result = [pointer.val]
    while let node = pointer.next {
      result.append(node.val)
      pointer = node
    }
    return result
  }
}

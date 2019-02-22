public func preorderTraversal(_ root: TreeNode?) ->[Int] {
  var result = [Int]()
  var p = root
  var stack = [TreeNode]()
  while p != nil || !stack.isEmpty {
    if p != nil {
      result.append(p!.val)
      stack.append(p!)
      p = p!.left
    } else {
      p = stack.popLast()
      p = p?.right
    }
  }
  return result
}


public func inorderTraversal(_ root: TreeNode?) -> [Int] {
  var result = [Int]()
  var p = root
  var stack = [TreeNode]()
  while p != nil || !stack.isEmpty {
    if p != nil {
      stack.append(p!)
      p = p?.left
    } else {
      p = stack.popLast()
      result.append(p!.val)
      p = p?.right
    }
  }
  return result
}

public func postorderTraversal(_ root: TreeNode?) -> [Int] {
  var result = [Int]()
  var p = root
  var stack = [TreeNode]()
  while p != nil || !stack.isEmpty {
    if p != nil {
      result.append(p!.val)
      stack.append(p!)
      p = p?.right
    } else {
      p = stack.popLast()
      p = p?.left
    }
  }
  return result.reversed()
}

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

public func levelOrder(_ root: TreeNode?) -> [[Int]] {
  var result = [[Int]]()
  if root == nil {
    return result
  }
  var queue = [(root!, 0)]
  while !queue.isEmpty {
    let (node, level) = queue.remove(at: 0)
    if result.count == level {
      result.append([])
    }
    result[level].append(node.val)
    if let left = node.left {
      queue.append((left, level + 1))
    }
    if let right = node.right {
      queue.append((right, level + 1))
    }
  }
  return result
}

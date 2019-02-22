
let root = TreeNode(1)

var left = TreeNode(2)
var right = TreeNode(3)
root.left = left
root.right = right

left = TreeNode(4)
right = TreeNode(5)
root.left?.left = left
root.left?.right = right

left = TreeNode(6)
right = TreeNode(7)
root.right?.left = left
root.right?.right = right

//print(preorderTraversal(root))
//print(inorderTraversal(root))
//print(postorderTraversal(root))
print(levelOrder(root))

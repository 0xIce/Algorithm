#  二叉树的遍历 (Binary Tree Traversal)

## 前序遍历 (Preorder Traversal)
### Problem
给定一个二叉树，返回它的`前序`遍历。

示例:

```
输入: [1,null,2,3]  
1
\
2
/
3 

输出: [1,2,3]
```
**进阶:** 递归算法很简单，你可以通过迭代算法完成吗？

-- from [leetcode](https://leetcode-cn.com/problems/binary-tree-preorder-traversal/)

### Solution
使用辅助节点p

- 辅助结点p初始化为根结点，while循环的条件是栈不为空或者辅助结点p不为空
- 在循环中首先判断如果辅助结点p存在，那么先将p加入栈中，然后将p的结点值加入结果res中，此时p指向其左子结点
- 否则如果p不存在的话，表明没有左子结点，我们取出栈顶结点，将p指向栈顶结点的右子结点

## 中序遍历 (Inorder Traversal)
### Problem
给定一个二叉树，返回它的`中序`遍历。

示例:

```
输入: [1,null,2,3]
   1
    \
     2
    /
   3

输出: [1,3,2]
```
**进阶:** 递归算法很简单，你可以通过迭代算法完成吗？
-- from [leetcode](https://leetcode-cn.com/problems/binary-tree-inorder-traversal/)

### Solution
使用辅助节点p

- 辅助结点p初始化为根结点，while循环的条件是栈不为空或者辅助结点p不为空
- 在循环中首先判断如果辅助结点p存在，那么先将p加入栈中，此时p指向其左子结点
- 否则如果p不存在的话，表明没有左子结点，我们取出栈顶结点，然后将p的结点值加入结果res中，将p指向栈顶结点的右子结点


## 后序遍历 (Postorder Traversal)
### Problem
给定一个二叉树，返回它的`后序`遍历。

示例:

```
输入: [1,null,2,3]
   1
    \
     2
    /
   3

输出: [3,2,1]
```
**进阶:** 递归算法很简单，你可以通过迭代算法完成吗？
-- from [leetcode](https://leetcode-cn.com/problems/binary-tree-postorder-traversal/)

### Solution
使用辅助节点p

- 先将先序遍历的`根-左-右`顺序变为`根-右-左`
- 再翻转变为后序遍历的`左-右-根`，翻转还是改变结果res的加入顺序
- 然后把更新辅助结点p的左右顺序换一下即可

## 层次遍历 (Level Order Traversal)
### Problem
给定一个二叉树，返回其按层次遍历的节点值。 （即逐层地，从左到右访问所有节点）。

例如:
给定二叉树: [3,9,20,null,null,15,7]

```
    3
   / \
  9  20
    /  \
   15   7
```
   
返回其层次遍历结果：

```
[
  [3],
  [9,20],
  [15,7]
]
```

-- from [leetcode](https://leetcode-cn.com/problems/binary-tree-level-order-traversal/)

### Solution
- 建立一个queue
- 先把根节点放进去，这时候找根节点的左右两个子节点
- 去掉根节点，此时queue里的元素就是下一层的所有节点
- 用for循环遍历，将结果存到一个一维向量里
- 遍历完之后再把这个一维向量存到二维向量里
- 以此类推，可以完成层序遍历


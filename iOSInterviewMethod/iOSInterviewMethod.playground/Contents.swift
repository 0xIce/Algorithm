//: Playground - noun: a place where people can play

import Foundation

let list = List()
list.appendToTail(1)
list.appendToTail(5)
list.appendToTail(3)
list.appendToTail(2)
list.appendToTail(4)
list.appendToTail(2)

print("---------partition---------")
let result = partition(list.head, 3)
var node = result

while node != nil {
  print(node?.val)
  node = node!.next
}

//print("---------hasCycle---------")
//list.tail!.next = list.head?.next
//print(hasCycle(list.head))

print("---------removeNthFromEnd---------")
var removeResult = removeNthFromEnd(list.head, 2)
node = removeResult
while node != nil {
  print(node?.val)
  node = node!.next
}

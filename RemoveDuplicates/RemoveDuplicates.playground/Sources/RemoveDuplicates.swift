import Foundation

public func removeDuplicates(_ arr: inout [Int]) -> [Int] {
  guard arr.count > 1 else {
    return arr
  }
  var i = 1
  for index in 1...arr.count - 1 {
    if arr[i] != arr[index] {
      i += 1
      (arr[i], arr[index]) = (arr[index], arr[i])
    }
  }
  return Array(arr[0...i])
}

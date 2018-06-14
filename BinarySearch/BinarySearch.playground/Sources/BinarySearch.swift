import Cocoa

/// 接受已排序的数组
public func binarySearch(key: Int, sortedData: [Int]) -> Int {
  var lo = 0
  var hi = sortedData.count - 1
  while lo <= hi {
    let mid = lo + (hi - lo) / 2
    if key < sortedData[mid] {
      hi = mid - 1
    } else if key > sortedData[mid] {
      lo = mid + 1
    } else {
      return mid
    }
  }
  return -1
}

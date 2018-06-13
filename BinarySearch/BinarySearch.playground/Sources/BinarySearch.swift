import Cocoa

public func binarySearch(key: Int, data: [Int]) -> Int {
  var lo = 0
  var hi = data.count - 1
  while lo <= hi {
    let mid = lo + (hi - lo) / 2
    if key < data[mid] {
      hi = mid - 1
    } else if key > data[mid] {
      lo = mid + 1
    } else {
      return mid
    }
  }
  return -1
}

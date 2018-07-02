
public func removeDuplicates(_ nums: inout [Int]) -> Int {
  guard nums.count > 1 else {
    return nums.count
  }
  var i = 0
  for index in nums.indices.dropFirst() {
    if nums[i] != nums[index] {
      i += 1
      nums[i] = nums[index]
    }
  }
  return i + 1
}

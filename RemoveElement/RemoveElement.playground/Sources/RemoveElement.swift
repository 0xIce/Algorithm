
public func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
  guard nums.count > 0 else {
    return nums.count
  }
  var i = 0
  for index in nums.indices {
    if nums[index] != val {
      nums[i] = nums[index]
      i += 1
    }
  }
  return i
}

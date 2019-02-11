func majorityElement(_ nums: [Int]) -> Int {
  var result = nums.first!
  var count = 1
  for i in 1..<nums.count {
    count += (result == nums[i] ? 1 : -1)
    if count == 0 {
      result = nums[i]
      count = 1
    }
  }
  return result
}

print(majorityElement([2,2,1,1,1,2,2]))

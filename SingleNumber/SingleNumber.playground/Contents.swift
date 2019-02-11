func singleNumber(_ nums: [Int]) -> Int {
  var result = 0
  for num in nums {
    result ^= num
  }
  return result
}

print(singleNumber([2, 1, 2]))
print(singleNumber([4, 1, 2, 1, 2]))

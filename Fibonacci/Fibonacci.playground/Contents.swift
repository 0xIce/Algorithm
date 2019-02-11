func fibonacci(length: Int) -> [Int] {
  var result = [0]
  guard length > 1 else {
    return result
  }
  var fibOne = 0
  var fibTwo = 1

  for _ in 1..<length {
    let nextFib = fibOne + fibTwo
    (fibTwo, fibOne) = (fibOne, nextFib)
    result.append(nextFib)
  }
  
  return result
}

print(fibonacci(length: 32))

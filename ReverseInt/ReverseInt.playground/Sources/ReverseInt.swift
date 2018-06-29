import Cocoa

public func reverseInt(_ x: Int) -> Int {
  var remain = abs(x)
  var result = 0
  while remain > 0 {
    result = result * 10 + remain % 10
    remain /= 10
  }
  if x < 0 {
    result = -result
  }
  return result
}

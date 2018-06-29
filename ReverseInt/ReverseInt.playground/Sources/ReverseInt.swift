import Cocoa

public func reverseInt(_ number: Int) -> Int {
  var remain = abs(number)
  var result = 0
  while remain > 0 {
    result = result * 10 + remain % 10
    remain /= 10
  }
  if number < 0 {
    result = -result
  }
  return result
}

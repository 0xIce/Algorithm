// 最大公约数
import Cocoa

public func gcd(_ p: Int, _ q: Int) -> Int {
  if q == 0 {
    return p
  }
  let r = p % q
  return gcd(q, r)
}


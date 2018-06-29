import Foundation

public func romanToInt(_ s: String) -> Int {
  var result = 0
  var last = 0
  for char in s.reversed() {
    guard let intValue = Roman(rawValue: char)?.intValue else {
      return 0
    }
    if intValue < last {
      guard last / intValue == 5 || last / intValue == 10 else {
        return 0
      }
      result -= intValue
    } else {
      result += intValue
    }
    last = intValue
  }
  return result
}

enum Roman: Character {
  case I = "I"
  case V = "V"
  case X = "X"
  case L = "L"
  case C = "C"
  case D = "D"
  case M = "M"
  
  var intValue: Int {
    switch self {
    case .I:
      return 1
    case .V:
      return 5
    case .X:
      return 10
    case .L:
      return 50
    case .C:
      return 100
    case .D:
      return 500
    case .M:
      return 1000
    }
  }
}

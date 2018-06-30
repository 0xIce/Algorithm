import Cocoa

public func isValidBracket(_ s: String) -> Bool {
  if s.isEmpty {
    return true
  }
  for char in s {
    guard let bracket = Bracket(char) else {
      return false
    }
    
  }
  return true
}

enum Bracket {
  case parentheses(BracketSide)
  case bracket(BracketSide)
  case braces(BracketSide)
  
  init?(_ char: Character) {
    switch char {
    case "(":
      self = .parentheses(.left)
    case ")":
      self = .parentheses(.right)
    case "[":
      self = .bracket(.left)
    case "]":
      self = .bracket(.right)
    case "{":
      self = .braces(.left)
    case "}":
      self = .braces(.right)
    default:
      return nil
    }
  }

  func isMatch(to bracket: Bracket) -> Bool {
    switch self {
    case .parentheses(let side):
      print(side)
    case .bracket(let side):
      print(side)
    case .braces(let side):
      print(side)
    }
    return true
  }
}

enum BracketSide: String {
  case left
  case right
}


//: test
print(isValidBracket("{()}x"))
print(isValidBracket(""))

let bracket: Bracket = .parentheses(.left)
bracket.isMatch(to: bracket)

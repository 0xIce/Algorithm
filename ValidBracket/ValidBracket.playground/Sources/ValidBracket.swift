
public func isValidBracket(_ s: String) -> Bool {
  if s.isEmpty {
    return true
  }
  var charStack: Stack<Bracket> = []
  for char in s {
    guard let bracket = Bracket(char) else {
      return false
    }
    if bracket.intValue < 0 {
      charStack.push(bracket)
    } else {
      if !bracket.isPair(to: charStack.pop()) {
        return false
      }
    }
  }
  return charStack.isEmpty
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
  
  var intValue: Int {
    switch self {
    case .parentheses(let side):
      return 1 * side.rawValue
    case .bracket(let side):
      return 2 * side.rawValue
    case .braces(let side):
      return 3 * side.rawValue
    }
  }
  
  func isPair(to bracket: Bracket?) -> Bool {
    guard let bracket = bracket else {
      return false
    }
    return self.intValue == -bracket.intValue
  }
}

enum BracketSide: Int {
  case left = -1
  case right = 1
}

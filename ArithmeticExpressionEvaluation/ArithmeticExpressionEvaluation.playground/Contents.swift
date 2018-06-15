func evaluate(_ expression: String) -> Int {
  var oprations = Stack<String>()
  var values = Stack<Double>()
  expression.forEach { (char) in
    switch char {
    case "+", "-":
      print(char)
    default:
      break
    }
  }
  return -1
}

evaluate("1 * (2 + 3)")

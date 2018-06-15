/// Dijkstra-双栈算法 计算算术表达式的值，没有优先级，只能通过小括号判断计算顺序
var oprations = Stack<String>()
var values = Stack<Double>()
public func evaluate(_ expression: String) -> Double {
  expression.forEach { (char) in
    switch char {
    case "+", "-", "*", "/":
      oprations.push(char.description)
    case "0"..."9":
      values.push(Double(char.description)!)
    case ")":
      values.push(performOperation())
    default:
      break
    }
  }
  return values.pop() ?? -1
  
}

private func performOperation() -> Double {
  guard let op = oprations.pop(),
    let value1 = values.pop(),
    let value2 = values.pop() else {
      return -1
  }
  switch op {
  case "+":
    return value2 + value1
  case "-":
    return value2 + value1
  case "*":
    return value2 * value1
  case "/":
    return value2 / value1
  default:
    return -1
  }
}


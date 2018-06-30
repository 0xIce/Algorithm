
public func longestCommonPrefix(_ strs: [String]) -> String {
  switch strs.count {
  case 0:
    return ""
  case 1:
    return strs.first!
  default:
    break
  }
  var result = ""
  var remains = strs
  let lastStr = remains.removeLast()
  for index in lastStr.indices {
    let prefix = String(lastStr.prefix(through: index))
    for str in remains {
      if !str.hasPrefix(prefix) {
        return result
      }
    }
    result = prefix
  }
  return result
}

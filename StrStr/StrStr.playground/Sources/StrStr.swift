
/// 暴力解法
public func bf(_ haystack: String, _ needle: String) -> Int {
  var i = 0
  var j = 0
  while i < haystack.count,
    j < needle.count {
      if haystack[haystack.index(haystack.startIndex, offsetBy: i)] == needle[needle.index(needle.startIndex, offsetBy: j)] {
        i += 1
        j += 1
      } else {
        i = i - j + 1
        j = 0
      }
  }
  if j == needle.count {
    return i - j
  } else {
    return -1
  }
}

/// KMP算法
public func kmp(_ haystack: String, _ needle: String) -> Int {
  var i = 0
  var j = 0
  let next = nexts(of: needle)
  while i < haystack.count,
    j < needle.count {
      if j == -1 || haystack[haystack.index(haystack.startIndex, offsetBy: i)] == needle[needle.index(needle.startIndex, offsetBy: j)] {
        i += 1
        j += 1
      } else {
        j = next[j]
      }
  }
  if j == needle.count {
    return i - j
  } else {
    return -1
  }
}

private func nexts(of needle: String) -> [Int] {
  var nexts = [-1]
  var j = 0
  var k = -1
  while j < needle.count - 1 {
    if k == -1 || needle[needle.index(needle.startIndex, offsetBy: j)] == needle[needle.index(needle.startIndex, offsetBy: k)] {
      j += 1
      k += 1
      nexts.append(k)
    } else {
      k = nexts[k]
    }
  }
  return nexts
}


public struct Stack<T> {
  private var _elements = [T]()
  
  public init(array: [T]){
    self._elements = array
  }
  
  public var isEmpty: Bool {
    return _elements.isEmpty
  }
  
  public var count: Int {
    return _elements.count
  }
  
  public var top: T? {
    return _elements.last
  }
  
  public mutating func push(_ element: T) {
    _elements.append(element)
  }
  
  public mutating func pop() -> T? {
    return _elements.popLast()
  }
}

extension Stack: Sequence {
  public func makeIterator() -> AnyIterator<T> {
    var curr = self
    return AnyIterator {
      return curr.pop()
    }
  }
}

extension Stack: ExpressibleByArrayLiteral {
  public init(arrayLiteral elements: Element...) {
    self.init(array: elements)
  }
}

extension Stack: CustomStringConvertible {
  public var description: String {
    return "\(T.self) Stack: " + _elements.map {"\($0)"}.joined(separator: ",")
  }
}

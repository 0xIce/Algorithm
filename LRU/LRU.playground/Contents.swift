class LRUCache {
  
  private let capacity: Int
  private var store = [Int:Int]()
  private var order = [Int]()
  
  init(_ capacity: Int) {
    self.capacity = capacity
  }
  
  func get(_ key: Int) -> Int {
    let value = store[key]
    if let value = value {
      order.remove(at: order.lastIndex(of: key)!)
      order.append(key)
    }
    return value ?? -1
  }
  
  func put(_ key: Int, _ value: Int) {
    if store[key] != nil {
      order.remove(at: order.lastIndex(of: key)!)
      order.append(key)
    } else if order.count == capacity {
      store.removeValue(forKey: order.remove(at: 0))
      order.append(key)
    } else {
      order.append(key)
    }
    store[key] = value
  }
}


let cache = LRUCache(2);

cache.put(1, 1);
cache.put(2, 2);
cache.get(1);       // 返回  1
cache.put(3, 3);    // 该操作会使得密钥 2 作废
cache.get(2);       // 返回 -1 (未找到)
cache.put(4, 4);    // 该操作会使得密钥 1 作废
cache.get(1);       // 返回 -1 (未找到)
cache.get(3);       // 返回  3
cache.get(4);       // 返回  4


/**
 给一个文件的绝对路径，将其简化。举个例子，路径是 "/home/"，简化后为 "/home"；路径是"/a/./b/../../c/"，简化后为 "/c"。
 */
/**思路
 首先输入是个 String，代表路径。输出要求也是 String, 同样代表路径；
 我们可以把 input 根据 “/” 符号去拆分，比如 "/a/b/./../d/" 就拆成了一个String数组["a", "b", ".", "..", "d"]；
 创立一个栈然后遍历拆分后的 String 数组，对于一般 String ，直接加入到栈中，对于 ".." 那我们就对栈做 pop 操作，其他情况不错处理。
 */

//public func simplifyPath(_ path: String) -> String {
//  var pathStack = [String]()
//  
//  let paths = path.components(separetedBy: "/")
//  
//  for path in paths {
//    guard let path != "." else {
//      continue
//    }
//    
//  }
//}

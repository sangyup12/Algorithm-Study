struct Stack {
  private var stack = [String]()
  
  mutating func push(_ value: String) {
    stack.append(value)
  }
  
  mutating func pop() -> String? {
    return stack.popLast()
  }
  
  var peek: String? {
    return stack.last
  }
  
  var isEmpty: Bool {
    return stack.isEmpty
  }
}

let T = Int(readLine()!)!

for _ in 0..<T {
  let PS = readLine()!
  var stack = Stack()
  var isPS = true
  
  for char in PS {
    let s = String(char)
    
    if s == "(" {
      stack.push(s)
    } else if s == ")" {
      if stack.peek == "(" {
        stack.pop()
      } else {
        isPS = false
        break
      }
    }
  }
  
  if isPS && stack.isEmpty {
    print("YES")
  } else {
    print("NO")
  }
}
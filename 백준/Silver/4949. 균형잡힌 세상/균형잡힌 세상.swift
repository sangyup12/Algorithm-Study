struct Stack {
    private var stack: [String] = []
    
    mutating func push(_ value: String) {
        stack.append(value)
    }
    
    mutating func pop() -> String? {
        return stack.popLast() 
    }
    
    var isEmpty: Bool {
        return stack.isEmpty
    }
    
    var peek: String? {
        return stack.last
    }
}

while let input = readLine() {
    if input == "." { break }
    var stack = Stack()
    var isBalanced = true
    
    for char in input {
      let s = String(char)
      
      if s == "(" || s == "[" {
          stack.push(s)
      } else if s == ")" {
          if stack.peek == "(" {
              stack.pop()
          } else {
             isBalanced = false
                break
          }
      } else if s == "]" {
          if stack.peek == "[" {
              stack.pop()
          } else {
             isBalanced = false
              break
          }
      }
   }
    
  if isBalanced && stack.isEmpty {
          print("yes")
      } else {
          print("no")
      }
    
}

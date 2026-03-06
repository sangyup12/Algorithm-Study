let K = Int(readLine()!)!
var stack: [Int] = []

for _ in 0..<K {
    if let input = Int(readLine()!), input != 0 {
        stack.append(input)
    } else {
        stack.removeLast()
    }
}

print(stack.reduce(0, +))
let N = Int(readLine()!)!
var stack = [Int]()

for _ in 0..<N {
    let command = readLine()!.split(separator: " ")
    
    switch command[0] {
    case "push":
        if let value = Int(command[1]) {
            stack.append(value)
        }
    case "pop":
        print(stack.popLast() ?? -1)
    case "size":
        print(stack.count)
    case "empty":
        print(stack.isEmpty ? 1 : 0)
    case "top":
        print(stack.last ?? -1)
    default:
        break
    }
}
let N = Int(readLine()!)!
var queue = [Int]()

for _ in 0..<N {
  let command = readLine()!.split(separator: " ")
  
  switch command[0] {
    case "push":
    if let value = Int(command[1]) { queue.append(value) }
    case "pop":
      if !queue.isEmpty {
        print(queue.removeFirst())
      } else {
          print(-1)
      }
    case "size":
      print(queue.count)
    case "empty":
      print(queue.isEmpty ? 1 : 0)
    case "front":
      print(queue.first ?? -1)
    case "back":
      print(queue.last ?? -1)
    default:
      print("error")
  }
}
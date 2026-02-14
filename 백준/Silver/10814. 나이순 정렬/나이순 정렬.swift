let N = Int(readLine()!)!
var user: [(age: Int, name: String)] = []

for _ in 0..<N {
  let input = readLine()!.split(separator: " ").map { String($0) }
  user.append((Int(input[0])!, input[1]))
  
}

let sortedUser = user.sorted {
    $0.age < $1.age
}

for person in sortedUser {
    print("\(person.age) \(person.name)")
}
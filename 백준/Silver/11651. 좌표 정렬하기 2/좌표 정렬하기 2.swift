let N = Int(readLine()!)!
var matrix = [(x: Int, y: Int)]()

for _ in 0..<N {
  let input = readLine()!.split(separator: " ").map { Int($0)! }
  
  matrix.append((input[0], input[1]))
}

matrix.sort {
    if $0.y == $1.y {
        return $0.x < $1.x
    }
    return $0.y < $1.y
}

var result = ""

for p in matrix {
  result += "\(p.x) \(p.y)\n"
}

print(result)
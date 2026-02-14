let N = Int(readLine()!)!
var matrix = Array(repeating: Array(repeating: 0, count: 2), count: N)

for i in 0..<N {
  let input = readLine()!.split(separator: " ").map { Int($0)! }
  matrix[i][0] = input[0]
  matrix[i][1] = input[1]
}

matrix.sort { (a, b) in
    if a[0] == b[0] {
        return a[1] < b[1]
    }
    return a[0] < b[0]
}

var result = ""

for p in matrix {
  result += "\(p[0]) \(p[1])\n"
}

print(result)
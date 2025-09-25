var white :[[Int]] = Array(repeating: Array(repeating: 0, count: 100), count: 100)
let black = Int(readLine()!)!

for i in 0..<black {
  var distance = readLine()!.split(separator: " ").map { Int ($0)!}
  
  let x = distance[0] - 1
  let y = 100 - distance[1]
  for j in 0..<10 {
      white[y-j].replaceSubrange(x..<x+10, with: Array(repeating: 1, count: 10))
  }
}

var count = 0

for row in white {
    for i in 0..<row.count {
      if row[i] == 1 {
        count += 1
      }
    }
}

print(count)
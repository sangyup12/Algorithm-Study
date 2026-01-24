let time = Int(readLine()!)!
var count = Array(repeating: 0, count: 10001)

for _ in 1...time {
  let c = Int(readLine()!)!
  count[c] += 1
}

var output = ""

for i in 1...10000 {
    if count[i] > 0 {
        output += String(repeating: "\(i)\n", count: count[i])
    }
}

print(output)

var value = 1

for _ in 0..<3 {
  let input = Int(readLine()!)!
  value *= input
}

let arrayValue = String(value).map { Int(String($0))! }
var numCount = 0

for i in 0..<10 {
  for j in 0..<arrayValue.count {
    if (arrayValue[j] == i) {
      numCount += 1
    }
  }
  print(numCount)
  numCount = 0
}

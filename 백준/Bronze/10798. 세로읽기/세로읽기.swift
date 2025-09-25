var input = [[Character]]()

for _ in 0..<5 {
    input.append(Array(readLine()!))
}

var result = ""

for i in 0..<15 {
  for j in 0..<5 {
    if i < input[j].count {
    result.append(input[j][i])
    }
  }
}
    
print(result)

let time = Int(readLine()!)!

for _ in 0..<time {
  let answer = readLine()!
  var count = 0
  var grade = 0
  
  for ch in answer {
    if (ch == "O") {
      count += 1
      grade += count
    } else {
      count = 0
    }
  }
  print(grade)
}
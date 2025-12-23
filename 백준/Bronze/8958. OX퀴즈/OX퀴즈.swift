let time = Int(readLine()!)!

for _ in 0..<time {
  let answer = readLine()!
  let arrayAnswer = String(answer).map { String($0) }
  var count = 0
  var grade = 0
  
  for i in 0..<arrayAnswer.count {
    if (arrayAnswer[i] == "O") {
      count += 1
      grade += count
    } else {
      count = 0
    }
  }
  print(grade)
}
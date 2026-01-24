let bookNumber = readLine()!
var sum = 0
var X = 1
var answer = 0

let m = Int(String(bookNumber[bookNumber.index(bookNumber.startIndex, offsetBy: 12)]))!

for i in 0..<12 {
  let number = bookNumber[bookNumber.index(bookNumber.startIndex, offsetBy: i)]
  
  if i % 2 != 0 {
    if number == "*" {
      X = 3
      continue
    } else {
      sum += Int(String(number))! * 3
    }
  } else {
    if number == "*" {
      X = 1
      continue
    } else {
      sum += Int(String(number))!
    }
  }
}

if X < 3 {
  answer = (10 - (sum + m) % 10) % 10
} else {
  for i in 0...9 {
    if (sum + m + X * i) % 10 == 0 {
      answer = i
      break
    }
  }
}

if answer != 0 {
  print(answer)  
} else {
  print(0)
}

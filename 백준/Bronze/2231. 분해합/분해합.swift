let N = Int(readLine()!)!
var value = Int()

for i in 1..<N {
  let X = String(i)
  var sum = 0

  for ch in X {
      sum += Int(String(ch))!
  }
  
  if sum + i == N { 
    value = i
    break
  }
}

if value > 0 {
  print(value)  
} else {
  print(0)
}

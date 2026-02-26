var N = Int(readLine()!)!
var result = 0 
var notFound = true

while N >= 0 {
  if N % 5 == 0 {
    result += N / 5
    print(result)
    notFound = false
    break
  } 
  N -= 3
  result += 1
}

if notFound {
  print(-1)
}
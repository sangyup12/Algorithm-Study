let input1 = Int(readLine()!)!
let input2 = Int(readLine()!)!

var primeNum = [Int]()

for i in input1...input2 {
  var isPrime = true
    if i == 1 {
      continue
    }
    
  for j in 2..<i {
   if i % j == 0 {
     isPrime = false
      break
    } 
  }
  
  if isPrime {
    primeNum.append(i)
  }
}

if primeNum.isEmpty {
  primeNum.append(-1)
  print(primeNum[0])
} else {
  print(primeNum.reduce(0, +))
  print(primeNum.min()!)
}
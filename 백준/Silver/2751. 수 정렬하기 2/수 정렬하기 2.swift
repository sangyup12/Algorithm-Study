let N = Int(readLine()!)!

var arrayA = Array(repeating: 0, count: N)

for i in 0..<N {
  arrayA[i] = Int(readLine()!)!
}

arrayA.sort()


for i in 0..<N {
  print(arrayA[i])
}
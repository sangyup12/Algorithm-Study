let repeatTime = Int(readLine()!)!
var roomArray = Array(repeating: Array(repeating: 0, count: 15), count: 15)

for i in 1...14 {
  roomArray[0][i] = i
  roomArray[i][1] = 1
}

for i in 1...14 {
  for j in 2...14 {
    roomArray[i][j] = roomArray[i][j-1] + roomArray[i-1][j]
  }
}

for i in 0..<repeatTime {
  let k = Int(readLine()!)!
  let n = Int(readLine()!)!
  
  print(roomArray[k][n])
}


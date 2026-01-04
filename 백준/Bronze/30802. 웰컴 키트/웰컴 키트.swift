let N = Int(readLine()!)!
let sizeT = readLine()!.split(separator: " ").map { Int($0)! }
let TP = readLine()!.split(separator: " ").map { Int($0)! }

var countT = 0

for i in 0..<sizeT.count {
  if sizeT[i] > TP[0] {
    countT += sizeT[i]/TP[0]
    if sizeT[i]%TP[0] != 0 {
      countT += 1
    }
  } else if sizeT[i] != 0{
      countT += 1
  }
}
print(countT)

let countP = N/TP[1]
let countPone = N%TP[1]
print("\(countP) \(countPone)")
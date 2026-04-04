import Foundation

let input = Int(readLine()!)!

if input == 0 {
  print(0)
} else {
  var level = [Int]()
  
  for _ in 0..<input {
    level.append(Int(readLine()!)!)
  }
  
  var sortedLevel = level.sorted()
  var cutting : Double = (Double(input) * 0.15).rounded() 
  
  let cuttingInt = Int(cutting)
  
  let start = cuttingInt
  let end = input - cuttingInt
  let trimmedLevel = sortedLevel[start..<end]
  let sum = trimmedLevel.reduce(0, +)
  
  var average = Double(sum) / Double(trimmedLevel.count)
  
  print(Int(average.rounded()))
}
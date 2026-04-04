import Foundation

let n = Int(readLine()!)!
var cards = readLine()!.split(separator: " ").map { Int($0)! }.sorted()

let m = Int(readLine()!)!
let queries = readLine()!.split(separator: " ").map { Int($0)! }

func lowerBound(_ array: [Int], target: Int) -> Int {
  var low = 0
  var high = array.count
  while low < high {
    let mid = (low + high) / 2 
    if array[mid] >= target {
      high = mid
    } else {
      low = mid + 1
    }
  }
  
  return low
}

func upperBound(_ array: [Int], target: Int) -> Int {
  var low = 0
  var high = array.count
  while low < high {
    let mid = (low + high) / 2
    if array[mid] > target {
      high = mid
    } else {
      low = mid + 1
    }
  }
  
  return low
}

var result = [String]()
for query in queries {
    let count = upperBound(cards, target: query) - lowerBound(cards, target: query)
    result.append("\(count)")
}

print(result.joined(separator: " "))
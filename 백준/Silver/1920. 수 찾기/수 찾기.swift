let N = Int(readLine()!)!
let arrayA = Set(readLine()!.split(separator: " ").map { Int($0)! })

let M = Int(readLine()!)!
let check = readLine()!.split(separator: " ").map { Int($0)! }

var result = check.map { arrayA.contains($0) ? "1" : "0" }

print(result.joined(separator: "\n"))

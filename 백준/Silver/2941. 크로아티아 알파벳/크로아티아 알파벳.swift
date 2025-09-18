import Foundation

var input = readLine()!

let patterns = ["dz=", "c=", "c-", "d-", "lj", "nj", "s=", "z="]

for pattern in patterns {
    input = input.replacingOccurrences(of: pattern, with: "*")
}

print(input.count)

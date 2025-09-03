//
//  B_5597.swift
//  bronze
//
//  Created by 이상엽 on 9/2/25.
//

import Foundation

var nums = [String]()

for _ in 0..<28 {
    nums.append(readLine()!)
}
let numsInt = nums.map { Int($0)! }
var value = [Int]()
for i in 1...30 {
    guard numsInt.contains(i) else {
        value.append(i)
        continue
    }
}
print(value.map { String($0) }.joined(separator: " "))

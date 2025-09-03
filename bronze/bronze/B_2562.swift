//
//  B_2562.swift
//  Baekjoon
//
//  Created by 이상엽 on 9/2/25.
//

var nums = [Int]()
var maxL = -1
for _ in 0..<9 {
    nums.append(Int(readLine()!)!)
}

let result = nums.max()!

for i in 0..<9 {
    if nums[i] == result {
        maxL = i + 1
    }
}

print(result)
print(maxL)

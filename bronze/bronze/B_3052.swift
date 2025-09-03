//
//  B_3052.swift
//  bronze
//
//  Created by 이상엽 on 9/3/25.
//

var nums = [String]()

for _ in 0..<10 {
    nums.append(readLine()!)
}

let numsInt = nums.map { Int($0)! }

var remainder = [Int]()

for i in 0..<10 {
    let v = numsInt[i] % 42
    remainder.append(v)
}

let count = Set(remainder).count
print(count)

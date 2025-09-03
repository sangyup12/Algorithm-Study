//
//  B_10818.swift
//  Baekjoon
//
//  Created by 이상엽 on 9/2/25.
//

let n = Int(readLine()!)!
var nums = readLine()!.split(separator: " ").map {Int($0)!}
var max: Int = 0
var min: Int = 0

if let max = nums.max(), let min = nums.min() {
    print(min, max)
}

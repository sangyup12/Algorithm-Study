//
//  B_10871.swift
//  algorithmStudy
//
//  Created by 이상엽 on 9/1/25.
//

let input = readLine()!.split(separator: " ").map {Int($0)!}
let n = input[0]
let x = input[1]
var nums = [Int]()
nums = readLine()!.split(separator: " ").map {Int($0)!}

var value = [Int]()

for i in 0..<n {
    if nums[i] < x {
        value.append(nums[i])
    }
}

value.forEach {
    print($0, terminator: " ")
}

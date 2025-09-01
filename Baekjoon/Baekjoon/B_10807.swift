//
//  B_10807.swift
//  algorithmStudy
//
//  Created by 이상엽 on 9/1/25.
//

let n = Int(readLine()!)!
let numbers = readLine()!.split(separator: " ").map {Int($0)!}
let value = Int(readLine()!)!
let valCount = numbers.filter {$0 == value}.count

print(valCount)

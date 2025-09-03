//
//  B_10810.swift
//  Baekjoon
//
//  Created by 이상엽 on 9/2/25.
//

let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0]
let m = input[1]

var basket = [Int](repeating:0, count: n)

for _ in 0..<m {
    let c = readLine()!.split(separator: " ").map {Int($0)!}
    let i = c[0] - 1
    let j = c[1] - 1
    let k = c[2]
    
    for idx in i...j {
        basket[idx] = k
    }
}

print(basket.map {String($0)}.joined(separator: " "))

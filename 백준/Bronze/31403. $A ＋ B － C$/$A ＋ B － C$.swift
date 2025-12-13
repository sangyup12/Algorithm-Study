var input = [Int]()

for _ in 0...2 {
    input.append(Int(readLine()!)!)
}

let A = input[0]
let B = input[1]
let C = input[2]

print(A + B - C)

let stringA = String(input[0])
let stringB = String(input[1])

print(Int(stringA + stringB)! - C)

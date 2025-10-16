var input = [[Int]]()

for _ in 0...2 {
    input.append(readLine()!.split(separator: " ").map { Int($0)! })
}
var temp = [Int]()

if input[0][0] == input[1][0] {
    temp.append(input[2][0])
} else if input[0][0] == input[2][0] {
    temp.append(input[1][0])
} else {
    temp.append(input[0][0])
}

if input[0][1] == input[1][1] {
    temp.append(input[2][1])
} else if input[0][1] == input[2][1] {
    temp.append(input[1][1])
} else {
    temp.append(input[0][1])
}

print(temp.map{String($0)}.joined(separator: " "))
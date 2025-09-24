var input = [[Int]]()
var maxValue = Int()
var col: Int = 1
var row: Int = 1

for _ in 0..<9 {
    input.append(readLine()!.split(separator: " ").map { Int(String($0))! })
}

for i in 0..<9 {
    for j in 0..<9 {
        if input[i][j] > maxValue {
            maxValue = input[i][j]
            col = i + 1
            row = j + 1
        }
    }
}

print(maxValue)
print(col, row)
var array1 = [[Int]]()
var array2: [[Int]] = []
var resultArray: [String] = []

let arraySize = readLine()!.split(separator: " ").map { Int($0)! }

for _ in 0..<arraySize[0] {
    let n = readLine()!.split(separator: " ").map { Int($0)! }
    array1.append(n)
}

for _ in 0..<arraySize[0] {
    let n = readLine()!.split(separator: " ").map { Int($0)! }
    array2.append(n)
}
for i in 0..<arraySize[0] {
    for j in 0..<arraySize[1] {
        resultArray.append(String(array1[i][j] + array2[i][j]))
    }
}
print(resultArray.joined(separator: " "))

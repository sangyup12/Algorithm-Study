let chess = [1, 1, 2, 2, 2, 8]
let sets = readLine()!.split(separator: " ").map {Int($0)!}
var result: [Int] = []
for i in 0..<6 {
    result.append(contentsOf: [chess[i] - sets[i]])
}
print(result.map {String($0)}.joined(separator: " "))

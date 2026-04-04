let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0], K = input[1]

var circularPeople = Array(1...N)
var resultArray = [Int]()
var index = K - 1

while !circularPeople.isEmpty {
    index %= circularPeople.count

    resultArray.append(circularPeople.remove(at: index))

    index += K - 1
}

let output = "<" + resultArray.map { String($0) }.joined(separator: ", ") + ">"

print(output)
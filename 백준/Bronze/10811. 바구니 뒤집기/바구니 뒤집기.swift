let input = readLine()!.split(separator: " ").map{Int($0)!}
let basketSize = input[0]
var basket = Array(1...basketSize)

let reverseTryCount = input[1]

var reverseIndex = [String.SubSequence]()
var tempArray = [Int]()
var reverseIndexInt = [Int]()

for _ in 0..<reverseTryCount {
    reverseIndex = readLine()!.split(separator: " ")
    reverseIndexInt = reverseIndex.map { Int($0)! }
    let i = reverseIndexInt[0] - 1
    let j = reverseIndexInt[1] - 1
    basket[i...j].reverse( )
}

print(basket.map { String($0) }.joined(separator: " "))

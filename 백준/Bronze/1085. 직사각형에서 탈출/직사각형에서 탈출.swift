let input = readLine()!.split(separator: " ").map { Int($0)! }
let x = input[0]
let y = input[1]
let w = input[2]
let h = input[3]

var fromZero = Int()
var fromOne = Int()

if x > y {
    fromZero = y
} else {
    fromZero = x
}

if w - x > h - y {
    fromOne = h - y
} else {
    fromOne = w - x
}

print(fromOne < fromZero ? fromOne : fromZero)

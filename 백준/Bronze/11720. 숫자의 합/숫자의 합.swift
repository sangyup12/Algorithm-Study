let n = Int(readLine()!)!

let number = Array(readLine()!)
var sum = 0

for i in 0..<n {
    sum += number[i].wholeNumberValue!
}
print(sum)

let N = Int(readLine()!)!

var count = 0
var i = 5

while i <= N {
    count += N / i
    i *= 5
}

print(count)
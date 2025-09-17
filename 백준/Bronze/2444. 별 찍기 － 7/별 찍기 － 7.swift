let num  = Int(readLine()!)!
for i in 1...(num * 2 - 1) {
    let k = (i <= num) ? i : (num * 2 - i)
    let space = num - k
    let stars = k * 2 - 1
    print(String(repeating: " ", count: space) + String(repeating: "*", count: stars))
}

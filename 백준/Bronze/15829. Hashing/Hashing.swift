let L = Int(readLine()!)!
let inputString = readLine()!
let M = 1234567891

var hash = 0
var power = 1

for ch in inputString {
  let stringValue = Int(ch.asciiValue! - Character("a").asciiValue! + 1)
  hash = (hash + stringValue * power)  % M
  power = (power * 31) % M
}

print(hash)
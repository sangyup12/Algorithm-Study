import Foundation

var input = readLine()!.split(separator: " ")
var value = 0.0
var result = 0

let word = Array(input[0])
let system = Double(input[1])!

for i in 0..<word.count {
    let index = word.count - i - 1

    if word[index].isLetter {
        let char = word[index]
        let ascii = char.asciiValue!
        let powValue = pow(system, Double(i))
        
        value = Double(ascii - Character("A").asciiValue! + 10)
        result += Int(value * powValue)
    } else {
        let wordToNum = Double(String(word[index]))!
        let powValue = pow(system, Double(i))

        result += Int(wordToNum * powValue)
    }
}
print(result)
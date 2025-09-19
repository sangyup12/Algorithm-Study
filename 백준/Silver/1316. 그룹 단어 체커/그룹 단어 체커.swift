
let time = Int(readLine()!)!
var groupCount = time

for _ in 1...time {
    let word = readLine()!
    
    var checkBox = [Character]()
    var index = 0

    for ch in word {
        if index != 0 && checkBox.contains(ch) && checkBox[index-1] != ch {
            index += 1
            groupCount -= 1
            break
        }
        checkBox.append(ch)
        index += 1
    }
    index = 0
    checkBox.removeAll()
}

print(groupCount)

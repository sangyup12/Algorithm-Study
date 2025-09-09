let S = Array(readLine()!)
var result = [Int]()

for i in 97...122 {
    let codeString = Character(UnicodeScalar(i)!)
    var index = -1
    
    for j in 0..<S.count {
        if S[j] == codeString {
            index = j
            break
        }
    }
    
    result.append(index)
}
print(result.map {String($0)}.joined(separator: " "))

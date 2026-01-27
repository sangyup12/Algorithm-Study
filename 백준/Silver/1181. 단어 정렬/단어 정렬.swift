let N = Int(readLine()!)!
var wordArray = Array(repeating: "", count: N)

for i in 0..<N {
  wordArray[i] = readLine()!  
}
wordArray = Array(Set(wordArray))

wordArray.sort { a, b in
    if a.count != b.count {
        return a.count < b.count
    } else {
        return a < b
    }
}

for word in wordArray {
    print(word)
}
let word = readLine()!.uppercased()
var dict: [Character: Int] = [:]
for ch in word {
    dict[ch, default: 0] += 1
}

let maxCount = dict.values.max()!
let maxLatters = dict.filter { $0.value == maxCount}

if maxLatters.count > 1 {
    print("?")
} else {
    print(maxLatters.first!.key)
}

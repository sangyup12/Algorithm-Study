let N = Int(readLine()!)!
var people: [(w: Int, h: Int)] = []

for _ in 0..<N {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    people.append((input[0], input[1]))
}

var results: [Int] = []

for i in 0..<N {
    var count = 0 
    
    for j in 0..<N {
        if people[i].w < people[j].w && people[i].h < people[j].h {
            count += 1
        }
    }
    results.append(count + 1)
}

print(results.map { String($0) }.joined(separator: " "))
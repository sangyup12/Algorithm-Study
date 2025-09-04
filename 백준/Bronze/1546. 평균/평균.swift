let n = Int(readLine()!)!
var grade = readLine()!.split(separator: " ").map { Double($0)! }

let max = grade.max()!

for i in 0..<n {
    let newGrade = grade[i]/max*100
    grade[i] = newGrade
}
var sum = 0.0

for i in 0..<n {
    sum += grade[i]
}

let N = Double(exactly: n)!
let average = sum/N

print(average)

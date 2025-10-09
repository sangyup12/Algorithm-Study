var input = [0]
var divisors: [Int] = []

while input[0] != -1 {
    divisors = []
    input = readLine()!.split(separator: " ").map { Int($0)! }
    
    if input[0] == -1 {
        break
    }
    
    for i in 1..<input[0] {
        if input[0] % i == 0 {
            divisors.append(i)
        }
    }
    
    let sum = divisors.reduce(0, +)
    if sum == input[0] {
        print("\(input[0]) = \(divisors.map {String ($0)}.joined(separator: " + "))")
    } else {
        print("\(input[0]) is NOT perfect.")
    }
}

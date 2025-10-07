let input = readLine()!.split(separator: " ").map { Int($0)! }

let A = input[0], B = input[1], V = input[2]

let day = ((V - B - 1) / (A - B)) + 1

print(day)


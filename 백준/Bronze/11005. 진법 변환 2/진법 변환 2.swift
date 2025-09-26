var input = readLine()!.split(separator: " ")

let num = Int(input[0])!
let system = Int(input[1])!

print(String(num, radix: system).uppercased())

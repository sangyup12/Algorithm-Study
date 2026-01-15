let input = readLine()!.split(separator: " ").map {Int($0)!}

var a = input[0]
var b = input[1]

while b != 0 {
  let r = a % b
  a = b
  b = r
}

let gcd = a 
let lcm = input[0] * input[1] / a

print(gcd)
print(lcm)
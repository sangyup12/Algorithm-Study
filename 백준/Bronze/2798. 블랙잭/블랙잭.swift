let input = readLine()!.split(separator: " ").map{Int($0)!}
let N = input[0]
let M = input[1]

let card = readLine()!.split(separator: " ").map { Int($0)! }

var correctValue = Int()
var maxValue = 0

for i in 0..<N {
  for j in i+1..<N {
    for k in j+1..<N {
      correctValue = card[i] + card[j] + card[k]
      if correctValue > maxValue && correctValue <= M {
        maxValue = correctValue
      }
    }
    if(correctValue == M) { 
        break
        }
  }
  if(correctValue == M) { 
        break
        }
}

print(maxValue)

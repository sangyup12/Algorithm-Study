let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0]
let K = input[1]

var trialArray = Array(repeating: Array(repeating: 0, count: 11), count: 11)

for i in 0...N {
  for j in 0...i {
    if j == 0 || i == j {
      trialArray[i][j] = 1
    } else {
        trialArray[i][j] = trialArray[i - 1][j - 1] + trialArray[i - 1][j]
    }
  }
}

print(trialArray[N][K])

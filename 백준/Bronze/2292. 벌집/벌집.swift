var input = Int(readLine()!)!
var layer = 1 
var end  = 1

for i in 0...input {
  layer = i + 1
  end += 6*i 
  if end >= input {
    break
  }
}

print(layer)
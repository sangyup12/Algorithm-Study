var input = Int(readLine()!)!
var line = 1 
var end  = 1

if input == 1 {
  print("1/1")
} else {
  
for i in 2...input {
  line = i
  end += i
  
  if input <= end {
    break
  }
}

let position = end - input 

var top = 0
var bottom = 0

if line % 2 == 0 {
  top = line - position
  bottom = position + 1
} else {
    top =  position + 1
    bottom = line - position
}

print("\(top)/\(bottom)")

}
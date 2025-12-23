let breakArray = [0.0, 0.0, 0.0]
while true {
  var input = readLine()!.split(separator: " ").map { Double($0)! }
  
  if (input == breakArray) { break }
  let triangle = input.sorted()
  if (triangle[0] * triangle[0] + triangle[1] * triangle[1] == triangle[2] * triangle[2]) {
    print("right")
  } else {
    print("wrong")
  }
}

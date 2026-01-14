var input = 0

repeat {
  input = Int(readLine()!)!
  let reversed = String(String(input).reversed())
  
  if input == 0 { break }
  
  if input == Int(reversed)! {
    print("yes")
  } else {
    print("no")
  }
} while (input != 0)


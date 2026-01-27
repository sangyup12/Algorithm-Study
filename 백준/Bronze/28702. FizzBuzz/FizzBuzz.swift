for i in 1...3 {
  let value = readLine()!
  var result = Int()
  
  if value != "Fizz", value != "Buzz", value != "FizzBuzz" {
    switch i {
      case 1:
       result = Int(value)! + 3
       case 2:
       result = Int(value)! + 2
       case 3: 
       result = Int(value)! + 1
       default:
        break
    }
    
    if result % 3 == 0, result % 5 == 0 {
      print("FizzBuzz")
      break
    } else if result % 3 == 0, result % 5 != 0 {
      print("Fizz")
      break
    } else if result % 3 != 0, result % 5 == 0 {
      print("Buzz")
      break
    } else if result % 3 != 0, result % 5 != 0 {
    print(result)
    break
    }
  }
}
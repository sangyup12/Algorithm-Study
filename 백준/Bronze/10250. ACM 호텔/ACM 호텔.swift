let time = Int(readLine()!)!
var testData = [[Int]]()

for i in 0..<time {
    testData.append(readLine()!.split(separator: " ").map { Int($0)! })
    
    let height = testData[i][0]
    var number = testData[i][2]
    
    var floor = Int()
    var floorIndex = 0
    var room = Int()
    
    while height < number {
       number = number - height
       floorIndex += 1
    }
    if number == 0 { number = floorIndex }
    
    room = floorIndex + 1
    if room < 10 {
      print("\(number)0\(room)")
    } else {
      print("\(number)\(room)")
    }
}



let T = Int(readLine()!)!
var cal = 0
var total = 0

for _ in 0..<T {
  var result = [Int]()
    let C = Int(readLine()!)!
    cal = C / 25
    total = C
    result.append(cal) 
    total = C % 25
    if total == 0 {
        result.append(0)
        result.append(0)
        result.append(0)

    print(result.map {String($0)}.joined(separator: " "))
        continue
    }
    
    cal = total / 10
    result.append(cal)
    total = total % 10
    if total == 0 {
        result.append(0)
        result.append(0)
    print(result.map {String($0)}.joined(separator: " "))
        continue
    }
    
    cal = total / 5
    result.append(cal)
    total = total % 5
        if total == 0 {
        result.append(0)
    print(result.map {String($0)}.joined(separator: " "))
        continue
    }
    
    cal = total / 1
    result.append(cal)
    print(result.map {String($0)}.joined(separator: " "))
}


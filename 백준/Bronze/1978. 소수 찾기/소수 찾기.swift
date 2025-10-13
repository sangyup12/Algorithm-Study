let time = Int(readLine()!)!
var count = time
var num = [Int]()

num.append(contentsOf: readLine()!.split(separator: " ").map{ Int($0)! })

for i in 0..<time {
    if num[i] == 1 {
      count -= 1
       continue
    }
    
  for j in 2..<num[i] {
   if num[i] % j == 0 {
      count -= 1
      break
    } 
  }
  
}
print(count)
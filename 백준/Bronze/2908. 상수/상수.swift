let num = readLine()!.split(separator: " ")
let rNum1 = Int(String(num[0].reversed()))!
let rNum2 = Int(String(num[1].reversed()))!

if rNum1 < rNum2 {
    print(rNum2)
} else {
    print( rNum1)
}

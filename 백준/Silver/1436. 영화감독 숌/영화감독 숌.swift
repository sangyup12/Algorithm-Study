let N = Int(readLine()!)!
var count = 0
var number = 665

func has666(_ n: Int) -> Bool {
    var n = n
    var consecutive = 0

    while n > 0 {
        if n % 10 == 6 {
            consecutive += 1
            if consecutive == 3 {
                return true
            }
        } else {
            consecutive = 0
        }
        n /= 10
    }
    return false
}

while true {
    number += 1
    if has666(number) {
        count += 1
        if count == N {
            print(number)
            break
        }
    }
}
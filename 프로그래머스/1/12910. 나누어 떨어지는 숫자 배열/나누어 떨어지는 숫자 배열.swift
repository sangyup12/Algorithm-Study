func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    var val = [Int]()
    for i in 0..<arr.count {
        if arr[i] % divisor != 0 {
        } else {
            val.append(arr[i])
        }
    }
    
    if val.isEmpty {
        val.append(-1)
    } else {
        val.sort()
    }
    
    return val
}
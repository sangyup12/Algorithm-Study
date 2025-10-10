func solution(_ num:Int) -> String {
    
    if num is Int {
        if num % 2 == 0 || num == 0 {
            return "Even"
        } else {
            return "Odd"
        }
    }
}
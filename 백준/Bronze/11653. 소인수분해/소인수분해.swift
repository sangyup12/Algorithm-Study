let input = Int(readLine()!)!
var result = input

if input == 1 {
    
} else {
    
    for i in 2...input {
        while result % i == 0 {
            print(i)
            result /= i
        }
    }
}

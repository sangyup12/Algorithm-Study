import Foundation

func solution(_ clothes:[[String]]) -> Int {
    var clothesOption = [String : Int]()
    
    for cloth in clothes {
        let type = cloth[1]
        clothesOption[type, default: 0] += 1
    }
    var result = 1
    for count in clothesOption.values {
        result *= count + 1
    }
    
    result -= 1
    
    return result
}
import Foundation

func solution(_ s:String) -> Bool
{    
    let lower = s.lowercased()
    let pCount = lower.filter { $0 == "p" }.count
    let yCount = lower.filter { $0 == "y" }.count
    return pCount == yCount
}
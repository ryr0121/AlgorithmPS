import Foundation

func solution(_ s:String) -> Int {
    let arr = s.split(separator: " ").map{String($0)}
    var result = 0
    var last_num = 0
    
    for a in arr {
        if a == "Z" { result -= last_num }
        else { 
            result += Int(a)! 
            last_num = Int(a)!
        }
    }
    return result
}
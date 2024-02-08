import Foundation

func solution(_ s:String) -> String {
    var dict:[String:Int] = [:]
    var arr = s.map{String($0)}
    
    for a in arr {
        if !dict.keys.contains(a) { dict[a] = 1 }
        else { dict[a]! += 1 }
    }
    
    var result:[String] = []
    for k in dict.keys { if dict[k] == 1 { result.append(k) } }
    result.sort()
    
    return result.joined(separator: "")
}
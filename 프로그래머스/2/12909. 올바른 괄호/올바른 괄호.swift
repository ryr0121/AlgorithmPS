import Foundation

func solution(_ s:String) -> Bool {
    var arr = s.map{String($0)}
    var temp:[String] = []
    
    if arr[0] == ")" { return false }
    for a in arr {
        if (temp.count == 0) && (a == ")") { continue }
        if a == "(" { temp.append(a) }
        else { temp.remove(at: temp.count-1) }
    }
    
    return temp.count == 0 ? true : false
}
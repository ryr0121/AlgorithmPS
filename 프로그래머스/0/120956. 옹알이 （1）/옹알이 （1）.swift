import Foundation

func solution(_ babbling:[String]) -> Int {
    var pos = ["aya", "ye", "woo", "ma"]
    var result = 0
    
    for b in babbling {
        var str = b
        for p in pos {
            str = str.replacingOccurrences(of: p, with: "*")
        }
        if check(str) { result += 1 }
    }
    
    return result
}

func check(_ str: String) -> Bool {
    var arr = str.map{String($0)}
    for a in arr { if a != "*" { return false } }
    return true
}
import Foundation

func solution(_ clothes:[[String]]) -> Int {
    var dict:[String:Int] = [:]
    for c in clothes {
        if !dict.keys.contains(c[1]) { dict[c[1]] = 1 }
        else { dict[c[1]]! += 1 }
    }

    var result = 1
    for d in dict.keys { result *= dict[d]!+1 }
    return result-1
}
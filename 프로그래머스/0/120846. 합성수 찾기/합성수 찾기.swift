import Foundation

func solution(_ n:Int) -> Int {
    var result = 0
    for p in 1...n {
        var temp = 0
        for q in 1...p { if p%q == 0 { temp += 1 } }
        if temp >= 3 { result += 1 }
    }
    return result
}
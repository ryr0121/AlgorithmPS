import Foundation

func solution(_ l:Int, _ r:Int) -> [Int] {
    var answer:[Int] = []
    var cur = l
    while(cur <= r) {
        if(check(cur)) { answer.append(cur) }
        cur += 1
    }
    return answer.isEmpty ? [-1] : answer
}

func check(_ n: Int) -> Bool {
    let s = String(n).map{String($0)}
    for i in 0..<s.count {
        if(s[i] != "0" && s[i] != "5") { return false }
    }
    return true
}
import Foundation

func solution(_ n:Int) -> Int {
    var cur = 0
    for i in 0..<n {
        cur += 1
        while (cur%3 == 0) || (String(cur).contains("3")) { cur += 1 }
    }
    return cur
}
import Foundation

func solution(_ n:Int) -> Int {
    var i = 1
    var factorial = 1

    while factorial < n {
        i += 1
        factorial *= i
    }
    if factorial > n { i -= 1 } 
    return i
}
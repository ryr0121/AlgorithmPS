import Foundation

func solution(_ n:Int) -> Int {
    var result = 0
    if (n%2 == 0) {
        for i in stride(from:0, through:n, by:2) { result += i*i }
    } else {
        for i in stride(from:1, through:n, by:2) { result += i }
    }
    return result
}
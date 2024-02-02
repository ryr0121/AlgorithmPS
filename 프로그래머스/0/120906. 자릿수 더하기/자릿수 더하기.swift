import Foundation

func solution(_ n:Int) -> Int {
    var n_arr = String(n).map {String($0)}
    var result = 0
    for n in n_arr { result += Int(n)! }
    return result
}
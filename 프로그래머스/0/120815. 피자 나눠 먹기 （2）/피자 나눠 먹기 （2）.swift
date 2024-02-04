import Foundation

func solution(_ n:Int) -> Int {
    var result = 1
    var check = (6*result)%n
    while check != 0 {
        result += 1
        check = (6*result)%n
    }
    return result
}
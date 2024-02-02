import Foundation

func solution(_ n:Int, _ numlist:[Int]) -> [Int] {
    var result: [Int] = []
    for a in numlist {
        if a%n == 0 { result.append(a) }
    }
    return result
}
import Foundation

func solution(_ arr:[Int], _ k:Int) -> [Int] {
    var result: [Int] = []
    for e in arr { result.append((k % 2 == 0) ? e+k : e*k) }
    return result
}
import Foundation

func solution(_ s1:[String], _ s2:[String]) -> Int {
    var result = 0
    for p in s1 {
        for q in s2 {
            if (p == q) { result += 1; break; }
        }
    }
    return result
}
import Foundation

func solution(_ numbers:[Int]) -> Int {
    var max = -100000000
    for p in 0..<numbers.count {
        for q in 0..<numbers.count {
            if p == q { continue }
            if (numbers[p]*numbers[q]) > max { max = numbers[p]*numbers[q] }
        }
    }
    return max 
}
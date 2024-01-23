import Foundation

func solution(_ numbers:[Int]) -> Int {
    var sum = 0
    for n in 0...9 { sum += numbers.contains(n) ? 0 : n }
    return sum
}
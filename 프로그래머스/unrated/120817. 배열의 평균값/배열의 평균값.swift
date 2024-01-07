import Foundation

func solution(_ numbers:[Int]) -> Double {
    var sum = 0
    for n in numbers { sum += n }
    return Double(sum)/Double(numbers.count)
}
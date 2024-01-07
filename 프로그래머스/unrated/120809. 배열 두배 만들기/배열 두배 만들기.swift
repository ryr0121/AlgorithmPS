import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    return numbers.map { Int(2*$0) }
}
import Foundation

func solution(_ numbers:[Int], _ k:Int) -> Int {
    let idx = (2*k-2)%numbers.count
    return numbers[idx]
}
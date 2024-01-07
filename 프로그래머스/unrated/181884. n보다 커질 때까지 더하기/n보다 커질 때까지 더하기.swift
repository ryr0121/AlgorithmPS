import Foundation

func solution(_ numbers:[Int], _ n:Int) -> Int {
    var sum = 0
    for num in numbers {
        if (sum > n) { break }
        sum += num
    }
    return sum
}
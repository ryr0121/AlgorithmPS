import Foundation

func solution(_ array:[Int], _ n:Int) -> Int {
    var sum = 0
    for a in array { sum += (a == n) ? 1 : 0 }
    return sum
}
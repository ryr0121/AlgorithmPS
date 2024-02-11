import Foundation

func solution(_ numlist:[Int], _ n:Int) -> [Int] {
    var nums = numlist.sorted(by: >)
    var arr: [[Int]] = []
    
    for num in nums { arr.append([num, abs(num-n)]) }
    arr.sort{ $0[1] < $1[1] }

    var result: [Int] = []
    for a in arr { result.append(a[0]) }
    
    return result
}
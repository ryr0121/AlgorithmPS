import Foundation

func solution(_ arr:[Int], _ n:Int) -> [Int] {
    var resultArr = arr
    for i in stride(from: (arr.count%2 == 0) ? 1 : 0, to: arr.count, by: 2) {
        resultArr[i] += n
    }
    return resultArr
}
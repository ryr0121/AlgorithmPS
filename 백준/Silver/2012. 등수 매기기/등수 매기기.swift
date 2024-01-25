import Foundation

func solution(_ arr: [Int]) -> Void {
    var sum = 0
    let temp = arr.sorted()
    for i in 1...arr.count { sum += abs(i - temp[i-1]) }
    print(sum)
}

var arr: [Int] = []
let cnt = Int(readLine()!)!
for _ in 0..<cnt { arr.append(Int(readLine()!)!) }

solution(arr)
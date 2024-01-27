import Foundation

func solution(_ arr: [Int]) -> Void {
    let result = arr.sorted()
    for n in result { print(n) }
}

var arr: [Int] = []
let cnt = Int(readLine()!)!
for _ in 0..<cnt { arr.append(Int(readLine()!)!) }

solution(arr)
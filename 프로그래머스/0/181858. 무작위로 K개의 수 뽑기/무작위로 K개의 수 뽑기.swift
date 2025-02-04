import Foundation

func solution(_ arr:[Int], _ k:Int) -> [Int] {
    var isUsed = Array(repeating: false, count: 1000000)
    var answer = Array(repeating: -1, count: k)
    var idx = 0
    
    for i in 0..<arr.count {
        if(idx == k) { break }
        if(!isUsed[arr[i]]) {
            answer[idx] = arr[i]
            idx += 1
            isUsed[arr[i]] = true
        }
    }
    return answer
}
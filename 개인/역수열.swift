import Foundation

let n = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map{Int(String($0))!}
var res = [Int](1...n)
res.sort(by: >)

for i in 0..<n {
    let new_idx = getCorrectIdx(i, arr[n-i-1])
    if i != new_idx {
        res.insert(res[i], at: new_idx)
        res.remove(at: i+1)
    }
}
print(res.map{String($0)}.joined(separator: " "))

func getCorrectIdx(_ curr_idx: Int, _ cnt: Int) -> Int {
    var bigger_cnt = 0
    for i in 0..<curr_idx {
        if bigger_cnt == cnt { return i }
        bigger_cnt += res[i]>res[curr_idx] ? 1 : 0
    }
    return curr_idx
}

func isCorrect() -> Bool {
    for i in 0..<n {
        var bigger_cnt = 0
        for j in 0..<i {
            if res[j] > res[i] {bigger_cnt += 1}
        }
        if bigger_cnt != arr[i] {return false}
    }
    return true
}

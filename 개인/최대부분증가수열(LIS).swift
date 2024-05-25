import Foundation

let n = Int(readLine()!)!
let nums = readLine()!.split(separator: " ").map{Int(String($0))!}
var cnt = Array(repeating: 0, count: n)
var res = 0
cnt[0] = 1
for i in 1..<n {
    var max = 0
    for j in 0..<i {
        if nums[j] < nums[i] && cnt[j] > max { max = cnt[j] }
    }
    cnt[i] = max + 1
    if res < cnt[i] { res = cnt[i] }
}
print(res)

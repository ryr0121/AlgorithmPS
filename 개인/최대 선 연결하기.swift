import Foundation

let n = Int(readLine()!)!
let rights = readLine()!.split(separator: " ").map{Int(String($0))!}
var cnt = Array(repeating: 0, count: n)
var res = 0
cnt[0] = 1
for i in 1..<n {
    var max = 0
    for j in 0..<i {
        if rights[i] > rights[j] && cnt[j] > max { max = cnt[j] }
    }
    cnt[i] = max + 1
    if res < cnt[i] { res = cnt[i] }
}
print(res)

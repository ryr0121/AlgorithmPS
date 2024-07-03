import Foundation

let n = Int(readLine()!)!
let k = Int(readLine()!)!
var dists = readLine()!.split(separator: " ").map{Int(String($0))!}
dists.sort()

var diff:[Int] = []
for i in 0..<(n-1) { diff.append(dists[i+1]-dists[i]) }
diff.sort(by: >)

if n <= k { print(0) }
else {
    var res = 0
    let diff_cnt = diff.count
    for i in (k-1)..<diff_cnt { res += diff[i] }
    print(res)
}
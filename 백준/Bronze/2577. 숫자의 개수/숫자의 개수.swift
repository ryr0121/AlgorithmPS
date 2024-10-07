import Foundation

let a = Int(readLine()!)!
let b = Int(readLine()!)!
let c = Int(readLine()!)!

let res = String(a*b*c).map{Int(String($0))!}
var cnt = Array(repeating: 0, count: 10)

for r in res { cnt[r] += 1 }
for c in cnt { print(c) }
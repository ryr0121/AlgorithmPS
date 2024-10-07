import Foundation

let n = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map{Int(String($0))!}
let x = Int(readLine()!)!

var nums = Array(repeating: 0, count: 2000000)
var cnt = 0
for num in arr {
    nums[num] += 1
    if (abs(x-num) == num || num == x) { continue }
    if (x > num) { cnt += (nums[x-num] > 0) ? 1 : 0 }
}
print(cnt)
import Foundation

let l = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map{Int(String($0))!}
let m = Int(readLine()!)!

for _ in 0..<m {
    arr.sort()
    arr[l-1] -= 1
    arr[0] += 1
}
print(arr.max()!-arr.min()!)

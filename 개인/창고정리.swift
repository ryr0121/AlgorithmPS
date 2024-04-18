import Foundation

let l = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map{Int(String($0))!}
let m = Int(readLine()!)!
arr.sort()

for _ in 0..<m {
    arr[l-1] -= 1
    arr[0] += 1
    arr.sort()
}
print(arr[l-1]-arr[0])

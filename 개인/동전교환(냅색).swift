import Foundation

let n = Int(readLine()!)!
let coins = readLine()!.split(separator: " ").map{Int(String($0))!}
let m = Int(readLine()!)!
var arr = Array(repeating: 1000, count: m+1)
arr[0] = 0
for i in 0..<n {
    for j in coins[i]...m {
        arr[j] = (arr[j] < arr[j-coins[i]]+1) ? arr[j] : arr[j-coins[i]]+1
    }
}
print(arr[m])

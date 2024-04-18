import Foundation

var arr = readLine()!.split(separator: " ").map{Int(String($0))!}
let m = Int(readLine()!)!

for _ in 0..<m {
    let max_idx = arr.firstIndex(of: arr.max()!)!
    let min_idx = arr.firstIndex(of: arr.min()!)!
    arr[max_idx] -= 1
    arr[min_idx] += 1
}
print(arr.max()!-arr.min()!)

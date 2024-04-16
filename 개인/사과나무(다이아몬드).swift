import Foundation

let n = Int(readLine()!)!
var arr: [[Int]] = []
for _ in 0..<n { arr.append(readLine()!.split(separator: " ").map{Int(String($0))!}) }

var sum = 0
var mid = n/2
var r = 0

for i in 0..<n {
    for j in mid-r...mid+r { sum += arr[i][j] }
    r += (i<mid) ? 1 : -1
}
print(sum)

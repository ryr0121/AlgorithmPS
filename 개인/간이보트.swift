import Foundation

let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
var weights = readLine()!.split(separator: " ").map{Int(String($0))!}
var cnt = 0

var min_idx = 0
var max_idx = nm[0]-1
while min_idx <= max_idx {
    weights.sort()
    if weights[max_idx]+weights[min_idx] <= nm[1] { min_idx += 1 }
    max_idx -= 1
    cnt += 1
}
print(cnt)

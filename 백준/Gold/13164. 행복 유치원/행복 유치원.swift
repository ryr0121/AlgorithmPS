import Foundation

let input = readLine()!.split(separator: " ").map{Int(String($0))!}
var heights = readLine()!.split(separator: " ").map{Int(String($0))!}
var diffs: [Int] = []

for i in 0..<(input[0]-1) {
    diffs.append(heights[i+1]-heights[i])
}
diffs.sort()

var res = 0
for i in 0..<(input[0]-input[1]) { res += diffs[i] }
print(res)
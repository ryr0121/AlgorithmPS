import Foundation

let n = Int(readLine()!)!
var heights: [Int] = []
for _ in 0..<n { heights.append(Int(readLine()!)!) }

var left_cnt = n
var right_cnt = n

var left_max = 0
var right_max = 0
for i in 0..<n {
    if heights[i] <= left_max { left_cnt -= 1 }
    left_max = (heights[i] > left_max) ? heights[i] : left_max

    if heights[n-i-1] <= right_max { right_cnt -= 1 }
    right_max = (heights[n-i-1] > right_max) ? heights[n-i-1] : right_max
}

print(left_cnt)
print(right_cnt)
import Foundation

let n = Int(readLine()!)!
var arr: [[Int]] = []
for _ in 0..<n { arr.append(readLine()!.split(separator: " ").map{Int(String($0))!}) }

var max = 0

var cross_sum1 = 0
var cross_sum2 = 0

for i in 0..<n {
    // 행 탐색
    let row_sum = arr[i].reduce(0){$0+$1}
    if row_sum > max { max = row_sum }
    
    // 열 탐색
    var col_sum = 0
    for j in 0..<n { col_sum += arr[j][i] }
    if col_sum > max { max = col_sum }
    
    // 대각선 탐색
    cross_sum1 += arr[i][i]
    cross_sum2 += arr[n-1-i][i]
}
if cross_sum1 > max { max = cross_sum1 }
if cross_sum1 > max { max = cross_sum1 }

print(max)

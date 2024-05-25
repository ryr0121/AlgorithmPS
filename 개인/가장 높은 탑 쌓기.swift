import Foundation

let n = Int(readLine()!)!
var bricks:[[Int]] = []
var h_sum = Array(repeating: 0, count: n)
var res = 0
for _ in 0..<n {
    bricks.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}
bricks.sort(by: {$0[0] > $1[0]}) // 밑면 넓이 기준 내림차순 정렬
h_sum[0] = bricks[0][1]
for i in 1..<n {
    var max_height = 0
    for j in 0..<i {
        if bricks[i][2] < bricks[j][2] && h_sum[j] > max_height {
            max_height = h_sum[j]
        }
    }
    h_sum[i] = max_height + bricks[i][1]
    if res < h_sum[i] { res = h_sum[i] }
}
print(res)

import Foundation

let n = Int(readLine()!)!
var origin:[[Int]] = []

for _ in 0..<n {
    origin.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}
var sorted_list = origin.sorted { $0[0] > $1[0] }



var dy:[Int] = [] // 높이합 최대 기록 배열
var hist:[Int:[Int]] = [:] // 각 항목 별 쌓을 수 있는 벽돌의 무게 정보 - [s:[w1, w2, ...]]

dy.append(sorted_list[0][1])
hist[sorted_list[0][0]] = [sorted_list[0][2]]

var max_h_sum = dy[0]
var max_h_list:[Int] = hist[sorted_list[0][0]]!

for i in 1..<n {
    var max_h = 0
    var temp:[Int] = []
    for j in (0..<i).reversed() {
        if (sorted_list[i][2] < sorted_list[j][2] && dy[j] > max_h) {
            max_h = dy[j]
            temp = hist[sorted_list[j][0]]!
        }
    }
    temp.append(sorted_list[i][2])
    hist[sorted_list[i][0]] = temp
    dy.append(max_h + sorted_list[i][1])

    if (max_h_sum < dy[i]) {
        max_h_sum = dy[i]
        max_h_list = hist[sorted_list[i][0]]!
    }
}


max_h_list = max_h_list.reversed()
print(max_h_list.count)
for w in max_h_list {
    for i in 0..<origin.count {
        if(origin[i][2] == w) { print(i+1) }
    }
}
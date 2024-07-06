import Foundation

let n = Int(readLine()!)!
var times:[[Int]] = []
for _ in 0..<n {
    times.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}
times.sort(by: { $0[1] > $1[1]})

var current_time = times[0][1]
for i in 0..<n {
    if times[i][1] <= current_time {
        current_time = times[i][1] - times[i][0]
    } else {
        current_time -= times[i][0]
    }
}

print(current_time >= 0 ? current_time : -1)
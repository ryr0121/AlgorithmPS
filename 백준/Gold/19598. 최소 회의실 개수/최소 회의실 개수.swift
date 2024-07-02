import Foundation

let n = Int(readLine()!)!
var times:[[Int]] = []
for _ in 0..<n { 
    times.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}
times.sort(by: { $0[0] < $1[0] })

var endTimes = [times[0][1]]
for i in 1..<n {
    var mustAdd = true
    for j in 0..<endTimes.count {
        if times[i][0] >= endTimes[j] {
            endTimes[j] = times[i][1]
            mustAdd = false
            break
        }
    }
    if (mustAdd) { endTimes.append(times[i][1]) }
}
print(endTimes.count)
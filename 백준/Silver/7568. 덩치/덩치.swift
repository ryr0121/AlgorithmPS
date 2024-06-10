import Foundation

let n = Int(readLine()!)!
var info:[[Int]] = []
for _ in 0..<n {
    info.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

var res:[Int] = []
for i in 0..<n {
    var rank = 1
    for j in 0..<n {
        if i == j { continue }
        if (info[i][0] < info[j][0]) && (info[i][1] < info[j][1]) { rank += 1 }
    }
    res.append(rank)
}
print(res.map{String($0)}.joined(separator: " "))
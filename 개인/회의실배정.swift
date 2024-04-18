import Foundation

let n = Int(readLine()!)!
var times: [[Int]] = []
for _ in 0..<n { times.append(readLine()!.split(separator: " ").map{Int(String($0))!}) }
times.sort{$0[1] < $1[1]}

var cnt = 1
var e = times[0][1]
for i in 0..<n {
    if times[i][0] >= e { cnt+=1; e=times[i][1]; }
}
print(cnt)

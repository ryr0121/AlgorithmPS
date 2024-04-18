import Foundation

let n = Int(readLine()!)!
var infos:[[Int]] = []
for _ in 0..<n {infos.append(readLine()!.split(separator: " ").map{Int(String($0))!})}
infos.sort {$0[0] > $1[0]}

var cnt = 1
for i in 1..<n {
    var w = true
    for j in 0..<i {
        if infos[j][1] > infos[i][1] {w=false; break;}
    }
    cnt += w ? 1 : 0
}
print(cnt)

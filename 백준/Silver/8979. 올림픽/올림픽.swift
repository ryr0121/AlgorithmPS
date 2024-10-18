import Foundation

let nk = readLine()!.split(separator: " ").map{Int($0)!}
var scores:[[Int]] = []
for _ in 0..<nk[0] {
    scores.append(readLine()!.split(separator: " ").map{Int($0)!})
}

scores.sort(by: {      
    $0[1] == $1[1] ? $0[2] == $1[2] ? $0[3] > $1[3] : $0[2] > $1[2] : $0[1] > $1[1]
})

for i in 0..<nk[0] {
    if scores[i][0] == nk[1] {
        var idx = i
        while true {
            guard idx > 0 else { print(1); break; } 
            if scores[idx-1][1...] == scores[idx][1...] { idx -= 1 }
            else { print(idx+1); break; }
        }
        break
    }
}
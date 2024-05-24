import Foundation

let dx = [-1,0,1,0]
let dy = [0,1,0,-1]

let n = Int(readLine()!)!
var board:[[Int]] = []
var queue:[[Int]] = []
var ch = Array(repeating: Array(repeating: 0, count: n), count: n)
var cnt = 0

for _ in 0..<n {
    board.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

var l = 0
queue.append([n/2,n/2])
ch[n/2][n/2] = 1
cnt += board[n/2][n/2]
while true {
    if l == n/2 { break }
    let size = queue.count
    for _ in 0..<size {
        let t = queue.removeFirst()
        for j in 0..<4 {
            if ch[t[0]+dx[j]][t[1]+dy[j]] == 0 {
                cnt += board[t[0]+dx[j]][t[1]+dy[j]]
                ch[t[0]+dx[j]][t[1]+dy[j]] = 1
                queue.append([t[0]+dx[j],t[1]+dy[j]])
            }
        }
    }
    l += 1
}
print(cnt)

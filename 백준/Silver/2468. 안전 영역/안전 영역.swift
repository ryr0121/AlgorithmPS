import Foundation

let n = Int(readLine()!)!
var res = 0
var ch:[[Int]] = []
var board:[[Int]] = []
for _ in 0..<n {
    board.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

var cnt = 0
var queue:[[Int]] = []
let dx = [-1,0,1,0]
let dy = [0,1,0,-1]
for h in 0...100 {
    ch = Array(repeating: Array(repeating: 0, count: n), count: n)
    cnt = 0
    for i in 0..<n {
        for j in 0..<n {
            if ch[i][j] == 0 && board[i][j] > h {
                queue.append([i,j])
                ch[i][j] = 1
                while queue.count > 0 {
                    let t = queue.removeFirst()
                    for k in 0..<4 {
                        let nx = t[0] + dx[k]
                        let ny = t[1] + dy[k]
                        if nx > -1 && nx < n && ny > -1 && ny < n && ch[nx][ny] == 0 && board[nx][ny] > h {
                            queue.append([nx,ny])
                            ch[nx][ny] = 1
                        }
                    }
                }
                cnt += 1
            }
        }
    }
    res = (res < cnt) ? cnt : res
}
print(res)
import Foundation

let MN = readLine()!.split(separator: " ").map{Int(String($0))!}
let M = MN[0], N = MN[1]
var board:[[Int]] = []

for _ in 0..<N {
    board.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

var queue:[[Int]] = []
let dx = [-1,0,1,0]
let dy = [0,1,0,-1]

for i in 0..<N {
    for j in 0..<M {
        if board[i][j] == 1 { queue.append([i,j]) }
    }
}

var idx = 0;
while queue.count > idx {
    let t = queue[idx]
    idx += 1
    for k in 0..<4 {
        let nx = t[0] + dx[k]
        let ny = t[1] + dy[k]
        if nx > -1 && nx < N && ny > -1 && ny < M && board[nx][ny] == 0 {
            queue.append([nx,ny])
            board[nx][ny] = board[t[0]][t[1]] + 1
        }
    }
}

var zero = false
var max = 0
for i in 0..<N {
    for j in 0..<M {
        if board[i][j] == 0 { zero = true; break; }
        if max < board[i][j] { max = board[i][j] }
    }
}
print(zero ? -1 : max-1)
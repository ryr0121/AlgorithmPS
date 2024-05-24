import Foundation

let dx = [-1,-1,0,1,1,1,0,-1]
let dy = [0,1,1,1,0,-1,-1,-1]

let n = Int(readLine()!)!
var cnt = 0
var board:[[Int]] = []
for _ in 0..<n {
    board.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

var queue:[[Int]] = []
for i in 0..<n {
    for j in 0..<n {
        if board[i][j] == 1 {
            board[i][j] = 0
            queue.append([i,j])
            while queue.count > 0 {
                let t = queue.removeFirst()
                for k in 0..<8 {
                    let nx = t[0] + dx[k]
                    let ny = t[1] + dy[k]
                    if nx > -1 && nx < n && ny > -1 && ny < n && board[nx][ny] == 1 {
                        board[nx][ny] = 0
                        queue.append([nx,ny])
                    }
                }
            }
            cnt += 1
        }
    }
}
print(cnt)

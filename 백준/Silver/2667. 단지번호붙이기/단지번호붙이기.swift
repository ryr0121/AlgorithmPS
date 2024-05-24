import Foundation

let dx = [-1,0,1,0]
let dy = [0,-1,0,1]
func DFS(_ x: Int, _ y: Int) -> Void {
    cnt += 1
    board[x][y] = 0
    for i in 0..<4 {
        let nx = x + dx[i]
        let ny = y + dy[i]
        if nx > -1 && nx < n && ny > -1 && ny < n && board[nx][ny] == 1 {
            DFS(nx,ny)
        }
    }
}

let n = Int(readLine()!)!
var board:[[Int]] = []
var cnt = 0
var res:[Int] = []
for _ in 0..<n {
    board.append(readLine()!.map{Int(String($0))!})
}

for i in 0..<n {
    for j in 0..<n {
        if board[i][j] == 1 {
            cnt = 0
            DFS(i,j)
            res.append(cnt)
        }
    }
}
res.sort()
print(res.count)
for i in 0..<res.count { print(res[i]) }
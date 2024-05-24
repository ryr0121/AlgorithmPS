import Foundation

let dx = [-1,0,1,0]
let dy = [0,1,0,-1]
func DFS(_ x: Int, _ y: Int) -> Void {
    if x==6 && y==6 { cnt += 1 }
    else {
        for i in 0..<4 {
            let nx = x+dx[i]
            let ny = y+dy[i]
            if (nx > -1) && (nx < 7) && (ny > -1) && (ny < 7) && board[nx][ny] == 0 {
                board[nx][ny] = 1
                DFS(nx, ny)
                board[nx][ny] = 0
            }
        }
    }
}

var cnt = 0
var board:[[Int]] = []
for _ in 0..<7 {
    board.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

board[0][0] = 1
DFS(0,0)
print(cnt)

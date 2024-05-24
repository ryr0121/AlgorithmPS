import Foundation

let dx = [-1,0,1,0]
let dy = [0,1,0,-1]
func DFS(_ x: Int, _ y: Int) -> Void {
    if x==e[0] && y==e[1] { cnt += 1 }
    else {
        for i in 0..<4 {
            let nx = x + dx[i]
            let ny = y + dy[i]
            if nx > -1 && nx < n && ny > -1 && ny < n && ch[nx][ny] == 0 && board[x][y] < board[nx][ny] {
                ch[nx][ny] = 1
                DFS(nx, ny)
                ch[nx][ny] = 0
            }
        }
    }
}

let n = Int(readLine()!)!
var board:[[Int]] = []
var ch = Array(repeating: Array(repeating: 0, count: n), count: n)
var cnt = 0
for _ in 0..<n {
    board.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

// 출발지(최소값), 도착지(최대값) 구하기
var min = 10000
var s = [0,0]
var max = 0
var e = [0,0]
for i in 0..<n {
    for j in 0..<n {
        if board[i][j] < min {
            min = board[i][j]
            s = [i,j]
        }
        if board[i][j] > max {
            max = board[i][j]
            e = [i,j]
        }
    }
}

ch[s[0]][s[1]] = 1
DFS(s[0], s[1])
print(cnt)

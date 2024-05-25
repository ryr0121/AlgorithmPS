import Foundation

func DFS(_ x: Int, _ y: Int) -> Int {
    if memo[x][y] > 0 { return memo[x][y] }
    if x == 0 && y == 0 { return board[x][y] }
    else {
        if x == 0 { memo[x][y] = DFS(x,y-1) + board[x][y] }
        else if y == 0 { memo[x][y] = DFS(x-1,y) + board[x][y] }
        else {
            let top = DFS(x-1,y)
            let left = DFS(x,y-1)
            memo[x][y] = ((top < left) ? top : left) + board[x][y]
        }
        return memo[x][y]
    }
}

let n = Int(readLine()!)!
var board:[[Int]] = []
var memo = Array(repeating: Array(repeating: 0, count: n), count: n)
for _ in 0..<n {
    board.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}
print(DFS(n-1, n-1))

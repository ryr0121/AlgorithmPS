import Foundation

let dx = [-1,0,1,0]
let dy = [0,1,0,-1]

var board:[[Int]] = []
var dis = Array(repeating: Array(repeating: 0, count: 7), count: 7)
for _ in 0..<7 {
    board.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

var queue = [[0,0]]
board[0][0] = 1
while queue.count > 0 {
    let t = queue.removeFirst()
    for i in 0..<4 {
        let x = t[0] + dx[i]
        let y = t[1] + dy[i]
        if (x > -1)&&(x < 7) && (y > -1)&&(y < 7) && (board[x][y] == 0) {
            dis[x][y] = dis[t[0]][t[1]] + 1
            board[x][y] = 1
            queue.append([x,y])
        }
    }
}
print((dis[6][6] == 0) ? -1 : dis[6][6])

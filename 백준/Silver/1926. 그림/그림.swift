let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
var board:[[Int]] = []
var visited = Array(repeating: Array(repeating: false, count: nm[1]), count: nm[0])

for _ in 0..<nm[0] {
    board.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

var pic_cnt = 0
var res = 0
let dx = [-1, 0, 1, 0]
let dy = [0, 1, 0, -1]
var queue:[[Int]] = []
for i in 0..<nm[0] {
    for j in 0..<nm[1] {
        if (!visited[i][j] && board[i][j] == 1) {
            pic_cnt += 1
            queue.append([i,j])
            visited[i][j] = true
            var cnt = 1
            while !queue.isEmpty {
                let d = queue.removeFirst()
                for k in 0..<4 {
                    let nx = d[0] + dx[k]
                    let ny = d[1] + dy[k]
                    if (nx < 0 || nx >= nm[0] || ny < 0 || ny >= nm[1]) { continue }
                    if (visited[nx][ny] || board[nx][ny] == 0) { continue }
                    queue.append([nx,ny])
                    visited[nx][ny] = true
                    cnt += 1
                }
            }
            res = (res < cnt) ? cnt : res
        }
    }
}

print(pic_cnt)
print(res)
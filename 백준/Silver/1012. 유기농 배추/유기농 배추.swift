let T = Int(readLine()!)!
for _ in 0..<T {
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    let M = input[0]
    let N = input[1]
    let K = input[2]
    
    var board = Array(repeating: Array(repeating: 0, count: M), count: N)
    var visited = Array(repeating: Array(repeating: false, count: M), count: N)
    for _ in 0..<K {
        let pos = readLine()!.split(separator: " ").map{Int(String($0))!}
        board[pos[1]][pos[0]] = 1
    }

    var res = 0
    var queue:[[Int]] = []
    let dx = [-1, 0, 1, 0]
    let dy = [0, 1, 0, -1]
    
    for i in 0..<N {
        for j in 0..<M {
            if (board[i][j] == 1 && !visited[i][j]) { 
                res += 1
                queue.append([i,j])
                visited[i][j] = true

                while !queue.isEmpty {
                    let p = queue.removeFirst()
                    for k in 0..<4 {
                        let nx = p[0] + dx[k]
                        let ny = p[1] + dy[k]
                        if (nx < 0 || nx >= N || ny < 0 || ny >= M) { continue }
                        if (board[nx][ny] == 1 && !visited[nx][ny]) { 
                            queue.append([nx,ny])
                            visited[nx][ny] = true
                        }
                    }
                }
            }
        }
    }
    print(res)
}
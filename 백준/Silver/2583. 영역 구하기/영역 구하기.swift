let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let M = input[0]
let N = input[1]
let K = input[2]

var board = Array(repeating: Array(repeating: 0, count: N), count: M)
for _ in 0..<K {
    let info = readLine()!.split(separator: " ").map{Int(String($0))!}
    for i in info[1]..<info[3] {
        for j in info[0]..<info[2] {
            board[i][j] = 1
        }
    }
}

let dx = [-1, 0, 1, 0]
let dy = [0, 1, 0, -1]
var visited = Array(repeating: Array(repeating: false, count: N), count: M)
var queue:[[Int]] = []
var cnt = 0
var sizes:[Int] = []

for i in 0..<M {
    for j in 0..<N {
        if (board[i][j] == 0 && !visited[i][j]) {
            queue.append([i,j])
            visited[i][j] = true
            cnt += 1
            var s = 1
            while !queue.isEmpty {
                let p = queue.removeFirst()
                for k in 0..<4 {
                    let nx = p[0] + dx[k]
                    let ny = p[1] + dy[k]
                    if (nx < 0 || nx >= M || ny < 0 || ny >= N) { continue }
                    if (board[nx][ny] == 0 && !visited[nx][ny]) {
                        s += 1
                        queue.append([nx,ny])
                        visited[nx][ny] = true
                    }
                }
            }
            if (s > 0) { sizes.append(s) }
        }
    }
}
let tmp = sizes.sorted().map{String($0)}
print(cnt)
print(tmp.joined(separator: " "))
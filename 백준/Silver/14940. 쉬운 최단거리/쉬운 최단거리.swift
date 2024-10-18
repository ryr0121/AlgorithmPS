let input = readLine()!.split(separator: " ").map{Int($0)!}
let n = input[0], m = input[1]
var arr:[[Int]] = []
for _ in 0..<n { arr.append(readLine()!.split(separator: " ").map{Int($0)!}) }

var dist = Array(repeating: Array(repeating: 0, count: m), count: n)
var visited = Array(repeating: Array(repeating: false, count: m), count: n)

let dx = [-1, 0, 1, 0]
let dy = [0, 1, 0, -1]

var s = [-1, -1]
outer: for i in 0..<n {
    for j in 0..<m {
        if (arr[i][j] == 2) { s = [i,j]; break; }
    }
}

var q = [s]
visited[s[0]][s[1]] = true

while !q.isEmpty {
    let p = q.removeFirst()
    for i in 0..<4 {
        let nx = p[0] + dx[i]
        let ny = p[1] + dy[i]
        if (nx < 0 || nx >= n || ny < 0 || ny >= m) { continue }
        if !visited[nx][ny] && arr[nx][ny] != 0 {
            visited[nx][ny] = true
            dist[nx][ny] = dist[p[0]][p[1]] + 1
            q.append([nx,ny])
        }
    }
}

for i in 0..<n {
    for j in 0..<m {
        if (arr[i][j] == 1 && dist[i][j] == 0) { dist[i][j] = -1 }
    }
}

for d in dist {
    let tmp = d.map{String($0)}
    print(tmp.joined(separator: " "))
}
let N = Int(readLine()!)!
var pic_not_cb:[[String]] = []
var pic_cb:[[String]] = []
for _ in 0..<N {
    let input = readLine()!.map{String($0)}
    pic_not_cb.append(input)
    pic_cb.append(input)
}

for i in 0..<N {
    for j in 0..<N {
        if pic_cb[i][j] == "G" { pic_cb[i][j] = "R" }
    }
}

var not_cb = 0
var cb = 0

let dx = [-1, 0, 1, 0]
let dy = [0, 1, 0, -1]
var q:[[Int]] = []
var visited = Array(repeating: Array(repeating: false, count: N), count: N)

for i in 0..<N {
    for j in 0..<N {        
        if !visited[i][j] {
            not_cb += 1
            let t = pic_not_cb[i][j]
            q.append([i,j])
            visited[i][j] = true
            while !q.isEmpty {
                let p = q.removeFirst()
                for k in 0..<4 {
                    let nx = p[0] + dx[k]
                    let ny = p[1] + dy[k]
                    if (nx > -1 && nx < N && ny > -1 && ny < N) && !visited[nx][ny] && (pic_not_cb[nx][ny] == t) {
                        q.append([nx,ny])
                        visited[nx][ny] = true
                    }
                }
            }
        }
    }
}

q = []
visited = Array(repeating: Array(repeating: false, count: N), count: N)

for i in 0..<N {
    for j in 0..<N {        
        if !visited[i][j] {
            cb += 1
            let t = pic_cb[i][j]
            q.append([i,j])
            visited[i][j] = true
            while !q.isEmpty {
                let p = q.removeFirst()
                for k in 0..<4 {
                    let nx = p[0] + dx[k]
                    let ny = p[1] + dy[k]
                    if (nx > -1 && nx < N && ny > -1 && ny < N) && !visited[nx][ny] && (pic_cb[nx][ny] == t) {
                        q.append([nx,ny])
                        visited[nx][ny] = true
                    }
                }
            }
        }
    }
}


print("\(not_cb) \(cb)")
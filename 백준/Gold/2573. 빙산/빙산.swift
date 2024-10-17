import Foundation

let nm = readLine()!.split(separator: " ").map { Int(String($0))! }
var ice: [[Int]] = []
for _ in 0..<nm[0] {
    ice.append(readLine()!.split(separator: " ").map { Int(String($0))! })
}
let dx = [-1, 0, 1, 0]
let dy = [0, 1, 0, -1]
let zero = Array(repeating: Array(repeating: 0, count: nm[1]), count: nm[0])
var res = 0
outer: while true {
    var queue: [[Int]] = []
    var visited = Array(repeating: Array(repeating: false, count: nm[1]), count: nm[0])
    var count = 0
    var tempIce = ice
    for i in 0..<nm[0] {
        for j in 0..<nm[1] {
            if ice[i][j] != 0 && !visited[i][j] {
                count += 1
                if count > 1 {
                    break outer
                }
                queue.append([i,j])
                visited[i][j] = true
                while !queue.isEmpty {
                    let p = queue.removeFirst()
                    var tempCount = 0
                    for k in 0..<dx.count {
                        let nx = p[0] + dx[k]
                        let ny = p[1] + dy[k]
                        if nx < 0 || ny < 0 || nx >= nm[0] || ny >= nm[1] { continue }
                        if ice[nx][ny] == 0 { tempCount += 1; continue; }
                        if !visited[nx][ny] {
                            queue.append([nx,ny])
                            visited[nx][ny] = true
                        }
                    }
                    tempIce[p[0]][p[1]] = ice[p[0]][p[1]] >= tempCount ? ice[p[0]][p[1]] - tempCount : 0
                }
            }
        }
    }
    res += 1
    if tempIce == zero { res = 0; break; }
    ice = tempIce
}
print(res)
import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
var graph: [[Character]] = []
for _ in 0..<n { graph.append(readLine()!.map { $0 }) }

var check = [[[Bool]]](repeating: [[Bool]](repeating: [Bool](repeating: false, count: m), count: n), count: 2)

func isValidPosition(y: Int, x: Int) -> Bool { return 0..<n ~= y && 0..<m ~= x }

let dx = [1, 0, -1, 0]
let dy = [0, 1, 0, -1]

var q = [(0, 0, 1, 0)]
var index = 0
var answer = -1

while q.count > index {
    let y = q[index].0
    let x = q[index].1
    let d = q[index].2
    let breakCnt = q[index].3
    
    if y == n-1 && x == m-1 {
        answer = d
        break
    }
    
    for i in 0..<4 {
        let ny = y + dy[i]
        let nx = x + dx[i]
        
        if !isValidPosition(y: ny, x: nx) || check[breakCnt][ny][nx] { continue }
        
        if graph[ny][nx] == "0" {
            check[breakCnt][ny][nx] = true
            q.append((ny, nx, d+1, breakCnt))
        }
        
        if graph[ny][nx] == "1" && breakCnt == 0 {
            check[breakCnt + 1][ny][nx] = true
            q.append((ny, nx, d+1, breakCnt+1))
        }
    }
    index += 1
}

print(answer)
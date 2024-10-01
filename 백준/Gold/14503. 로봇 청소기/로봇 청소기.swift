import Foundation

let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
let rcd = readLine()!.split(separator: " ").map{Int(String($0))!}
var arr:[[Int]] = []
for _ in 0..<nm[0] {
    arr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

let dx = [-1, 0, 1, 0]
let dy = [0, 1, 0, -1]

var dir = rcd[2]
var clear_cnt = 1

solution(rcd[0], rcd[1])
print(clear_cnt)

func solution(_ x: Int, _ y: Int) -> Void {
    arr[x][y] = -1

    for _ in 0..<4 {
        dir = (dir + 3) % 4
        let nx = x + dx[dir]
        let ny = y + dy[dir]
        if (nx >= 0 && nx < nm[0] && ny >= 0 && ny < nm[1]) {
            if (arr[nx][ny] == 0) { 
                clear_cnt += 1
                solution(nx, ny)
                return
            }
        }
    }
    
    let d = (dir + 2) % 4 // 후진
    let bx = x + dx[d]
    let by = y + dy[d]
    if (bx >= 0 && bx < nm[0] && by >= 0 && by < nm[1] && arr[bx][by] != 1) { 
        solution(bx, by) 
    }
}
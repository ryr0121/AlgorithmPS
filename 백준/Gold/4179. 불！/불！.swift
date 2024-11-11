let RC = readLine()!.split(separator: " ").map{Int($0)!}
let R = RC[0], C = RC[1]
var arr:[[String]] = []
for _ in 0..<R { arr.append(readLine()!.map{String($0)}) }

// 불의 전파 속도와 지훈의 이동 속도 기록용 2차원 배열
var fire:[[Int]] = Array(repeating: Array(repeating: -1, count: C), count: R)
var dist:[[Int]] = Array(repeating: Array(repeating: -1, count: C), count: R)

var q_fire:[[Int]] = []
var q_dist:[[Int]] = []

let dx = [-1,0,1,0]
let dy = [0,1,0,-1]

// 1. 불,지훈의 시작점 위치를 각 큐에 추가
for i in 0..<R {
    for j in 0..<C {
        if(arr[i][j] == "F") { 
            q_fire.append([i,j])
            fire[i][j] = 0
        }
        if(arr[i][j] == "J") {                   
            q_dist.append([i,j])
            dist[i][j] = 0
        }
    }
}

// 2. 불의 전파 속도 탐색
while(!q_fire.isEmpty) {
    let cur = q_fire.removeFirst()
    for d in 0..<4 {
        let nx = cur[0] + dx[d]
        let ny = cur[1] + dy[d]
        if(nx > -1 && nx < R && ny > -1 && ny < C && fire[nx][ny] == -1 && arr[nx][ny] != "#") {
            q_fire.append([nx,ny])
            fire[nx][ny] = fire[cur[0]][cur[1]] + 1
        }
    }
}

// 3. 불의 전파 속도 탐색 결과를 참고하여, 지훈의 이동 속도 탐색
let res = bfs()
print(res == -1 ? "IMPOSSIBLE" : res)

func bfs() -> Int {
    while(!q_dist.isEmpty) {
        let cur = q_dist.removeFirst()
        for d in 0..<4 {
            let nx = cur[0] + dx[d]
            let ny = cur[1] + dy[d]
    
            // 범위 넘어감 -> 탈출 성공
            if(nx < 0 || nx >= R || ny < 0 || ny >= C) {
                return dist[cur[0]][cur[1]] + 1
            }
            
            // 이미 방문했거나, 벽인 곳은 방문하지 않음
            if(dist[nx][ny] >= 0 || arr[nx][ny] == "#") { continue }
            
            // 이동 속도가 불의 전파 속도보다 같거나 느린 곳은 방문하지 않음
            if(fire[nx][ny] != -1 && fire[nx][ny] <= dist[cur[0]][cur[1]]+1) { continue }
        
            q_dist.append([nx,ny])
            dist[nx][ny] = dist[cur[0]][cur[1]] + 1
        }
    }
    return -1
}
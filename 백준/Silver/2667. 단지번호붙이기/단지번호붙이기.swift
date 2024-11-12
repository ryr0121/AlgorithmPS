let N = Int(readLine()!)!
var arr:[[Int]] = []
var ch:[[Bool]] = Array(repeating: Array(repeating: false, count: N), count: N)
for _ in 0..<N { arr.append(readLine()!.map{Int(String($0))!}) }

var cnt = 0
var sizes:[Int] = []

var q:[[Int]] = []
let dx = [-1,0,1,0]
let dy = [0,1,0,-1]

for i in 0..<N {
    for j in 0..<N {
        if(arr[i][j] == 1 && !ch[i][j]) {
            cnt += 1
            var size = 1
            q.append([i,j])
            ch[i][j] = true
            while(!q.isEmpty) {
                let cur = q.removeFirst()
                for d in 0..<4 {
                    let nx = cur[0] + dx[d]
                    let ny = cur[1] + dy[d]
                    if(nx > -1 && nx < N && ny > -1 && ny < N && !ch[nx][ny] && arr[nx][ny] == 1) {
                        q.append([nx,ny])
                        ch[nx][ny] = true
                        size += 1
                    }
                }
            }
            sizes.append(size)
        }
    }
}
print(cnt)
sizes.sort()
for size in sizes { print(size) }
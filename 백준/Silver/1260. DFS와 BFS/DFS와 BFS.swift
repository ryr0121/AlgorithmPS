import Foundation

let nmv = readLine()!.split(separator: " ").map{Int(String($0))!}
var edges:[[Int]] = []
for _ in 0..<nmv[1] {
    edges.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}
var graph:[[Int]] = Array(repeating: [], count: nmv[0]+1)
var ch = Array(repeating: false, count: nmv[0]+1) // 정점의 방문여부 체크 배열

for i in 0..<nmv[1] {
    let l = edges[i][0]
    let r = edges[i][1]
    
    graph[l].append(r)
    graph[r].append(l)

    graph[l].sort()
    graph[r].sort()
}

var answer = ""
dfs(nmv[2])
print(answer)

answer = ""
ch = Array(repeating: false, count: nmv[0]+1)
bfs(nmv[2])
print(answer)

func dfs(_ n: Int) -> Void {
    ch[n] = true
    answer += "\(n) "
    for c in graph[n] {
        if !ch[c] { dfs(c) }
    } 
}

func bfs(_ n: Int) -> Void {
    var queue = [n]
    
    while(queue.count > 0) {
        let p = queue.removeFirst()
        if !ch[p] {
            ch[p] = true
            answer += "\(p) "
            for c in graph[p] { queue.append(c) }
        }
    }
}
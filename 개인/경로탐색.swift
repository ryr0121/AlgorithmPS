import Foundation

func DFS(_ n: Int) -> Void {
    if n == input[0]-1 { cnt += 1 }
    else {
        for i in 0..<input[0] {
            if (graph[n][i] == 1) && (ch[i] == 0) {
                ch[i] = 1
                DFS(i)
                ch[i] = 0
            }
        }
    }
}

let input = readLine()!.split(separator: " ").map{Int(String($0))!}
var graph = Array(repeating: Array(repeating: 0, count: input[0]), count: input[0])
var ch = Array(repeating: 0, count: input[0])
var cnt = 0

for _ in 0..<input[1] {
    let t = readLine()!.split(separator: " ").map{Int(String($0))!}
    graph[t[0]-1][t[1]-1] = 1
}

ch[0] = 1
DFS(0)
print(cnt)

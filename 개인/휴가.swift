import Foundation

func DFS(_ l: Int, _ p: Int) -> Void {
    if l == n+1 {
        res = (res < p) ? p : res
    } else {
        if (l+infos[l][0]) <= n+1 { DFS(l+infos[l][0], p+infos[l][1]) }
        DFS(l+1, p)
    }
}

var res = 0
let n = Int(readLine()!)!
var infos:[[Int]] = [[0,0]]
for _ in 0..<n {
    infos.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}
DFS(1,0)
print(res)

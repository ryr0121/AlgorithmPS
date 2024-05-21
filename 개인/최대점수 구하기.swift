import Foundation

func DFS(_ l: Int, _ score_sum: Int, _ time_sum: Int) -> Void {
    if time_sum > input[1] { return }
    if l == input[0] {
        res = res < score_sum ? score_sum : res
    } else {
        DFS(l+1, score_sum+infos[l][0], time_sum+infos[l][1])
        DFS(l+1, score_sum, time_sum)
    }
}

var res = 0
let input = readLine()!.split(separator: " ").map{Int(String($0))!}
var infos: [[Int]] = [] // 0: 점수 , 1: 시간
for _ in 0..<input[0] {
    infos.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

DFS(0,0,0)
print(res)

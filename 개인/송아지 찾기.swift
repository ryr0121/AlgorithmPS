import Foundation

let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let jump = [1,-1,5]
var dis = Array(repeating: 0, count: 10001)
var ch = Array(repeating: 0, count: 10001)
var queue = [input[0]]

dis[input[0]] = 0
var cur = -1
while queue.count > 0 {
    if cur == input[1] { break }
    else {
        cur = queue.removeFirst()
        for i in 0..<jump.count {
            if (cur+jump[i] > 0) && (cur+jump[i] <= 10000) && (ch[cur+jump[i]] == 0) {
                dis[cur+jump[i]] = dis[cur] + 1
                ch[cur+jump[i]] = 1
                queue.append(cur+jump[i])
            }
        }
    }
}
print(dis[input[1]])

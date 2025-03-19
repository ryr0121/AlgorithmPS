import Foundation

func solution(_ n:Int, _ computers:[[Int]]) -> Int {
    var answer = 0
    var ch = Array(repeating: false, count: n)
    var q:[Int] = []
    
    for i in 0..<n {
        if(!ch[i]) {
            q.append(i)
            while(q.count > 0) {
                let cur = q.removeFirst()
                ch[cur] = true
                for i in 0..<n {
                    if(cur == i) { continue }
                    if(!ch[i] && computers[cur][i] == 1) { q.append(i) }
                }
            }
            answer += 1
        }
    }
    return answer
}
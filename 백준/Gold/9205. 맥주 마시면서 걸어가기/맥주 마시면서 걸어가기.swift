let T = Int(readLine()!)!

for _ in 0..<T {
    let N = Int(readLine()!)!
    var p = [(Int,Int)]()
    var nodes = Array(repeating : [Int](), count : N+2)
    
    for _ in 0..<N+2 {
        let input = readLine()!.split(separator : " ").map{Int(String($0))!}
        let pos = (input[0],input[1])
        p.append(pos)
    }
    
    for i in 0..<N+2 {
        for j in 0..<N+2 {
            if i == j { continue }
            let dist = abs(p[i].0-p[j].0) + abs(p[i].1-p[j].1)
            if dist > 1000 { continue }
            nodes[i].append(j)
        }
    }
    
    func bfs() {
        var queue = [0]
        var answer = 0
        var visit = Array(repeating : false, count : N+2)
        visit[0] = true
        while !queue.isEmpty {
            let first = queue.removeLast()
            if first == N+2-1 { answer = 1; break; }
            for next in nodes[first] {
                if visit[next] { continue }
                visit[next] = true
                queue.append(next)
            }
        }
        print(answer >= 1 ? "happy" : "sad")
    }
    bfs()
}
let nm = readLine()!.split(separator: " ").map{Int($0)!}
var dict:[Int:[Int]] = [:] // 1-based
for i in 1...nm[0] { dict[i] = [] }

for _ in 0..<nm[1] {
    let ab = readLine()!.split(separator: " ").map{Int($0)!}
    dict[ab[0]]!.append(ab[1])
    dict[ab[1]]!.append(ab[0])
}

var dist = Array(repeating: -1, count: nm[0]+1) // 1-based
var q = [1]
dist[1] = 0

while(!q.isEmpty) {
    let cur = q.removeFirst()
    for i in dict[cur]! {
        if(dist[i] == -1) {
            dist[i] = dist[cur] + 1
            q.append(i)
        }
    }
}

var answer = [50001, dist.max()!, 0] // [숨어야 하는 헛간 번호, 그 헛간까지의 거리, 그 헛간과 같은 거리를 갖는 헛간의 개수]
for i in 1...nm[0] {
    if(dist[i] == answer[1]) {
        if(answer[0] > i) { answer[0] = i }
        answer[2] += 1
    }
}
print("\(answer[0]) \(answer[1]) \(answer[2])")
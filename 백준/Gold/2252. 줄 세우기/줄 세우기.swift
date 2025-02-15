let nm = readLine()!.split(separator: " ").map{Int($0)!}
var ind = Array(repeating: 0, count: nm[0]+1) // 1-index
var adj:[Int:[Int]] = [:]

for n in 1...nm[0] { adj[n] = [] }

for _ in 0..<nm[1] {
    let ab = readLine()!.split(separator: " ").map{Int($0)!}
    ind[ab[1]] += 1
    adj[ab[0]]!.append(ab[1])
}

var q:[Int] = []
for i in 1...nm[0] {
    if(ind[i] == 0) { q.append(i) }
}

var answer = ""
while(!q.isEmpty) {
    let cur = q.removeFirst()
    answer += "\(cur) "
    for n in adj[cur]! {
        ind[n] -= 1
        if(ind[n] == 0) { q.append(n) }
    }
}

print(answer)
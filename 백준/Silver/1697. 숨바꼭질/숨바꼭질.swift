let nk = readLine()!.split(separator: " ").map{Int(String($0))!}
var dist = Array(repeating: -1, count: 100001)
dist[nk[0]] = 0
var queue = [nk[0]]

while (dist[nk[1]] == -1) {
    let p = queue.removeFirst()
    for np in [p-1, p+1, p*2] {
        if (np < 0 || np > 100000) { continue }
        if (dist[np] != -1) { continue }
        dist[np] = dist[p] + 1
        queue.append(np)
    }
}
print(dist[nk[1]])
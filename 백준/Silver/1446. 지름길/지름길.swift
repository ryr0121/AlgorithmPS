let input = readLine()!.split(separator: " ").map{Int($0)!}
let N = input[0], D = input[1]
var start = [Int]()
var end = [Int]()
var shortcut = [Int]()
var dist = [Int]()
for i in 0..<D+1 { dist.append(i) }
for _ in 0..<N {
    let temp = readLine()!.split(separator: " ").map { Int(String($0))! }
    start.append(temp[0])
    end.append(temp[1])
    shortcut.append(temp[2])
}

for j in 0..<D+1 {
    if j > 0 { dist[j] = min(dist[j-1]+1, dist[j]) }
    for k in 0..<start.count {
        if j == start[k], end[k] <= D, dist[start[k]]+shortcut[k] < dist[end[k]] {
            dist[end[k]] = dist[start[k]]+shortcut[k]
        }
    }
}

print(dist[D])
let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let F = input[0]
let S = input[1]
let G = input[2]
let U = input[3]
let D = input[4]

var dist = Array(repeating: -1, count: F+1)
dist[S] = 0

var queue = [S]
while (dist[G] == -1 && !queue.isEmpty) {
    let cur = queue.removeFirst()
    for n in [cur+U,cur-D] {
        if (n < 1 || n > F) { continue }
        if (dist[n] != -1) { continue }
        dist[n] = dist[cur] + 1
        queue.append(n)
    }
}
print((dist[G] != -1) ? dist[G] : "use the stairs")
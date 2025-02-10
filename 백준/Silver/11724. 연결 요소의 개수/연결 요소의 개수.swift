let nm = readLine()!.split(separator: " ").map{Int($0)!}
let N = nm[0]
let M = nm[1]

var dict:[Int:[Int]] = [:]
for n in 1...N { dict[n] = [] }

for _ in 0..<M {
    let uv = readLine()!.split(separator: " ").map{Int($0)!}
    let u = uv[0]
    let v = uv[1]
    
    if(dict[u] == nil) { dict[u] = [v] }
    else { dict[u]!.append(v) }
    
    if(dict[v] == nil) { dict[v] = [u] }
    else { dict[v]!.append(u) }
}

var answer = 0
var ch = Array(repeating: false, count: N+1)
var q:[Int] = []

for key in dict.keys {
    if(!ch[key]) {
        ch[key] = true
        q.append(key)
        
        while(!q.isEmpty) {
            let cur = q.removeFirst()
            for n in dict[cur] ?? [] {
                if(!ch[n]) {
                    ch[n] = true
                    q.append(n)
                }
            }
        }
        answer += 1
    }
}
print(answer)
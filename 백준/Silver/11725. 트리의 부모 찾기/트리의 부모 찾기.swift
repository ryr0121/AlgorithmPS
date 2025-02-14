let N = Int(readLine()!)!
var tree:[Int:[Int]] = [:]
var parent = Array(repeating: 0, count: 100001)

for _ in 0..<(N-1) {
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    
    if(tree[input[0]] == nil) { tree[input[0]] = [input[1]] }
    else { tree[input[0]]!.append(input[1]) }

    if(tree[input[1]] == nil) { tree[input[1]] = [input[0]] }
    else { tree[input[1]]!.append(input[0]) }
}

dfs(1)
for i in 2...N { print(parent[i]) }

func dfs(_ cur: Int) {
    for nxt in tree[cur]! {
        if(parent[cur] == nxt) { continue; }
        parent[nxt] = cur
        dfs(nxt)
    }
}
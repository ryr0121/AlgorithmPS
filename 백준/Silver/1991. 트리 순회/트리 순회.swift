let N = Int(readLine()!)!

var tree:[String:[String]] = [:]

for _ in 1...N {
    let input = readLine()!.split(separator: " ").map{String($0)}
    tree[input[0]] = [input[1], input[2]]
}

var answer1 = "" // 전위 순회 결과
var answer2 = "" // 중위 순회 결과
var answer3 = "" // 후위 순회 결과

dfs("A")

print(answer1)
print(answer2)
print(answer3)

func dfs(_ cur: String) {
    if(cur == ".") { return }
    
    answer1 += cur
    dfs(tree[cur]![0])
    answer2 += cur
    dfs(tree[cur]![1])
    answer3 += cur
}
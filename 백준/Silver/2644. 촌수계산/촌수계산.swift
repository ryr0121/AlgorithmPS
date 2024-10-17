let n = Int(readLine()!)!
let input = readLine()!.split(separator: " ").map {Int($0)!}
let start = input[0]
let end = input[1]
let m = Int(readLine()!)!

var visited = Array(repeating: false, count: n+1)
var links: [[Int]] = Array(repeating: [], count: n+1)

for _ in 0..<m {
  let v = readLine()!.split(separator: " ").map {Int($0)!}
  links[v[0]].append(v[1])
  links[v[1]].append(v[0])
}

var result = 0
var isSuccess = false

func dfs(start: Int, count: Int) {
  visited[start] = true
  if start == end {
    result = count
    isSuccess = true
    return
  }
  
  for i in links[start] {
    if !visited[i] { dfs(start: i, count: count + 1) }
  }
}

dfs(start: start, count: 0)
result = isSuccess ? result : -1
print(result)
import Foundation

let input = readLine()!.split(separator:" ").map {Int($0)!}
let n = input[0], m = input[1]

let dy = [-1, 0, 1]
var answer = 1000000000
var arr:[[Int]] = []

for _ in 0..<n { arr.append(readLine()!.split(separator:" ").map {Int($0)!}) }

func dfs(_ sum: Int, _ x: Int, _ y: Int, _ dir: Int) {
  if x == n { answer = min(answer, sum); return; }

  for i in 0..<3 {
    if dir == i { continue }
    let ny = y + dy[i]

    guard 0..<m ~= ny else { continue }
    dfs(sum + arr[x][ny], x+1, ny, i)
  }
}

for i in 0..<m { dfs(0, 0, i, -1) }
print(answer)
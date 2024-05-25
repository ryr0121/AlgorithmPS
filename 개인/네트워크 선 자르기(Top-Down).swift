import Foundation

func DFS(_ l: Int) -> Int {
    if memo[l] > 0 { return memo[l] }
    if l == 1 || l == 2 { return l }
    else {
        memo[l] = DFS(l-1) + DFS(l-2)
        return memo[l]
    }
}

let n = Int(readLine()!)!
var memo = Array(repeating: 0, count: n+1)
print(DFS(n))

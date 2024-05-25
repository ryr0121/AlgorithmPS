import Foundation

let n = Int(readLine()!)!
var memo = Array(repeating: 0, count: n)
memo[0] = 1
memo[1] = 2
for i in 2..<n {
    memo[i] = memo[i-1] + memo[i-2]
}
print(memo[n-1])

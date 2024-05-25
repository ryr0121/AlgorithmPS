import Foundation

let n = Int(readLine()!)!
var len = Array(repeating: 0, count: n+1)
len[0] = 1
len[1] = 2
for i in 2...n {
    len[i] = len[i-1] + len[i-2]
}
print(len[n])

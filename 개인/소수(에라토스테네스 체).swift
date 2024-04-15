import Foundation

let n = Int(readLine()!)!

var check = Array(repeating: 0, count: n)
var cnt = 0
for i in 2...n {
   if check[i-1] == 0 {
       cnt += 1
       for j in stride(from: i, to: n+1, by: i) { check[j-1] = 1 }
   }
}
print(cnt)

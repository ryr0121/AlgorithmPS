import Foundation

var arr:[[Int]] = []
for _ in 0..<7 { arr.append(readLine()!.split(separator: " ").map{Int(String($0))!}) }
var cnt = 0

for i in 0..<7 {
    for j in 0..<3 {
        cnt += (arr[i][j+0]==arr[i][j+4]) && (arr[i][j+1]==arr[i][j+3]) ? 1 : 0
        cnt += ((arr[j+0][i]==arr[j+4][i]) &&  (arr[j+1][i]==arr[j+3][i])) ? 1 : 0
    }
}
print(cnt)

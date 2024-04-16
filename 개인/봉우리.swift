import Foundation

let n = Int(readLine()!)!
var arr:[[Int]] = []
for _ in 0..<n { arr.append(readLine()!.split(separator: " ").map{Int(String($0))!}) }

var cnt = 0
for i in 0..<n {
    for j in 0..<n {
        var dir = [[-1,0], [1,0], [0,-1], [0,1]]
        if i == 0 { dir.removeAll{ $0 == [-1,0] } }
        else if i == n-1 { dir.removeAll{ $0 == [1,0] } }
        if j == 0 { dir.removeAll{ $0 == [0,-1] } }
        else if j == n-1 { dir.removeAll{ $0 == [0,1] } }
        
        var flag = true
        for d in dir {
            flag = arr[i][j] > arr[i+d[0]][j+d[1]]
            if !flag { break }
        }
        cnt += flag ? 1 : 0
    }
}
print(cnt)

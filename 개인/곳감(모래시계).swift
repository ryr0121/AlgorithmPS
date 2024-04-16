import Foundation

let n = Int(readLine()!)!
var arr:[[Int]] = []
for _ in 0..<n { arr.append(readLine()!.split(separator: " ").map{Int(String($0))!}) }

let m = Int(readLine()!)!
var cmd:[[Int]] = []
for _ in 0..<m { cmd.append(readLine()!.split(separator: " ").map{Int(String($0))!}) }

// 회전 수행
for i in 0..<m {
    var temp = Array(repeating: 0, count: n)
    for j in 0..<n {
        var idx = -1
        if cmd[i][1] == 0 {
            idx = j - (cmd[i][2]%n)
            if idx < 0 { idx += n }
        } else {
            idx = (j + (cmd[i][2]%n)) % n
        }
        temp[idx] = arr[cmd[i][0]-1][j]
    }
    arr[cmd[i][0]-1] = temp
}


// 합계 도출
var sum = 0
let mid = n/2
var r = n/2
for i in 0..<n {
    for j in (mid-r)...(mid+r) { sum += arr[i][j] }
    r += (i<mid) ? -1 : 1
}
print(sum)

import Foundation

let input = readLine()!.split(separator: " ").map{Int(String($0))!}
var arr:[Int] = []
for _ in 0..<input[0] { arr.append(Int(readLine()!)!) }
arr.sort()

var s = arr[0]
var e = arr[input[0]-1]
var m = (s+e)/2

var res = 0
while s<=e {
    if isPossible(m) { res = m; s = m+1; }
    else { e = m-1; }
    m = (s+e)/2
}
print(m)

func isPossible(_ d: Int) -> Bool {
    var s = 0
    var cnt = 1
    for i in 1..<input[0] {
        if(arr[i]-arr[s]) >= d { s = i; cnt += 1; }
    }
    return cnt >= input[1]
}

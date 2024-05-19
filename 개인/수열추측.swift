import Foundation

func DFS(_ l: Int, _ sum: Int) -> Void {
    if l == input[0] && sum == input[1] {
        print(arr.map{String($0)}.joined(separator: " "))
        exit(0)
    } else {
        for i in 0..<input[0] {
            if ch[i] == 0 {
                ch[i] = 1
                arr[l] = i+1
                DFS(l+1, sum+arr[l]*m[l])
                ch[i] = 0
            }
        }
    }
}

let input = readLine()!.split(separator: " ").map{Int(String($0))!}
var ch = Array(repeating: 0, count: input[0])
var arr = Array(repeating: 0, count: input[0])
var m = Array(repeating: 1, count: input[0])
for i in 1..<input[0] {
    m[i] = m[i-1]*(input[0]-i)/i
}
DFS(0, 0)

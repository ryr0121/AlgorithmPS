import Foundation

func DFS(_ l: Int) -> Void {
    if l == input[1] {
        print(arr.joined(separator: " "))
        cnt += 1
    } else {
        for i in 1...input[0] {
            arr[l] = String(i)
            DFS(l+1)
        }
    }
}

let input = readLine()!.split(separator: " ").map{Int(String($0))!}
var cnt = 0
var arr = Array(repeating: "0", count: input[1])
DFS(0)
print(cnt)

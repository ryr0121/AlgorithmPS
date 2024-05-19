import Foundation

let n = Int(readLine()!)!
var arr:[String] = []
DFS(n)
print(arr.joined(separator:""))

func DFS(_ num: Int) -> Void {
    if num == 0 { return }
    else {
        DFS(num/2)
        arr.append(String(num%2))
    }
}

import Foundation

func DFS(_ v: Int) -> Void {
    if v == n {
        var temp: [String] = []
        for i in 0..<n {
            if ch[i] == 1 { temp.append(String(i+1)) }
        }
        print(temp.joined(separator: " "))
    } else {
        ch[v] = 1
        DFS(v+1)
        ch[v] = 0
        DFS(v+1)
    }
}

let n = Int(readLine()!)!
var ch = Array(repeating: 0, count: n)
DFS(0)

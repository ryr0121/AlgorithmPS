import Foundation

func DFS(_ l: Int) -> Void {
    if l == input[1] {
        var temp: [String] = []
        for i in 0..<input[0] {
            if ch[i] == 1 { temp.append(String(i+1)) }
        }
        print(temp.joined(separator: " "))
        cnt += 1
    } else {
        for i in 0..<input[0] {
            if ch[i] == 0 {
                ch[i] = 1
                DFS(l+1)
                ch[i] = 0
            }
        }
    }
}

let input = readLine()!.split(separator: " ").map{Int(String($0))!}
var ch = Array(repeating: 0, count: input[0])
var cnt = 0
DFS(0)
print(cnt)

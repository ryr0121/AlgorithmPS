import Foundation

func DFS(_ l: Int, _ st: Int) -> Void {
    if l == input[1] {
        print(res.joined(separator: " "))
        cnt += 1
    } else if st <= input[0] {
        for i in st...input[0] {
            res[l] = String(i)
            DFS(l+1, i+1)
        }
    }
}

let input = readLine()!.split(separator: " ").map{Int(String($0))!}
var res = Array(repeating: "0", count: input[1])
var cnt = 0
DFS(0,1)
print(cnt)

import Foundation

func DFS(_ l: Int, _ st: Int, _ sum: Int) -> Void {
    if l == input[1] {
        if sum%m == 0 { cnt += 1 }
    } else if st <= input[0] {
        for i in st..<input[0] {
            DFS(l+1, i+1, sum+nums[i])
        }
    }
}

let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let nums = readLine()!.split(separator: " ").map{Int(String($0))!}
let m = Int(readLine()!)!
var cnt = 0
DFS(0,0,0)
print(cnt)

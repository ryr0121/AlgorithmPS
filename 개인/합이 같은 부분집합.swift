import Foundation

func DFS(_ v: Int, _ sum: Int) -> Void {
    if v == n {
        if sum == total-sum {
            print("YES")
            exit(0)
        }
    } else {
        DFS(v+1, sum+nums[v])
        DFS(v+1, sum)
    }
}

let n = Int(readLine()!)!
let nums = readLine()!.split(separator: " ").map{Int(String($0))!}
let total = nums.reduce(0, +)
DFS(0,0)
print("NO")

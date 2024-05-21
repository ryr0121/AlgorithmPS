import Foundation

func DFS(_ l: Int, _ sum: Int) -> Void {
    if l == k {
        if sum > 0 && sum <= total { res.insert(sum) }
    } else {
        DFS(l+1, sum+weights[l])
        DFS(l+1, sum-weights[l])
        DFS(l+1, sum)
    }
}

var res: Set<Int> = Set()
let k = Int(readLine()!)!
let weights = readLine()!.split(separator: " ").map{Int(String($0))!}
let total = weights.reduce(0, +)

DFS(0,0)
print(total-res.count)

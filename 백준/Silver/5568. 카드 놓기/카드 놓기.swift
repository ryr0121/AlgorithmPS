import Foundation


let n = Int(readLine()!)!
let k = Int(readLine()!)!
var cards:[Int] = []
for _ in 0..<n { cards.append(Int(readLine()!)!) }

var chk = Array(repeating: 0, count: n)
var nums:Set<Int> = Set<Int>()

func DFS(_ cnt: Int, _ curr: String) -> Void {
    if cnt == k {
        nums.insert(Int(curr)!)
    } else {
        for i in 0..<n {
            if chk[i]==1 { continue }
            chk[i] = 1
            DFS(cnt+1, curr+String(cards[i]))
            chk[i] = 0
        }
    }
}

DFS(0,"")
print(nums.count)
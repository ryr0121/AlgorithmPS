import Foundation

func DFS(_ l: Int) -> Void {
    if l == n {
        if res > (arr.max()!-arr.min()!) {
            var temp: Set<Int> = Set()
            for i in 0..<3 { temp.insert(arr[i]) }
            if temp.count == 3 { res = arr.max()!-arr.min()! }
        }
    } else {
        for i in 0..<3 {
            arr[i] += coins[l]
            DFS(l+1)
            arr[i] -= coins[l]
        }
    }
}

var res = 100000
var arr = [0,0,0]
let n = Int(readLine()!)!
var coins:[Int] = []
for _ in 0..<n { coins.append(Int(readLine()!)!) }

DFS(0)
print(res)

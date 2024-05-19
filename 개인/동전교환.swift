import Foundation

func DFS(_ l: Int, _ sum: Int) -> Void {
    if (sum > m) || (l > min_coins) { return }
    if sum == m {
        if l < min_coins { min_coins = l }
    }
    else {
        for i in 0..<n { DFS(l+1, sum+coins[i]) }
    }
}

let n = Int(readLine()!)!
var coins = readLine()!.split(separator: " ").map{Int(String($0))!}
coins.sort(by: >)
let m = Int(readLine()!)!
var min_coins = 1000000
DFS(0,0)
print(min_coins)

import Foundation

func DFS(_ l: Int, _ sum: Int) -> Void {
    if l == coin_cnt {
        if sum == t { res += 1 }
    } else {
        for i in 0...coin_infos[l][1] {
            DFS(l+1, sum + coin_infos[l][0]*i)
        }
    }
}

var res = 0
let t = Int(readLine()!)!
let coin_cnt = Int(readLine()!)!
var coin_infos: [[Int]] = []
for _ in 0..<coin_cnt {
    coin_infos.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

DFS(0,0)
print(res)

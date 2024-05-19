import Foundation

func DFS(_ l: Int, _ sum: Int) -> Void {
    if sum > input[0] { return }
    if l == input[1] {
        if max_weight < sum { max_weight = sum }
    } else {
        DFS(l+1, sum+weights[l])
        DFS(l+1, sum)
    }
}

let input = readLine()!.split(separator: " ").map{Int(String($0))!}
var weights: [Int] = []
for _ in 0..<input[1] { weights.append(Int(readLine()!)!) }
var max_weight = 0
DFS(0,0)
print(max_weight)

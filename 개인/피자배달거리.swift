import Foundation

func DFS(_ l: Int, _ s: Int) -> Void {
    if l == size[1] {
        var sum = 0
        for i in 0..<home.count {
            let hx = home[i][0]
            let hy = home[i][1]
            var dist = 10000
            for c in comb {
                let px = pizza[c][0]
                let py = pizza[c][1]
                dist = (abs(hx-px)+abs(hy-py)) < dist ? (abs(hx-px)+abs(hy-py)) : dist
            }
            sum += dist
        }
        if sum < min { min = sum }
    } else {
        for i in s..<pizza.count {
            comb[l] = i
            DFS(l+1, i+1)
        }
    }
}

let size = readLine()!.split(separator: " ").map{Int(String($0))!}
var min = 100000
var board:[[Int]] = []
for _ in 0..<size[0] {
    board.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

var comb = Array(repeating: 0, count: size[1])
var pizza:[[Int]] = []
var home:[[Int]] = []
for i in 0..<size[0] {
    for j in 0..<size[0] {
        if board[i][j] == 1 { home.append([i,j]) }
        if board[i][j] == 2 { pizza.append([i,j]) }
    }
}

DFS(0, 0)
print(min)

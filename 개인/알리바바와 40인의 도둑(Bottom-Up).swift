import Foundation

let n = Int(readLine()!)!
var board:[[Int]] = []
var energy = Array(repeating: Array(repeating: 0, count: n), count: n)
for _ in 0..<n {
    board.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

energy[0][0] = board[0][0]
for i in 1..<n { energy[0][i] = energy[0][i-1] + board[0][i] }
for i in 1..<n { energy[i][0] = energy[i-1][0] + board[i][0] }

for i in 1..<n {
    for j in 1..<n {
        energy[i][j] = ((energy[i-1][j] < energy[i][j-1]) ? energy[i-1][j] : energy[i][j-1]) + board[i][j]
    }
}
print(energy[n-1][n-1])

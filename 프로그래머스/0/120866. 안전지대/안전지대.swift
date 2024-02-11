import Foundation

func solution(_ board:[[Int]]) -> Int {
    var dangerous: [[Int]:Bool] = [:]
    for p in 0..<board.count {
        for q in 0..<board.count { dangerous[[p,q]] = false }
    }
    
    for p in 0..<board.count {
        for q in 0..<board.count {
            if board[p][q] == 1 {
                // 위 : p-1, q 
                // 아래 : p+1, q
                // 왼 : p, q-1
                // 오른 : p, q+1
                // 대각 : p-1, q-1 / p-1, q+1 / p+1, q-1, p+1, q+1
                
                var dang_zone = [
                    [p-1, q], [p+1, q], [p, q-1], [p, q+1],
                    [p-1, q-1], [p-1, q+1], [p+1, q-1], [p+1, q+1]
                ]
                
                dangerous[[p,q]] = true
                for z in dang_zone { 
                    if (z[0] > -1) && (z[0] < board.count) 
                        && (z[1] > -1) && (z[1] < board.count) { dangerous[z] = true }
                }
            }
        }
    }
    
    var result = board.count * board.count
    for k in dangerous.keys { result -= dangerous[k]! ? 1 : 0 }
    
    return result
}
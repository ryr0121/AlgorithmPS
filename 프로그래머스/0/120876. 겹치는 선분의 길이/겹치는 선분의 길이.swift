import Foundation

func solution(_ lines:[[Int]]) -> Int {    
    var starts = [lines[0][0],lines[1][0],lines[2][0]]
    var ends = [lines[0][1],lines[1][1],lines[2][1]]
    
    var check:[Int:Int] = [:]
    for i in starts.min()!...ends.max()! { check[i] = 0 }

    for i in 0..<3 {
        for p in lines[i][0]..<lines[i][1] { check[p]! += 1 }
    }
    
    var result = 0
    for k in check.keys { if check[k]! > 1 { result += 1 } } 

    return result
}
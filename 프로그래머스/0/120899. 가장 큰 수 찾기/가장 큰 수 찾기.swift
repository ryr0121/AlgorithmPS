import Foundation

func solution(_ array:[Int]) -> [Int] {
    var result = [array.max()!, -1]    
    for i in 0..<array.count {
        if result[0] == array[i] { result[1] = i }
    }
    return result
}
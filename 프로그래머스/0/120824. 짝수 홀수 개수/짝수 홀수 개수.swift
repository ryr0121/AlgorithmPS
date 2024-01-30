import Foundation

func solution(_ num_list:[Int]) -> [Int] {
    var result = [0,0]
    for n in num_list {
        if n%2 == 0 { result[0] += 1}
        else { result[1] += 1 } 
    }
    return result
}
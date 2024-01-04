import Foundation

func solution(_ num_list:[Int]) -> [Int] {
    var temp = num_list.sorted()
    var mins: [Int] = []
    
    for i in 0..<5 { mins.append(temp[i]) }
    return mins
}
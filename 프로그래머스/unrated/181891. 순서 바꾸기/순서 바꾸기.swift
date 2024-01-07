import Foundation

func solution(_ num_list:[Int], _ n:Int) -> [Int] {
    var result:[Int] = [] 
    for i in n..<num_list.count { result.append(num_list[i]) }
    for i in 0..<n { result.append(num_list[i]) }
    return result
}
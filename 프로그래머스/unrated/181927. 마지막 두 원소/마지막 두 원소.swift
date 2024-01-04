import Foundation

func solution(_ num_list:[Int]) -> [Int] {
    var result = num_list
    if (num_list[result.count-1] > num_list[result.count-2]) {
        result.append(num_list[result.count-1] - num_list[result.count-2])
    } else {
        result.append(num_list[result.count-1]*2)
    }
    return result
}
import Foundation

func solution(_ num_list:[Int]) -> Int {
    var result = 0
    if (num_list.count > 10) {
        for n in num_list { result += n }
    } else {
        result = 1
        for n in num_list { result *= n }
    }
    return result
}